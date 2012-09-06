.class public final Lcom/dropbox/android/util/aQ;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    const/16 v0, 0x1f

    sput v0, Lcom/dropbox/android/util/aQ;->a:I

    return-void
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-static {p0, p1, p2}, Lcom/dropbox/android/util/aQ;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    .line 222
    const/16 v0, 0x8

    if-gt v1, v0, :cond_e

    .line 223
    const/4 v0, 0x1

    .line 224
    :goto_9
    if-ge v0, v1, :cond_14

    .line 225
    shl-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 228
    :cond_e
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    .line 231
    :cond_14
    return v0
.end method

.method private static a(Ljava/lang/String;)I
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 81
    :try_start_1
    const-string v0, "android.media.MediaFile"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    const-string v2, "getFileType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 83
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_40

    .line 85
    const-string v2, "android.media.MediaFile$MediaFileType"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 86
    const-string v3, "fileType"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 87
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 89
    if-eqz v0, :cond_40

    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_3d} :catch_4c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_3d} :catch_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_3d} :catch_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_3d} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_3d} :catch_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_3d} :catch_42
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_3d} :catch_3f

    move-result v0

    .line 101
    :goto_3e
    return v0

    .line 99
    :catch_3f
    move-exception v0

    :cond_40
    :goto_40
    move v0, v1

    .line 101
    goto :goto_3e

    .line 98
    :catch_42
    move-exception v0

    goto :goto_40

    .line 97
    :catch_44
    move-exception v0

    goto :goto_40

    .line 96
    :catch_46
    move-exception v0

    goto :goto_40

    .line 95
    :catch_48
    move-exception v0

    goto :goto_40

    .line 94
    :catch_4a
    move-exception v0

    goto :goto_40

    .line 93
    :catch_4c
    move-exception v0

    goto :goto_40
.end method

.method private static a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    if-nez p0, :cond_4

    .line 181
    const/4 v0, 0x0

    .line 194
    :goto_3
    return-object v0

    .line 185
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 186
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 190
    :goto_15
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 191
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 192
    or-int/lit8 v0, p3, 0x1

    invoke-static {v1, p0, p1, p2, v0}, Lcom/dropbox/android/util/aQ;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    .line 188
    :cond_24
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_15
.end method

