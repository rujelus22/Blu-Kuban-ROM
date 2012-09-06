.class public Lcom/google/android/apps/plus/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/util/ImageUtils$1;,
        Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;,
        Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;,
        Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;
    }
.end annotation


# static fields
.field private static DEFAULT_JPEG_QUALITY:I

.field private static MICRO_KIND_MAX_DIMENSION:I

.field private static MINI_KIND_MAX_DIMENSION:I

.field public static NO_COLOR:I

.field private static final sCropPaint:Landroid/graphics/Paint;

.field private static final sInStrokePaint:Landroid/graphics/Paint;

.field private static sMaskPaint:Landroid/graphics/Paint;

.field private static final sOutStrokePaint:Landroid/graphics/Paint;

.field private static final sResizePaint:Landroid/graphics/Paint;

.field private static sRoundMask:Landroid/graphics/Bitmap;

.field private static sRoundMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;",
            ">;"
        }
    .end annotation
.end field

.field public static final sUseImageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

.field public static final sUseLowResImages:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const-wide/16 v6, 0x18

    const/16 v5, 0xb

    const/high16 v2, 0x3f80

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    sput v3, Lcom/google/android/apps/plus/util/ImageUtils;->NO_COLOR:I

    .line 67
    sput v3, Lcom/google/android/apps/plus/util/ImageUtils;->MICRO_KIND_MAX_DIMENSION:I

    .line 68
    sput v3, Lcom/google/android/apps/plus/util/ImageUtils;->MINI_KIND_MAX_DIMENSION:I

    .line 70
    const/16 v0, 0x5a

    sput v0, Lcom/google/android/apps/plus/util/ImageUtils;->DEFAULT_JPEG_QUALITY:I

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sCropPaint:Landroid/graphics/Paint;

    .line 87
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 89
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sCropPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    .line 94
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sOutStrokePaint:Landroid/graphics/Paint;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    .line 101
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sInStrokePaint:Landroid/graphics/Paint;

    const v1, -0xf0f10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sRoundMasks:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sMaskPaint:Landroid/graphics/Paint;

    .line 116
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sMaskPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sMaskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_96

    .line 128
    sput-boolean v3, Lcom/google/android/apps/plus/util/ImageUtils;->sUseLowResImages:Z

    .line 149
    :goto_8d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_a3

    .line 150
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->NORMAL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sUseImageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    .line 163
    :goto_95
    return-void

    .line 130
    :cond_96
    sget v0, Lcom/google/android/apps/plus/phone/EsApplication;->sMemoryClass:I

    int-to-long v0, v0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_a0

    .line 131
    sput-boolean v3, Lcom/google/android/apps/plus/util/ImageUtils;->sUseLowResImages:Z

    goto :goto_8d

    .line 134
    :cond_a0
    sput-boolean v4, Lcom/google/android/apps/plus/util/ImageUtils;->sUseLowResImages:Z

    goto :goto_8d

    .line 152
    :cond_a3
    sget v0, Lcom/google/android/apps/plus/phone/EsApplication;->sMemoryClass:I

    int-to-long v0, v0

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b1

    .line 154
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->NORMAL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sUseImageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    goto :goto_95

    .line 155
    :cond_b1
    sget v0, Lcom/google/android/apps/plus/phone/EsApplication;->sMemoryClass:I

    int-to-long v0, v0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_bd

    .line 157
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->SMALL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sUseImageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    goto :goto_95

    .line 160
    :cond_bd
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->EXTRA_SMALL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils;->sUseImageSize:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    goto :goto_95
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;)[B
    .registers 2
    .parameter "bitmap"

    .prologue
    .line 1409
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->DEFAULT_JPEG_QUALITY:I

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->compressBitmap(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;I)[B
    .registers 7
    .parameter "bitmap"
    .parameter "quality"

    .prologue
    .line 1379
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1381
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1382
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_42
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_3b

    .line 1386
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_47

    .line 1390
    :goto_10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1391
    const/4 p0, 0x0

    .line 1393
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1394
    .local v0, imageBytes:[B
    const-string v2, "ImageUtils"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1395
    const-string v2, "ImageUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compressBitmap: Image size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_3a
    return-object v0

    .line 1383
    .end local v0           #imageBytes:[B
    :catch_3b
    move-exception v2

    .line 1386
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_10

    .line 1387
    :catch_40
    move-exception v2

    goto :goto_10

    .line 1385
    :catchall_42
    move-exception v2

    .line 1386
    :try_start_43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_49

    .line 1388
    :goto_46
    throw v2

    .line 1387
    :catch_47
    move-exception v2

    goto :goto_10

    :catch_49
    move-exception v3

    goto :goto_46
.end method

.method public static createBitmap([BIII)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "imageBytes"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    const/4 v7, 0x0

    .line 333
    if-eqz p0, :cond_6

    array-length v8, p0

    if-nez v8, :cond_8

    :cond_6
    move-object v4, v7

    .line 385
    :goto_7
    return-object v4

    .line 337
    :cond_8
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 338
    .local v3, inputStream:Ljava/io/ByteArrayInputStream;
    sget-boolean v6, Lcom/google/android/apps/plus/util/ImageUtils;->sUseLowResImages:Z

    .line 340
    .local v6, useLowResImages:Z
    :try_start_f
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 341
    .local v5, opts:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0}, Lcom/google/android/apps/plus/util/ImageUtils;->getImageBounds([B)Landroid/graphics/Point;

    move-result-object v0

    .line 343
    .local v0, bounds:Landroid/graphics/Point;
    const-string v8, "ImageUtils"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 344
    const-string v8, "ImageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PhotoCache#createBitmap; w: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", h: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", max: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_51
    iget v8, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v8, p1

    iget v9, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v9, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 348
    if-eqz v6, :cond_63

    .line 349
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 352
    :cond_63
    const/4 v8, 0x0

    invoke-static {v3, v8, v5}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_67
    .catchall {:try_start_f .. :try_end_67} :catchall_9e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_67} :catch_97

    move-result-object v2

    .line 353
    .local v2, decodedBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_6f

    .line 381
    :try_start_6a
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_a3

    :goto_6d
    move-object v4, v7

    .line 383
    goto :goto_7

    .line 358
    :cond_6f
    const/4 v8, 0x2

    if-ne p3, v8, :cond_7d

    .line 359
    :try_start_72
    invoke-static {v2, p1, p2}, Lcom/google/android/apps/plus/util/ImageUtils;->cropWideBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_9e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_72 .. :try_end_75} :catch_97

    move-result-object v1

    .line 361
    .local v1, croppedBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_7e

    .line 381
    :try_start_78
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_a5

    :goto_7b
    move-object v4, v7

    .line 383
    goto :goto_7

    .line 365
    .end local v1           #croppedBitmap:Landroid/graphics/Bitmap;
    :cond_7d
    move-object v1, v2

    .line 368
    .restart local v1       #croppedBitmap:Landroid/graphics/Bitmap;
    :cond_7e
    if-eqz v6, :cond_91

    .line 369
    :try_start_80
    invoke-static {v1}, Lcom/google/android/apps/plus/util/ImageUtils;->getLowResBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 370
    .local v4, lowResBitmap:Landroid/graphics/Bitmap;
    if-eq v4, v1, :cond_89

    .line 371
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_9e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_80 .. :try_end_89} :catch_97

    .line 381
    :cond_89
    :try_start_89
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8e

    goto/16 :goto_7

    .line 382
    :catch_8e
    move-exception v7

    goto/16 :goto_7

    .line 381
    .end local v4           #lowResBitmap:Landroid/graphics/Bitmap;
    :cond_91
    :try_start_91
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_a7

    :goto_94
    move-object v4, v1

    .line 383
    goto/16 :goto_7

    .line 377
    .end local v0           #bounds:Landroid/graphics/Point;
    .end local v1           #croppedBitmap:Landroid/graphics/Bitmap;
    .end local v2           #decodedBitmap:Landroid/graphics/Bitmap;
    .end local v5           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_97
    move-exception v8

    .line 381
    :try_start_98
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_a9

    :goto_9b
    move-object v4, v7

    .line 385
    goto/16 :goto_7

    .line 380
    :catchall_9e
    move-exception v7

    .line 381
    :try_start_9f
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_ab

    .line 383
    :goto_a2
    throw v7

    .line 382
    .restart local v0       #bounds:Landroid/graphics/Point;
    .restart local v2       #decodedBitmap:Landroid/graphics/Bitmap;
    .restart local v5       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_a3
    move-exception v8

    goto :goto_6d

    .restart local v1       #croppedBitmap:Landroid/graphics/Bitmap;
    :catch_a5
    move-exception v8

    goto :goto_7b

    :catch_a7
    move-exception v7

    goto :goto_94

    .end local v0           #bounds:Landroid/graphics/Point;
    .end local v1           #croppedBitmap:Landroid/graphics/Bitmap;
    .end local v2           #decodedBitmap:Landroid/graphics/Bitmap;
    .end local v5           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_a9
    move-exception v8

    goto :goto_9b

    :catch_ab
    move-exception v8

    goto :goto_a2
.end method

.method public static createCroppedBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .registers 27
    .parameter "resolver"
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 486
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 487
    .local v10, inputStream:Ljava/io/InputStream;
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 488
    .local v13, opts:Landroid/graphics/BitmapFactory$Options;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 489
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v10, v0, v13}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 490
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 494
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 495
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 496
    iget v0, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v19, v0

    div-int v19, v19, p2

    iget v0, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v20, v0

    div-int v20, v20, p3

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    iput v0, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 497
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-static {v10, v0, v13}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 498
    .local v15, srcBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 499
    if-nez v15, :cond_46

    .line 500
    const/4 v15, 0x0

    .line 548
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v13           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v15           #srcBitmap:Landroid/graphics/Bitmap;
    :cond_45
    :goto_45
    return-object v15

    .line 502
    .restart local v10       #inputStream:Ljava/io/InputStream;
    .restart local v13       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v15       #srcBitmap:Landroid/graphics/Bitmap;
    :cond_46
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 503
    .local v17, srcWidth:I
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_4d} :catch_101
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4d} :catch_105

    move-result v16

    .line 505
    .local v16, srcHeight:I
    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_5a

    move/from16 v0, v16

    move/from16 v1, p3

    if-eq v0, v1, :cond_45

    .line 511
    :cond_5a
    :try_start_5a
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_65
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5a .. :try_end_65} :catch_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_65} :catch_101
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_65} :catch_105

    move-result-object v8

    .line 518
    .local v8, destBitmap:Landroid/graphics/Bitmap;
    :goto_66
    if-nez v8, :cond_9e

    .line 519
    :try_start_68
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 520
    const/4 v15, 0x0

    goto :goto_45

    .line 512
    .end local v8           #destBitmap:Landroid/graphics/Bitmap;
    :catch_6d
    move-exception v12

    .line 513
    .local v12, oome:Ljava/lang/OutOfMemoryError;
    const-string v19, "ImageUtils"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "createCroppedBitmap OutOfMemoryError for image size: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " x "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    const/4 v8, 0x0

    .restart local v8       #destBitmap:Landroid/graphics/Bitmap;
    goto :goto_66

    .line 523
    .end local v12           #oome:Ljava/lang/OutOfMemoryError;
    :cond_9e
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 524
    .local v5, canvas:Landroid/graphics/Canvas;
    move/from16 v7, v17

    .line 525
    .local v7, croppedWidth:I
    move/from16 v6, v16

    .line 528
    .local v6, croppedHeight:I
    mul-int v19, v17, p3

    mul-int v20, v16, p2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_f9

    .line 530
    mul-int v19, v16, p2

    div-int v7, v19, p3

    .line 535
    :goto_b5
    sub-int v19, v17, v7

    div-int/lit8 v11, v19, 0x2

    .line 536
    .local v11, left:I
    sub-int v19, v16, v6

    div-int/lit8 v18, v19, 0x2

    .line 537
    .local v18, top:I
    new-instance v14, Landroid/graphics/Rect;

    add-int v19, v11, v7

    add-int v20, v18, v6

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v14, v11, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 538
    .local v14, src:Landroid/graphics/Rect;
    sget-object v20, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    monitor-enter v20
    :try_end_cf
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_cf} :catch_101
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_cf} :catch_105

    .line 539
    :try_start_cf
    new-instance v19, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v21, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v5, v15, v14, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 540
    monitor-exit v20
    :try_end_ec
    .catchall {:try_start_cf .. :try_end_ec} :catchall_fe

    .line 541
    :try_start_ec
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 544
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/google/android/apps/plus/util/ImageUtils;->rotateBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v15

    goto/16 :goto_45

    .line 533
    .end local v11           #left:I
    .end local v14           #src:Landroid/graphics/Rect;
    .end local v18           #top:I
    :cond_f9
    mul-int v19, v17, p3

    div-int v6, v19, p2
    :try_end_fd
    .catch Ljava/io/FileNotFoundException; {:try_start_ec .. :try_end_fd} :catch_101
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_fd} :catch_105

    goto :goto_b5

    .line 540
    .restart local v11       #left:I
    .restart local v14       #src:Landroid/graphics/Rect;
    .restart local v18       #top:I
    :catchall_fe
    move-exception v19

    :try_start_ff
    monitor-exit v20
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    :try_start_100
    throw v19
    :try_end_101
    .catch Ljava/io/FileNotFoundException; {:try_start_100 .. :try_end_101} :catch_101
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_101} :catch_105

    .line 545
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v6           #croppedHeight:I
    .end local v7           #croppedWidth:I
    .end local v8           #destBitmap:Landroid/graphics/Bitmap;
    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v11           #left:I
    .end local v13           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #src:Landroid/graphics/Rect;
    .end local v15           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v16           #srcHeight:I
    .end local v17           #srcWidth:I
    .end local v18           #top:I
    :catch_101
    move-exception v9

    .line 546
    .local v9, exception:Ljava/io/FileNotFoundException;
    const/4 v15, 0x0

    goto/16 :goto_45

    .line 547
    .end local v9           #exception:Ljava/io/FileNotFoundException;
    :catch_105
    move-exception v9

    .line 548
    .local v9, exception:Ljava/io/IOException;
    const/4 v15, 0x0

    goto/16 :goto_45
