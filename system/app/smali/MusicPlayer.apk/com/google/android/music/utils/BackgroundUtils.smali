.class public Lcom/google/android/music/utils/BackgroundUtils;
.super Ljava/lang/Object;
.source "BackgroundUtils.java"


# static fields
.field private static final COLOR_FADE:[C

.field private static final KERNEL_NORM:[I

.field private static TAG:Ljava/lang/String;

.field private static mAdaptedBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/high16 v5, 0x3f80

    .line 18
    const-string v2, "BackgroundUtils"

    sput-object v2, Lcom/google/android/music/utils/BackgroundUtils;->TAG:Ljava/lang/String;

    .line 20
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    .line 35
    const/16 v2, 0x900

    new-array v2, v2, [I

    sput-object v2, Lcom/google/android/music/utils/BackgroundUtils;->KERNEL_NORM:[I

    .line 36
    const/16 v2, 0x100

    new-array v2, v2, [C

    sput-object v2, Lcom/google/android/music/utils/BackgroundUtils;->COLOR_FADE:[C

    .line 48
    const/16 v0, 0x8ff

    .local v0, i:I
    :goto_1b
    if-ltz v0, :cond_26

    .line 49
    sget-object v2, Lcom/google/android/music/utils/BackgroundUtils;->KERNEL_NORM:[I

    div-int/lit8 v3, v0, 0x9

    aput v3, v2, v0

    .line 48
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 53
    :cond_26
    const/4 v0, 0x0

    :goto_27
    const/16 v2, 0xff

    if-ge v0, v2, :cond_4b

    .line 55
    const/high16 v2, 0x4000

    int-to-float v3, v0

    const/high16 v4, 0x40c0

    mul-float/2addr v3, v4

    const/high16 v4, 0x437f

    div-float/2addr v3, v4

    neg-float v3, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v3, v5

    div-float/2addr v2, v3

    sub-float v1, v2, v5

    .line 56
    .local v1, p:F
    sget-object v2, Lcom/google/android/music/utils/BackgroundUtils;->COLOR_FADE:[C

    const/high16 v3, 0x42e0

    mul-float/2addr v3, v1

    float-to-int v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 58
    .end local v1           #p:F
    :cond_4b
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "context"
    .parameter "albumId"

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x80

    .line 120
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v4, v3

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtwork(Landroid/content/Context;JIIZLjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 122
    .local v8, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/google/android/music/utils/BackgroundUtils;->createAdaptedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createAdaptedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "bitmap"

    .prologue
    const/16 v3, 0x80

    .line 130
    if-eqz p0, :cond_3c

    .line 131
    invoke-static {p0, v3, v3}, Lcom/google/android/music/utils/BackgroundUtils;->scaleShadeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, adaptedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/google/android/music/utils/BackgroundUtils;->createTileableTexture(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/google/android/music/utils/BackgroundUtils;->gaussianBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    :goto_10
    sget-object v3, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_44

    .line 139
    sget-object v3, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 141
    .local v2, bitmaps:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 143
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_24

    .line 144
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_24

    .line 136
    .end local v0           #adaptedBitmap:Landroid/graphics/Bitmap;
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v2           #bitmaps:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    :cond_3c
    sget-object v0, Lcom/google/android/music/utils/BackgroundUtils;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    .restart local v0       #adaptedBitmap:Landroid/graphics/Bitmap;
    goto :goto_10

    .line 147
    .restart local v2       #bitmaps:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    :cond_3f
    sget-object v3, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 149
    .end local v2           #bitmaps:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    :cond_44
    return-object v0
.end method

.method private static createDefaultBackgroundBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "context"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 77
    .local v2, is:Ljava/io/InputStream;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 83
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 85
    const/4 v4, 0x0

    :try_start_15
    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_26

    move-result-object v0

    .line 88
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_19
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 94
    :goto_1c
    return-object v0

    .line 89
    :catch_1d
    move-exception v1

    .line 91
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/android/music/utils/BackgroundUtils;->TAG:Ljava/lang/String;

    const-string v5, "Could not create default background bitmap"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 87
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    :catchall_26
    move-exception v4

    .line 88
    :try_start_27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 92
    :goto_2a
    throw v4

    .line 89
    :catch_2b
    move-exception v1

    .line 91
    .restart local v1       #e:Ljava/io/IOException;
    sget-object v5, Lcom/google/android/music/utils/BackgroundUtils;->TAG:Ljava/lang/String;

    const-string v6, "Could not create default background bitmap"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method private static createTileableTexture(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 155
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 156
    .local v7, height:I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .line 157
    .local v1, pixels:[I
    div-int/lit8 v11, v3, 0x2

    .line 158
    .local v11, outWidth:I
    div-int/lit8 v10, v7, 0x2

    .line 159
    .local v10, outHeight:I
    mul-int v0, v10, v3

    new-array v12, v0, [I

    .line 160
    .local v12, tmp:[I
    mul-int v0, v11, v10

    new-array v9, v0, [I

    .local v9, out:[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 161
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 162
    invoke-static {v1, v12, v3, v7}, Lcom/google/android/music/utils/BackgroundUtils;->tilepass([I[III)V

    .line 163
    invoke-static {v12, v9, v10, v3}, Lcom/google/android/music/utils/BackgroundUtils;->tilepass([I[III)V

    .line 164
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v11, v10, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 165
    .local v8, dest:Landroid/graphics/Bitmap;
    return-object v8
.end method

.method private static darken([I)V
    .registers 14
    .parameter "in"

    .prologue
    .line 312
    array-length v8, p0

    .line 313
    .local v8, numPixels:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v8, :cond_37

    .line 314
    aget v5, p0, v2

    .line 315
    .local v5, inpixel:I
    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v6, v11, 0xff

    .line 316
    .local v6, inr:I
    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v4, v11, 0xff

    .line 317
    .local v4, ing:I
    and-int/lit16 v3, v5, 0xff

    .line 318
    .local v3, inb:I
    if-le v6, v4, :cond_33

    move v7, v6

    .line 319
    .local v7, lum:I
    :goto_13
    if-le v7, v3, :cond_35

    .line 320
    :goto_15
    sget-object v11, Lcom/google/android/music/utils/BackgroundUtils;->COLOR_FADE:[C

    aget-char v10, v11, v7

    .line 321
    .local v10, scale:I
    mul-int v11, v10, v6

    shr-int/lit8 v9, v11, 0x8

    .line 322
    .local v9, r:I
    mul-int v11, v10, v4

    shr-int/lit8 v1, v11, 0x8

    .line 323
    .local v1, g:I
    mul-int v11, v10, v3

    shr-int/lit8 v0, v11, 0x8

    .line 324
    .local v0, b:I
    const/high16 v11, -0x100

    shl-int/lit8 v12, v9, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x8

    or-int/2addr v11, v12

    or-int/2addr v11, v0

    aput v11, p0, v2

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #b:I
    .end local v1           #g:I
    .end local v7           #lum:I
    .end local v9           #r:I
    .end local v10           #scale:I
    :cond_33
    move v7, v4

    .line 318
    goto :goto_13

    .restart local v7       #lum:I
    :cond_35
    move v7, v3

    .line 319
    goto :goto_15

    .line 326
    .end local v3           #inb:I
    .end local v4           #ing:I
    .end local v5           #inpixel:I
    .end local v6           #inr:I
    .end local v7           #lum:I
    :cond_37
    return-void
.end method

.method public static gaussianBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 200
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 202
    .local v7, height:I
    mul-int v9, v3, v7

    .line 203
    .local v9, numPixels:I
    new-array v1, v9, [I

    .line 204
    .local v1, in:[I
    new-array v10, v9, [I

    .local v10, tmp:[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 207
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 216
    invoke-static {v1, v10, v3, v7}, Lcom/google/android/music/utils/BackgroundUtils;->gaussianBlurFilter([I[III)V

    .line 217
    invoke-static {v10, v1, v3, v7}, Lcom/google/android/music/utils/BackgroundUtils;->gaussianBlurFilter([I[III)V

    .line 220
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 221
    .local v8, filtered:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 222
    return-object v8
.end method

.method private static gaussianBlurFilter([I[III)V
    .registers 20
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 226
    const/16 v14, 0x9

    new-array v10, v14, [I

    fill-array-data v10, :array_5a

    .line 227
    .local v10, weights:[I
    const/4 v6, 0x0

    .line 228
    .local v6, inPos:I
    add-int/lit8 v11, p2, -0x1

    .line 229
    .local v11, widthMask:I
    const/4 v13, 0x0

    .local v13, y:I
    :goto_b
    move/from16 v0, p3

    if-ge v13, v0, :cond_59

    .line 231
    const/16 v1, 0xff

    .line 233
    .local v1, alpha:I
    move v7, v13

    .line 234
    .local v7, outPos:I
    const/4 v12, 0x0

    .local v12, x:I
    :goto_13
    move/from16 v0, p2

    if-ge v12, v0, :cond_54

    .line 235
    const/4 v8, 0x0

    .line 236
    .local v8, red:I
    const/4 v4, 0x0

    .line 237
    .local v4, green:I
    const/4 v3, 0x0

    .line 238
    .local v3, blue:I
    const/4 v5, -0x4

    .local v5, i:I
    :goto_1b
    const/4 v14, 0x4

    if-gt v5, v14, :cond_3e

    .line 239
    add-int v14, v12, v5

    and-int/2addr v14, v11

    add-int/2addr v14, v6

    aget v2, p0, v14

    .line 240
    .local v2, argb:I
    add-int/lit8 v14, v5, 0x4

    aget v9, v10, v14

    .line 241
    .local v9, weight:I
    const/high16 v14, 0xff

    and-int/2addr v14, v2

    shr-int/lit8 v14, v14, 0x10

    mul-int/2addr v14, v9

    add-int/2addr v8, v14

    .line 242
    const v14, 0xff00

    and-int/2addr v14, v2

    shr-int/lit8 v14, v14, 0x8

    mul-int/2addr v14, v9

    add-int/2addr v4, v14

    .line 243
    and-int/lit16 v14, v2, 0xff

    mul-int/2addr v14, v9

    add-int/2addr v3, v14

    .line 238
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 246
    .end local v2           #argb:I
    .end local v9           #weight:I
    :cond_3e
    const/high16 v14, -0x100

    shr-int/lit8 v15, v8, 0x8

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    shr-int/lit8 v15, v4, 0x8

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    shr-int/lit8 v15, v3, 0x8

    or-int/2addr v14, v15

    aput v14, p1, v7

    .line 249
    add-int v7, v7, p3

    .line 234
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 251
    .end local v3           #blue:I
    .end local v4           #green:I
    .end local v5           #i:I
    .end local v8           #red:I
    :cond_54
    add-int v6, v6, p2

    .line 229
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 253
    .end local v1           #alpha:I
    .end local v7           #outPos:I
    .end local v12           #x:I
    :cond_59
    return-void

    .line 226
    :array_5a
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "context"
    .parameter "albumId"

    .prologue
    .line 99
    sget-object v2, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 100
    :try_start_3
    sget-object v1, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 101
    .local v0, adaptedBitmap:Landroid/graphics/Bitmap;
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2a

    .line 102
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 107
    :cond_18
    invoke-static {p0, p1, p2}, Lcom/google/android/music/utils/BackgroundUtils;->createAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    sget-object v2, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 109
    :try_start_1f
    sget-object v1, Lcom/google/android/music/utils/BackgroundUtils;->mAdaptedBitmapCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    .line 112
    :cond_29
    return-object v0

    .line 101
    .end local v0           #adaptedBitmap:Landroid/graphics/Bitmap;
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1

    .line 110
    .restart local v0       #adaptedBitmap:Landroid/graphics/Bitmap;
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public static getDefaultBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "context"

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/music/utils/BackgroundUtils;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/music/utils/BackgroundUtils;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 68
    :cond_c
    invoke-static {p0}, Lcom/google/android/music/utils/BackgroundUtils;->createDefaultBackgroundBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/utils/BackgroundUtils;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 70
    :cond_12
    sget-object v0, Lcom/google/android/music/utils/BackgroundUtils;->mDefaultBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "bitmap"
    .parameter "maxSize"

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 330
    .local v4, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 331
    .local v3, srcHeight:I
    move v5, p1

    .line 332
    .local v5, width:I
    move v0, p1

    .line 333
    .local v0, height:I
    const/4 v1, 0x0

    .line 334
    .local v1, needsResize:Z
    if-le v4, v3, :cond_1c

    .line 335
    if-le v4, p1, :cond_14

    .line 336
    const/4 v1, 0x1

    .line 337
    mul-int v6, p1, v3

    div-int v0, v6, v4

    .line 345
    :cond_14
    :goto_14
    if-eqz v1, :cond_24

    .line 346
    const/4 v6, 0x1

    invoke-static {p0, v5, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 349
    :goto_1b
    return-object v2

    .line 340
    :cond_1c
    if-le v3, p1, :cond_14

    .line 341
    const/4 v1, 0x1

    .line 342
    mul-int v6, p1, v4

    div-int v5, v6, v3

    goto :goto_14

    :cond_24
    move-object v2, p0

    .line 349
    goto :goto_1b
.end method

.method public static scaleShadeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 23
    .parameter "source"
    .parameter "destWidth"
    .parameter "destHeight"

    .prologue
    .line 258
    const/16 v2, 0x80

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/music/utils/BackgroundUtils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 259
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 260
    .local v19, sourceWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 261
    .local v18, sourceHeight:I
    move/from16 v0, v19

    int-to-float v2, v0

    move/from16 v0, p1

    int-to-float v4, v0

    div-float v12, v2, v4

    .line 262
    .local v12, fitX:F
    move/from16 v0, v18

    int-to-float v2, v0

    move/from16 v0, p2

    int-to-float v4, v0

    div-float v13, v2, v4

    .line 268
    .local v13, fitY:F
    cmpg-float v2, v12, v13

    if-gez v2, :cond_83

    .line 270
    move/from16 v5, v19

    .line 271
    .local v5, cropWidth:I
    move/from16 v0, p2

    int-to-float v2, v0

    mul-float/2addr v2, v12

    float-to-int v9, v2

    .line 272
    .local v9, cropHeight:I
    const/4 v6, 0x0

    .line 273
    .local v6, cropX:I
    sub-int v2, v18, v9

    div-int/lit8 v7, v2, 0x2

    .line 274
    .local v7, cropY:I
    const/high16 v2, 0x3f80

    div-float v17, v2, v12

    .line 285
    .local v17, scale:F
    :goto_34
    mul-int v14, v5, v9

    .line 286
    .local v14, numPixels:I
    new-array v3, v14, [I

    .line 289
    .local v3, in:[I
    const/4 v4, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 291
    invoke-static {v3}, Lcom/google/android/music/utils/BackgroundUtils;->darken([I)V

    .line 294
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v9, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 297
    .local v11, filtered:Landroid/graphics/Bitmap;
    move/from16 v0, p1

    if-ne v0, v5, :cond_50

    move/from16 v0, p2

    if-eq v0, v9, :cond_82

    .line 298
    :cond_50
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 299
    .local v15, output:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    .local v10, canvas:Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 301
    .local v16, paint:Landroid/graphics/Paint;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 302
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 303
    move/from16 v0, v17

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 304
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v10, v11, v2, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 305
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 306
    move-object v11, v15

    .line 308
    .end local v10           #canvas:Landroid/graphics/Canvas;
    .end local v15           #output:Landroid/graphics/Bitmap;
    .end local v16           #paint:Landroid/graphics/Paint;
    :cond_82
    return-object v11

    .line 277
    .end local v3           #in:[I
    .end local v5           #cropWidth:I
    .end local v6           #cropX:I
    .end local v7           #cropY:I
    .end local v9           #cropHeight:I
    .end local v11           #filtered:Landroid/graphics/Bitmap;
    .end local v14           #numPixels:I
    .end local v17           #scale:F
    :cond_83
    move/from16 v0, p1

    int-to-float v2, v0

    mul-float/2addr v2, v13

    float-to-int v5, v2

    .line 278
    .restart local v5       #cropWidth:I
    move/from16 v9, v18

    .line 279
    .restart local v9       #cropHeight:I
    sub-int v2, v19, v5

    div-int/lit8 v6, v2, 0x2

    .line 280
    .restart local v6       #cropX:I
    const/4 v7, 0x0

    .line 281
    .restart local v7       #cropY:I
    const/high16 v2, 0x3f80

    div-float v17, v2, v13

    .restart local v17       #scale:F
    goto :goto_34
.end method

.method private static tilepass([I[III)V
    .registers 26
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 173
    div-int/lit8 v11, p3, 0x2

    .line 174
    .local v11, halfHeight:I
    const/16 v19, 0x0

    .local v19, y:I
    :goto_4
    move/from16 v0, v19

    if-ge v0, v11, :cond_74

    .line 176
    shl-int/lit8 v20, v19, 0x8

    div-int v2, v20, v11

    .line 177
    .local v2, a0:I
    rsub-int v3, v2, 0x100

    .line 178
    .local v3, a1:I
    const/16 v18, 0x0

    .local v18, x:I
    :goto_10
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_71

    .line 179
    mul-int v20, v19, p2

    add-int v20, v20, v18

    aget v12, p0, v20

    .line 180
    .local v12, p0:I
    add-int v20, v19, v11

    mul-int v20, v20, p2

    add-int v20, v20, v18

    aget v13, p0, v20

    .line 181
    .local v13, p1:I
    shr-int/lit8 v20, v12, 0x10

    move/from16 v0, v20

    and-int/lit16 v15, v0, 0xff

    .line 182
    .local v15, r0:I
    shr-int/lit8 v20, v12, 0x8

    move/from16 v0, v20

    and-int/lit16 v8, v0, 0xff

    .line 183
    .local v8, g0:I
    and-int/lit16 v5, v12, 0xff

    .line 184
    .local v5, b0:I
    shr-int/lit8 v20, v13, 0x10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 185
    .local v16, r1:I
    shr-int/lit8 v20, v13, 0x8

    move/from16 v0, v20

    and-int/lit16 v9, v0, 0xff

    .line 186
    .local v9, g1:I
    and-int/lit16 v6, v13, 0xff

    .line 187
    .local v6, b1:I
    mul-int v20, v15, v2

    mul-int v21, v16, v3

    add-int v20, v20, v21

    shr-int/lit8 v17, v20, 0x8

    .line 188
    .local v17, r3:I
    mul-int v20, v8, v2

    mul-int v21, v9, v3

    add-int v20, v20, v21

    shr-int/lit8 v10, v20, 0x8

    .line 189
    .local v10, g3:I
    mul-int v20, v5, v2

    mul-int v21, v6, v3

    add-int v20, v20, v21

    shr-int/lit8 v7, v20, 0x8

    .line 190
    .local v7, b3:I
    const/16 v4, 0xff

    .line 191
    .local v4, a3:I
    const/high16 v20, -0x100

    shl-int/lit8 v21, v17, 0x10

    or-int v20, v20, v21

    shl-int/lit8 v21, v10, 0x8

    or-int v20, v20, v21

    or-int v14, v20, v7

    .line 193
    .local v14, p3:I
    mul-int v20, v18, v11

    add-int v20, v20, v19

    aput v14, p1, v20

    .line 178
    add-int/lit8 v18, v18, 0x1

    goto :goto_10

    .line 174
    .end local v4           #a3:I
    .end local v5           #b0:I
    .end local v6           #b1:I
    .end local v7           #b3:I
    .end local v8           #g0:I
    .end local v9           #g1:I
    .end local v10           #g3:I
    .end local v12           #p0:I
    .end local v13           #p1:I
    .end local v14           #p3:I
    .end local v15           #r0:I
    .end local v16           #r1:I
    .end local v17           #r3:I
    :cond_71
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 196
    .end local v2           #a0:I
    .end local v3           #a1:I
    .end local v18           #x:I
    :cond_74
    return-void
.end method