.method private static a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x3f80

    const v9, 0x3f666666

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 268
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_76

    move v2, v6

    .line 269
    :goto_d
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_78

    move v7, v6

    .line 271
    :goto_12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, p2

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, p3

    .line 273
    if-nez v2, :cond_7a

    if-ltz v3, :cond_22

    if-gez v4, :cond_7a

    .line 280
    :cond_22
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 282
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 284
    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 285
    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 286
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {p3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v1

    invoke-direct {v4, v3, v1, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 291
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    .line 292
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v3, v3, 0x2

    .line 293
    new-instance v6, Landroid/graphics/Rect;

    sub-int v8, p2, v1

    sub-int v9, p3, v3

    invoke-direct {v6, v1, v3, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 298
    invoke-virtual {v5, p1, v4, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 299
    if-eqz v7, :cond_71

    .line 300
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 302
    :cond_71
    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v2

    .line 356
    :cond_75
    :goto_75
    return-object v0

    :cond_76
    move v2, v1

    .line 268
    goto :goto_d

    :cond_78
    move v7, v1

    .line 269
    goto :goto_12

    .line 305
    :cond_7a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 308
    div-float v4, v2, v3

    .line 309
    int-to-float v5, p2

    int-to-float v8, p3

    div-float/2addr v5, v8

    .line 311
    cmpl-float v4, v4, v5

    if-lez v4, :cond_d9

    .line 312
    int-to-float v2, p3

    div-float/2addr v2, v3

    .line 313
    cmpg-float v3, v2, v9

    if-ltz v3, :cond_97

    cmpl-float v3, v2, v10

    if-lez v3, :cond_d7

    .line 314
    :cond_97
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_9a
    move-object v5, p0

    .line 328
    :goto_9b
    if-eqz v5, :cond_eb

    .line 330
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    .line 336
    :goto_ac
    if-eqz v7, :cond_b3

    if-eq v2, p1, :cond_b3

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 340
    :cond_b3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 341
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 343
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2, v0, v1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    if-eq v0, v2, :cond_75

    .line 351
    if-nez v7, :cond_d3

    if-eq v2, p1, :cond_75

    .line 352
    :cond_d3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_75

    :cond_d7
    move-object p0, v0

    .line 316
    goto :goto_9a

    .line 319
    :cond_d9
    int-to-float v3, p2

    div-float v2, v3, v2

    .line 320
    cmpg-float v3, v2, v9

    if-ltz v3, :cond_e4

    cmpl-float v3, v2, v10

    if-lez v3, :cond_e9

    .line 321
    :cond_e4
    invoke-virtual {p0, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v5, p0

    goto :goto_9b

    :cond_e9
    move-object v5, v0

    .line 323
    goto :goto_9b

    :cond_eb
    move-object v2, p1

    .line 333
    goto :goto_ac
.end method

.method public static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, -0x1

    const/16 v4, 0x60

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    if-ne p1, v0, :cond_9

    move v2, v0

    .line 122
    :cond_9
    if-eqz v2, :cond_4c

    const/16 v0, 0x140

    move v3, v0

    .line 125
    :goto_e
    if-eqz v2, :cond_4e

    const/high16 v0, 0x3

    .line 128
    :goto_12
    new-instance v2, Lcom/dropbox/android/util/aS;

    invoke-direct {v2, v1}, Lcom/dropbox/android/util/aS;-><init>(Lcom/dropbox/android/util/aR;)V

    .line 130
    invoke-static {p0}, Lcom/dropbox/android/util/aQ;->a(Ljava/lang/String;)I

    move-result v5

    sget v6, Lcom/dropbox/android/util/aQ;->a:I

    if-ne v5, v6, :cond_9a

    .line 131
    invoke-static {p0, v3, v0, v2}, Lcom/dropbox/android/util/aQ;->a(Ljava/lang/String;IILcom/dropbox/android/util/aS;)V

    .line 132
    iget-object v2, v2, Lcom/dropbox/android/util/aS;->b:Landroid/graphics/Bitmap;

    .line 135
    :goto_24
    if-nez v2, :cond_98

    .line 137
    :try_start_26
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 138
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 139
    const/4 v7, 0x1

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 140
    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 141
    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 142
    iget-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v7, :cond_4a

    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v7, v8, :cond_4a

    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v7, v8, :cond_51

    :cond_4a
    move-object v0, v1

    .line 166
    :cond_4b
    :goto_4b
    return-object v0

    :cond_4c
    move v3, v4

    .line 122
    goto :goto_e

    .line 125
    :cond_4e
    const/16 v0, 0x4000

    goto :goto_12

    .line 146
    :cond_51
    invoke-static {v6, v3, v0}, Lcom/dropbox/android/util/aQ;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 151
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 152
    const/4 v0, 0x0

    invoke-static {v5, v0, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_65} :catch_6f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26 .. :try_end_65} :catch_79

    move-result-object v0

    .line 160
    :goto_66
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4b

    .line 162
    const/4 v1, 0x2

    invoke-static {v0, v4, v4, v1}, Lcom/dropbox/android/util/aQ;->a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4b

    .line 153
    :catch_6f
    move-exception v0

    .line 154
    const-string v1, "ThumbnailUtilsBackport"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 157
    goto :goto_66

    .line 155
    :catch_79
    move-exception v0

    .line 156
    const-string v1, "ThumbnailUtilsBackport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to decode file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ". OutOfMemoryError."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_98
    move-object v0, v2

    goto :goto_66

    :cond_9a
    move-object v2, v1

    goto :goto_24
.end method

.method private static a(Ljava/lang/String;IILcom/dropbox/android/util/aS;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 381
    if-nez p0, :cond_5

    .line 429
    :cond_4
    :goto_4
    return-void

    .line 384
    :cond_5
    const/4 v0, 0x0

    .line 386
    :try_start_6
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 387
    if-eqz v1, :cond_11

    .line 388
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_5a

    move-result-object v0

    .line 394
    :cond_11
    :goto_11
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 395
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 400
    if-eqz v0, :cond_6a

    .line 401
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 402
    array-length v1, v0

    invoke-static {v0, v2, v1, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 403
    invoke-static {v4, p1, p2}, Lcom/dropbox/android/util/aQ;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 404
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v5

    .line 408
    :goto_2e
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 409
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 410
    invoke-static {v3, p1, p2}, Lcom/dropbox/android/util/aQ;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 411
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v5, v6

    .line 414
    if-eqz v0, :cond_61

    if-lt v1, v5, :cond_61

    .line 415
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 416
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 417
    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 418
    array-length v5, v0

    invoke-static {v0, v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p3, Lcom/dropbox/android/util/aS;->b:Landroid/graphics/Bitmap;

    .line 420
    iget-object v2, p3, Lcom/dropbox/android/util/aS;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 421
    iput-object v0, p3, Lcom/dropbox/android/util/aS;->a:[B

    .line 422
    iput v1, p3, Lcom/dropbox/android/util/aS;->c:I

    .line 423
    iput v3, p3, Lcom/dropbox/android/util/aS;->d:I

    goto :goto_4

    .line 390
    :catch_5a
    move-exception v1

    .line 391
    const-string v3, "ThumbnailUtilsBackport"

    invoke-static {v3, v1}, Ldbxyzptlk/h/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 426
    :cond_61
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 427
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p3, Lcom/dropbox/android/util/aS;->b:Landroid/graphics/Bitmap;

    goto :goto_4

    :cond_6a
    move v1, v2

    goto :goto_2e
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v10, -0x1

    .line 236
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v0

    .line 237
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v0

    .line 239
    if-ne p2, v10, :cond_12

    move v0, v1

    .line 241
    :goto_b
    if-ne p1, v10, :cond_20

    const/16 v2, 0x80

    .line 245
    :goto_f
    if-ge v2, v0, :cond_32

    .line 256
    :cond_11
    :goto_11
    return v0

    .line 239
    :cond_12
    mul-double v6, v2, v4

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_b

    .line 241
    :cond_20
    int-to-double v6, p1

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    int-to-double v6, p1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_f

    .line 250
    :cond_32
    if-ne p2, v10, :cond_38

    if-ne p1, v10, :cond_38

    move v0, v1

    .line 252
    goto :goto_11

    .line 253
    :cond_38
    if-eq p1, v10, :cond_11

    move v0, v2

    .line 256
    goto :goto_11
.end method
