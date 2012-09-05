.class public Lcom/google/android/music/utils/AlbumArtUtils;
.super Ljava/lang/Object;
.source "AlbumArtUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;,
        Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;,
        Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;,
        Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;
    }
.end annotation


# static fields
.field private static CACHE_REQUESTS_TO_RESIZE:I

.field private static final CACHE_SIZES:[I

.field private static final LOGV:Z

.field private static mAlbumLoadingBitmap:Landroid/graphics/Bitmap;

.field private static mCacheDir:Ljava/io/File;

.field private static mShuffleBadge:Landroid/graphics/Bitmap;

.field private static sArtworkListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field private static sCachedRezinBitmap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final sColorizedArtCache:Lcom/google/android/music/utils/LruSynchronizedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/music/utils/LruSynchronizedCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sExternalAlbumBitmapCache:Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;

.field private static final sFauxGradientPalette:[I

.field private static final sFauxPalette:[I

.field private static final sFauxStyleToPalette:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sHprofDumped:Z

.field private static sReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sReverseArtListenerCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSizeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/music/utils/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSizeCacheRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static sTotalSizeCacheRequests:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 87
    const-string v0, "AlbumArtUtils"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/utils/AlbumArtUtils;->LOGV:Z

    .line 97
    const/16 v0, 0x64

    sput v0, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    .line 109
    new-array v0, v7, [I

    fill-array-data v0, :array_ce

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_SIZES:[I

    .line 116
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    .line 126
    sput v4, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCacheRequests:Ljava/util/HashMap;

    .line 133
    new-instance v0, Lcom/google/android/music/utils/LruSynchronizedCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/music/utils/LruSynchronizedCache;-><init>(I)V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sColorizedArtCache:Lcom/google/android/music/utils/LruSynchronizedCache;

    .line 140
    new-instance v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;-><init>(Lcom/google/android/music/utils/AlbumArtUtils$1;)V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalAlbumBitmapCache:Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    .line 146
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedRezinBitmap:Ljava/util/HashMap;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sReverseArtListenerCache:Ljava/util/HashMap;

    .line 165
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_d8

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxPalette:[I

    .line 174
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_100

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxGradientPalette:[I

    .line 180
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxStyleToPalette:Lcom/google/common/collect/ImmutableMap;

    .line 193
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 194
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 195
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 196
    return-void

    .line 109
    :array_ce
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 165
    :array_d8
    .array-data 0x4
        0x68t 0x68t 0x68t 0xfft
        0x2ct 0x6dt 0xa9t 0xfft
        0x4at 0x47t 0xaet 0xfft
        0x93t 0x5dt 0x88t 0xfft
        0xa7t 0x6at 0x6at 0xfft
        0x8ft 0x5bt 0x30t 0xfft
        0x7et 0x7dt 0x3ct 0xfft
        0x2at 0x9ft 0x75t 0xfft
        0x3ct 0x97t 0xb6t 0xfft
        0xb6t 0xb6t 0xb6t 0xfft
        0x7at 0xa9t 0xd9t 0xfft
        0xaat 0xa7t 0xd9t 0xfft
        0xcft 0xa4t 0xc7t 0xfft
        0xe3t 0xa4t 0xa6t 0xfft
        0xddt 0xb7t 0x9at 0xfft
        0xcbt 0xc7t 0x8ft 0xfft
        0x78t 0xcdt 0xaft 0xfft
        0x8ct 0xc5t 0xdbt 0xfft
    .end array-data

    .line 174
    :array_100
    .array-data 0x4
        0x6ct 0x92t 0xb3t 0xfft
        0x38t 0x4et 0x87t 0xfft
        0xb8t 0xa9t 0x9et 0xfft
        0x6bt 0x62t 0x54t 0xfft
        0x72t 0xc5t 0xd8t 0xfft
        0x2dt 0x6bt 0x93t 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/google/android/music/utils/AlbumArtUtils;->LOGV:Z

    return v0
.end method

.method static synthetic access$200(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/music/utils/AlbumArtUtils;->resizeHelper(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()V
    .registers 0

    .prologue
    .line 64
    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->resizeCaches()V

    return-void
.end method

.method static synthetic access$700(J)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/google/android/music/utils/AlbumArtUtils;->handleAlbumArtChanged(J)V

    return-void
.end method

.method private static cleanArtListenerCache()V
    .registers 8

    .prologue
    .line 1283
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    monitor-enter v7

    .line 1285
    .local v1, albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local v5, ref:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    :cond_3
    :try_start_3
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v6}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v5

    if-eqz v5, :cond_52

    .line 1286
    .end local v1           #albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1287
    .restart local v1       #albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v1, :cond_3

    .line 1288
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1289
    .local v0, albumId:Ljava/lang/Long;
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 1291
    .local v4, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    if-eqz v4, :cond_19

    .line 1292
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1293
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :cond_33
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 1294
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_33

    .line 1295
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_33

    .line 1305
    .end local v0           #albumId:Ljava/lang/Long;
    .end local v1           #albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v4           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :catchall_43
    move-exception v6

    monitor-exit v7
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v6

    .line 1298
    .restart local v0       #albumId:Ljava/lang/Long;
    .restart local v1       #albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .restart local v4       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :cond_46
    :try_start_46
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1299
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 1305
    .end local v0           #albumId:Ljava/lang/Long;
    .end local v1           #albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v4           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :cond_52
    monitor-exit v7
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_43

    .line 1306
    return-void
.end method

.method public static createAlbumArtChangedBroadcastReciver()Landroid/content/BroadcastReceiver;
    .registers 1

    .prologue
    .line 1239
    new-instance v0, Lcom/google/android/music/utils/AlbumArtUtils$2;

    invoke-direct {v0}, Lcom/google/android/music/utils/AlbumArtUtils$2;-><init>()V

    return-object v0
.end method

.method public static createAlbumArtChangedIntentFilter()Landroid/content/IntentFilter;
    .registers 2

    .prologue
    .line 1233
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1234
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.google.android.music.AlbumArtChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1235
    return-object v0
.end method

.method private static createFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 21
    .parameter "context"
    .parameter "style"
    .parameter "drawLabels"
    .parameter "seed"
    .parameter "w"
    .parameter "h"
    .parameter "mainLabel"
    .parameter "subLabel"

    .prologue
    .line 923
    const/16 v2, 0x80

    move/from16 v0, p5

    if-lt v0, v2, :cond_c

    const/16 v2, 0x80

    move/from16 v0, p6

    if-ge v0, v2, :cond_25

    .line 924
    :cond_c
    const/16 v7, 0x80

    const/16 v8, 0x80

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/google/android/music/utils/AlbumArtUtils;->createFauxAlbumArt2(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 925
    .local v11, bm:Landroid/graphics/Bitmap;
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v11, v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils;->scaleToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 927
    .end local v11           #bm:Landroid/graphics/Bitmap;
    :goto_24
    return-object v2

    :cond_25
    invoke-static/range {p0 .. p8}, Lcom/google/android/music/utils/AlbumArtUtils;->createFauxAlbumArt2(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_24
.end method

.method private static createFauxAlbumArt2(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 23
    .parameter "context"
    .parameter "style"
    .parameter "drawLabels"
    .parameter "seed"
    .parameter "w"
    .parameter "h"
    .parameter "mainLabel"
    .parameter "subLabel"

    .prologue
    .line 932
    const/4 v12, 0x0

    .line 934
    .local v12, bm:Landroid/graphics/Bitmap;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_a} :catch_22

    move-result-object v12

    .line 939
    :goto_b
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, canvas:Landroid/graphics/Canvas;
    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 940
    invoke-static/range {v2 .. v11}, Lcom/google/android/music/utils/AlbumArtUtils;->drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V

    .line 941
    return-object v12

    .line 936
    .end local v2           #canvas:Landroid/graphics/Canvas;
    :catch_22
    move-exception v13

    .line 937
    .local v13, e:Ljava/lang/OutOfMemoryError;
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v13, v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    goto :goto_b
.end method

.method public static draw(Landroid/graphics/Canvas;Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;)V
    .registers 18
    .parameter "canvas"
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 393
    invoke-static/range {p0 .. p5}, Lcom/google/android/music/utils/AlbumArtUtils;->drawArtwork(Landroid/graphics/Canvas;Landroid/content/Context;JII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 398
    :goto_6
    return-void

    .line 397
    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private static drawArtwork(Landroid/graphics/Canvas;Landroid/content/Context;JII)Z
    .registers 26
    .parameter "canvas"
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 631
    const/4 v3, 0x2

    new-array v8, v3, [I

    .local v8, originalBounds:[I
    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 632
    invoke-static/range {v3 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtworkRaw(Landroid/content/Context;JII[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 633
    .local v11, b:Landroid/graphics/Bitmap;
    if-nez v11, :cond_13

    .line 634
    const/4 v3, 0x0

    .line 664
    :goto_12
    return v3

    .line 639
    :cond_13
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 640
    .local v13, bitmapWidth:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 642
    .local v12, bitmapHeight:I
    new-instance v19, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v13, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 643
    .local v19, src:Landroid/graphics/Rect;
    const/16 v18, 0x0

    .line 644
    .local v18, paint:Landroid/graphics/Paint;
    new-instance v15, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    invoke-direct {v15, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 648
    .local v15, dst:Landroid/graphics/RectF;
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 649
    .local v17, minSize:I
    const/4 v14, 0x0

    .line 650
    .local v14, crop:I
    const/16 v10, 0xc8

    .line 651
    .local v10, CROP_SIZE_THRESHOLD:I
    const/4 v9, 0x3

    .line 652
    .local v9, CROP_PIXEL_AMOUNT:I
    const/4 v3, 0x0

    aget v3, v8, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 653
    .local v16, minOriginalSize:I
    const/16 v3, 0xc8

    move/from16 v0, v16

    if-lt v0, v3, :cond_59

    const/16 v3, 0xc

    move/from16 v0, v17

    if-le v0, v3, :cond_59

    .line 654
    mul-int/lit8 v3, v17, 0x3

    add-int/lit16 v3, v3, 0xc8

    add-int/lit8 v3, v3, -0x1

    div-int/lit16 v14, v3, 0xc8

    .line 656
    :cond_59
    if-lez v14, :cond_6b

    .line 657
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 658
    new-instance v18, Landroid/graphics/Paint;

    .end local v18           #paint:Landroid/graphics/Paint;
    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 659
    .restart local v18       #paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 662
    :cond_6b
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v11, v1, v15, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 663
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 664
    const/4 v3, 0x1

    goto :goto_12
.end method

.method public static drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V
    .registers 49
    .parameter "canvas"
    .parameter "context"
    .parameter "style"
    .parameter "drawLabels"
    .parameter "seed"
    .parameter "w"
    .parameter "h"
    .parameter "mainLabel"
    .parameter "subLabel"

    .prologue
    .line 960
    new-instance v7, Ljava/util/Random;

    move-wide/from16 v0, p4

    invoke-direct {v7, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 961
    .local v7, random:Ljava/util/Random;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 962
    .local v6, paint:Landroid/graphics/Paint;
    and-int/lit8 v5, p2, 0x8

    const/16 v8, 0x8

    if-ne v5, v8, :cond_3f

    const/16 v28, 0x1

    .line 963
    .local v28, isStatic:Z
    :goto_14
    and-int/lit8 p2, p2, 0x7

    .line 973
    if-eqz p3, :cond_28

    if-nez v28, :cond_28

    .line 974
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_42

    .line 975
    const v5, 0x7f0d0098

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p9

    .line 984
    :cond_28
    :goto_28
    move/from16 v0, p7

    mul-int/lit16 v5, v0, 0xc8

    div-int/lit16 v9, v5, 0x258

    .line 985
    .local v9, bannerHeight:I
    mul-int/lit8 v5, p7, 0xe

    div-int/lit16 v0, v5, 0x258

    move/from16 v22, v0

    .line 986
    .local v22, bannerShadowHeight:I
    packed-switch p2, :pswitch_data_21c

    .line 1034
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v8, "Unknown faux style"

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 962
    .end local v9           #bannerHeight:I
    .end local v22           #bannerShadowHeight:I
    .end local v28           #isStatic:Z
    :cond_3f
    const/16 v28, 0x0

    goto :goto_14

    .line 976
    .restart local v28       #isStatic:Z
    :cond_42
    const/4 v5, 0x3

    move/from16 v0, p2

    if-ne v0, v5, :cond_51

    .line 977
    const v5, 0x7f0d009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p9

    goto :goto_28

    .line 978
    :cond_51
    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_60

    .line 979
    const v5, 0x7f0d0099

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p9

    goto :goto_28

    .line 980
    :cond_60
    const/4 v5, 0x4

    move/from16 v0, p2

    if-ne v0, v5, :cond_28

    .line 981
    const v5, 0x7f0d0097

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p9

    goto :goto_28

    .line 988
    .restart local v9       #bannerHeight:I
    .restart local v22       #bannerShadowHeight:I
    :pswitch_6f
    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v5 .. v14}, Lcom/google/android/music/utils/AlbumArtUtils;->genQuilt(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/Random;IIIIIII)V

    .line 1037
    :goto_7c
    if-eqz p3, :cond_f6

    const/4 v5, 0x5

    move/from16 v0, p2

    if-eq v0, v5, :cond_f6

    .line 1038
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v10, p0

    move/from16 v13, p6

    move v14, v9

    move/from16 v15, v22

    move/from16 v16, p2

    invoke-static/range {v10 .. v16}, Lcom/google/android/music/utils/AlbumArtUtils;->genBannerBackground(Landroid/graphics/Canvas;IIIIII)V

    .line 1039
    if-eqz p8, :cond_bb

    .line 1040
    mul-int/lit8 v5, p6, 0x2c

    div-int/lit16 v12, v5, 0x258

    .line 1041
    .local v12, x0:I
    mul-int/lit8 v5, p7, 0x22

    div-int/lit16 v13, v5, 0x258

    .line 1042
    .local v13, y0:I
    move/from16 v0, p6

    mul-int/lit16 v5, v0, 0x200

    div-int/lit16 v11, v5, 0x258

    .line 1043
    .local v11, linew:I
    mul-int/lit8 v5, p7, 0x6d

    div-int/lit16 v14, v5, 0x4b0

    .line 1044
    .local v14, fontHeight:I
    mul-int/lit8 v5, p6, 0x60

    div-int/lit16 v0, v5, 0x258

    move/from16 v18, v0

    .line 1046
    .local v18, fadeWidth:I
    const/4 v15, 0x0

    const/high16 v17, -0x2600

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v10, p0

    move-object/from16 v16, p8

    invoke-static/range {v10 .. v21}, Lcom/google/android/music/utils/AlbumArtUtils;->renderFauxLabel(Landroid/graphics/Canvas;IIIIZLjava/lang/String;IIZII)V

    .line 1049
    .end local v11           #linew:I
    .end local v12           #x0:I
    .end local v13           #y0:I
    .end local v14           #fontHeight:I
    .end local v18           #fadeWidth:I
    :cond_bb
    if-eqz p9, :cond_f6

    .line 1050
    mul-int/lit8 v5, p6, 0x2c

    div-int/lit16 v12, v5, 0x258

    .line 1051
    .restart local v12       #x0:I
    move/from16 v0, p7

    mul-int/lit16 v5, v0, 0x84

    div-int/lit16 v13, v5, 0x258

    .line 1052
    .restart local v13       #y0:I
    move/from16 v0, p6

    mul-int/lit16 v5, v0, 0x200

    div-int/lit16 v11, v5, 0x258

    .line 1053
    .restart local v11       #linew:I
    move/from16 v0, p6

    mul-int/lit16 v5, v0, 0x1d0

    div-int/lit16 v0, v5, 0x258

    move/from16 v21, v0

    .line 1054
    .local v21, overrideW:I
    move/from16 v0, p6

    mul-int/lit16 v5, v0, 0x1fb

    div-int/lit16 v0, v5, 0x258

    move/from16 v20, v0

    .line 1055
    .local v20, rightMargin:I
    mul-int/lit8 v5, p7, 0x22

    div-int/lit16 v14, v5, 0x258

    .line 1056
    .restart local v14       #fontHeight:I
    mul-int/lit8 v5, p6, 0x30

    div-int/lit16 v0, v5, 0x258

    move/from16 v18, v0

    .line 1058
    .restart local v18       #fadeWidth:I
    const/4 v15, 0x1

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    const v17, -0x40000001

    const/16 v19, 0x1

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v21}, Lcom/google/android/music/utils/AlbumArtUtils;->renderFauxLabel(Landroid/graphics/Canvas;IIIIZLjava/lang/String;IIZII)V

    .line 1062
    .end local v11           #linew:I
    .end local v12           #x0:I
    .end local v13           #y0:I
    .end local v14           #fontHeight:I
    .end local v18           #fadeWidth:I
    .end local v20           #rightMargin:I
    .end local v21           #overrideW:I
    :cond_f6
    return-void

    .line 993
    :pswitch_f7
    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v5 .. v14}, Lcom/google/android/music/utils/AlbumArtUtils;->genQuilt(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/Random;IIIIIII)V

    goto/16 :goto_7c

    .line 996
    :pswitch_106
    const/4 v8, 0x0

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v5 .. v14}, Lcom/google/android/music/utils/AlbumArtUtils;->genQuilt(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/Random;IIIIIII)V

    goto/16 :goto_7c

    .line 1000
    :pswitch_115
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x4

    const/16 v19, 0x660

    move-object/from16 v10, p0

    move-object v11, v6

    move-object v12, v7

    move/from16 v15, p6

    move/from16 v16, p7

    invoke-static/range {v10 .. v19}, Lcom/google/android/music/utils/AlbumArtUtils;->genQuilt(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/Random;IIIIIII)V

    .line 1002
    move/from16 v0, p6

    mul-int/lit16 v5, v0, 0x96

    div-int/lit16 v0, v5, 0x258

    move/from16 v35, v0

    .line 1003
    .local v35, x0:I
    move/from16 v0, p7

    mul-int/lit16 v5, v0, 0x96

    div-int/lit16 v0, v5, 0x258

    move/from16 v37, v0

    .line 1004
    .local v37, y0:I
    move/from16 v0, p6

    mul-int/lit16 v5, v0, 0x1c2

    div-int/lit16 v0, v5, 0x258

    move/from16 v36, v0

    .line 1005
    .local v36, x1:I
    move/from16 v0, p7

    mul-int/lit16 v5, v0, 0x1c2

    div-int/lit16 v0, v5, 0x258

    move/from16 v38, v0

    .line 1006
    .local v38, y1:I
    mul-int/lit8 v5, p6, 0xe

    div-int/lit16 v0, v5, 0x258

    move/from16 v30, v0

    .line 1007
    .local v30, shadowWidth:I
    mul-int/lit8 v5, p6, 0xe

    div-int/lit16 v0, v5, 0x258

    move/from16 v29, v0

    .line 1008
    .local v29, shadowHeight:I
    move/from16 v0, v35

    move/from16 v1, v37

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/utils/AlbumArtUtils;->genGradient(IIIII)Landroid/graphics/LinearGradient;

    move-result-object v27

    .line 1009
    .local v27, gradient:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1010
    move/from16 v0, v35

    int-to-float v11, v0

    move/from16 v0, v37

    int-to-float v12, v0

    move/from16 v0, v36

    int-to-float v13, v0

    move/from16 v0, v38

    int-to-float v14, v0

    move-object/from16 v10, p0

    move-object v15, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1011
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1012
    const/high16 v5, 0x5500

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1013
    sub-int v31, v35, v30

    .line 1014
    .local v31, sx0:I
    sub-int v33, v37, v29

    .line 1015
    .local v33, sy0:I
    add-int v32, v36, v30

    .line 1016
    .local v32, sx1:I
    add-int v34, v38, v29

    .line 1017
    .local v34, sy1:I
    move/from16 v0, v31

    int-to-float v11, v0

    move/from16 v0, v33

    int-to-float v12, v0

    move/from16 v0, v32

    int-to-float v13, v0

    move/from16 v0, v37

    int-to-float v14, v0

    move-object/from16 v10, p0

    move-object v15, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1018
    move/from16 v0, v31

    int-to-float v11, v0

    move/from16 v0, v37

    int-to-float v12, v0

    move/from16 v0, v35

    int-to-float v13, v0

    move/from16 v0, v38

    int-to-float v14, v0

    move-object/from16 v10, p0

    move-object v15, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1019
    move/from16 v0, v36

    int-to-float v11, v0

    move/from16 v0, v37

    int-to-float v12, v0

    move/from16 v0, v32

    int-to-float v13, v0

    move/from16 v0, v38

    int-to-float v14, v0

    move-object/from16 v10, p0

    move-object v15, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1020
    move/from16 v0, v31

    int-to-float v11, v0

    move/from16 v0, v38

    int-to-float v12, v0

    move/from16 v0, v32

    int-to-float v13, v0

    move/from16 v0, v34

    int-to-float v14, v0

    move-object/from16 v10, p0

    move-object v15, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1022
    sget-object v5, Lcom/google/android/music/utils/AlbumArtUtils;->mShuffleBadge:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1e1

    .line 1023
    const v5, 0x7f0201a7

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/music/utils/AlbumArtUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v5

    sput-object v5, Lcom/google/android/music/utils/AlbumArtUtils;->mShuffleBadge:Landroid/graphics/Bitmap;

    .line 1025
    :cond_1e1
    move/from16 v0, p6

    mul-int/lit16 v5, v0, 0xe1

    div-int/lit16 v0, v5, 0x258

    move/from16 v23, v0

    .line 1026
    .local v23, bx0:I
    move/from16 v0, p7

    mul-int/lit16 v5, v0, 0xe1

    div-int/lit16 v0, v5, 0x258

    move/from16 v25, v0

    .line 1027
    .local v25, by0:I
    move/from16 v0, p6

    mul-int/lit16 v5, v0, 0x177

    div-int/lit16 v0, v5, 0x258

    move/from16 v24, v0

    .line 1028
    .local v24, bx1:I
    move/from16 v0, p7

    mul-int/lit16 v5, v0, 0x177

    div-int/lit16 v0, v5, 0x258

    move/from16 v26, v0

    .line 1029
    .local v26, by1:I
    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1030
    sget-object v5, Lcom/google/android/music/utils/AlbumArtUtils;->mShuffleBadge:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    new-instance v10, Landroid/graphics/Rect;

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v26

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_7c

    .line 986
    :pswitch_data_21c
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_f7
        :pswitch_f7
        :pswitch_f7
        :pswitch_106
        :pswitch_115
    .end packed-switch
.end method

.method private static genBannerBackground(Landroid/graphics/Canvas;IIIIII)V
    .registers 14
    .parameter "canvas"
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "shadowHeight"
    .parameter "style"

    .prologue
    .line 1066
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1067
    .local v5, paint:Landroid/graphics/Paint;
    invoke-static {p1, p2, p3, p2, p6}, Lcom/google/android/music/utils/AlbumArtUtils;->genGradient(IIIII)Landroid/graphics/LinearGradient;

    move-result-object v6

    .line 1068
    .local v6, gradient:Landroid/graphics/LinearGradient;
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1069
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1070
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1071
    const/high16 v0, 0x5500

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1072
    int-to-float v1, p1

    int-to-float v2, p4

    int-to-float v3, p3

    add-int v0, p4, p5

    int-to-float v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1073
    return-void
.end method

.method private static genGradient(IIIII)Landroid/graphics/LinearGradient;
    .registers 15
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "style"

    .prologue
    .line 1076
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxStyleToPalette:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1077
    .local v9, gradientType:I
    mul-int/lit8 v8, v9, 0x2

    .line 1078
    .local v8, base:I
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v1, p0

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p1

    sget-object v5, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxGradientPalette:[I

    aget v5, v5, v8

    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxGradientPalette:[I

    add-int/lit8 v7, v8, 0x1

    aget v6, v6, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object v0
.end method

.method private static genQuilt(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/Random;IIIIIII)V
    .registers 26
    .parameter "canvas"
    .parameter "paint"
    .parameter "random"
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"
    .parameter "wc"
    .parameter "hc"
    .parameter "skipMask"

    .prologue
    .line 1098
    mul-int v2, p7, p8

    new-array v8, v2, [I

    .line 1099
    .local v8, chosen:[I
    sub-int v2, p5, p3

    div-int v13, v2, p7

    .line 1100
    .local v13, squareWidth:I
    sub-int v2, p6, p4

    div-int v12, v2, p8

    .line 1101
    .local v12, squareHeight:I
    move/from16 v15, p4

    .line 1102
    .local v15, y:I
    const/4 v11, 0x0

    .local v11, j:I
    :goto_f
    move/from16 v0, p8

    if-ge v11, v0, :cond_92

    .line 1103
    move/from16 v14, p3

    .line 1104
    .local v14, x:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_16
    move/from16 v0, p7

    if-ge v10, v0, :cond_8d

    .line 1105
    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static {v10, v11, v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils;->shouldSkip(IIII)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1121
    :goto_24
    add-int/2addr v14, v13

    .line 1104
    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    .line 1110
    :cond_28
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxPalette:[I

    array-length v2, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 1113
    .local v9, color:I
    if-lez v11, :cond_48

    add-int/lit8 v2, v11, -0x1

    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static {v10, v2, v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils;->shouldSkip(IIII)Z

    move-result v2

    if-nez v2, :cond_48

    add-int/lit8 v2, v11, -0x1

    mul-int v2, v2, p7

    add-int/2addr v2, v10

    aget v2, v8, v2

    if-eq v2, v9, :cond_28

    :cond_48
    if-lez v10, :cond_5f

    add-int/lit8 v2, v10, -0x1

    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static {v2, v11, v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils;->shouldSkip(IIII)Z

    move-result v2

    if-nez v2, :cond_5f

    mul-int v2, v11, p7

    add-int/lit8 v3, v10, -0x1

    add-int/2addr v2, v3

    aget v2, v8, v2

    if-eq v2, v9, :cond_28

    .line 1115
    :cond_5f
    mul-int v2, v11, p7

    add-int/2addr v2, v10

    aput v9, v8, v2

    .line 1116
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxPalette:[I

    aget v2, v2, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1117
    int-to-float v3, v14

    int-to-float v4, v15

    add-int/lit8 v2, p7, -0x1

    if-ge v10, v2, :cond_85

    add-int v2, v14, v13

    int-to-float v5, v2

    :goto_76
    add-int/lit8 v2, p8, -0x1

    if-ge v11, v2, :cond_89

    add-int v2, v15, v12

    int-to-float v6, v2

    :goto_7d
    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_24

    :cond_85
    move/from16 v0, p5

    int-to-float v5, v0

    goto :goto_76

    :cond_89
    move/from16 v0, p6

    int-to-float v6, v0

    goto :goto_7d

    .line 1123
    .end local v9           #color:I
    :cond_8d
    add-int/2addr v15, v12

    .line 1102
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_f

    .line 1125
    .end local v10           #i:I
    .end local v14           #x:I
    :cond_92
    return-void
.end method

.method public static getAlbumsBeingListenedFor()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1369
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    monitor-enter v1

    .line 1370
    :try_start_3
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1371
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public static getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 17
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "allowdefault"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 763
    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 18
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "allowdefault"
    .parameter "album"
    .parameter "artist"
    .parameter "mayScaleUpOrCrop"

    .prologue
    .line 783
    const-string v0, "Getting album art on main thread"

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 789
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1c

    .line 790
    if-eqz p5, :cond_1a

    .line 791
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getDefaultArtwork(Landroid/content/Context;ZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 804
    :cond_19
    :goto_19
    return-object v8

    .line 793
    :cond_1a
    const/4 v8, 0x0

    goto :goto_19

    :cond_1c
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move/from16 v5, p8

    .line 796
    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtwork(Landroid/content/Context;JIIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 797
    .local v8, bm:Landroid/graphics/Bitmap;
    if-nez v8, :cond_19

    .line 801
    if-eqz p5, :cond_37

    .line 802
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getDefaultArtwork(Landroid/content/Context;ZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_19

    .line 804
    :cond_37
    const/4 v8, 0x0

    goto :goto_19
.end method

.method private static getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 1196
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1197
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1198
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getCachedArtwork(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 15
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 362
    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedArtwork(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getCachedArtwork(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .registers 19
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "album"
    .parameter "artist"
    .parameter "allowResolve"

    .prologue
    .line 368
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedBitmap(Landroid/content/Context;JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 369
    .local v9, bitmap:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 370
    .local v10, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_1f

    .line 373
    if-lez p3, :cond_16

    if-gtz p4, :cond_20

    .line 376
    :cond_16
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    .end local v10           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v10, v0, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 381
    .restart local v10       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1f
    :goto_1f
    return-object v10

    .line 378
    :cond_20
    new-instance v10, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;

    .end local v10           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v10, v9}, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v10       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1f
.end method

.method public static getCachedBitmap(Landroid/content/Context;JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 27
    .parameter "context"
    .parameter "album_id"
    .parameter "url"
    .parameter "w"
    .parameter "h"
    .parameter "album"
    .parameter "artist"
    .parameter "allowResolve"

    .prologue
    .line 408
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_a

    if-nez p3, :cond_a

    .line 409
    const/4 v12, 0x0

    .line 472
    :cond_9
    :goto_9
    return-object v12

    .line 412
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 413
    .local v16, sizeKey:Ljava/lang/String;
    const/4 v13, 0x0

    .line 414
    .local v13, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    const/16 v4, 0x64

    move/from16 v0, p4

    if-ge v0, v4, :cond_56

    const/16 v4, 0x64

    move/from16 v0, p5

    if-ge v0, v4, :cond_56

    .line 415
    sget-object v5, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 416
    :try_start_35
    sget-object v4, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/google/android/music/utils/LruCache;

    move-object v13, v0

    .line 417
    if-nez v13, :cond_55

    .line 419
    new-instance v14, Lcom/google/android/music/utils/LruCache;

    sget-object v4, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_SIZES:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    invoke-direct {v14, v4}, Lcom/google/android/music/utils/LruCache;-><init>(I)V
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_df

    .line 420
    .end local v13           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .local v14, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    :try_start_4d
    sget-object v4, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_ff

    move-object v13, v14

    .line 422
    .end local v14           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .restart local v13       #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    :cond_55
    :try_start_55
    monitor-exit v5
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_df

    .line 425
    :cond_56
    const/4 v12, 0x0

    .line 426
    .local v12, bitmap:Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 427
    .local v15, cacheHit:Z
    if-eqz v13, :cond_92

    .line 428
    monitor-enter v13

    .line 429
    :try_start_5b
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/google/android/music/utils/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v12, v0

    .line 430
    if-eqz v12, :cond_91

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 431
    const-string v4, "AlbumArtUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found a recycled bitmap for albumid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/google/android/music/utils/LruCache;->remove(Ljava/lang/Object;)V

    .line 433
    const/4 v12, 0x0

    .line 435
    :cond_91
    monitor-exit v13
    :try_end_92
    .catchall {:try_start_5b .. :try_end_92} :catchall_e2

    .line 438
    :cond_92
    if-eqz v12, :cond_e5

    const/4 v15, 0x1

    .line 439
    :goto_95
    if-nez v12, :cond_d6

    if-eqz p8, :cond_d6

    .line 443
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_e7

    .line 444
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtworkFromUrl(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 449
    :goto_ac
    if-nez v12, :cond_bf

    .line 450
    const/4 v5, 0x1

    move-object/from16 v4, p0

    move-wide/from16 v6, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v4 .. v11}, Lcom/google/android/music/utils/AlbumArtUtils;->getDefaultArtwork(Landroid/content/Context;ZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 452
    :cond_bf
    if-eqz v13, :cond_d6

    .line 453
    monitor-enter v13

    .line 455
    :try_start_c2
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/google/android/music/utils/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    .line 456
    .local v17, value:Landroid/graphics/Bitmap;
    if-nez v17, :cond_f5

    .line 457
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v4, v12}, Lcom/google/android/music/utils/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :goto_d5
    monitor-exit v13
    :try_end_d6
    .catchall {:try_start_c2 .. :try_end_d6} :catchall_fc

    .line 468
    .end local v17           #value:Landroid/graphics/Bitmap;
    :cond_d6
    if-eqz v13, :cond_9

    .line 469
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/google/android/music/utils/AlbumArtUtils;->trackCacheUsage(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 422
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .end local v15           #cacheHit:Z
    :catchall_df
    move-exception v4

    :goto_e0
    :try_start_e0
    monitor-exit v5
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    throw v4

    .line 435
    .restart local v12       #bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #cacheHit:Z
    :catchall_e2
    move-exception v4

    :try_start_e3
    monitor-exit v13
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    throw v4

    .line 438
    :cond_e5
    const/4 v15, 0x0

    goto :goto_95

    .line 446
    :cond_e7
    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v4 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtwork(Landroid/content/Context;JIIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_ac

    .line 460
    .restart local v17       #value:Landroid/graphics/Bitmap;
    :cond_f5
    :try_start_f5
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 461
    move-object/from16 v12, v17

    .line 462
    const/4 v15, 0x1

    goto :goto_d5

    .line 464
    .end local v17           #value:Landroid/graphics/Bitmap;
    :catchall_fc
    move-exception v4

    monitor-exit v13
    :try_end_fe
    .catchall {:try_start_f5 .. :try_end_fe} :catchall_fc

    throw v4

    .line 422
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .end local v15           #cacheHit:Z
    .restart local v14       #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    :catchall_ff
    move-exception v4

    move-object v13, v14

    .end local v14           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    .restart local v13       #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    goto :goto_e0
.end method

.method public static getDefaultArtwork(Landroid/content/Context;ZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 17
    .parameter "context"
    .parameter "drawLabels"
    .parameter "albumId"
    .parameter "w"
    .parameter "h"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 809
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getExternalAlbumArtBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "context"
    .parameter "albumArtUrl"
    .parameter "w"
    .parameter "h"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 336
    const-class v9, Lcom/google/android/music/utils/AlbumArtUtils;

    monitor-enter v9

    :try_start_6
    sget-boolean v3, Lcom/google/android/music/utils/AlbumArtUtils;->LOGV:Z

    if-eqz v3, :cond_36

    .line 337
    const-string v3, "AlbumArtUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExternalAlbumArtBitmap: albumArtUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_71

    .line 339
    :cond_36
    if-nez p1, :cond_3a

    .line 357
    :goto_38
    monitor-exit v9

    return-object v0

    .line 346
    :cond_3a
    :try_start_3a
    invoke-static {p1}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v1

    .line 347
    .local v1, album_id:J
    cmp-long v0, v1, v6

    if-nez v0, :cond_44

    .line 348
    const-wide/16 v1, -0x1

    .line 350
    :cond_44
    cmp-long v0, v1, v6

    if-lez v0, :cond_49

    .line 351
    neg-long v1, v1

    .line 354
    :cond_49
    sget-boolean v0, Lcom/google/android/music/utils/AlbumArtUtils;->LOGV:Z

    if-eqz v0, :cond_65

    .line 355
    const-string v0, "AlbumArtUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExternalAlbumArtBitmap: album_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_65
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedBitmap(Landroid/content/Context;JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    :try_end_6f
    .catchall {:try_start_3a .. :try_end_6f} :catchall_71

    move-result-object v0

    goto :goto_38

    .line 336
    .end local v1           #album_id:J
    :catchall_71
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "context"
    .parameter "style"
    .parameter "drawLabels"
    .parameter "seed"
    .parameter "w"
    .parameter "h"
    .parameter "mainLabel"
    .parameter "subLabel"

    .prologue
    const/16 v5, 0x64

    .line 847
    if-eqz p7, :cond_7a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 848
    .local v2, keyStart:Ljava/lang/String;
    :goto_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x0

    .line 852
    .local v0, bm:Landroid/graphics/Bitmap;
    if-ge p5, v5, :cond_63

    if-ge p6, v5, :cond_63

    .line 853
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sColorizedArtCache:Lcom/google/android/music/utils/LruSynchronizedCache;

    invoke-virtual {v3, v1}, Lcom/google/android/music/utils/LruSynchronizedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 856
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_63
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 857
    const/4 v0, 0x0

    .line 859
    :cond_6c
    if-nez v0, :cond_79

    .line 860
    invoke-static/range {p0 .. p8}, Lcom/google/android/music/utils/AlbumArtUtils;->createFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 861
    if-ge p5, v5, :cond_79

    .line 863
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sColorizedArtCache:Lcom/google/android/music/utils/LruSynchronizedCache;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/music/utils/LruSynchronizedCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    :cond_79
    return-object v0

    .line 847
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keyStart:Ljava/lang/String;
    :cond_7a
    const-string v2, ""

    goto :goto_17
.end method

.method public static getLoadingAlbumArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "context"

    .prologue
    .line 818
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->mAlbumLoadingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_11

    .line 819
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02017a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->mAlbumLoadingBitmap:Landroid/graphics/Bitmap;

    .line 822
    :cond_11
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->mAlbumLoadingBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getLockScreenArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 17
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "allowdefault"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 772
    const/16 v0, 0x400

    if-gt p3, v0, :cond_8

    const/16 v0, 0x400

    if-le p4, v0, :cond_c

    .line 774
    :cond_8
    const/16 p3, 0x400

    .line 775
    const/16 p4, 0x400

    .line 777
    :cond_c
    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getResizedLoadingArtwork(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "context"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 830
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 831
    :cond_4
    const/4 v2, 0x0

    .line 840
    :goto_5
    return-object v2

    .line 833
    :cond_6
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 834
    .local v1, size:Landroid/graphics/Point;
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedRezinBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 835
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedRezinBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_5

    .line 838
    :cond_1c
    invoke-static {p0}, Lcom/google/android/music/utils/AlbumArtUtils;->getLoadingAlbumArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 839
    .local v0, b:Landroid/graphics/Bitmap;
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedRezinBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 840
    goto :goto_5
.end method

.method private static declared-synchronized getStaticFauxArtCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .parameter "context"

    .prologue
    .line 871
    const-class v2, Lcom/google/android/music/utils/AlbumArtUtils;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->mCacheDir:Ljava/io/File;

    if-nez v1, :cond_40

    .line 872
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "faux_artwork"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->mCacheDir:Ljava/io/File;

    .line 873
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_40

    .line 874
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_4f

    .line 876
    :try_start_34
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->mCacheDir:Ljava/io/File;

    const-string v4, ".nomedia"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_40} :catch_44

    .line 882
    :cond_40
    :goto_40
    :try_start_40
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->mCacheDir:Ljava/io/File;
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_4f

    monitor-exit v2

    return-object v1

    .line 877
    :catch_44
    move-exception v0

    .line 878
    .local v0, e:Ljava/io/IOException;
    :try_start_45
    const-string v1, "AlbumArtUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4f

    goto :goto_40

    .line 871
    .end local v0           #e:Ljava/io/IOException;
    :catchall_4f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getStaticFauxArtFile(Landroid/content/Context;IJ)Ljava/io/File;
    .registers 18
    .parameter "context"
    .parameter "style"
    .parameter "albumId"

    .prologue
    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fauxart_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p1 .. p3}, Lcom/google/android/music/utils/AlbumArtUtils;->getStaticFauxArtKey(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 898
    .local v11, fname:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/music/utils/AlbumArtUtils;->getStaticFauxArtCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 899
    .local v10, f:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_50

    .line 900
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 902
    .local v5, size:I
    or-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide/from16 v3, p2

    move v6, v5

    invoke-static/range {v0 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 904
    .local v9, bm:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 906
    .local v12, out:Ljava/io/FileOutputStream;
    :try_start_3f
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_44} :catch_51

    .line 907
    .end local v12           #out:Ljava/io/FileOutputStream;
    .local v13, out:Ljava/io/FileOutputStream;
    :try_start_44
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v9, v0, v1, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_65
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_4b} :catch_68

    .line 910
    if-eqz v13, :cond_50

    .line 912
    :try_start_4d
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_61

    .line 918
    .end local v5           #size:I
    .end local v9           #bm:Landroid/graphics/Bitmap;
    .end local v13           #out:Ljava/io/FileOutputStream;
    :cond_50
    :goto_50
    return-object v10

    .line 908
    .restart local v5       #size:I
    .restart local v9       #bm:Landroid/graphics/Bitmap;
    .restart local v12       #out:Ljava/io/FileOutputStream;
    :catch_51
    move-exception v0

    .line 910
    :goto_52
    if-eqz v12, :cond_50

    .line 912
    :try_start_54
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_50

    .line 913
    :catch_58
    move-exception v0

    goto :goto_50

    .line 910
    :catchall_5a
    move-exception v0

    :goto_5b
    if-eqz v12, :cond_60

    .line 912
    :try_start_5d
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_63

    .line 914
    :cond_60
    :goto_60
    throw v0

    .line 913
    .end local v12           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    :catch_61
    move-exception v0

    goto :goto_50

    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v12       #out:Ljava/io/FileOutputStream;
    :catch_63
    move-exception v1

    goto :goto_60

    .line 910
    .end local v12           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    :catchall_65
    move-exception v0

    move-object v12, v13

    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v12       #out:Ljava/io/FileOutputStream;
    goto :goto_5b

    .line 908
    .end local v12           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    :catch_68
    move-exception v0

    move-object v12, v13

    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v12       #out:Ljava/io/FileOutputStream;
    goto :goto_52
.end method

.method private static getStaticFauxArtKey(IJ)Ljava/lang/String;
    .registers 6
    .parameter "style"
    .parameter "albumId"

    .prologue
    .line 892
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, p1, p2}, Ljava/util/Random;-><init>(J)V

    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxPalette:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 893
    .local v0, paletteIndex:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static handleAlbumArtChanged(J)V
    .registers 11
    .parameter "albumId"

    .prologue
    .line 1251
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_28

    .line 1252
    const-string v6, "AlbumArtUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There are too many size caches: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1254
    :cond_28
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    monitor-enter v7

    .line 1255
    :try_start_2b
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1256
    .local v0, cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;>;"
    monitor-enter v0
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_54

    .line 1257
    :try_start_42
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/utils/LruCache;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/music/utils/LruCache;->remove(Ljava/lang/Object;)V

    .line 1258
    monitor-exit v0

    goto :goto_35

    :catchall_51
    move-exception v6

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_51

    :try_start_53
    throw v6

    .line 1260
    .end local v0           #cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_54
    move-exception v6

    monitor-exit v7
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_54

    throw v6

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_57
    :try_start_57
    monitor-exit v7
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_54

    .line 1261
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    monitor-enter v7

    .line 1262
    :try_start_5b
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 1264
    .local v4, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    if-eqz v4, :cond_9b

    .line 1265
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1266
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :goto_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 1267
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1268
    .local v3, item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    .line 1269
    .local v5, possibleListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;
    if-nez v5, :cond_88

    .line 1270
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_6d

    .line 1279
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v3           #item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    .end local v4           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v5           #possibleListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;
    :catchall_85
    move-exception v6

    monitor-exit v7
    :try_end_87
    .catchall {:try_start_5b .. :try_end_87} :catchall_85

    throw v6

    .line 1272
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .restart local v3       #item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    .restart local v4       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .restart local v5       #possibleListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;
    :cond_88
    :try_start_88
    invoke-interface {v5, p0, p1}, Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;->notifyAlbumArtChanged(J)V

    goto :goto_6d

    .line 1275
    .end local v3           #item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    .end local v5           #possibleListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;
    :cond_8c
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 1276
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :cond_9b
    monitor-exit v7
    :try_end_9c
    .catchall {:try_start_88 .. :try_end_9c} :catchall_85

    .line 1280
    return-void
.end method

.method public static notifyAlbumArtChanged(Landroid/content/Context;J)V
    .registers 5
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 1227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.AlbumArtChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1228
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "albumId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1229
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1230
    return-void
.end method

.method public static playlistTypeToArtStyle(I)I
    .registers 3
    .parameter "listType"

    .prologue
    .line 945
    sparse-switch p0, :sswitch_data_12

    .line 953
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown playlist type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :sswitch_b
    const/4 v0, 0x1

    .line 951
    :goto_c
    return v0

    .line 949
    :sswitch_d
    const/4 v0, 0x2

    goto :goto_c

    .line 951
    :sswitch_f
    const/4 v0, 0x3

    goto :goto_c

    .line 945
    nop

    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_b
        0x1 -> :sswitch_d
        0x64 -> :sswitch_f
    .end sparse-switch
.end method

.method public static registerAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V
    .registers 9
    .parameter "albumId"
    .parameter "listener"

    .prologue
    .line 1310
    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->cleanArtListenerCache()V

    .line 1311
    sget-object v4, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 1312
    :try_start_6
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 1313
    .local v1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    if-nez v1, :cond_22

    .line 1314
    new-instance v1, Ljava/util/LinkedList;

    .end local v1           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1315
    .restart local v1       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    :cond_22
    new-instance v2, Ljava/lang/ref/WeakReference;

    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1319
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1321
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1322
    .local v0, allRegisteredAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v0, :cond_40

    .line 1323
    new-instance v0, Ljava/util/TreeSet;

    .end local v0           #allRegisteredAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1324
    .restart local v0       #allRegisteredAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    :cond_40
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1327
    monitor-exit v4

    .line 1328
    return-void

    .line 1327
    .end local v0           #allRegisteredAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v1           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    :catchall_49
    move-exception v3

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_6 .. :try_end_4b} :catchall_49

    throw v3
.end method

.method public static removeAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V
    .registers 11
    .parameter "albumId"
    .parameter "listener"

    .prologue
    .line 1331
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    monitor-enter v6

    .line 1332
    :try_start_3
    sget-object v5, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 1334
    .local v3, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    if-eqz v3, :cond_5d

    .line 1335
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1336
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 1337
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1338
    .local v2, item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    .line 1339
    .local v4, possibleListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;
    if-eqz v4, :cond_2b

    if-ne v4, p2, :cond_15

    .line 1340
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1342
    sget-object v5, Lcom/google/android/music/utils/AlbumArtUtils;->sReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1343
    .local v0, allAlbumsForListener:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v0, :cond_15

    .line 1344
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1345
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1346
    sget-object v5, Lcom/google/android/music/utils/AlbumArtUtils;->sReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1355
    .end local v0           #allAlbumsForListener:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v2           #item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;"
    .end local v3           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .end local v4           #possibleListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;
    :catchall_4b
    move-exception v5

    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v5

    .line 1351
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    .restart local v3       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :cond_4e
    :try_start_4e
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 1352
    sget-object v5, Lcom/google/android/music/utils/AlbumArtUtils;->sArtworkListeners:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;>;>;"
    :cond_5d
    monitor-exit v6
    :try_end_5e
    .catchall {:try_start_4e .. :try_end_5e} :catchall_4b

    .line 1356
    return-void
.end method

.method private static renderFauxLabel(Landroid/graphics/Canvas;IIIIZLjava/lang/String;IIZII)V
    .registers 29
    .parameter "c"
    .parameter "width"
    .parameter "x"
    .parameter "y"
    .parameter "fontHeight"
    .parameter "bold"
    .parameter "label"
    .parameter "color"
    .parameter "fadeWidth"
    .parameter "rightJustify"
    .parameter "rightMargin"
    .parameter "overrideW"

    .prologue
    .line 1150
    new-instance v15, Landroid/text/TextPaint;

    const/16 v3, 0x81

    invoke-direct {v15, v3}, Landroid/text/TextPaint;-><init>(I)V

    .line 1151
    .local v15, paint:Landroid/text/TextPaint;
    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {v15, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1152
    if-eqz p5, :cond_14

    .line 1153
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v15, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1156
    :cond_14
    invoke-virtual {v15}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    .line 1158
    .local v14, metrics:Landroid/graphics/Paint$FontMetricsInt;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1159
    .local v11, bounds:Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v15, v0, v3, v4, v11}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1160
    iget v3, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v10, p3, v3

    .line 1161
    .local v10, baselineY:I
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    .line 1162
    .local v16, rightEdge:I
    move/from16 v13, p1

    .line 1163
    .local v13, maxOffset:I
    move/from16 v0, v16

    move/from16 v1, p11

    if-lt v0, v1, :cond_39

    .line 1164
    const/16 p9, 0x0

    .line 1166
    :cond_39
    move/from16 v0, v16

    if-le v0, v13, :cond_67

    const/4 v12, 0x1

    .line 1167
    .local v12, clipped:Z
    :goto_3e
    if-eqz v12, :cond_69

    .line 1168
    new-instance v2, Landroid/graphics/LinearGradient;

    add-int v3, p2, v13

    sub-int v3, v3, p8

    int-to-float v3, v3

    const/4 v4, 0x0

    add-int v5, p2, v13

    int-to-float v5, v5

    const/4 v6, 0x0

    const v7, 0xffffff

    and-int v8, v7, p7

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v7, p7

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 1172
    .local v2, gradient:Landroid/graphics/LinearGradient;
    invoke-virtual {v15, v2}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1179
    .end local v2           #gradient:Landroid/graphics/LinearGradient;
    :cond_5b
    :goto_5b
    move/from16 v0, p2

    int-to-float v3, v0

    int-to-float v4, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v3, v4, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1180
    return-void

    .line 1166
    .end local v12           #clipped:Z
    :cond_67
    const/4 v12, 0x0

    goto :goto_3e

    .line 1174
    .restart local v12       #clipped:Z
    :cond_69
    move/from16 v0, p7

    invoke-virtual {v15, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1175
    if-eqz p9, :cond_5b

    .line 1176
    iget v3, v11, Landroid/graphics/Rect;->right:I

    sub-int p2, p10, v3

    goto :goto_5b
.end method

.method public static declared-synchronized report(Ljava/lang/OutOfMemoryError;)V
    .registers 6
    .parameter "e"

    .prologue
    .line 742
    const-class v2, Lcom/google/android/music/utils/AlbumArtUtils;

    monitor-enter v2

    :try_start_3
    sget-boolean v1, Lcom/google/android/music/utils/AlbumArtUtils;->sHprofDumped:Z

    if-nez v1, :cond_48

    .line 743
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/music/utils/AlbumArtUtils;->sHprofDumped:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4a

    .line 745
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/music2_hprof_data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 747
    const-string v1, "AlbumArtUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Out of memory.\nPlease do the following to copy the heap dump to your computer:\n\n  adb pull "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "And attach the file to your bug report."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_a .. :try_end_48} :catchall_4a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_48} :catch_4d

    .line 755
    .end local v0           #path:Ljava/lang/String;
    :cond_48
    :goto_48
    monitor-exit v2

    return-void

    .line 742
    :catchall_4a
    move-exception v1

    monitor-exit v2

    throw v1

    .line 751
    :catch_4d
    move-exception v1

    goto :goto_48
.end method

.method public static reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V
    .registers 6
    .parameter "e"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 727
    const-string v0, "AlbumArtUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of memory allocating a ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") sized texture."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-static {p0}, Lcom/google/android/music/utils/AlbumArtUtils;->report(Ljava/lang/OutOfMemoryError;)V

    .line 730
    throw p0
.end method

.method private static resizeCaches()V
    .registers 13

    .prologue
    const/4 v12, 0x0

    .line 503
    sget-object v10, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    monitor-enter v10

    .line 504
    :try_start_4
    sget v9, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    sget v11, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    if-gt v9, v11, :cond_c

    .line 507
    monitor-exit v10

    .line 536
    .local v2, cacheSizeIndex:I
    .local v3, i:I
    .local v4, i$:Ljava/util/Iterator;
    .local v6, sizeCacheRequests:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    .local v7, sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .local v8, totalSizeCacheRequests:I
    :cond_b
    return-void

    .line 509
    .end local v2           #cacheSizeIndex:I
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #sizeCacheRequests:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    .end local v7           #sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v8           #totalSizeCacheRequests:I
    :cond_c
    sget v8, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    .line 511
    .restart local v8       #totalSizeCacheRequests:I
    new-instance v6, Ljava/util/HashMap;

    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCacheRequests:Ljava/util/HashMap;

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 512
    .restart local v6       #sizeCacheRequests:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    const/4 v9, 0x0

    sput v9, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    .line 513
    sget v9, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    add-int/lit16 v9, v9, 0xc8

    sput v9, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    .line 514
    monitor-exit v10
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_52

    .line 515
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .restart local v7       #sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 517
    .local v1, cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;

    #getter for: Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->cacheHits:I
    invoke-static {v9}, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->access$500(Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/google/android/music/utils/AlbumArtUtils;->sortedInsert(Ljava/util/ArrayList;Landroid/util/Pair;)V

    goto :goto_2c

    .line 514
    .end local v1           #cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #sizeCacheRequests:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    .end local v7           #sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :catchall_52
    move-exception v9

    :try_start_53
    monitor-exit v10
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v9

    .line 520
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #sizeCacheRequests:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    .restart local v7       #sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_55
    const/4 v2, 0x0

    .line 521
    .restart local v2       #cacheSizeIndex:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_57
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_b

    .line 522
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 524
    .local v5, keyAndHits:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    iget-object v10, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/utils/LruCache;

    .line 525
    .local v0, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Ljava/lang/Long;Landroid/graphics/Bitmap;>;"
    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_8b

    .line 526
    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_SIZES:[I

    aget v9, v9, v2

    invoke-virtual {v0, v9}, Lcom/google/android/music/utils/LruCache;->setCapacity(I)V

    .line 531
    :goto_7f
    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_SIZES:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-eq v2, v9, :cond_88

    .line 532
    add-int/lit8 v2, v2, 0x1

    .line 521
    :cond_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 528
    :cond_8b
    invoke-virtual {v0, v12}, Lcom/google/android/music/utils/LruCache;->setCapacity(I)V

    goto :goto_7f
.end method

.method private static resizeHelper(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "b"
    .parameter "w"
    .parameter "h"
    .parameter "mayScaleUp"

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 609
    .local v1, outWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 610
    .local v0, outHeight:I
    if-nez p3, :cond_f

    if-gt v1, p1, :cond_f

    if-gt v0, p2, :cond_f

    .line 622
    :cond_e
    :goto_e
    return-object p0

    .line 614
    :cond_f
    if-ne v1, p1, :cond_13

    if-eq v0, p2, :cond_e

    .line 615
    :cond_13
    const/4 v3, 0x1

    invoke-static {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 617
    .local v2, tmp:Landroid/graphics/Bitmap;
    if-eq v2, p0, :cond_1d

    .line 618
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 620
    :cond_1d
    move-object p0, v2

    goto :goto_e
.end method

.method private static resolveArtwork(Landroid/content/Context;JIIZ)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "mayScaleUpOrCrop"

    .prologue
    .line 558
    const/4 v0, 0x2

    new-array v5, v0, [I

    .local v5, originalBounds:[I
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 559
    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtworkRaw(Landroid/content/Context;JII[I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 562
    .local v6, b:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_11

    .line 564
    :try_start_d
    invoke-static {v6, p3, p4, p5}, Lcom/google/android/music/utils/AlbumArtUtils;->resizeHelper(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_10} :catch_12

    move-result-object v6

    .line 600
    :cond_11
    :goto_11
    return-object v6

    .line 597
    :catch_12
    move-exception v7

    .line 598
    .local v7, e:Ljava/lang/OutOfMemoryError;
    invoke-static {v7, p3, p4}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    goto :goto_11
.end method

.method public static resolveArtworkFromUrl(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "context"
    .parameter "albumArtUrl"
    .parameter "w"
    .parameter "h"
    .parameter "mayScaleUp"

    .prologue
    .line 327
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 331
    :cond_2a
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalAlbumBitmapCache:Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->resolveArtworkFromUrl(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static resolveArtworkRaw(Landroid/content/Context;JII[I)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "outOriginalBounds"

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 674
    const/4 v2, 0x0

    .line 676
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_4
    invoke-static {p0, p1, p2}, Lcom/google/android/music/store/MusicContent$AlbumArt;->openFileDescriptor(Landroid/content/Context;J)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_7} :catch_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_7} :catch_84

    move-result-object v2

    .line 677
    if-nez v2, :cond_10

    .line 717
    if-eqz v2, :cond_f

    .line 718
    :try_start_c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_94

    .line 722
    :cond_f
    :goto_f
    return-object v0

    .line 680
    :cond_10
    const/4 v5, 0x1

    .line 681
    .local v5, sampleSize:I
    if-lez p3, :cond_52

    if-lez p4, :cond_52

    .line 683
    .local v6, sizeGiven:Z
    :goto_15
    if-eqz v6, :cond_54

    .line 687
    :try_start_17
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 688
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 689
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 691
    if-eqz p5, :cond_3b

    .line 692
    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v8, p5, v7

    .line 693
    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v8, p5, v7

    .line 695
    :cond_3b
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v7, 0x1

    .line 696
    .local v4, nextWidth:I
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v7, 0x1

    .line 697
    .local v3, nextHeight:I
    :goto_47
    if-le v4, p3, :cond_68

    if-le v3, p4, :cond_68

    .line 698
    shl-int/lit8 v5, v5, 0x1

    .line 699
    shr-int/lit8 v4, v4, 0x1

    .line 700
    shr-int/lit8 v3, v3, 0x1

    goto :goto_47

    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    .end local v6           #sizeGiven:Z
    :cond_52
    move v6, v7

    .line 681
    goto :goto_15

    .line 703
    .restart local v6       #sizeGiven:Z
    :cond_54
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "must specify target height and width"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5c
    .catchall {:try_start_17 .. :try_end_5c} :catchall_8d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_5c} :catch_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_5c} :catch_84

    .line 712
    .end local v5           #sampleSize:I
    .end local v6           #sizeGiven:Z
    :catch_5c
    move-exception v1

    .line 713
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_5d
    invoke-static {v1, p3, p4}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_8d

    .line 717
    if-eqz v2, :cond_f

    .line 718
    :try_start_62
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_f

    .line 719
    :catch_66
    move-exception v7

    goto :goto_f

    .line 706
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v3       #nextHeight:I
    .restart local v4       #nextWidth:I
    .restart local v5       #sampleSize:I
    .restart local v6       #sizeGiven:Z
    :cond_68
    :try_start_68
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v5, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 707
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 708
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7b
    .catchall {:try_start_68 .. :try_end_7b} :catchall_8d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_68 .. :try_end_7b} :catch_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_7b} :catch_84

    move-result-object v0

    .line 717
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_f

    .line 718
    :try_start_7e
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_f

    .line 719
    :catch_82
    move-exception v7

    goto :goto_f

    .line 714
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    .end local v5           #sampleSize:I
    .end local v6           #sizeGiven:Z
    :catch_84
    move-exception v7

    .line 717
    if-eqz v2, :cond_f

    .line 718
    :try_start_87
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_f

    .line 719
    :catch_8b
    move-exception v7

    goto :goto_f

    .line 716
    :catchall_8d
    move-exception v7

    .line 717
    if-eqz v2, :cond_93

    .line 718
    :try_start_90
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_97

    .line 720
    :cond_93
    :goto_93
    throw v7

    .line 719
    :catch_94
    move-exception v7

    goto/16 :goto_f

    :catch_97
    move-exception v8

    goto :goto_93
.end method

.method public static scaleToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "bm"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x1

    .line 1203
    if-lez p1, :cond_38

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_38

    .line 1205
    :cond_f
    :goto_f
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    if-le v1, v2, :cond_2e

    .line 1206
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1208
    .local v0, tmp:Landroid/graphics/Bitmap;
    if-eq v0, p0, :cond_2c

    .line 1209
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1211
    :cond_2c
    move-object p0, v0

    .line 1212
    goto :goto_f

    .line 1213
    .end local v0           #tmp:Landroid/graphics/Bitmap;
    :cond_2e
    invoke-static {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1214
    .restart local v0       #tmp:Landroid/graphics/Bitmap;
    if-eq v0, p0, :cond_37

    .line 1215
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1217
    :cond_37
    move-object p0, v0

    .line 1219
    .end local v0           #tmp:Landroid/graphics/Bitmap;
    :cond_38
    return-object p0
.end method

.method public static setPreferredConfig(Landroid/graphics/Bitmap$Config;)V
    .registers 2
    .parameter "config"

    .prologue
    .line 199
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 200
    return-void
.end method

.method private static shouldSkip(IIII)Z
    .registers 6
    .parameter "i"
    .parameter "j"
    .parameter "wc"
    .parameter "skipMask"

    .prologue
    const/4 v0, 0x1

    .line 1128
    mul-int v1, p1, p2

    add-int/2addr v1, p0

    shl-int v1, v0, v1

    and-int/2addr v1, p3

    if-eqz v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static sortedInsert(Ljava/util/ArrayList;Landroid/util/Pair;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .local p1, insertMe:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 547
    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v2, v1, :cond_22

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 550
    :cond_22
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 551
    return-void
.end method

.method private static trackCacheUsage(Ljava/lang/String;Z)V
    .registers 6
    .parameter "sizeKey"
    .parameter "cacheHit"

    .prologue
    .line 476
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 477
    :try_start_3
    sget v1, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    .line 478
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCacheRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;

    .line 480
    .local v0, cacheRequest:Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;
    if-nez v0, :cond_1e

    .line 481
    new-instance v0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;

    .end local v0           #cacheRequest:Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;-><init>(Lcom/google/android/music/utils/AlbumArtUtils$1;)V

    .line 482
    .restart local v0       #cacheRequest:Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCacheRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_1e
    invoke-static {v0}, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->access$408(Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;)I

    .line 485
    if-eqz p1, :cond_26

    .line 486
    invoke-static {v0}, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->access$508(Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;)I

    .line 489
    :cond_26
    sget v1, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    sget v3, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    if-le v1, v3, :cond_34

    .line 490
    new-instance v1, Lcom/google/android/music/utils/AlbumArtUtils$1;

    invoke-direct {v1}, Lcom/google/android/music/utils/AlbumArtUtils$1;-><init>()V

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 496
    :cond_34
    monitor-exit v2

    .line 497
    return-void

    .line 496
    .end local v0           #cacheRequest:Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method