.end method

.method public static createInsertCameraPhotoDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1031
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1032
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1033
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1034
    const v1, 0x7f0803c0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1035
    return-object v0
.end method

.method public static createLocalBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "resolver"
    .parameter "uri"
    .parameter "maxSize"

    .prologue
    const/4 v4, 0x0

    .line 296
    const/4 v2, 0x0

    .line 298
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 299
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/util/ImageUtils;->getImageBounds(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v0

    .line 301
    .local v0, bounds:Landroid/graphics/Point;
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 302
    iget v5, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v5, p2

    iget v6, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 304
    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 307
    .local v1, decodedBitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, p1, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->rotateBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_23} :catch_2a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_23} :catch_33

    move-result-object v4

    .line 315
    if-eqz v2, :cond_29

    .line 316
    :try_start_26
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_43

    .line 321
    .end local v0           #bounds:Landroid/graphics/Point;
    .end local v1           #decodedBitmap:Landroid/graphics/Bitmap;
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_29
    :goto_29
    return-object v4

    .line 309
    :catch_2a
    move-exception v5

    .line 315
    if-eqz v2, :cond_29

    .line 316
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_29

    .line 318
    :catch_31
    move-exception v5

    goto :goto_29

    .line 311
    :catch_33
    move-exception v5

    .line 315
    if-eqz v2, :cond_29

    .line 316
    :try_start_36
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_29

    .line 318
    :catch_3a
    move-exception v5

    goto :goto_29

    .line 314
    :catchall_3c
    move-exception v4

    .line 315
    if-eqz v2, :cond_42

    .line 316
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_45

    .line 319
    :cond_42
    :goto_42
    throw v4

    .line 318
    .restart local v0       #bounds:Landroid/graphics/Point;
    .restart local v1       #decodedBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_43
    move-exception v5

    goto :goto_29

    .end local v0           #bounds:Landroid/graphics/Point;
    .end local v1           #decodedBitmap:Landroid/graphics/Bitmap;
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_45
    move-exception v5

    goto :goto_42
