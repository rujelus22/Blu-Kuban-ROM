.class public Lcom/google/android/music/utils/AlbumArtUtils;
.super Ljava/lang/Object;
.source "AlbumArtUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;,
        Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;,
        Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;,
        Lcom/google/android/music/utils/AlbumArtUtils$ExtractableByteArrayOutputStream;,
        Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;,
        Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;,
        Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIterator;
    }
.end annotation


# static fields
.field private static CACHE_REQUESTS_TO_RESIZE:I

.field private static final CACHE_SIZES:[I

.field private static final LOGV:Z

.field private static MAX_IMAGE_SIZE_TO_CACHE:I

.field private static mAlbumLoadingBitmap:Landroid/graphics/Bitmap;

.field private static mCacheDir:Ljava/io/File;

.field private static mShuffleBadge:Landroid/graphics/Bitmap;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field private static final sCachedBitmapLock:Ljava/lang/Object;

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

.field private static final sExternalBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

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

.field private static final sPlaylistCols:[Ljava/lang/String;

.field private static final sSizeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/music/utils/LruCache",
            "<",
            "Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;",
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

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 95
    const-string v0, "AlbumArtUtils"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/utils/AlbumArtUtils;->LOGV:Z

    .line 114
    const/16 v0, 0x64

    sput v0, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    .line 126
    new-array v0, v7, [I

    fill-array-data v0, :array_ca

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_SIZES:[I

    .line 133
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 134
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedBitmapLock:Ljava/lang/Object;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    .line 145
    sput v4, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCacheRequests:Ljava/util/HashMap;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedRezinBitmap:Ljava/util/HashMap;

    .line 167
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_d4

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxPalette:[I

    .line 172
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "album_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sPlaylistCols:[Ljava/lang/String;

    .line 182
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_fc

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxGradientPalette:[I

    .line 188
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxStyleToPalette:Lcom/google/common/collect/ImmutableMap;

    .line 201
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 202
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 203
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 205
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 206
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 207
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 208
    return-void

    .line 126
    :array_ca
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 167
    :array_d4
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

    .line 182
    :array_fc
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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1718
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sPlaylistCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()V
    .registers 0

    .prologue
    .line 63
    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->resizeCaches()V

    return-void
.end method

.method private static appendSizeToExternalUrl(Ljava/lang/String;II)Ljava/lang/String;
    .registers 11
    .parameter "albumArtUrl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    .line 396
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 397
    .local v1, indexOfLastSlash:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, fileName:Ljava/lang/String;
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, url:Ljava/lang/String;
    if-eqz v0, :cond_3e

    if-eqz v2, :cond_3e

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/w%d-h%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 402
    :cond_3e
    return-object p0
.end method

.method public static createAlbumIdIteratorFactoryForContentUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;
    .registers 3
    .parameter "context"
    .parameter "contentUri"

    .prologue
    .line 303
    if-nez p1, :cond_4

    .line 304
    const/4 v0, 0x0

    .line 306
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/music/utils/AlbumArtUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/utils/AlbumArtUtils$1;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_3
.end method

.method private static createArtCacheKey(IJ)Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    .registers 7
    .parameter "style"
    .parameter "artwork_id"

    .prologue
    .line 1054
    and-int/lit8 p0, p0, 0x7

    .line 1057
    packed-switch p0, :pswitch_data_48

    .line 1083
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported faux albumart style: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1059
    :pswitch_1e
    new-instance v0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;-><init>(IJ)V

    .line 1085
    .local v0, key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    :goto_24
    return-object v0

    .line 1063
    .end local v0           #key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    :pswitch_25
    new-instance v0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;-><init>(IJ)V

    .line 1064
    .restart local v0       #key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    goto :goto_24

    .line 1067
    .end local v0           #key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    :pswitch_2c
    new-instance v0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;-><init>(IJ)V

    .line 1068
    .restart local v0       #key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    goto :goto_24

    .line 1071
    .end local v0           #key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    :pswitch_33
    new-instance v0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;-><init>(IJ)V

    .line 1072
    .restart local v0       #key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    goto :goto_24

    .line 1075
    .end local v0           #key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    :pswitch_3a
    new-instance v0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;-><init>(IJ)V

    .line 1076
    .restart local v0       #key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    goto :goto_24

    .line 1079
    .end local v0           #key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    :pswitch_41
    new-instance v0, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;-><init>(IJ)V

    .line 1080
    .restart local v0       #key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    goto :goto_24

    .line 1057
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_25
        :pswitch_2c
        :pswitch_33
        :pswitch_3a
        :pswitch_41
    .end packed-switch
.end method

.method private static createFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Landroid/graphics/Bitmap;
    .registers 23
    .parameter "context"
    .parameter "style"
    .parameter "drawLabels"
    .parameter "seed"
    .parameter "w"
    .parameter "h"
    .parameter "mainLabel"
    .parameter "subLabel"
    .parameter "childAlbums"

    .prologue
    .line 1192
    const/16 v2, 0x80

    move/from16 v0, p5

    if-lt v0, v2, :cond_c

    const/16 v2, 0x80

    move/from16 v0, p6

    if-ge v0, v2, :cond_28

    .line 1193
    :cond_c
    const/16 v7, 0x80

    const/16 v8, 0x80

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v2 .. v11}, Lcom/google/android/music/utils/AlbumArtUtils;->createFauxAlbumArt2(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1195
    .local v12, bm:Landroid/graphics/Bitmap;
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v12, v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils;->scaleToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1197
    .end local v12           #bm:Landroid/graphics/Bitmap;
    :goto_27
    return-object v2

    :cond_28
    invoke-static/range {p0 .. p9}, Lcom/google/android/music/utils/AlbumArtUtils;->createFauxAlbumArt2(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_27
.end method

.method private static createFauxAlbumArt2(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Landroid/graphics/Bitmap;
    .registers 25
    .parameter "context"
    .parameter "style"
    .parameter "drawLabels"
    .parameter "seed"
    .parameter "w"
    .parameter "h"
    .parameter "mainLabel"
    .parameter "subLabel"
    .parameter "childAlbums"

    .prologue
    .line 1204
    const/4 v13, 0x0

    .line 1206
    .local v13, bm:Landroid/graphics/Bitmap;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_a} :catch_25

    move-result-object v13

    .line 1211
    :goto_b
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, canvas:Landroid/graphics/Canvas;
    move-object v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    .line 1212
    invoke-static/range {v2 .. v12}, Lcom/google/android/music/utils/AlbumArtUtils;->drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)V

    .line 1214
    return-object v13

    .line 1208
    .end local v2           #canvas:Landroid/graphics/Canvas;
    :catch_25
    move-exception v14

    .line 1209
    .local v14, e:Ljava/lang/OutOfMemoryError;
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v14, v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

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
    .line 476
    invoke-static/range {p0 .. p5}, Lcom/google/android/music/utils/AlbumArtUtils;->drawArtwork(Landroid/graphics/Canvas;Landroid/content/Context;JII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 481
    :goto_6
    return-void

    .line 480
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
    .line 770
    const/4 v3, 0x2

    new-array v8, v3, [I

    .local v8, originalBounds:[I
    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 771
    invoke-static/range {v3 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtworkRaw(Landroid/content/Context;JII[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 772
    .local v11, b:Landroid/graphics/Bitmap;
    if-nez v11, :cond_13

    .line 773
    const/4 v3, 0x0

    .line 803
    :goto_12
    return v3

    .line 778
    :cond_13
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 779
    .local v13, bitmapWidth:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 781
    .local v12, bitmapHeight:I
    new-instance v19, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v13, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 782
    .local v19, src:Landroid/graphics/Rect;
    const/16 v18, 0x0

    .line 783
    .local v18, paint:Landroid/graphics/Paint;
    new-instance v15, Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    invoke-direct {v15, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 787
    .local v15, dst:Landroid/graphics/RectF;
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 788
    .local v17, minSize:I
    const/4 v14, 0x0

    .line 789
    .local v14, crop:I
    const/16 v10, 0xc8

    .line 790
    .local v10, CROP_SIZE_THRESHOLD:I
    const/4 v9, 0x3

    .line 791
    .local v9, CROP_PIXEL_AMOUNT:I
    const/4 v3, 0x0

    aget v3, v8, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 792
    .local v16, minOriginalSize:I
    const/16 v3, 0xc8

    move/from16 v0, v16

    if-lt v0, v3, :cond_59

    const/16 v3, 0xc

    move/from16 v0, v17

    if-le v0, v3, :cond_59

    .line 793
    mul-int/lit8 v3, v17, 0x3

    add-int/lit16 v3, v3, 0xc8

    add-int/lit8 v3, v3, -0x1

    div-int/lit16 v14, v3, 0xc8

    .line 795
    :cond_59
    if-lez v14, :cond_6b

    .line 796
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 797
    new-instance v18, Landroid/graphics/Paint;

    .end local v18           #paint:Landroid/graphics/Paint;
    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 798
    .restart local v18       #paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 801
    :cond_6b
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v11, v1, v15, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 802
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 803
    const/4 v3, 0x1

    goto :goto_12
.end method

.method private static drawClassicFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1414
    new-instance v4, Ljava/util/Random;

    move-wide/from16 v0, p4

    invoke-direct {v4, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 1415
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1416
    and-int/lit8 v2, p2, 0x8

    const/16 v5, 0x8

    if-ne v2, v5, :cond_38

    const/4 v2, 0x1

    .line 1417
    :goto_13
    and-int/lit8 v12, p2, 0x7

    .line 1427
    if-eqz p3, :cond_23

    if-nez v2, :cond_23

    .line 1428
    const/4 v2, 0x1

    if-ne v12, v2, :cond_3a

    .line 1429
    const v2, 0x7f0d00aa

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p9

    .line 1438
    :cond_23
    :goto_23
    move/from16 v0, p7

    mul-int/lit16 v2, v0, 0xc8

    div-int/lit16 v6, v2, 0x258

    .line 1439
    mul-int/lit8 v2, p7, 0xe

    div-int/lit16 v13, v2, 0x258

    .line 1440
    packed-switch v12, :pswitch_data_10c

    .line 1463
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown faux style"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1416
    :cond_38
    const/4 v2, 0x0

    goto :goto_13

    .line 1430
    :cond_3a
    const/4 v2, 0x3

    if-ne v12, v2, :cond_45

    .line 1431
    const v2, 0x7f0d00ac

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p9

    goto :goto_23

    .line 1432
    :cond_45
    const/4 v2, 0x2

    if-ne v12, v2, :cond_50

    .line 1433
    const v2, 0x7f0d00ab

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p9

    goto :goto_23

    .line 1434
    :cond_50
    const/4 v2, 0x4

    if-ne v12, v2, :cond_23

    .line 1435
    const v2, 0x7f0d00a9

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p9

    goto :goto_23

    .line 1442
    :pswitch_5b
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v2, p0

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v11}, Lcom/google/android/music/utils/AlbumArtUtils;->genQuilt(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/Random;IIIIIII)V

    .line 1466
    :goto_67
    if-eqz p3, :cond_cd

    const/4 v2, 0x5

    if-eq v12, v2, :cond_cd

    .line 1467
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move/from16 v5, p6

    move v7, v13

    move v8, v12

    invoke-static/range {v2 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->genBannerBackground(Landroid/graphics/Canvas;IIIIII)V

    .line 1468
    if-eqz p8, :cond_9a

    .line 1469
    mul-int/lit8 v2, p6, 0x2c

    div-int/lit16 v4, v2, 0x258

    .line 1470
    mul-int/lit8 v2, p7, 0x22

    div-int/lit16 v5, v2, 0x258

    .line 1471
    move/from16 v0, p6

    mul-int/lit16 v2, v0, 0x200

    div-int/lit16 v3, v2, 0x258

    .line 1472
    mul-int/lit8 v2, p7, 0x6d

    div-int/lit16 v6, v2, 0x4b0

    .line 1473
    mul-int/lit8 v2, p6, 0x60

    div-int/lit16 v10, v2, 0x258

    .line 1475
    const/4 v7, 0x0

    const/high16 v9, -0x2600

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, p0

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v13}, Lcom/google/android/music/utils/AlbumArtUtils;->renderFauxLabel(Landroid/graphics/Canvas;IIIIZLjava/lang/String;IIZII)V

    .line 1478
    :cond_9a
    if-eqz p9, :cond_cd

    .line 1479
    mul-int/lit8 v2, p6, 0x2c

    div-int/lit16 v4, v2, 0x258

    .line 1480
    move/from16 v0, p7

    mul-int/lit16 v2, v0, 0x84

    div-int/lit16 v5, v2, 0x258

    .line 1481
    move/from16 v0, p6

    mul-int/lit16 v2, v0, 0x200

    div-int/lit16 v3, v2, 0x258

    .line 1482
    move/from16 v0, p6

    mul-int/lit16 v2, v0, 0x1d0

    div-int/lit16 v13, v2, 0x258

    .line 1483
    move/from16 v0, p6

    mul-int/lit16 v2, v0, 0x1fb

    div-int/lit16 v12, v2, 0x258

    .line 1484
    mul-int/lit8 v2, p7, 0x22

    div-int/lit16 v6, v2, 0x258

    .line 1485
    mul-int/lit8 v2, p6, 0x30

    div-int/lit16 v10, v2, 0x258

    .line 1487
    const/4 v7, 0x1

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const v9, -0x40000001

    const/4 v11, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v13}, Lcom/google/android/music/utils/AlbumArtUtils;->renderFauxLabel(Landroid/graphics/Canvas;IIIIZLjava/lang/String;IIZII)V

    .line 1491
    :cond_cd
    return-void

    .line 1447
    :pswitch_ce
    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v2, p0

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v11}, Lcom/google/android/music/utils/AlbumArtUtils;->genQuilt(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/Random;IIIIIII)V

    goto :goto_67

    .line 1450
    :pswitch_db
    const/4 v5, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v2, p0

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v11}, Lcom/google/android/music/utils/AlbumArtUtils;->genQuilt(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/Random;IIIIIII)V

    goto :goto_67

    .line 1455
    :pswitch_e8
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->mShuffleBadge:Landroid/graphics/Bitmap;

    if-nez v2, :cond_f5

    .line 1456
    const v2, 0x7f02010a

    invoke-static {p1, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->mShuffleBadge:Landroid/graphics/Bitmap;

    .line 1458
    :cond_f5
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1459
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->mShuffleBadge:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-direct {v5, v7, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v2, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_67

    .line 1440
    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_ce
        :pswitch_ce
        :pswitch_ce
        :pswitch_db
        :pswitch_e8
    .end packed-switch
.end method

.method public static drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V
    .registers 21
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
    .line 1236
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lcom/google/android/music/utils/AlbumArtUtils;->drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)V

    .line 1237
    return-void
.end method

.method public static drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)V
    .registers 20
    .parameter "canvas"
    .parameter "context"
    .parameter "style"
    .parameter "drawLabels"
    .parameter "seed"
    .parameter "width"
    .parameter "height"
    .parameter "mainLabel"
    .parameter "subLabel"
    .parameter "childAlbums"

    .prologue
    .line 1243
    and-int/lit8 v8, p2, 0x7

    .line 1244
    .local v8, fauxArtType:I
    const/4 v0, 0x1

    if-gt v0, v8, :cond_18

    const/4 v0, 0x4

    if-gt v8, v0, :cond_18

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p4

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p10

    .line 1245
    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->drawFauxPlaylistArt(Landroid/graphics/Canvas;Landroid/content/Context;IJIILcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1251
    :goto_17
    return-void

    .line 1249
    :cond_18
    invoke-static/range {p0 .. p9}, Lcom/google/android/music/utils/AlbumArtUtils;->drawClassicFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method private static drawFauxPlaylistArt(Landroid/graphics/Canvas;Landroid/content/Context;IJIILcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Z
    .registers 39
    .parameter "canvas"
    .parameter "context"
    .parameter "style"
    .parameter "playlistId"
    .parameter "width"
    .parameter "height"
    .parameter "childAlbums"

    .prologue
    .line 1255
    const/16 v8, 0x9

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v4 .. v11}, Lcom/google/android/music/utils/AlbumArtUtils;->getUniqueArt(Landroid/content/Context;IJIIILcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Ljava/util/List;

    move-result-object v15

    .line 1262
    .local v15, art:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    :try_start_12
    invoke-interface {v15}, Ljava/util/List;->size()I
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_d8

    move-result v16

    .line 1263
    .local v16, artCount:I
    const/4 v4, 0x1

    move/from16 v0, v16

    if-gt v0, v4, :cond_30

    .line 1264
    const/4 v4, 0x0

    .line 1314
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    .line 1315
    .local v17, b:Landroid/graphics/Bitmap;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_20

    .line 1265
    .end local v17           #b:Landroid/graphics/Bitmap;
    .end local v22           #i$:Ljava/util/Iterator;
    :cond_30
    const/4 v4, 0x4

    move/from16 v0, v16

    if-ge v0, v4, :cond_bd

    .line 1266
    const/16 v20, 0x2

    .line 1267
    .local v20, horizontalArtCount:I
    const/16 v28, 0x1

    .line 1277
    .local v28, verticalArtCount:I
    :goto_39
    :try_start_39
    div-int v26, p5, v20

    .line 1278
    .local v26, squareWidth:I
    div-int v25, p6, v28

    .line 1279
    .local v25, squareHeight:I
    const/16 v30, 0x0

    .line 1281
    .local v30, y:I
    new-instance v24, Landroid/graphics/Paint;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Paint;-><init>()V

    .line 1282
    .local v24, paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1283
    new-instance v27, Landroid/graphics/Rect;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Rect;-><init>()V

    .line 1284
    .local v27, srcRect:Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/RectF;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/RectF;-><init>()V

    .line 1286
    .local v18, dstRect:Landroid/graphics/RectF;
    const/16 v23, 0x0

    .local v23, j:I
    :goto_56
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_104

    .line 1287
    const/16 v29, 0x0

    .line 1288
    .local v29, x:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_60
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_fe

    .line 1289
    mul-int v4, v23, v20

    add-int v4, v4, v21

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    .line 1290
    .local v12, albumBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 1291
    .local v14, albumBitmapWidth:I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 1292
    .local v13, albumBitmapHeight:I
    const/4 v4, 0x2

    move/from16 v0, v20

    if-ne v0, v4, :cond_ed

    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_ed

    .line 1295
    div-int/lit8 v19, v14, 0x2

    .line 1296
    .local v19, halfAlbumBitmapWidth:I
    if-nez v21, :cond_cf

    .line 1297
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v4, v5, v1, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1305
    .end local v19           #halfAlbumBitmapWidth:I
    :goto_8f
    move/from16 v0, v29

    int-to-float v6, v0

    move/from16 v0, v30

    int-to-float v7, v0

    add-int/lit8 v4, v20, -0x1

    move/from16 v0, v21

    if-ge v0, v4, :cond_f5

    add-int v4, v29, v26

    int-to-float v4, v4

    move v5, v4

    :goto_9f
    add-int/lit8 v4, v28, -0x1

    move/from16 v0, v23

    if-ge v0, v4, :cond_fa

    add-int v4, v30, v25

    int-to-float v4, v4

    :goto_a8
    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1308
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    move-object/from16 v3, v24

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1309
    add-int v29, v29, v26

    .line 1288
    add-int/lit8 v21, v21, 0x1

    goto :goto_60

    .line 1268
    .end local v12           #albumBitmap:Landroid/graphics/Bitmap;
    .end local v13           #albumBitmapHeight:I
    .end local v14           #albumBitmapWidth:I
    .end local v18           #dstRect:Landroid/graphics/RectF;
    .end local v20           #horizontalArtCount:I
    .end local v21           #i:I
    .end local v23           #j:I
    .end local v24           #paint:Landroid/graphics/Paint;
    .end local v25           #squareHeight:I
    .end local v26           #squareWidth:I
    .end local v27           #srcRect:Landroid/graphics/Rect;
    .end local v28           #verticalArtCount:I
    .end local v29           #x:I
    .end local v30           #y:I
    :cond_bd
    const/16 v4, 0x9

    move/from16 v0, v16

    if-ge v0, v4, :cond_c9

    .line 1269
    const/16 v20, 0x2

    .line 1270
    .restart local v20       #horizontalArtCount:I
    const/16 v28, 0x2

    .restart local v28       #verticalArtCount:I
    goto/16 :goto_39

    .line 1272
    .end local v20           #horizontalArtCount:I
    .end local v28           #verticalArtCount:I
    :cond_c9
    const/16 v20, 0x3

    .line 1273
    .restart local v20       #horizontalArtCount:I
    const/16 v28, 0x3

    .restart local v28       #verticalArtCount:I
    goto/16 :goto_39

    .line 1299
    .restart local v12       #albumBitmap:Landroid/graphics/Bitmap;
    .restart local v13       #albumBitmapHeight:I
    .restart local v14       #albumBitmapWidth:I
    .restart local v18       #dstRect:Landroid/graphics/RectF;
    .restart local v19       #halfAlbumBitmapWidth:I
    .restart local v21       #i:I
    .restart local v23       #j:I
    .restart local v24       #paint:Landroid/graphics/Paint;
    .restart local v25       #squareHeight:I
    .restart local v26       #squareWidth:I
    .restart local v27       #srcRect:Landroid/graphics/Rect;
    .restart local v29       #x:I
    .restart local v30       #y:I
    :cond_cf
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4, v14, v13}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_d7
    .catchall {:try_start_39 .. :try_end_d7} :catchall_d8

    goto :goto_8f

    .line 1314
    .end local v12           #albumBitmap:Landroid/graphics/Bitmap;
    .end local v13           #albumBitmapHeight:I
    .end local v14           #albumBitmapWidth:I
    .end local v16           #artCount:I
    .end local v18           #dstRect:Landroid/graphics/RectF;
    .end local v19           #halfAlbumBitmapWidth:I
    .end local v20           #horizontalArtCount:I
    .end local v21           #i:I
    .end local v23           #j:I
    .end local v24           #paint:Landroid/graphics/Paint;
    .end local v25           #squareHeight:I
    .end local v26           #squareWidth:I
    .end local v27           #srcRect:Landroid/graphics/Rect;
    .end local v28           #verticalArtCount:I
    .end local v29           #x:I
    .end local v30           #y:I
    :catchall_d8
    move-exception v4

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22       #i$:Ljava/util/Iterator;
    :goto_dd
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_118

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    .line 1315
    .restart local v17       #b:Landroid/graphics/Bitmap;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_dd

    .line 1303
    .end local v17           #b:Landroid/graphics/Bitmap;
    .end local v22           #i$:Ljava/util/Iterator;
    .restart local v12       #albumBitmap:Landroid/graphics/Bitmap;
    .restart local v13       #albumBitmapHeight:I
    .restart local v14       #albumBitmapWidth:I
    .restart local v16       #artCount:I
    .restart local v18       #dstRect:Landroid/graphics/RectF;
    .restart local v20       #horizontalArtCount:I
    .restart local v21       #i:I
    .restart local v23       #j:I
    .restart local v24       #paint:Landroid/graphics/Paint;
    .restart local v25       #squareHeight:I
    .restart local v26       #squareWidth:I
    .restart local v27       #srcRect:Landroid/graphics/Rect;
    .restart local v28       #verticalArtCount:I
    .restart local v29       #x:I
    .restart local v30       #y:I
    :cond_ed
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_ef
    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5, v14, v13}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_f4
    .catchall {:try_start_ef .. :try_end_f4} :catchall_d8

    goto :goto_8f

    .line 1305
    :cond_f5
    move/from16 v0, p5

    int-to-float v4, v0

    move v5, v4

    goto :goto_9f

    :cond_fa
    move/from16 v0, p6

    int-to-float v4, v0

    goto :goto_a8

    .line 1311
    .end local v12           #albumBitmap:Landroid/graphics/Bitmap;
    .end local v13           #albumBitmapHeight:I
    .end local v14           #albumBitmapWidth:I
    :cond_fe
    add-int v30, v30, v25

    .line 1286
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_56

    .line 1314
    .end local v21           #i:I
    .end local v29           #x:I
    :cond_104
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22       #i$:Ljava/util/Iterator;
    :goto_108
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_119

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    .line 1315
    .restart local v17       #b:Landroid/graphics/Bitmap;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_108

    .end local v16           #artCount:I
    .end local v17           #b:Landroid/graphics/Bitmap;
    .end local v18           #dstRect:Landroid/graphics/RectF;
    .end local v20           #horizontalArtCount:I
    .end local v23           #j:I
    .end local v24           #paint:Landroid/graphics/Paint;
    .end local v25           #squareHeight:I
    .end local v26           #squareWidth:I
    .end local v27           #srcRect:Landroid/graphics/Rect;
    .end local v28           #verticalArtCount:I
    .end local v30           #y:I
    :cond_118
    throw v4

    .line 1318
    .restart local v16       #artCount:I
    .restart local v18       #dstRect:Landroid/graphics/RectF;
    .restart local v20       #horizontalArtCount:I
    .restart local v23       #j:I
    .restart local v24       #paint:Landroid/graphics/Paint;
    .restart local v25       #squareHeight:I
    .restart local v26       #squareWidth:I
    .restart local v27       #srcRect:Landroid/graphics/Rect;
    .restart local v28       #verticalArtCount:I
    .restart local v30       #y:I
    :cond_119
    const/4 v4, 0x1

    .end local v18           #dstRect:Landroid/graphics/RectF;
    .end local v20           #horizontalArtCount:I
    .end local v23           #j:I
    .end local v24           #paint:Landroid/graphics/Paint;
    .end local v25           #squareHeight:I
    .end local v26           #squareWidth:I
    .end local v27           #srcRect:Landroid/graphics/Rect;
    .end local v28           #verticalArtCount:I
    .end local v30           #y:I
    :cond_11a
    return v4
.end method

.method private static genBannerBackground(Landroid/graphics/Canvas;IIIIII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1495
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1496
    invoke-static {p1, p2, p3, p2, p6}, Lcom/google/android/music/utils/AlbumArtUtils;->genGradient(IIIII)Landroid/graphics/LinearGradient;

    move-result-object v0

    .line 1497
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1498
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1499
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1500
    const/high16 v0, 0x5500

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1501
    int-to-float v1, p1

    int-to-float v2, p4

    int-to-float v3, p3

    add-int v0, p4, p5

    int-to-float v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1502
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
    .line 1505
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxStyleToPalette:Lcom/google/common/collect/ImmutableMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1506
    .local v9, gradientType:I
    mul-int/lit8 v8, v9, 0x2

    .line 1507
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
    .line 1527
    mul-int v2, p7, p8

    new-array v8, v2, [I

    .line 1528
    .local v8, chosen:[I
    sub-int v2, p5, p3

    div-int v13, v2, p7

    .line 1529
    .local v13, squareWidth:I
    sub-int v2, p6, p4

    div-int v12, v2, p8

    .line 1530
    .local v12, squareHeight:I
    move/from16 v15, p4

    .line 1531
    .local v15, y:I
    const/4 v11, 0x0

    .local v11, j:I
    :goto_f
    move/from16 v0, p8

    if-ge v11, v0, :cond_92

    .line 1532
    move/from16 v14, p3

    .line 1533
    .local v14, x:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_16
    move/from16 v0, p7

    if-ge v10, v0, :cond_8d

    .line 1534
    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static {v10, v11, v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils;->shouldSkip(IIII)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1550
    :goto_24
    add-int/2addr v14, v13

    .line 1533
    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    .line 1539
    :cond_28
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxPalette:[I

    array-length v2, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 1542
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

    .line 1544
    :cond_5f
    mul-int v2, v11, p7

    add-int/2addr v2, v10

    aput v9, v8, v2

    .line 1545
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxPalette:[I

    aget v2, v2, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1546
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

    .line 1552
    .end local v9           #color:I
    :cond_8d
    add-int/2addr v15, v12

    .line 1531
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_f

    .line 1554
    .end local v10           #i:I
    .end local v14           #x:I
    :cond_92
    return-void
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
    .line 905
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
    .line 925
    const-string v0, "Getting album art on main thread"

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 931
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1c

    .line 932
    if-eqz p5, :cond_1a

    .line 933
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getDefaultArtwork(Landroid/content/Context;ZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 946
    :cond_19
    :goto_19
    return-object v8

    .line 935
    :cond_1a
    const/4 v8, 0x0

    goto :goto_19

    :cond_1c
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move/from16 v5, p8

    .line 938
    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtwork(Landroid/content/Context;JIIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 939
    .local v8, bm:Landroid/graphics/Bitmap;
    if-nez v8, :cond_19

    .line 943
    if-eqz p5, :cond_37

    .line 944
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

    .line 946
    :cond_37
    const/4 v8, 0x0

    goto :goto_19
.end method

.method public static getArtworkFromUrl(Landroid/content/Context;Ljava/lang/String;IIZZZZ)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "context"
    .parameter "albumArtUrl"
    .parameter "w"
    .parameter "h"
    .parameter "mayScaleUp"
    .parameter "isSkyjam"
    .parameter "allowResolve"
    .parameter "allowDefault"

    .prologue
    .line 409
    if-eqz p5, :cond_37

    .line 410
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2c
    :goto_2c
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    .line 417
    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/AlbumArtUtils;->getExternalAlbumArtBitmap(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 415
    :cond_37
    invoke-static {p1, p2, p3}, Lcom/google/android/music/utils/AlbumArtUtils;->appendSizeToExternalUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2c
.end method

.method private static getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 1625
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1626
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1627
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getBitmapFromCache(Lcom/google/android/music/utils/LruCache;Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/utils/LruCache",
            "<",
            "Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    const/4 v1, 0x0

    .line 567
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_35

    .line 568
    monitor-enter p0

    .line 569
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/google/android/music/utils/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 570
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 571
    const-string v2, "AlbumArtUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found a recycled bitmap for artwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {p0, p1}, Lcom/google/android/music/utils/LruCache;->remove(Ljava/lang/Object;)V

    .line 573
    const/4 v1, 0x0

    .line 575
    :cond_34
    monitor-exit p0

    .line 578
    :cond_35
    return-object v1

    .line 575
    :catchall_36
    move-exception v2

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v2
.end method

.method private static getCache(Landroid/content/Context;IILjava/lang/String;)Lcom/google/android/music/utils/LruCache;
    .registers 10
    .parameter "context"
    .parameter "width"
    .parameter "height"
    .parameter "sizeKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/music/utils/LruCache",
            "<",
            "Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    const/4 v1, 0x0

    .line 542
    .local v1, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    sget v3, Lcom/google/android/music/utils/AlbumArtUtils;->MAX_IMAGE_SIZE_TO_CACHE:I

    if-nez v3, :cond_12

    .line 548
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/google/android/music/utils/AlbumArtUtils;->MAX_IMAGE_SIZE_TO_CACHE:I

    .line 552
    :cond_12
    sget v3, Lcom/google/android/music/utils/AlbumArtUtils;->MAX_IMAGE_SIZE_TO_CACHE:I

    if-ge p1, v3, :cond_3a

    sget v3, Lcom/google/android/music/utils/AlbumArtUtils;->MAX_IMAGE_SIZE_TO_CACHE:I

    if-ge p2, v3, :cond_3a

    .line 553
    sget-object v4, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 554
    :try_start_1d
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/android/music/utils/LruCache;

    move-object v1, v0

    .line 555
    if-nez v1, :cond_39

    .line 557
    new-instance v2, Lcom/google/android/music/utils/LruCache;

    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_SIZES:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    invoke-direct {v2, v3}, Lcom/google/android/music/utils/LruCache;-><init>(I)V
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_3b

    .line 558
    .end local v1           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    .local v2, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    :try_start_33
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_3e

    move-object v1, v2

    .line 560
    .end local v2           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    .restart local v1       #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    :cond_39
    :try_start_39
    monitor-exit v4

    .line 562
    :cond_3a
    return-object v1

    .line 560
    :catchall_3b
    move-exception v3

    :goto_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3b

    throw v3

    .end local v1           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    .restart local v2       #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    :catchall_3e
    move-exception v3

    move-object v1, v2

    .end local v2           #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    .restart local v1       #cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    goto :goto_3c
.end method

.method public static getCachedArtwork(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;
    .registers 21
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"
    .parameter "album"
    .parameter "artist"
    .parameter "allowResolve"
    .parameter "allowDefault"

    .prologue
    .line 450
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedBitmap(Landroid/content/Context;JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 452
    .local v10, bitmap:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 453
    .local v11, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_22

    .line 456
    if-lez p3, :cond_19

    if-gtz p4, :cond_23

    .line 459
    :cond_19
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    .end local v11           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v11, v0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 464
    .restart local v11       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_22
    :goto_22
    return-object v11

    .line 461
    :cond_23
    new-instance v11, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;

    .end local v11           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-direct {v11, v10}, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v11       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_22
.end method

.method public static getCachedBitmap(Landroid/content/Context;JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;
    .registers 27
    .parameter "context"
    .parameter "album_id"
    .parameter "url"
    .parameter "w"
    .parameter "h"
    .parameter "album"
    .parameter "artist"
    .parameter "allowResolve"
    .parameter "allowDefault"

    .prologue
    .line 491
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_a

    if-nez p3, :cond_a

    .line 492
    const/4 v11, 0x0

    .line 532
    :cond_9
    :goto_9
    return-object v11

    .line 495
    :cond_a
    invoke-static/range {p4 .. p5}, Lcom/google/android/music/utils/AlbumArtUtils;->getSizeKey(II)Ljava/lang/String;

    move-result-object v15

    .line 496
    .local v15, sizeKey:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2, v15}, Lcom/google/android/music/utils/AlbumArtUtils;->getCache(Landroid/content/Context;IILjava/lang/String;)Lcom/google/android/music/utils/LruCache;

    move-result-object v12

    .line 498
    .local v12, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    new-instance v14, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;

    const/4 v3, 0x1

    move-wide/from16 v0, p1

    invoke-direct {v14, v3, v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;-><init>(IJ)V

    .line 502
    .local v14, key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    if-eqz p8, :cond_72

    .line 503
    sget-object v16, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedBitmapLock:Ljava/lang/Object;

    monitor-enter v16

    .line 504
    :try_start_25
    invoke-static {v12, v14}, Lcom/google/android/music/utils/AlbumArtUtils;->getBitmapFromCache(Lcom/google/android/music/utils/LruCache;Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 505
    .local v11, bitmap:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_5f

    const/4 v13, 0x1

    .line 506
    .local v13, cacheHit:Z
    :goto_2c
    if-nez v11, :cond_58

    .line 510
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_61

    .line 511
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtworkFromUrl(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 516
    :goto_3f
    if-nez v11, :cond_54

    if-eqz p9, :cond_54

    .line 517
    const/4 v4, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v5, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v3 .. v10}, Lcom/google/android/music/utils/AlbumArtUtils;->getDefaultArtwork(Landroid/content/Context;ZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 520
    :cond_54
    invoke-static {v12, v11, v14}, Lcom/google/android/music/utils/AlbumArtUtils;->putBitmapInCache(Lcom/google/android/music/utils/LruCache;Landroid/graphics/Bitmap;Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;)Z

    move-result v13

    .line 522
    :cond_58
    monitor-exit v16
    :try_end_59
    .catchall {:try_start_25 .. :try_end_59} :catchall_6f

    .line 528
    :goto_59
    if-eqz v12, :cond_9

    .line 529
    invoke-static {v15, v13}, Lcom/google/android/music/utils/AlbumArtUtils;->trackCacheUsage(Ljava/lang/String;Z)V

    goto :goto_9

    .line 505
    .end local v13           #cacheHit:Z
    :cond_5f
    const/4 v13, 0x0

    goto :goto_2c

    .line 513
    .restart local v13       #cacheHit:Z
    :cond_61
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p4

    move/from16 v7, p5

    :try_start_6a
    invoke-static/range {v3 .. v8}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtwork(Landroid/content/Context;JIIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_3f

    .line 522
    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #cacheHit:Z
    :catchall_6f
    move-exception v3

    monitor-exit v16
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_6f

    throw v3

    .line 524
    :cond_72
    invoke-static {v12, v14}, Lcom/google/android/music/utils/AlbumArtUtils;->getBitmapFromCache(Lcom/google/android/music/utils/LruCache;Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 525
    .restart local v11       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_7a

    const/4 v13, 0x1

    .restart local v13       #cacheHit:Z
    :goto_79
    goto :goto_59

    .end local v13           #cacheHit:Z
    :cond_7a
    const/4 v13, 0x0

    goto :goto_79
.end method

.method public static getCachedFauxAlbumArt(Landroid/content/Context;IJII)Landroid/graphics/drawable/Drawable;
    .registers 12
    .parameter "context"
    .parameter "style"
    .parameter "artwork_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1037
    and-int/lit8 p1, p1, 0x7

    .line 1039
    invoke-static {p1, p2, p3}, Lcom/google/android/music/utils/AlbumArtUtils;->createArtCacheKey(IJ)Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;

    move-result-object v3

    .line 1041
    .local v3, key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    invoke-static {p4, p5}, Lcom/google/android/music/utils/AlbumArtUtils;->getSizeKey(II)Ljava/lang/String;

    move-result-object v4

    .line 1042
    .local v4, sizeKey:Ljava/lang/String;
    invoke-static {p0, p4, p5, v4}, Lcom/google/android/music/utils/AlbumArtUtils;->getCache(Landroid/content/Context;IILjava/lang/String;)Lcom/google/android/music/utils/LruCache;

    move-result-object v1

    .line 1044
    .local v1, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    invoke-static {v1, v3}, Lcom/google/android/music/utils/AlbumArtUtils;->getBitmapFromCache(Lcom/google/android/music/utils/LruCache;Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1045
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1d

    const/4 v2, 0x1

    .line 1047
    .local v2, cacheHit:Z
    :goto_15
    if-eqz v2, :cond_1f

    .line 1048
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1050
    :goto_1c
    return-object v5

    .line 1045
    .end local v2           #cacheHit:Z
    :cond_1d
    const/4 v2, 0x0

    goto :goto_15

    .line 1050
    .restart local v2       #cacheHit:Z
    :cond_1f
    const/4 v5, 0x0

    goto :goto_1c
.end method

.method public static getDefaultArtwork(Landroid/content/Context;ZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 18
    .parameter "context"
    .parameter "drawLabels"
    .parameter "albumId"
    .parameter "w"
    .parameter "h"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 951
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalAlbumArtBitmap(Landroid/content/Context;Ljava/lang/String;IIZZ)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "context"
    .parameter "albumArtUrl"
    .parameter "w"
    .parameter "h"
    .parameter "allowResolve"
    .parameter "allowDefault"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 422
    sget-boolean v0, Lcom/google/android/music/utils/AlbumArtUtils;->LOGV:Z

    if-eqz v0, :cond_33

    .line 423
    const-string v0, "AlbumArtUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExternalAlbumArtBitmap: albumArtUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_33
    if-nez p1, :cond_36

    .line 443
    :goto_35
    return-object v6

    .line 432
    :cond_36
    invoke-static {p1}, Lcom/google/android/music/store/Store;->generateId(Ljava/lang/String;)J

    move-result-wide v1

    .line 433
    .local v1, album_id:J
    cmp-long v0, v1, v7

    if-nez v0, :cond_40

    .line 434
    const-wide/16 v1, -0x1

    .line 436
    :cond_40
    cmp-long v0, v1, v7

    if-lez v0, :cond_45

    .line 437
    neg-long v1, v1

    .line 440
    :cond_45
    sget-boolean v0, Lcom/google/android/music/utils/AlbumArtUtils;->LOGV:Z

    if-eqz v0, :cond_61

    .line 441
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

    :cond_61
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, v6

    move v8, p4

    move v9, p5

    .line 443
    invoke-static/range {v0 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedBitmap(Landroid/content/Context;JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_35
.end method

.method public static getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 19
    .parameter "context"
    .parameter "style"
    .parameter "drawLabels"
    .parameter "artwork_id"
    .parameter "w"
    .parameter "h"
    .parameter "mainLabel"
    .parameter "subLabel"

    .prologue
    .line 994
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Landroid/graphics/Bitmap;
    .registers 17
    .parameter "context"
    .parameter "style"
    .parameter "drawLabels"
    .parameter "artwork_id"
    .parameter "w"
    .parameter "h"
    .parameter "mainLabel"
    .parameter "subLabel"
    .parameter "childAlbums"

    .prologue
    .line 1009
    and-int/lit8 p1, p1, 0x7

    .line 1011
    invoke-static {p1, p3, p4}, Lcom/google/android/music/utils/AlbumArtUtils;->createArtCacheKey(IJ)Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;

    move-result-object v3

    .line 1015
    .local v3, key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    invoke-static {p5, p6}, Lcom/google/android/music/utils/AlbumArtUtils;->getSizeKey(II)Ljava/lang/String;

    move-result-object v4

    .line 1016
    .local v4, sizeKey:Ljava/lang/String;
    invoke-static {p0, p5, p6, v4}, Lcom/google/android/music/utils/AlbumArtUtils;->getCache(Landroid/content/Context;IILjava/lang/String;)Lcom/google/android/music/utils/LruCache;

    move-result-object v1

    .line 1018
    .local v1, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    sget-object v6, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedBitmapLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1019
    :try_start_11
    invoke-static {v1, v3}, Lcom/google/android/music/utils/AlbumArtUtils;->getBitmapFromCache(Lcom/google/android/music/utils/LruCache;Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1020
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_29

    const/4 v2, 0x1

    .line 1022
    .local v2, cacheHit:Z
    :goto_18
    if-nez v0, :cond_22

    .line 1023
    invoke-static/range {p0 .. p9}, Lcom/google/android/music/utils/AlbumArtUtils;->createFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1025
    invoke-static {v1, v0, v3}, Lcom/google/android/music/utils/AlbumArtUtils;->putBitmapInCache(Lcom/google/android/music/utils/LruCache;Landroid/graphics/Bitmap;Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;)Z

    move-result v2

    .line 1027
    :cond_22
    monitor-exit v6
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_2b

    .line 1029
    if-eqz v1, :cond_28

    .line 1030
    invoke-static {v4, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->trackCacheUsage(Ljava/lang/String;Z)V

    .line 1033
    :cond_28
    return-object v0

    .line 1020
    .end local v2           #cacheHit:Z
    :cond_29
    const/4 v2, 0x0

    goto :goto_18

    .line 1027
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_2b
    move-exception v5

    :try_start_2c
    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v5
.end method

.method public static getLoadingAlbumArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "context"

    .prologue
    .line 960
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->mAlbumLoadingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_11

    .line 961
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->mAlbumLoadingBitmap:Landroid/graphics/Bitmap;

    .line 964
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
    .line 914
    const/16 v0, 0x400

    if-gt p3, v0, :cond_8

    const/16 v0, 0x400

    if-le p4, v0, :cond_c

    .line 916
    :cond_8
    const/16 p3, 0x400

    .line 917
    const/16 p4, 0x400

    .line 919
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

.method private static getPlaylistMembersCursor(Landroid/content/Context;IJ)Landroid/database/Cursor;
    .registers 13
    .parameter "context"
    .parameter "style"
    .parameter "playlistId"

    .prologue
    const/4 v3, 0x0

    .line 1384
    and-int/lit8 v7, p1, 0x7

    .line 1385
    .local v7, fauxArtType:I
    const/4 v1, 0x0

    .line 1390
    .local v1, uri:Landroid/net/Uri;
    packed-switch v7, :pswitch_data_26

    .line 1405
    :goto_7
    if-eqz v1, :cond_12

    .line 1406
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sPlaylistCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1408
    :cond_12
    return-object v3

    .line 1393
    :pswitch_13
    invoke-static {p2, p3}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 1394
    goto :goto_7

    .line 1396
    :pswitch_18
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v8

    .line 1397
    .local v8, prefs:Lcom/google/android/music/jumper/MusicPreferences;
    const/4 v0, 0x0

    invoke-static {p2, p3, v0, v8}, Lcom/google/android/music/AutoPlaylists;->getAutoPlaylist(JZLcom/google/android/music/jumper/MusicPreferences;)Lcom/google/android/music/medialist/AutoPlaylist;

    move-result-object v6

    .line 1399
    .local v6, autoPlaylist:Lcom/google/android/music/medialist/AutoPlaylist;
    invoke-virtual {v6, p0}, Lcom/google/android/music/medialist/AutoPlaylist;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 1400
    goto :goto_7

    .line 1390
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_18
    .end packed-switch
.end method

.method public static getResizedLoadingArtwork(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "context"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 972
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 973
    :cond_4
    const/4 v2, 0x0

    .line 982
    :goto_5
    return-object v2

    .line 975
    :cond_6
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 976
    .local v1, size:Landroid/graphics/Point;
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedRezinBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 977
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedRezinBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_5

    .line 980
    :cond_1c
    invoke-static {p0}, Lcom/google/android/music/utils/AlbumArtUtils;->getLoadingAlbumArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 981
    .local v0, b:Landroid/graphics/Bitmap;
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sCachedRezinBitmap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 982
    goto :goto_5
.end method

.method private static getSizeKey(II)Ljava/lang/String;
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getStaticFauxArtCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .parameter "context"

    .prologue
    .line 1090
    const-class v2, Lcom/google/android/music/utils/AlbumArtUtils;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->mCacheDir:Ljava/io/File;

    if-nez v1, :cond_40

    .line 1091
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

    .line 1092
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_40

    .line 1093
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->mCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_4f

    .line 1095
    :try_start_34
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->mCacheDir:Ljava/io/File;

    const-string v4, ".nomedia"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_40} :catch_44

    .line 1101
    :cond_40
    :goto_40
    :try_start_40
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->mCacheDir:Ljava/io/File;
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_4f

    monitor-exit v2

    return-object v1

    .line 1096
    :catch_44
    move-exception v0

    .line 1097
    .local v0, e:Ljava/io/IOException;
    :try_start_45
    const-string v1, "AlbumArtUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4f

    goto :goto_40

    .line 1090
    .end local v0           #e:Ljava/io/IOException;
    :catchall_4f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getStaticFauxArtFile(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;II)Ljava/io/File;
    .registers 24
    .parameter "context"
    .parameter "style"
    .parameter "albumId"
    .parameter "mainLabel"
    .parameter "subLabel"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fauxart_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p3}, Lcom/google/android/music/utils/AlbumArtUtils;->getStaticFauxArtKey(IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1118
    .local v13, fname:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-static/range {p0 .. p0}, Lcom/google/android/music/utils/AlbumArtUtils;->getStaticFauxArtCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v12, v1, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1119
    .local v12, f:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 1121
    const/4 v1, -0x1

    move/from16 v0, p6

    if-eq v0, v1, :cond_30

    const/4 v1, -0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_5f

    .line 1122
    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1126
    .local v6, size:I
    :goto_3b
    or-int/lit8 v2, p1, 0x8

    const/4 v3, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v4, p2

    move v7, v6

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v10}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1128
    .local v11, bm:Landroid/graphics/Bitmap;
    const/4 v14, 0x0

    .line 1130
    .local v14, out:Ljava/io/FileOutputStream;
    :try_start_4d
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_52} :catch_64

    .line 1131
    .end local v14           #out:Ljava/io/FileOutputStream;
    .local v15, out:Ljava/io/FileOutputStream;
    :try_start_52
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v11, v1, v2, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_78
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_59} :catch_7b

    .line 1134
    if-eqz v15, :cond_5e

    .line 1136
    :try_start_5b
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_74

    .line 1142
    .end local v6           #size:I
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v15           #out:Ljava/io/FileOutputStream;
    :cond_5e
    :goto_5e
    return-object v12

    .line 1124
    :cond_5f
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .restart local v6       #size:I
    goto :goto_3b

    .line 1132
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_64
    move-exception v1

    .line 1134
    :goto_65
    if-eqz v14, :cond_5e

    .line 1136
    :try_start_67
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_5e

    .line 1137
    :catch_6b
    move-exception v1

    goto :goto_5e

    .line 1134
    :catchall_6d
    move-exception v1

    :goto_6e
    if-eqz v14, :cond_73

    .line 1136
    :try_start_70
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_76

    .line 1138
    :cond_73
    :goto_73
    throw v1

    .line 1137
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :catch_74
    move-exception v1

    goto :goto_5e

    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_76
    move-exception v2

    goto :goto_73

    .line 1134
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :catchall_78
    move-exception v1

    move-object v14, v15

    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    goto :goto_6e

    .line 1132
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v15       #out:Ljava/io/FileOutputStream;
    :catch_7b
    move-exception v1

    move-object v14, v15

    .end local v15           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    goto :goto_65
.end method

.method private static getStaticFauxArtKey(IJ)Ljava/lang/String;
    .registers 6
    .parameter "style"
    .parameter "albumId"

    .prologue
    .line 1111
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, p1, p2}, Ljava/util/Random;-><init>(J)V

    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sFauxPalette:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 1112
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

.method public static getStaticFauxArtPipe(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .registers 23
    .parameter "context"
    .parameter "style"
    .parameter "albumId"
    .parameter "mainLabel"
    .parameter "subLabel"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1148
    const/4 v1, -0x1

    move/from16 v0, p6

    if-eq v0, v1, :cond_a

    const/4 v1, -0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_30

    .line 1149
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1153
    .local v6, size:I
    :goto_15
    or-int/lit8 v2, p1, 0x8

    const/4 v3, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-wide/from16 v4, p2

    move v7, v6

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v10}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1155
    .local v11, bm:Landroid/graphics/Bitmap;
    if-nez v11, :cond_35

    .line 1156
    const-string v1, "AlbumArtUtils"

    const-string v2, "Could not create bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const/4 v1, 0x0

    .line 1185
    :goto_2f
    return-object v1

    .line 1151
    .end local v6           #size:I
    .end local v11           #bm:Landroid/graphics/Bitmap;
    :cond_30
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .restart local v6       #size:I
    goto :goto_15

    .line 1159
    .restart local v11       #bm:Landroid/graphics/Bitmap;
    :cond_35
    const/4 v13, 0x0

    .line 1161
    .local v13, fd:[Landroid/os/ParcelFileDescriptor;
    :try_start_36
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    .line 1162
    new-instance v14, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    const/4 v1, 0x1

    aget-object v1, v13, v1

    invoke-direct {v14, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1163
    .local v14, out:Ljava/io/OutputStream;
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/utils/AlbumArtUtils$3;

    invoke-direct {v2, v11, v14}, Lcom/google/android/music/utils/AlbumArtUtils$3;-><init>(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4c} :catch_55

    .line 1182
    .end local v14           #out:Ljava/io/OutputStream;
    :goto_4c
    if-eqz v13, :cond_5e

    array-length v1, v13

    if-lez v1, :cond_5e

    .line 1183
    const/4 v1, 0x0

    aget-object v1, v13, v1

    goto :goto_2f

    .line 1179
    :catch_55
    move-exception v12

    .line 1180
    .local v12, e:Ljava/io/IOException;
    const-string v1, "AlbumArtUtils"

    const-string v2, "Could not create pipe"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    .line 1185
    .end local v12           #e:Ljava/io/IOException;
    :cond_5e
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method private static getUniqueArt(Landroid/content/Context;IJIIILcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;)Ljava/util/List;
    .registers 22
    .parameter "context"
    .parameter "style"
    .parameter "playlistId"
    .parameter "maxImages"
    .parameter "w"
    .parameter "h"
    .parameter "childAlbums"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IJIII",
            "Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1325
    new-instance v8, Ljava/util/HashSet;

    move/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1326
    .local v8, albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1328
    .local v12, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v11, 0x0

    .line 1330
    .local v11, childAlbumsIterator:Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIterator;
    if-eqz p7, :cond_13

    .line 1331
    invoke-interface/range {p7 .. p7}, Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;->createIterator()Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIterator;

    move-result-object v11

    .line 1334
    :cond_13
    if-nez v11, :cond_20

    .line 1335
    invoke-static/range {p0 .. p3}, Lcom/google/android/music/utils/AlbumArtUtils;->getPlaylistMembersCursor(Landroid/content/Context;IJ)Landroid/database/Cursor;

    move-result-object v10

    .line 1336
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_20

    .line 1337
    new-instance v11, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;

    .end local v11           #childAlbumsIterator:Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIterator;
    invoke-direct {v11, v10}, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;-><init>(Landroid/database/Cursor;)V

    .line 1341
    .end local v10           #c:Landroid/database/Cursor;
    .restart local v11       #childAlbumsIterator:Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIterator;
    :cond_20
    if-eqz v11, :cond_69

    .line 1343
    :cond_22
    :try_start_22
    invoke-interface {v11}, Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 1344
    invoke-interface {v11}, Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIterator;->next()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1345
    .local v7, albumIdKey:Ljava/lang/Long;
    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1348
    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1349
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/music/utils/AlbumArtUtils;->playlistArtReductionFactor(I)I

    move-result v13

    .line 1350
    .local v13, reductionFactor:I
    add-int v1, p5, v13

    add-int/lit8 v1, v1, -0x1

    div-int v4, v1, v13

    .line 1351
    .local v4, scaledWidth:I
    add-int v1, p6, v13

    add-int/lit8 v1, v1, -0x1

    div-int v5, v1, v13

    .line 1352
    .local v5, scaledHeight:I
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtwork(Landroid/content/Context;JIIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1354
    .local v9, art:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_22

    .line 1355
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
    :try_end_61
    .catchall {:try_start_22 .. :try_end_61} :catchall_6a

    move-result v1

    move/from16 v0, p4

    if-lt v1, v0, :cond_22

    .line 1362
    .end local v4           #scaledWidth:I
    .end local v5           #scaledHeight:I
    .end local v7           #albumIdKey:Ljava/lang/Long;
    .end local v9           #art:Landroid/graphics/Bitmap;
    .end local v13           #reductionFactor:I
    :cond_66
    invoke-interface {v11}, Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIterator;->close()V

    .line 1365
    :cond_69
    return-object v12

    .line 1362
    :catchall_6a
    move-exception v1

    invoke-interface {v11}, Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIterator;->close()V

    throw v1
.end method

.method public static handleAlbumArtChanged(J)V
    .registers 8
    .parameter "albumId"

    .prologue
    .line 601
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_28

    .line 602
    const-string v3, "AlbumArtUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There are too many size caches: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    :cond_28
    sget-object v4, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 605
    :try_start_2b
    sget-object v3, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 606
    .local v0, cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;>;"
    monitor-enter v0
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_56

    .line 607
    :try_start_42
    new-instance v2, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, p1}, Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;-><init>(IJ)V

    .line 608
    .local v2, key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/utils/LruCache;

    invoke-virtual {v3, v2}, Lcom/google/android/music/utils/LruCache;->remove(Ljava/lang/Object;)V

    .line 609
    monitor-exit v0

    goto :goto_35

    .end local v2           #key:Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;
    :catchall_53
    move-exception v3

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_42 .. :try_end_55} :catchall_53

    :try_start_55
    throw v3

    .line 611
    .end local v0           #cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_56
    move-exception v3

    monitor-exit v4
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_56

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_59
    :try_start_59
    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_56

    .line 612
    return-void
.end method

.method private static playlistArtReductionFactor(I)I
    .registers 3
    .parameter "imageCount"

    .prologue
    const/4 v0, 0x2

    .line 1374
    if-gt p0, v0, :cond_5

    .line 1375
    const/4 v0, 0x1

    .line 1379
    :cond_4
    :goto_4
    return v0

    .line 1376
    :cond_5
    const/4 v1, 0x4

    if-le p0, v1, :cond_4

    .line 1379
    const/4 v0, 0x3

    goto :goto_4
.end method

.method public static playlistTypeToArtStyle(I)I
    .registers 3
    .parameter "listType"

    .prologue
    const/4 v0, 0x3

    .line 1218
    sparse-switch p0, :sswitch_data_10

    .line 1229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown playlist type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1220
    :sswitch_c
    const/4 v0, 0x1

    .line 1227
    :goto_d
    :sswitch_d
    return v0

    .line 1222
    :sswitch_e
    const/4 v0, 0x2

    goto :goto_d

    .line 1218
    :sswitch_data_10
    .sparse-switch
        0x0 -> :sswitch_c
        0x1 -> :sswitch_e
        0xa -> :sswitch_d
        0x64 -> :sswitch_d
    .end sparse-switch
.end method

.method private static putBitmapInCache(Lcom/google/android/music/utils/LruCache;Landroid/graphics/Bitmap;Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;)Z
    .registers 6
    .parameter
    .parameter "bitmap"
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/utils/LruCache",
            "<",
            "Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 582
    .local p0, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    .line 583
    .local v0, cacheHit:Z
    if-eqz p0, :cond_10

    .line 584
    monitor-enter p0

    .line 586
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/google/android/music/utils/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 587
    .local v1, value:Landroid/graphics/Bitmap;
    if-nez v1, :cond_11

    .line 588
    invoke-virtual {p0, p2, p1}, Lcom/google/android/music/utils/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :goto_f
    monitor-exit p0

    .line 597
    .end local v1           #value:Landroid/graphics/Bitmap;
    :cond_10
    return v0

    .line 591
    .restart local v1       #value:Landroid/graphics/Bitmap;
    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 592
    move-object p1, v1

    .line 593
    const/4 v0, 0x1

    goto :goto_f

    .line 595
    .end local v1           #value:Landroid/graphics/Bitmap;
    :catchall_17
    move-exception v2

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v2
.end method

.method private static renderFauxLabel(Landroid/graphics/Canvas;IIIIZLjava/lang/String;IIZII)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1579
    new-instance v9, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v9, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 1580
    int-to-float v1, p4

    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1581
    if-eqz p5, :cond_12

    .line 1582
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1585
    :cond_12
    invoke-virtual {v9}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 1587
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1588
    const/4 v3, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v9, v0, v3, v4, v2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1589
    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v10, p3, v1

    .line 1590
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 1592
    move/from16 v0, p11

    if-lt v1, v0, :cond_31

    .line 1593
    const/16 p9, 0x0

    .line 1595
    :cond_31
    if-le v1, p1, :cond_59

    const/4 v1, 0x1

    .line 1596
    :goto_34
    if-eqz v1, :cond_5b

    .line 1597
    new-instance v1, Landroid/graphics/LinearGradient;

    add-int v2, p2, p1

    sub-int v2, v2, p8

    int-to-float v2, v2

    const/4 v3, 0x0

    add-int v4, p2, p1

    int-to-float v4, v4

    const/4 v5, 0x0

    const v6, 0xffffff

    and-int v7, v6, p7

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move/from16 v6, p7

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 1601
    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1608
    :cond_51
    :goto_51
    int-to-float v1, p2

    int-to-float v2, v10

    move-object/from16 v0, p6

    invoke-virtual {p0, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1609
    return-void

    .line 1595
    :cond_59
    const/4 v1, 0x0

    goto :goto_34

    .line 1603
    :cond_5b
    move/from16 v0, p7

    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1604
    if-eqz p9, :cond_51

    .line 1605
    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int p2, p10, v1

    goto :goto_51
.end method

.method public static declared-synchronized report(Ljava/lang/OutOfMemoryError;)V
    .registers 6
    .parameter "e"

    .prologue
    .line 884
    const-class v2, Lcom/google/android/music/utils/AlbumArtUtils;

    monitor-enter v2

    :try_start_3
    sget-boolean v1, Lcom/google/android/music/utils/AlbumArtUtils;->sHprofDumped:Z

    if-nez v1, :cond_48

    .line 885
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/music/utils/AlbumArtUtils;->sHprofDumped:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4a

    .line 887
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

    .line 888
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 889
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

    .line 897
    .end local v0           #path:Ljava/lang/String;
    :cond_48
    :goto_48
    monitor-exit v2

    return-void

    .line 884
    :catchall_4a
    move-exception v1

    monitor-exit v2

    throw v1

    .line 893
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
    .line 869
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

    .line 871
    invoke-static {p0}, Lcom/google/android/music/utils/AlbumArtUtils;->report(Ljava/lang/OutOfMemoryError;)V

    .line 872
    throw p0
.end method

.method private static resizeCaches()V
    .registers 13

    .prologue
    const/4 v12, 0x0

    .line 642
    sget-object v10, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    monitor-enter v10

    .line 643
    :try_start_4
    sget v9, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    sget v11, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    if-gt v9, v11, :cond_c

    .line 646
    monitor-exit v10

    .line 675
    .local v2, cacheSizeIndex:I
    .local v3, i:I
    .local v4, i$:Ljava/util/Iterator;
    .local v6, sizeCacheRequests:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    .local v7, sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .local v8, totalSizeCacheRequests:I
    :cond_b
    return-void

    .line 648
    .end local v2           #cacheSizeIndex:I
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #sizeCacheRequests:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    .end local v7           #sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v8           #totalSizeCacheRequests:I
    :cond_c
    sget v8, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    .line 650
    .restart local v8       #totalSizeCacheRequests:I
    new-instance v6, Ljava/util/HashMap;

    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCacheRequests:Ljava/util/HashMap;

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 651
    .restart local v6       #sizeCacheRequests:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    const/4 v9, 0x0

    sput v9, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    .line 652
    sget v9, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    add-int/lit16 v9, v9, 0xc8

    sput v9, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    .line 653
    monitor-exit v10
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_52

    .line 654
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 655
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

    .line 656
    .local v1, cache:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;

    #getter for: Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->cacheHits:I
    invoke-static {v9}, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->access$300(Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/google/android/music/utils/AlbumArtUtils;->sortedInsert(Ljava/util/ArrayList;Landroid/util/Pair;)V

    goto :goto_2c

    .line 653
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

    .line 659
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #sizeCacheRequests:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;>;"
    .restart local v7       #sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_55
    const/4 v2, 0x0

    .line 660
    .restart local v2       #cacheSizeIndex:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_57
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_b

    .line 661
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 663
    .local v5, keyAndHits:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    iget-object v10, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/utils/LruCache;

    .line 664
    .local v0, cache:Lcom/google/android/music/utils/LruCache;,"Lcom/google/android/music/utils/LruCache<Lcom/google/android/music/utils/AlbumArtUtils$ArtCacheKey;Landroid/graphics/Bitmap;>;"
    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x3

    if-le v9, v10, :cond_8b

    .line 665
    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_SIZES:[I

    aget v9, v9, v2

    invoke-virtual {v0, v9}, Lcom/google/android/music/utils/LruCache;->setCapacity(I)V

    .line 670
    :goto_7f
    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_SIZES:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-eq v2, v9, :cond_88

    .line 671
    add-int/lit8 v2, v2, 0x1

    .line 660
    :cond_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    .line 667
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
    .line 747
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 748
    .local v1, outWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 749
    .local v0, outHeight:I
    if-nez p3, :cond_f

    if-gt v1, p1, :cond_f

    if-gt v0, p2, :cond_f

    .line 761
    :cond_e
    :goto_e
    return-object p0

    .line 753
    :cond_f
    if-ne v1, p1, :cond_13

    if-eq v0, p2, :cond_e

    .line 754
    :cond_13
    const/4 v3, 0x1

    invoke-static {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 756
    .local v2, tmp:Landroid/graphics/Bitmap;
    if-eq v2, p0, :cond_1d

    .line 757
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 759
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
    .line 697
    const/4 v0, 0x2

    new-array v5, v0, [I

    .local v5, originalBounds:[I
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    .line 698
    invoke-static/range {v0 .. v5}, Lcom/google/android/music/utils/AlbumArtUtils;->resolveArtworkRaw(Landroid/content/Context;JII[I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 701
    .local v6, b:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_11

    .line 703
    :try_start_d
    invoke-static {v6, p3, p4, p5}, Lcom/google/android/music/utils/AlbumArtUtils;->resizeHelper(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_10} :catch_12

    move-result-object v6

    .line 739
    :cond_11
    :goto_11
    return-object v6

    .line 736
    :catch_12
    move-exception v7

    .line 737
    .local v7, e:Ljava/lang/OutOfMemoryError;
    invoke-static {v7, p3, p4}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    goto :goto_11
.end method

.method private static resolveArtworkFromUrl(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .registers 23
    .parameter "albumArtUrl"
    .parameter "width"
    .parameter "height"
    .parameter "mayScaleUp"

    .prologue
    .line 318
    sget-boolean v15, Lcom/google/android/music/utils/AlbumArtUtils;->LOGV:Z

    if-eqz v15, :cond_20

    .line 319
    const-string v15, "AlbumArtUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "resolveArtworkFromUrl: albumArtUrl="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_20
    if-lez p1, :cond_24

    if-gtz p2, :cond_2c

    .line 323
    :cond_24
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "must provide a width and height"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 325
    :cond_2c
    if-nez p0, :cond_30

    .line 326
    const/4 v6, 0x0

    .line 377
    :cond_2f
    :goto_2f
    return-object v6

    .line 329
    :cond_30
    const/4 v10, 0x0

    .line 331
    .local v10, dataStream:Ljava/io/ByteArrayInputStream;
    const/4 v12, 0x0

    .line 332
    .local v12, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 335
    .local v4, bis:Ljava/io/BufferedInputStream;
    const/16 v3, 0x2800

    .line 336
    .local v3, IO_BLOCK_SIZE:I
    :try_start_35
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    .line 337
    .local v9, conn:Ljava/net/URLConnection;
    invoke-virtual {v9}, Ljava/net/URLConnection;->connect()V

    .line 338
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 339
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v15, 0x2800

    invoke-direct {v5, v12, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_100
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4e} :catch_10b

    .line 340
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .local v5, bis:Ljava/io/BufferedInputStream;
    :try_start_4e
    invoke-virtual {v9}, Ljava/net/URLConnection;->getContentLength()I

    move-result v13

    .line 341
    .local v13, length:I
    new-instance v14, Lcom/google/android/music/utils/AlbumArtUtils$ExtractableByteArrayOutputStream;

    const/4 v15, -0x1

    if-ne v13, v15, :cond_59

    const/16 v13, 0x2800

    .end local v13           #length:I
    :cond_59
    invoke-direct {v14, v13}, Lcom/google/android/music/utils/AlbumArtUtils$ExtractableByteArrayOutputStream;-><init>(I)V

    .line 343
    .local v14, outputStream:Lcom/google/android/music/utils/AlbumArtUtils$ExtractableByteArrayOutputStream;
    const/16 v15, 0x2800

    new-array v7, v15, [B

    .line 346
    .local v7, buffer:[B
    :goto_60
    invoke-virtual {v12, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, bytesRead:I
    const/4 v15, -0x1

    if-eq v8, v15, :cond_7f

    .line 347
    const/4 v15, 0x0

    invoke-virtual {v14, v7, v15, v8}, Lcom/google/android/music/utils/AlbumArtUtils$ExtractableByteArrayOutputStream;->write([BII)V
    :try_end_6b
    .catchall {:try_start_4e .. :try_end_6b} :catchall_108
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_6b} :catch_6c

    goto :goto_60

    .line 350
    .end local v7           #buffer:[B
    .end local v8           #bytesRead:I
    .end local v14           #outputStream:Lcom/google/android/music/utils/AlbumArtUtils$ExtractableByteArrayOutputStream;
    :catch_6c
    move-exception v11

    move-object v4, v5

    .line 351
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #conn:Ljava/net/URLConnection;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .local v11, e:Ljava/io/IOException;
    :goto_6e
    :try_start_6e
    const-string v15, "AlbumArtUtils"

    const-string v16, "Exception: "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_100

    .line 352
    const/4 v6, 0x0

    .line 354
    invoke-static {v4}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 355
    invoke-static {v12}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2f

    .line 349
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #e:Ljava/io/IOException;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #buffer:[B
    .restart local v8       #bytesRead:I
    .restart local v9       #conn:Ljava/net/URLConnection;
    .restart local v14       #outputStream:Lcom/google/android/music/utils/AlbumArtUtils$ExtractableByteArrayOutputStream;
    :cond_7f
    :try_start_7f
    invoke-virtual {v14}, Lcom/google/android/music/utils/AlbumArtUtils$ExtractableByteArrayOutputStream;->toInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_108
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_6c

    move-result-object v10

    .line 354
    invoke-static {v5}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 355
    invoke-static {v12}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 359
    sget-object v15, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 360
    const/4 v15, 0x0

    sget-object v16, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, v16

    invoke-static {v10, v15, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 361
    sget-object v15, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 362
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 363
    sget-object v15, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/16 v16, 0x1

    sget-object v17, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    div-int v17, v17, p1

    sget-object v18, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v18, v0

    div-int v18, v18, p2

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 366
    const/4 v15, 0x0

    sget-object v16, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v0, v16

    invoke-static {v10, v15, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 367
    .local v6, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 369
    sget-boolean v15, Lcom/google/android/music/utils/AlbumArtUtils;->LOGV:Z

    if-eqz v15, :cond_f2

    .line 370
    const-string v15, "AlbumArtUtils"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "resolveArtworkFromUrl: Pulled bitmap: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_f2
    if-eqz v6, :cond_2f

    .line 374
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v6, v0, v1, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->resizeHelper(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_2f

    .line 354
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #bm:Landroid/graphics/Bitmap;
    .end local v7           #buffer:[B
    .end local v8           #bytesRead:I
    .end local v9           #conn:Ljava/net/URLConnection;
    .end local v14           #outputStream:Lcom/google/android/music/utils/AlbumArtUtils$ExtractableByteArrayOutputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    :catchall_100
    move-exception v15

    :goto_101
    invoke-static {v4}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 355
    invoke-static {v12}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v15

    .line 354
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #conn:Ljava/net/URLConnection;
    :catchall_108
    move-exception v15

    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto :goto_101

    .line 350
    .end local v9           #conn:Ljava/net/URLConnection;
    :catch_10b
    move-exception v11

    goto/16 :goto_6e
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

    .line 813
    const/4 v2, 0x0

    .line 815
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/music/store/MusicContent$AlbumArt;->openFileDescriptor(Landroid/content/Context;JII)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_92
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_7} :catch_60
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_7} :catch_88

    move-result-object v2

    .line 816
    if-nez v2, :cond_10

    .line 859
    if-eqz v2, :cond_f

    .line 860
    :try_start_c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_99

    .line 864
    :cond_f
    :goto_f
    return-object v0

    .line 819
    :cond_10
    const/4 v5, 0x1

    .line 820
    .local v5, sampleSize:I
    if-lez p3, :cond_56

    if-lez p4, :cond_56

    .line 822
    .local v6, sizeGiven:Z
    :goto_15
    if-eqz v6, :cond_58

    .line 826
    :try_start_17
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 827
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 828
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 832
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/music/store/MusicContent$AlbumArt;->openFileDescriptor(Landroid/content/Context;JII)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 833
    if-eqz p5, :cond_3f

    .line 834
    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v8, p5, v7

    .line 835
    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v8, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v8, p5, v7

    .line 837
    :cond_3f
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v7, 0x1

    .line 838
    .local v4, nextWidth:I
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v7, 0x1

    .line 839
    .local v3, nextHeight:I
    :goto_4b
    if-le v4, p3, :cond_6c

    if-le v3, p4, :cond_6c

    .line 840
    shl-int/lit8 v5, v5, 0x1

    .line 841
    shr-int/lit8 v4, v4, 0x1

    .line 842
    shr-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    .end local v6           #sizeGiven:Z
    :cond_56
    move v6, v7

    .line 820
    goto :goto_15

    .line 845
    .restart local v6       #sizeGiven:Z
    :cond_58
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "must specify target height and width"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_60
    .catchall {:try_start_17 .. :try_end_60} :catchall_92
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_60} :catch_60
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_60} :catch_88

    .line 854
    .end local v5           #sampleSize:I
    .end local v6           #sizeGiven:Z
    :catch_60
    move-exception v1

    .line 855
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_61
    invoke-static {v1, p3, p4}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_92

    .line 859
    if-eqz v2, :cond_f

    .line 860
    :try_start_66
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_f

    .line 861
    :catch_6a
    move-exception v7

    goto :goto_f

    .line 848
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v3       #nextHeight:I
    .restart local v4       #nextWidth:I
    .restart local v5       #sampleSize:I
    .restart local v6       #sizeGiven:Z
    :cond_6c
    :try_start_6c
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v5, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 849
    sget-object v7, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 850
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7f
    .catchall {:try_start_6c .. :try_end_7f} :catchall_92
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6c .. :try_end_7f} :catch_60
    .catch Ljava/io/FileNotFoundException; {:try_start_6c .. :try_end_7f} :catch_88

    move-result-object v0

    .line 859
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_f

    .line 860
    :try_start_82
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_f

    .line 861
    :catch_86
    move-exception v7

    goto :goto_f

    .line 856
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    .end local v5           #sampleSize:I
    .end local v6           #sizeGiven:Z
    :catch_88
    move-exception v7

    .line 859
    if-eqz v2, :cond_f

    .line 860
    :try_start_8b
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_f

    .line 861
    :catch_8f
    move-exception v7

    goto/16 :goto_f

    .line 858
    :catchall_92
    move-exception v7

    .line 859
    if-eqz v2, :cond_98

    .line 860
    :try_start_95
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_9c

    .line 862
    :cond_98
    :goto_98
    throw v7

    .line 861
    :catch_99
    move-exception v7

    goto/16 :goto_f

    :catch_9c
    move-exception v8

    goto :goto_98
.end method

.method public static scaleToFit(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "bm"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x1

    .line 1632
    if-lez p1, :cond_38

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_38

    .line 1634
    :cond_f
    :goto_f
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    if-le v1, v2, :cond_2e

    .line 1635
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1637
    .local v0, tmp:Landroid/graphics/Bitmap;
    if-eq v0, p0, :cond_2c

    .line 1638
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1640
    :cond_2c
    move-object p0, v0

    .line 1641
    goto :goto_f

    .line 1642
    .end local v0           #tmp:Landroid/graphics/Bitmap;
    :cond_2e
    invoke-static {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1643
    .restart local v0       #tmp:Landroid/graphics/Bitmap;
    if-eq v0, p0, :cond_37

    .line 1644
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1646
    :cond_37
    move-object p0, v0

    .line 1648
    .end local v0           #tmp:Landroid/graphics/Bitmap;
    :cond_38
    return-object p0
.end method

.method public static setPreferredConfig(Landroid/graphics/Bitmap$Config;)V
    .registers 2
    .parameter "config"

    .prologue
    .line 211
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 212
    sget-object v0, Lcom/google/android/music/utils/AlbumArtUtils;->sExternalBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-object p0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 213
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

    .line 1557
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
    .line 685
    .local p0, sortedCacheKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .local p1, insertMe:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 686
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

    .line 687
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 689
    :cond_22
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 690
    return-void
.end method

.method private static trackCacheUsage(Ljava/lang/String;Z)V
    .registers 6
    .parameter "sizeKey"
    .parameter "cacheHit"

    .prologue
    .line 615
    sget-object v2, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 616
    :try_start_3
    sget v1, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    .line 617
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCacheRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;

    .line 619
    .local v0, cacheRequest:Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;
    if-nez v0, :cond_1e

    .line 620
    new-instance v0, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;

    .end local v0           #cacheRequest:Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;-><init>(Lcom/google/android/music/utils/AlbumArtUtils$1;)V

    .line 621
    .restart local v0       #cacheRequest:Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;
    sget-object v1, Lcom/google/android/music/utils/AlbumArtUtils;->sSizeCacheRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_1e
    invoke-static {v0}, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->access$208(Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;)I

    .line 624
    if-eqz p1, :cond_26

    .line 625
    invoke-static {v0}, Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;->access$308(Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;)I

    .line 628
    :cond_26
    sget v1, Lcom/google/android/music/utils/AlbumArtUtils;->sTotalSizeCacheRequests:I

    sget v3, Lcom/google/android/music/utils/AlbumArtUtils;->CACHE_REQUESTS_TO_RESIZE:I

    if-le v1, v3, :cond_34

    .line 629
    new-instance v1, Lcom/google/android/music/utils/AlbumArtUtils$2;

    invoke-direct {v1}, Lcom/google/android/music/utils/AlbumArtUtils$2;-><init>()V

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 635
    :cond_34
    monitor-exit v2

    .line 636
    return-void

    .line 635
    .end local v0           #cacheRequest:Lcom/google/android/music/utils/AlbumArtUtils$CacheRequest;
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method