.end method

.method private static createPhotoName(Landroid/content/Context;J)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "dateTaken"

    .prologue
    .line 1150
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1151
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static cropWideBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 24
    .parameter "inputBitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 397
    if-nez p0, :cond_4

    .line 398
    const/4 v4, 0x0

    .line 451
    :goto_3
    return-object v4

    .line 403
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 404
    .local v16, srcWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 405
    .local v14, srcHeight:I
    move/from16 v11, p1

    .line 406
    .local v11, dstWidth:I
    move/from16 v9, p2

    .line 408
    .local v9, dstHeight:I
    move/from16 v0, v16

    if-ne v0, v11, :cond_37

    if-ne v14, v9, :cond_37

    .line 410
    new-instance v15, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v15, v0, v1, v2, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 429
    .local v15, srcRect:Landroid/graphics/Rect;
    :goto_25
    sget-boolean v18, Lcom/google/android/apps/plus/util/ImageUtils;->sUseLowResImages:Z

    if-eqz v18, :cond_65

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 433
    .local v5, bitmapConfig:Landroid/graphics/Bitmap$Config;
    :goto_2b
    :try_start_2b
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_32
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2b .. :try_end_32} :catch_68

    move-result-object v4

    .line 439
    .local v4, bitmap:Landroid/graphics/Bitmap;
    if-nez v4, :cond_9a

    .line 440
    const/4 v4, 0x0

    goto :goto_3

    .line 413
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #bitmapConfig:Landroid/graphics/Bitmap$Config;
    .end local v15           #srcRect:Landroid/graphics/Rect;
    :cond_37
    move/from16 v8, v16

    .line 414
    .local v8, cropWidth:I
    move v7, v14

    .line 415
    .local v7, cropHeight:I
    mul-int v18, v16, v9

    mul-int v19, v14, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_60

    .line 417
    mul-int v18, v14, v11

    div-int v8, v18, v9

    .line 423
    :goto_48
    sub-int v18, v16, v8

    div-int/lit8 v12, v18, 0x2

    .line 424
    .local v12, left:I
    sub-int v18, v14, v7

    div-int/lit8 v17, v18, 0x2

    .line 425
    .local v17, top:I
    new-instance v15, Landroid/graphics/Rect;

    add-int v18, v12, v8

    add-int v19, v17, v7

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v15, v12, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v15       #srcRect:Landroid/graphics/Rect;
    goto :goto_25

    .line 420
    .end local v12           #left:I
    .end local v15           #srcRect:Landroid/graphics/Rect;
    .end local v17           #top:I
    :cond_60
    mul-int v18, v16, v9

    div-int v7, v18, v11

    goto :goto_48

    .line 429
    .end local v7           #cropHeight:I
    .end local v8           #cropWidth:I
    .restart local v15       #srcRect:Landroid/graphics/Rect;
    :cond_65
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_2b

    .line 434
    .restart local v5       #bitmapConfig:Landroid/graphics/Bitmap$Config;
    :catch_68
    move-exception v13

    .line 435
    .local v13, oome:Ljava/lang/OutOfMemoryError;
    const-string v18, "ImageUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getLowResBitmap OutOfMemoryError for image size: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " x "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 437
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 443
    .end local v13           #oome:Ljava/lang/OutOfMemoryError;
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    :cond_9a
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 444
    .local v6, canvas:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 446
    .local v10, dstRect:Landroid/graphics/Rect;
    sget-object v19, Lcom/google/android/apps/plus/util/ImageUtils;->sCropPaint:Landroid/graphics/Paint;

    monitor-enter v19

    .line 447
    :try_start_b3
    sget-object v18, Lcom/google/android/apps/plus/util/ImageUtils;->sCropPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v15, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 448
    monitor-exit v19
    :try_end_bd
    .catchall {:try_start_b3 .. :try_end_bd} :catchall_c2

    .line 450
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3

    .line 448
    :catchall_c2
    move-exception v18

    :try_start_c3
    monitor-exit v19
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v18
.end method

.method private static decodeAndScaleBitmap([BII)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "imageBytes"
    .parameter "size"
    .parameter "backgroundColor"

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 691
    if-nez p0, :cond_7

    move-object v6, v7

    .line 726
    :cond_6
    :goto_6
    return-object v6

    .line 695
    :cond_7
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 696
    .local v1, dbo:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v12, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 697
    array-length v8, p0

    invoke-static {p0, v11, v8, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 699
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 700
    .local v3, nativeWidth:I
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 701
    .local v2, nativeHeight:I
    const-string v8, "ImageUtils"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 702
    const-string v8, "ImageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resizeToSquareBitmap: Input: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", resize to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_4b
    div-int v8, v3, p1

    div-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 708
    .local v5, sampleSize:I
    if-le v5, v12, :cond_65

    .line 709
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 710
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 711
    array-length v8, p0

    invoke-static {p0, v11, v8, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 716
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_61
    if-nez v0, :cond_6b

    move-object v6, v7

    .line 717
    goto :goto_6

    .line 713
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_65
    array-length v8, p0

    invoke-static {p0, v11, v8}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_61

    .line 720
    :cond_6b
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 721
    .local v6, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 723
    if-nez v6, :cond_6

    move-object v6, v7

    .line 724
    goto :goto_6
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 213
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 216
    :goto_4
    return-object v1

    .line 214
    :catch_5
    move-exception v0

    .line 215
    .local v0, oome:Ljava/lang/OutOfMemoryError;
    const-string v1, "ImageUtils"

    const-string v2, "ImageUtils#decodeByteArray(byte[], int, int) threw an OOME"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "opts"

    .prologue
    .line 236
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 239
    :goto_4
    return-object v1

    .line 237
    :catch_5
    move-exception v0

    .line 238
    .local v0, oome:Ljava/lang/OutOfMemoryError;
    const-string v1, "ImageUtils"

    const-string v2, "ImageUtils#decodeByteArray(byte[], int, int, Options) threw an OOME"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static decodeImageBytes(Ljava/lang/String;)[B
    .registers 4
    .parameter "string"

    .prologue
    .line 1361
    const-string v1, "base64,"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1362
    .local v0, start:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 1363
    const/4 v1, 0x0

    .line 1366
    :goto_a
    return-object v1

    :cond_b
    add-int/lit8 v1, v0, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_a
.end method

.method public static decodeMedia([B)Ljava/lang/Object;
    .registers 4
    .parameter "data"

    .prologue
    .line 190
    :try_start_0
    invoke-static {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->isGif([B)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 191
    new-instance v1, Lcom/google/android/apps/plus/util/GifDrawable;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/util/GifDrawable;-><init>([B)V

    .line 197
    :goto_b
    return-object v1

    .line 193
    :cond_c
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v1

    goto :goto_b

    .line 195
    :catch_13
    move-exception v0

    .line 196
    .local v0, oome:Ljava/lang/OutOfMemoryError;
    const-string v1, "ImageUtils"

    const-string v2, "ImageUtils#decodeMedia(byte[]) threw an OOME"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "res"
    .parameter "id"

    .prologue
    .line 253
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 256
    :goto_4
    return-object v1

    .line 254
    :catch_5
    move-exception v0

    .line 255
    .local v0, oome:Ljava/lang/OutOfMemoryError;
    const-string v1, "ImageUtils"

    const-string v2, "ImageUtils#decodeResource(Resources, int) threw an OOME"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "is"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    .line 279
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 282
    :goto_4
    return-object v1

    .line 280
    :catch_5
    move-exception v0

    .line 281
    .local v0, oome:Ljava/lang/OutOfMemoryError;
    const-string v1, "ImageUtils"

    const-string v2, "ImageUtils#decodeStream(InputStream, Rect, Options) threw an OOME"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static encodeImageBytes([B)Ljava/lang/String;
    .registers 4
    .parameter "imageBytes"

    .prologue
    .line 1349
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1350
    .local v0, base64:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:image/jpeg;base64,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCenterCroppedAndResizedUrl(IILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "url"

    .prologue
    .line 1198
    if-nez p2, :cond_4

    .line 1199
    const/4 v1, 0x0

    .line 1211
    :goto_3
    return-object v1

    .line 1202
    :cond_4
    invoke-static {p2}, Lcom/google/android/apps/plus/phone/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1204
    .local v0, options:Ljava/lang/StringBuilder;
    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-p"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setImageUrlOptions(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1211
    .end local v0           #options:Ljava/lang/StringBuilder;
    :cond_3b
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->setImageUrlSize(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static getCroppedAndResizedUrl(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "size"
    .parameter "url"

    .prologue
    .line 1228
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1229
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setImageUrlSize(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1232
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->setImageUrlSize(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private static getExifRotation(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 10
    .parameter "cr"
    .parameter "path"

    .prologue
    .line 1427
    const/4 v2, 0x0

    .line 1429
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_1
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_b

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 1434
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_7
    if-nez v2, :cond_25

    .line 1435
    const/4 v0, 0x0

    .line 1461
    :goto_a
    return v0

    .line 1430
    :catch_b
    move-exception v1

    .line 1431
    .local v1, e:Ljava/io/IOException;
    const-string v5, "ImageUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to create ExifInterface for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1439
    .end local v1           #e:Ljava/io/IOException;
    :cond_25
    const-string v5, "Orientation"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 1442
    .local v4, orientation:I
    const/4 v0, 0x0

    .line 1443
    .local v0, degrees:I
    packed-switch v4, :pswitch_data_3c

    :pswitch_30
    goto :goto_a

    .line 1445
    :pswitch_31
    const/4 v0, 0x0

    .line 1446
    goto :goto_a

    .line 1449
    :pswitch_33
    const/16 v0, 0x5a

    .line 1450
    goto :goto_a

    .line 1453
    :pswitch_36
    const/16 v0, 0xb4

    .line 1454
    goto :goto_a

    .line 1457
    :pswitch_39
    const/16 v0, 0x10e

    goto :goto_a

    .line 1443
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_31
        :pswitch_30
        :pswitch_36
        :pswitch_30
        :pswitch_30
        :pswitch_33
        :pswitch_30
        :pswitch_39
    .end packed-switch
.end method

.method private static getFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .parameter "resolver"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 1314
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1316
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_31

    .line 1317
    const-string v0, "ImageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath: query returned null cursor for uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :goto_30
    return-object v3

    .line 1321
    :cond_31
    const/4 v7, 0x0

    .line 1323
    .local v7, path:Ljava/lang/String;
    :try_start_32
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_54

    .line 1324
    const-string v0, "ImageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath: query returned empty cursor for uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_32 .. :try_end_50} :catchall_85

    .line 1335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .line 1329
    :cond_54
    :try_start_54
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1330
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1331
    const-string v0, "ImageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath: MediaColumns.DATA was empty for uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_54 .. :try_end_7c} :catchall_85

    .line 1335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_30

    :cond_80
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v7

    .line 1338
    goto :goto_30

    .line 1335
    :catchall_85
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getImageBounds(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Point;
    .registers 7
    .parameter "resolver"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1287
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1288
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    .line 1291
    .local v0, inputStream:Ljava/io/InputStream;
    const/4 v2, 0x1

    :try_start_7
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1292
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1293
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1295
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_20

    .line 1298
    if-eqz v0, :cond_1f

    .line 1299
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_27

    .line 1302
    :cond_1f
    :goto_1f
    return-object v2

    .line 1297
    :catchall_20
    move-exception v2

    .line 1298
    if-eqz v0, :cond_26

    .line 1299
    :try_start_23
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_29

    .line 1302
    :cond_26
    :goto_26
    throw v2

    .line 1301
    :catch_27
    move-exception v3

    goto :goto_1f

    :catch_29
    move-exception v3

    goto :goto_26
.end method

.method private static getImageBounds([B)Landroid/graphics/Point;
    .registers 6
    .parameter "imageBytes"

    .prologue
    .line 458
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 459
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 462
    .local v0, inputStream:Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x1

    :try_start_b
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 463
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 464
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1e

    .line 467
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_23

    .line 469
    :goto_1d
    return-object v2

    .line 466
    :catchall_1e
    move-exception v2

    .line 467
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_25

    .line 469
    :goto_22
    throw v2

    .line 468
    :catch_23
    move-exception v3

    goto :goto_1d

    :catch_25
    move-exception v3

    goto :goto_22
.end method

.method public static getLowResBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "bitmap"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 1243
    if-nez p0, :cond_6

    move-object v3, v7

    .line 1274
    :goto_5
    return-object v3

    .line 1247
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v8, v9, :cond_64

    .line 1248
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1249
    .local v6, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1253
    .local v2, height:I
    :try_start_16
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_1b} :catch_20

    move-result-object v3

    .line 1260
    .local v3, lowResBitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_45

    move-object v3, v7

    .line 1261
    goto :goto_5

    .line 1254
    .end local v3           #lowResBitmap:Landroid/graphics/Bitmap;
    :catch_20
    move-exception v4

    .line 1255
    .local v4, oome:Ljava/lang/OutOfMemoryError;
    const-string v8, "ImageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getLowResBitmap OutOfMemoryError for image size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v7

    .line 1257
    goto :goto_5

    .line 1264
    .end local v4           #oome:Ljava/lang/OutOfMemoryError;
    .restart local v3       #lowResBitmap:Landroid/graphics/Bitmap;
    :cond_45
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1265
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v10, v10, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1266
    .local v5, src:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v10, v10, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1268
    .local v1, dest:Landroid/graphics/Rect;
    sget-object v8, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    monitor-enter v8

    .line 1269
    :try_start_57
    sget-object v7, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v5, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1270
    monitor-exit v8
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_61

    .line 1271
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    .line 1270
    :catchall_61
    move-exception v7

    :try_start_62
    monitor-exit v8
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v7

    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #dest:Landroid/graphics/Rect;
    .end local v2           #height:I
    .end local v3           #lowResBitmap:Landroid/graphics/Bitmap;
    .end local v5           #src:Landroid/graphics/Rect;
    .end local v6           #width:I
    :cond_64
    move-object v3, p0

    .line 1274
    goto :goto_5
.end method

.method public static getMaxThumbnailDimension(Landroid/content/Context;I)I
    .registers 7
    .parameter "context"
    .parameter "kind"

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x1

    .line 563
    packed-switch p1, :pswitch_data_3a

    .line 573
    :pswitch_5
    const-string v1, "ImageUtils"

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 574
    const-string v1, "ImageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal kind="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified; using MINI_KIND"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_2b
    invoke-static {p0, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->getThumbnailSize(Landroid/content/Context;I)I

    move-result v0

    .line 579
    .local v0, maxDimension:I
    :goto_2f
    return v0

    .line 565
    .end local v0           #maxDimension:I
    :pswitch_30
    invoke-static {p0, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->getThumbnailSize(Landroid/content/Context;I)I

    move-result v0

    .line 566
    .restart local v0       #maxDimension:I
    goto :goto_2f

    .line 569
    .end local v0           #maxDimension:I
    :pswitch_35
    invoke-static {p0, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->getThumbnailSize(Landroid/content/Context;I)I

    move-result v0

    .line 570
    .restart local v0       #maxDimension:I
    goto :goto_2f

    .line 563
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_5
        :pswitch_30
    .end packed-switch
.end method

.method public static getResizedUrl(IILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "width"
    .parameter "height"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 1182
    invoke-static {p2}, Lcom/google/android/apps/plus/phone/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1183
    invoke-static {p0, p1, p2, v1, v1}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setImageUrlSize(IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1185
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->setImageUrlSize(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public static getResizedUrl(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "size"
    .parameter "url"

    .prologue
    .line 1166
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1167
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/phone/FIFEUtil;->setImageUrlSize(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1169
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->setImageUrlSize(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private static getRoundMask(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 22
    .parameter "context"
    .parameter "size"

    .prologue
    .line 1573
    sget-object v14, Lcom/google/android/apps/plus/util/ImageUtils;->sRoundMasks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1574
    .local v9, maskCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_7
    if-ge v8, v9, :cond_1d

    .line 1575
    sget-object v14, Lcom/google/android/apps/plus/util/ImageUtils;->sRoundMasks:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;

    .line 1576
    .local v13, roundMask:Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;
    iget v14, v13, Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;->size:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_1a

    .line 1577
    iget-object v14, v13, Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;->bitmap:Landroid/graphics/Bitmap;

    .line 1608
    .end local v13           #roundMask:Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;
    :goto_19
    return-object v14

    .line 1574
    .restart local v13       #roundMask:Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;
    :cond_1a
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1581
    .end local v13           #roundMask:Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;
    :cond_1d
    sget-object v14, Lcom/google/android/apps/plus/util/ImageUtils;->sRoundMask:Landroid/graphics/Bitmap;

    if-nez v14, :cond_34

    .line 1582
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1583
    .local v12, resources:Landroid/content/res/Resources;
    const v14, 0x7f020208

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1584
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    sput-object v14, Lcom/google/android/apps/plus/util/ImageUtils;->sRoundMask:Landroid/graphics/Bitmap;

    .line 1589
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_34
    :try_start_34
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p1

    invoke-static {v0, v1, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_3d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_34 .. :try_end_3d} :catch_90

    move-result-object v5

    .line 1595
    .local v5, bitmap:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1597
    .local v6, canvas:Landroid/graphics/Canvas;
    sget-object v15, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    monitor-enter v15

    .line 1598
    :try_start_46
    sget-object v14, Lcom/google/android/apps/plus/util/ImageUtils;->sRoundMask:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 1599
    .local v10, maskSize:I
    sget-object v14, Lcom/google/android/apps/plus/util/ImageUtils;->sRoundMask:Landroid/graphics/Bitmap;

    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    move/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v18, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v6, v14, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1601
    monitor-exit v15
    :try_end_7c
    .catchall {:try_start_46 .. :try_end_7c} :catchall_ae

    .line 1603
    new-instance v13, Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;-><init>(Lcom/google/android/apps/plus/util/ImageUtils$1;)V

    .line 1604
    .restart local v13       #roundMask:Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;
    move/from16 v0, p1

    iput v0, v13, Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;->size:I

    .line 1605
    iput-object v5, v13, Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;->bitmap:Landroid/graphics/Bitmap;

    .line 1606
    sget-object v14, Lcom/google/android/apps/plus/util/ImageUtils;->sRoundMasks:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    iget-object v14, v13, Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_19

    .line 1590
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v10           #maskSize:I
    .end local v13           #roundMask:Lcom/google/android/apps/plus/util/ImageUtils$RoundMask;
    :catch_90
    move-exception v11

    .line 1591
    .local v11, oome:Ljava/lang/OutOfMemoryError;
    const-string v14, "ImageUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getRoundMask OutOfMemoryError for image size: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/4 v14, 0x0

    goto/16 :goto_19

    .line 1601
    .end local v11           #oome:Ljava/lang/OutOfMemoryError;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    :catchall_ae
    move-exception v14

    :try_start_af
    monitor-exit v15
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v14
.end method

.method public static getRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "context"
    .parameter "bmp"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 1529
    if-nez p1, :cond_6

    move-object v0, v5

    .line 1551
    :goto_5
    return-object v0

    .line 1533
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 1534
    .local v4, width:I
    invoke-static {p0, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->getRoundMask(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1535
    .local v2, mask:Landroid/graphics/Bitmap;
    if-nez v2, :cond_12

    move-object v0, v5

    .line 1536
    goto :goto_5

    .line 1541
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_1f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_1f} :catch_2e

    move-result-object v0

    .line 1548
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1549
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p1, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1550
    sget-object v5, Lcom/google/android/apps/plus/util/ImageUtils;->sMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 1542
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :catch_2e
    move-exception v3

    .line 1543
    .local v3, oome:Ljava/lang/OutOfMemoryError;
    const-string v6, "ImageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "roundedBitmap OutOfMemoryError for image size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 1545
    goto :goto_5
.end method

.method public static getThumbnailSize(Landroid/content/Context;I)I
    .registers 4
    .parameter "context"
    .parameter "kind"

    .prologue
    .line 591
    packed-switch p1, :pswitch_data_2c

    .line 602
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->MINI_KIND_MAX_DIMENSION:I

    if-nez v0, :cond_14

    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/util/ImageUtils;->MINI_KIND_MAX_DIMENSION:I

    .line 606
    :cond_14
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->MINI_KIND_MAX_DIMENSION:I

    :goto_16
    return v0

    .line 593
    :pswitch_17
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->MICRO_KIND_MAX_DIMENSION:I

    if-nez v0, :cond_28

    .line 594
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/util/ImageUtils;->MICRO_KIND_MAX_DIMENSION:I

    .line 597
    :cond_28
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->MICRO_KIND_MAX_DIMENSION:I

    goto :goto_16

    .line 591
    nop

    :pswitch_data_2c
    .packed-switch 0x3
        :pswitch_17
    .end packed-switch
.end method

.method public static insertCameraPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 28
    .parameter "context"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1059
    new-instance v14, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1061
    .local v14, f:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1062
    .local v7, dateTaken:J
    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/google/android/apps/plus/util/ImageUtils;->createPhotoName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    .line 1063
    .local v20, photoName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 1066
    .local v21, resolver:Landroid/content/ContentResolver;
    new-instance v22, Landroid/content/ContentValues;

    const/16 v23, 0x5

    invoke-direct/range {v22 .. v23}, Landroid/content/ContentValues;-><init>(I)V

    .line 1067
    .local v22, values:Landroid/content/ContentValues;
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->getExifRotation(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v19

    .line 1069
    .local v19, orientation:I
    const-string v23, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-string v23, "_display_name"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".jpg"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string v23, "datetaken"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1072
    const-string v23, "mime_type"

    const-string v24, "image/jpeg"

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string v23, "orientation"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1080
    :try_start_6e
    sget-object v23, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_79} :catch_c2

    move-result-object v18

    .line 1098
    .local v18, mediaUri:Landroid/net/Uri;
    :goto_7a
    :try_start_7a
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v17

    .line 1099
    .local v17, imageOut:Ljava/io/OutputStream;
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_89
    .catchall {:try_start_7a .. :try_end_89} :catchall_10c
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_89} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_89} :catch_111

    .line 1102
    .local v16, imageIn:Ljava/io/FileInputStream;
    const/16 v9, 0x2800

    .line 1103
    .local v9, downloadBufferSize:I
    const/16 v23, 0x2800

    :try_start_8d
    move/from16 v0, v23

    new-array v4, v0, [B

    .line 1107
    .local v4, array:[B
    :goto_91
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_f7

    move-result v6

    .line 1108
    .local v6, bytesRead:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_ed

    .line 1114
    :try_start_9d
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 1115
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 1122
    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isExternalMediaStoreUri(Landroid/net/Uri;)Z

    move-result v23

    if-eqz v23, :cond_ba

    .line 1123
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1125
    .local v5, bmp:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_ba

    .line 1126
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_ba
    .catchall {:try_start_9d .. :try_end_ba} :catchall_10c
    .catch Ljava/io/FileNotFoundException; {:try_start_9d .. :try_end_ba} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_ba} :catch_111

    .line 1140
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    :cond_ba
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 1143
    .end local v4           #array:[B
    .end local v6           #bytesRead:I
    .end local v9           #downloadBufferSize:I
    .end local v16           #imageIn:Ljava/io/FileInputStream;
    .end local v17           #imageOut:Ljava/io/OutputStream;
    :goto_bd
    if-nez v18, :cond_134

    const/16 v23, 0x0

    .end local v18           #mediaUri:Landroid/net/Uri;
    :goto_c1
    return-object v23

    .line 1081
    :catch_c2
    move-exception v11

    .line 1084
    .local v11, e1:Ljava/lang/Exception;
    :try_start_c3
    sget-object v23, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_ce} :catch_d0

    move-result-object v18

    .restart local v18       #mediaUri:Landroid/net/Uri;
    goto :goto_7a

    .line 1085
    .end local v18           #mediaUri:Landroid/net/Uri;
    :catch_d0
    move-exception v12

    .line 1088
    .local v12, e2:Ljava/lang/Exception;
    :try_start_d1
    sget-object v23, Lcom/google/android/apps/plus/util/MediaStoreUtils;->PHONE_STORAGE_IMAGES_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_dc} :catch_de

    move-result-object v18

    .restart local v18       #mediaUri:Landroid/net/Uri;
    goto :goto_7a

    .line 1089
    .end local v18           #mediaUri:Landroid/net/Uri;
    :catch_de
    move-exception v13

    .line 1090
    .local v13, e3:Ljava/lang/Exception;
    const-string v23, "ImageUtils"

    const-string v24, "Failed to save image"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1091
    const/16 v23, 0x0

    goto :goto_c1

    .line 1111
    .end local v11           #e1:Ljava/lang/Exception;
    .end local v12           #e2:Ljava/lang/Exception;
    .end local v13           #e3:Ljava/lang/Exception;
    .restart local v4       #array:[B
    .restart local v6       #bytesRead:I
    .restart local v9       #downloadBufferSize:I
    .restart local v16       #imageIn:Ljava/io/FileInputStream;
    .restart local v17       #imageOut:Ljava/io/OutputStream;
    .restart local v18       #mediaUri:Landroid/net/Uri;
    :cond_ed
    const/16 v23, 0x0

    :try_start_ef
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_f6
    .catchall {:try_start_ef .. :try_end_f6} :catchall_f7

    goto :goto_91

    .line 1114
    .end local v4           #array:[B
    .end local v6           #bytesRead:I
    :catchall_f7
    move-exception v23

    :try_start_f8
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 1115
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    throw v23
    :try_end_ff
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_10c
    .catch Ljava/io/FileNotFoundException; {:try_start_f8 .. :try_end_ff} :catch_ff
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_ff} :catch_111

    .line 1130
    .end local v9           #downloadBufferSize:I
    .end local v16           #imageIn:Ljava/io/FileInputStream;
    .end local v17           #imageOut:Ljava/io/OutputStream;
    :catch_ff
    move-exception v15

    .line 1131
    .local v15, fe:Ljava/io/FileNotFoundException;
    :try_start_100
    const-string v23, "ImageUtils"

    const-string v24, "File not found"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    throw v15
    :try_end_10c
    .catchall {:try_start_100 .. :try_end_10c} :catchall_10c

    .line 1140
    .end local v15           #fe:Ljava/io/FileNotFoundException;
    :catchall_10c
    move-exception v23

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    throw v23

    .line 1133
    :catch_111
    move-exception v10

    .line 1134
    .local v10, e:Ljava/lang/Exception;
    :try_start_112
    const-string v23, "ImageUtils"

    const-string v24, "Failed to insert image"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1135
    if-eqz v18, :cond_130

    .line 1136
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_12e
    .catchall {:try_start_112 .. :try_end_12e} :catchall_10c

    .line 1137
    const/16 v18, 0x0

    .line 1140
    :cond_130
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    goto :goto_bd

    .line 1143
    .end local v10           #e:Ljava/lang/Exception;
    :cond_134
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_c1
.end method

.method public static resizeAndCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "inputBitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 803
    if-nez p0, :cond_4

    .line 804
    const/4 v0, 0x0

    .line 853
    :goto_3
    return-object v0

    .line 807
    :cond_4
    const-string v9, "ImageUtils"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 808
    const-string v9, "ImageUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resizeAndCropBitmap: Input: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", output:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_4b
    :try_start_4b
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_50
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4b .. :try_end_50} :catch_55

    move-result-object v0

    .line 824
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_7a

    .line 825
    const/4 v0, 0x0

    goto :goto_3

    .line 818
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_55
    move-exception v6

    .line 819
    .local v6, oome:Ljava/lang/OutOfMemoryError;
    const-string v9, "ImageUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resizeAndCropBitmap OutOfMemoryError for image size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " x "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    const/4 v0, 0x0

    goto :goto_3

    .line 828
    .end local v6           #oome:Ljava/lang/OutOfMemoryError;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_7a
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 829
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, p1, :cond_8b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-eq v9, p2, :cond_da

    .line 831
    :cond_8b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 832
    .local v3, croppedWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 833
    .local v2, croppedHeight:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int/2addr v9, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int/2addr v10, p1

    if-le v9, v10, :cond_d2

    .line 835
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v9, p1

    div-int v3, v9, p2

    .line 841
    :goto_a6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v9, v3

    div-int/lit8 v5, v9, 0x2

    .line 842
    .local v5, left:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v2

    div-int/lit8 v8, v9, 0x2

    .line 843
    .local v8, top:I
    new-instance v7, Landroid/graphics/Rect;

    add-int v9, v5, v3

    add-int v10, v8, v2

    invoke-direct {v7, v5, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 845
    .local v7, src:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v4, v9, v10, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 846
    .local v4, dest:Landroid/graphics/Rect;
    sget-object v10, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    monitor-enter v10

    .line 847
    :try_start_c7
    sget-object v9, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, v7, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 848
    monitor-exit v10

    goto/16 :goto_3

    :catchall_cf
    move-exception v9

    monitor-exit v10
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_cf

    throw v9

    .line 838
    .end local v4           #dest:Landroid/graphics/Rect;
    .end local v5           #left:I
    .end local v7           #src:Landroid/graphics/Rect;
    .end local v8           #top:I
    :cond_d2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int/2addr v9, p2

    div-int v2, v9, p1

    goto :goto_a6

    .line 850
    .end local v2           #croppedHeight:I
    .end local v3           #croppedWidth:I
    :cond_da
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public static resizeBitmap([BII)Landroid/graphics/Bitmap;
    .registers 29
    .parameter "imageBytes"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 866
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 867
    .local v11, dbo:Landroid/graphics/BitmapFactory$Options;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 868
    const/16 v23, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v11}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 870
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 871
    .local v14, nativeWidth:I
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 872
    .local v13, nativeHeight:I
    const-string v23, "ImageUtils"

    const/16 v24, 0x3

    invoke-static/range {v23 .. v24}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_6b

    .line 873
    const-string v23, "ImageUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "resizeBitmap: Input: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", resize to: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_6b
    move/from16 v0, p1

    if-gt v14, v0, :cond_73

    move/from16 v0, p2

    if-le v13, v0, :cond_d9

    .line 879
    :cond_73
    mul-int v23, v14, p1

    div-int v23, v23, v13

    move/from16 v0, v23

    int-to-float v6, v0

    .line 880
    .local v6, bitmapWidth:F
    mul-int v23, v13, p2

    div-int v23, v23, v14

    move/from16 v0, v23

    int-to-float v5, v0

    .line 882
    .local v5, bitmapHeight:F
    int-to-float v0, v14

    move/from16 v23, v0

    div-float v23, v23, v6

    const/high16 v24, 0x3f80

    cmpl-float v23, v23, v24

    if-gtz v23, :cond_97

    int-to-float v0, v13

    move/from16 v23, v0

    div-float v23, v23, v5

    const/high16 v24, 0x3f80

    cmpl-float v23, v23, v24

    if-lez v23, :cond_c7

    .line 884
    :cond_97
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 885
    .local v16, options:Landroid/graphics/BitmapFactory$Options;
    float-to-int v0, v6

    move/from16 v23, v0

    div-int v23, v14, v23

    float-to-int v0, v5

    move/from16 v24, v0

    div-int v24, v13, v24

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 887
    const/16 v23, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 895
    .end local v5           #bitmapHeight:F
    .end local v6           #bitmapWidth:F
    .end local v16           #options:Landroid/graphics/BitmapFactory$Options;
    .local v18, srcBitmap:Landroid/graphics/Bitmap;
    :goto_c3
    if-nez v18, :cond_eb

    .line 896
    const/4 v7, 0x0

    .line 945
    :goto_c6
    return-object v7

    .line 889
    .end local v18           #srcBitmap:Landroid/graphics/Bitmap;
    .restart local v5       #bitmapHeight:F
    .restart local v6       #bitmapWidth:F
    :cond_c7
    const/16 v23, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v18

    .restart local v18       #srcBitmap:Landroid/graphics/Bitmap;
    goto :goto_c3

    .line 892
    .end local v5           #bitmapHeight:F
    .end local v6           #bitmapWidth:F
    .end local v18           #srcBitmap:Landroid/graphics/Bitmap;
    :cond_d9
    const/16 v23, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v18

    .restart local v18       #srcBitmap:Landroid/graphics/Bitmap;
    goto :goto_c3

    .line 903
    :cond_eb
    :try_start_eb
    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_f6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_eb .. :try_end_f6} :catch_fe

    move-result-object v7

    .line 910
    .local v7, croppedBitmap:Landroid/graphics/Bitmap;
    :goto_f7
    if-nez v7, :cond_12f

    .line 911
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 912
    const/4 v7, 0x0

    goto :goto_c6

    .line 904
    .end local v7           #croppedBitmap:Landroid/graphics/Bitmap;
    :catch_fe
    move-exception v15

    .line 905
    .local v15, oome:Ljava/lang/OutOfMemoryError;
    const-string v23, "ImageUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "resizeBitmap OutOfMemoryError for image size: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " x "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    const/4 v7, 0x0

    .restart local v7       #croppedBitmap:Landroid/graphics/Bitmap;
    goto :goto_f7

    .line 915
    .end local v15           #oome:Ljava/lang/OutOfMemoryError;
    :cond_12f
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 916
    .local v22, srcWidth:I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 918
    .local v19, srcHeight:I
    move/from16 v10, v22

    .line 919
    .local v10, croppedWidth:I
    move/from16 v9, v19

    .line 920
    .local v9, croppedHeight:I
    mul-int v23, v14, p2

    mul-int v24, p1, v13

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1ca

    .line 922
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    mul-int v23, v23, p1

    div-int v10, v23, p2

    .line 928
    :goto_14d
    const-string v23, "ImageUtils"

    const/16 v24, 0x3

    invoke-static/range {v23 .. v24}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_17d

    .line 929
    const-string v23, "ImageUtils"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "resizeBitmap: cropped: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_17d
    sub-int v23, v22, v10

    div-int/lit8 v20, v23, 0x2

    .line 933
    .local v20, srcLeft:I
    sub-int v23, v19, v9

    div-int/lit8 v21, v23, 0x2

    .line 934
    .local v21, srcTop:I
    new-instance v17, Landroid/graphics/Rect;

    add-int v23, v20, v10

    add-int v24, v21, v9

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 935
    .local v17, src:Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 937
    .local v12, dest:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 938
    .local v8, croppedCanvas:Landroid/graphics/Canvas;
    const v23, -0x1f1f20

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 939
    sget-object v24, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    monitor-enter v24

    .line 940
    :try_start_1b9
    sget-object v23, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v8, v0, v1, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 941
    monitor-exit v24
    :try_end_1c5
    .catchall {:try_start_1b9 .. :try_end_1c5} :catchall_1d4

    .line 943
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_c6

    .line 925
    .end local v8           #croppedCanvas:Landroid/graphics/Canvas;
    .end local v12           #dest:Landroid/graphics/Rect;
    .end local v17           #src:Landroid/graphics/Rect;
    .end local v20           #srcLeft:I
    .end local v21           #srcTop:I
    :cond_1ca
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    mul-int v23, v23, p2

    div-int v9, v23, p1

    goto/16 :goto_14d

    .line 941
    .restart local v8       #croppedCanvas:Landroid/graphics/Canvas;
    .restart local v12       #dest:Landroid/graphics/Rect;
    .restart local v17       #src:Landroid/graphics/Rect;
    .restart local v20       #srcLeft:I
    .restart local v21       #srcTop:I
    :catchall_1d4
    move-exception v23

    :try_start_1d5
    monitor-exit v24
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_1d4

    throw v23
.end method

.method public static resizeBitmapToHeight([BI)[B
    .registers 18
    .parameter "imageBytes"
    .parameter "height"

    .prologue
    .line 957
    if-nez p0, :cond_3

    .line 1022
    .end local p0
    :cond_2
    :goto_2
    return-object p0

    .line 961
    .restart local p0
    :cond_3
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 962
    .local v3, dbo:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput-boolean v11, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 963
    const/4 v11, 0x0

    move-object/from16 v0, p0

    array-length v12, v0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12, v3}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 965
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 966
    .local v5, nativeWidth:I
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 967
    .local v4, nativeHeight:I
    const-string v11, "ImageUtils"

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4f

    .line 968
    const-string v11, "ImageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "scaleBitmap: Input: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", resize to: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_4f
    move/from16 v0, p1

    if-le v4, v0, :cond_2

    .line 976
    int-to-float v11, v5

    int-to-float v12, v4

    div-float/2addr v11, v12

    move/from16 v0, p1

    int-to-float v12, v0

    mul-float/2addr v11, v12

    float-to-int v10, v11

    .line 978
    .local v10, width:I
    div-int v11, v5, v10

    const/4 v12, 0x1

    if-gt v11, v12, :cond_65

    div-int v11, v4, p1

    const/4 v12, 0x1

    if-le v11, v12, :cond_9c

    .line 979
    :cond_65
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 980
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    div-int v11, v5, v10

    div-int v12, v4, p1

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 981
    const/4 v11, 0x0

    move-object/from16 v0, p0

    array-length v12, v0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12, v7}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 982
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_83

    .line 983
    const/16 p0, 0x0

    goto :goto_2

    .line 985
    :cond_83
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 986
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 997
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_8b
    :try_start_8b
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    invoke-static {v10, v0, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_92
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8b .. :try_end_92} :catch_ac

    move-result-object v8

    .line 1004
    .local v8, scaledBitmap:Landroid/graphics/Bitmap;
    :goto_93
    if-nez v8, :cond_d3

    .line 1005
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1006
    const/16 p0, 0x0

    goto/16 :goto_2

    .line 988
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_9c
    const/4 v11, 0x0

    move-object/from16 v0, p0

    array-length v12, v0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 989
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_8b

    .line 990
    const/16 p0, 0x0

    goto/16 :goto_2

    .line 998
    :catch_ac
    move-exception v6

    .line 999
    .local v6, oome:Ljava/lang/OutOfMemoryError;
    const-string v11, "ImageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resizeBitmapToHeight OutOfMemoryError for image size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " x "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    const/4 v8, 0x0

    .restart local v8       #scaledBitmap:Landroid/graphics/Bitmap;
    goto :goto_93

    .line 1009
    .end local v6           #oome:Ljava/lang/OutOfMemoryError;
    :cond_d3
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1010
    .local v2, canvas:Landroid/graphics/Canvas;
    sget-object v12, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    monitor-enter v12

    .line 1011
    :try_start_db
    new-instance v11, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-direct {v13, v14, v15, v10, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v14, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v11, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1013
    monitor-exit v12
    :try_end_f1
    .catchall {:try_start_db .. :try_end_f1} :catchall_10b

    .line 1014
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1015
    const/4 v1, 0x0

    .line 1017
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1018
    .local v9, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v8, v11, v12, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1019
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 1020
    const/4 v8, 0x0

    .line 1022
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    goto/16 :goto_2

    .line 1013
    .end local v9           #stream:Ljava/io/ByteArrayOutputStream;
    :catchall_10b
    move-exception v11

    :try_start_10c
    monitor-exit v12
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw v11
.end method

.method public static resizeToRoundBitmap(Landroid/content/Context;[BI)[B
    .registers 4
    .parameter "context"
    .parameter "imageBytes"
    .parameter "size"

    .prologue
    .line 655
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->NO_COLOR:I

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToRoundBitmap(Landroid/content/Context;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static resizeToRoundBitmap(Landroid/content/Context;[BII)[B
    .registers 9
    .parameter "context"
    .parameter "imageBytes"
    .parameter "size"
    .parameter "backgroundColor"

    .prologue
    const/4 v3, 0x0

    .line 669
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeAndScaleBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 670
    .local v1, scaledBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_8

    .line 687
    :cond_7
    :goto_7
    return-object v3

    .line 674
    :cond_8
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->getRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 675
    .local v0, roundBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 676
    const/4 v1, 0x0

    .line 678
    if-eqz v0, :cond_7

    .line 682
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 683
    .local v2, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 684
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 685
    const/4 v0, 0x0

    .line 687
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_7
.end method

.method public static resizeToSquareBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "inputBitmap"
    .parameter "size"

    .prologue
    .line 738
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->NO_COLOR:I

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "inputBitmap"
    .parameter "size"
    .parameter "backgroundColor"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 753
    if-nez p0, :cond_7

    move-object v0, v5

    .line 790
    :goto_6
    return-object v0

    .line 757
    :cond_7
    const-string v6, "ImageUtils"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 758
    const-string v6, "ImageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeToSquareBitmap: Input: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", output:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_4e
    :try_start_4e
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_53
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4e .. :try_end_53} :catch_58

    move-result-object v0

    .line 771
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_73

    move-object v0, v5

    .line 772
    goto :goto_6

    .line 766
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_58
    move-exception v3

    .line 767
    .local v3, oome:Ljava/lang/OutOfMemoryError;
    const-string v6, "ImageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeToSquareBitmap OutOfMemoryError for image size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v5

    .line 768
    goto :goto_6

    .line 775
    .end local v3           #oome:Ljava/lang/OutOfMemoryError;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_73
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 776
    .local v1, canvas:Landroid/graphics/Canvas;
    sget v6, Lcom/google/android/apps/plus/util/ImageUtils;->NO_COLOR:I

    if-eq p2, v6, :cond_7f

    .line 777
    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 780
    :cond_7f
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, p1, :cond_8b

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, p1, :cond_ab

    .line 781
    :cond_8b
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v9, v9, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 782
    .local v4, src:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v9, v9, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 783
    .local v2, dest:Landroid/graphics/Rect;
    sget-object v6, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    monitor-enter v6

    .line 784
    :try_start_a0
    sget-object v5, Lcom/google/android/apps/plus/util/ImageUtils;->sResizePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 785
    monitor-exit v6

    goto/16 :goto_6

    :catchall_a8
    move-exception v5

    monitor-exit v6
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_a8

    throw v5

    .line 787
    .end local v2           #dest:Landroid/graphics/Rect;
    .end local v4           #src:Landroid/graphics/Rect;
    :cond_ab
    invoke-virtual {v1, p0, v10, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6
.end method

.method public static resizeToSquareBitmap([BI)[B
    .registers 3
    .parameter "imageBytes"
    .parameter "size"

    .prologue
    .line 620
    sget v0, Lcom/google/android/apps/plus/util/ImageUtils;->NO_COLOR:I

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static resizeToSquareBitmap([BII)[B
    .registers 7
    .parameter "imageBytes"
    .parameter "size"
    .parameter "backgroundColor"

    .prologue
    .line 633
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeAndScaleBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 634
    .local v0, scaledBitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_8

    .line 635
    const/4 v2, 0x0

    .line 643
    :goto_7
    return-object v2

    .line 638
    :cond_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 639
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 640
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 641
    const/4 v0, 0x0

    .line 643
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_7
.end method

.method public static rewriteYoutubeMediaUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "url"

    .prologue
    .line 1558
    const-string v2, "http://www.youtube.com/watch?v="

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1559
    const-string v2, "http://www.youtube.com/watch?v="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1560
    .local v1, youTubeId:Ljava/lang/String;
    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1561
    .local v0, endIndex:I
    if-ltz v0, :cond_1f

    .line 1562
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1564
    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://img.youtube.com/vi/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1566
    .end local v0           #endIndex:I
    .end local v1           #youTubeId:Ljava/lang/String;
    .end local p0
    :cond_38
    return-object p0
.end method

.method public static rotateBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "cr"
    .parameter "uri"
    .parameter "bmp"

    .prologue
    .line 1473
    if-eqz p2, :cond_10

    .line 1474
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/util/ImageUtils;->getFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1475
    .local v1, path:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->getExifRotation(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 1476
    .local v0, degrees:I
    if-eqz v0, :cond_10

    .line 1477
    invoke-static {p2, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1480
    .end local v0           #degrees:I
    .end local v1           #path:Ljava/lang/String;
    :cond_10
    return-object p2
.end method

.method private static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "bitmap"
    .parameter "degrees"

    .prologue
    const/high16 v6, 0x4000

    .line 1490
    if-eqz p1, :cond_29

    if-eqz p0, :cond_29

    .line 1491
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1492
    .local v5, m:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1493
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1494
    .local v4, h:I
    int-to-float v0, p1

    int-to-float v1, v3

    div-float/2addr v1, v6

    int-to-float v2, v4

    div-float/2addr v2, v6

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1497
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    :try_start_1f
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1498
    .local v7, rotatedBitmap:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_29

    .line 1499
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_28
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1f .. :try_end_28} :catch_2a

    .line 1500
    move-object p0, v7

    .line 1507
    .end local v3           #w:I
    .end local v4           #h:I
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #rotatedBitmap:Landroid/graphics/Bitmap;
    :cond_29
    :goto_29
    return-object p0

    .line 1502
    .restart local v3       #w:I
    .restart local v4       #h:I
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_2a
    move-exception v0

    goto :goto_29
.end method
