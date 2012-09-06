.class public final Lcom/twitter/android/util/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/graphics/PorterDuffXfermode;

.field private static final b:Landroid/graphics/Paint;

.field private static final c:Landroid/graphics/Paint;

.field private static final d:Landroid/graphics/Paint;

.field private static final e:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const v3, -0xf0f10

    const/high16 v2, 0x3f80

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/twitter/android/util/f;->a:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/twitter/android/util/f;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/twitter/android/util/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/twitter/android/util/f;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/twitter/android/util/f;->c:Landroid/graphics/Paint;

    const v1, -0x1f1f20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/twitter/android/util/f;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/twitter/android/util/f;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/twitter/android/util/f;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/twitter/android/util/f;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lcom/twitter/android/util/f;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lcom/twitter/android/util/f;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;FFI)Landroid/graphics/Bitmap;
    .registers 18

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_a8

    move-result-object v1

    :try_start_a
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v3

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v0

    const/4 v0, 0x0

    sub-float v3, p2, v0

    const/4 v0, 0x0

    sub-float v0, p3, v0

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_bd
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_25} :catch_bf

    move-result-object v2

    cmpl-float v4, v5, v3

    if-gtz v4, :cond_2e

    cmpl-float v4, v6, v0

    if-lez v4, :cond_98

    :cond_2e
    div-float v4, v5, v3

    div-float v7, v6, v0

    cmpl-float v8, v4, v7

    if-lez v8, :cond_8d

    div-float v0, v6, v4

    :goto_38
    div-float v4, v5, v3

    const/high16 v6, 0x3f80

    cmpl-float v4, v4, v6

    if-lez v4, :cond_90

    :try_start_40
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    div-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v5, v4

    move v4, v3

    move v3, v0

    :goto_51
    if-eqz v5, :cond_a0

    float-to-int v0, v4

    add-int/lit8 v0, v0, 0x0

    float-to-int v6, v3

    add-int/lit8 v6, v6, 0x0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    float-to-int v3, v3

    invoke-direct {v8, v9, v10, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v3, Lcom/twitter/android/util/f;->b:Landroid/graphics/Paint;

    invoke-virtual {v6, v5, v7, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_86
    .catchall {:try_start_40 .. :try_end_86} :catchall_bd
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_86} :catch_c3

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    :goto_8c
    return-object v0

    :cond_8d
    div-float v3, v5, v7

    goto :goto_38

    :cond_90
    :try_start_90
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v5, v4

    move v4, v3

    move v3, v0

    goto :goto_51

    :cond_98
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_9b
    .catchall {:try_start_90 .. :try_end_9b} :catchall_bd
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_9b} :catch_c3

    move-result-object v4

    move-object v5, v4

    move v4, v3

    move v3, v0

    goto :goto_51

    :cond_a0
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto :goto_8c

    :catch_a8
    move-exception v1

    move-object v1, v2

    :goto_aa
    invoke-static {v0}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto :goto_8c

    :catchall_b2
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_b6
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_bd
    move-exception v0

    goto :goto_b6

    :catch_bf
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_aa

    :catch_c3
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_aa
.end method

.method public static a([BI)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x0

    invoke-static {p0, p1, p1}, Lcom/twitter/android/util/f;->a([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_a

    :goto_9
    return-object v0

    :cond_a
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v5, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v6, 0x8

    new-array v6, v6, [F

    fill-array-data v6, :array_5e

    invoke-direct {v5, v6, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    int-to-float v0, p1

    int-to-float v6, p1

    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    invoke-virtual {v5, v3, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    sget-object v0, Lcom/twitter/android/util/f;->a:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_40

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p1, :cond_5a

    :cond_40
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v0, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v2, v0, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_55
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    goto :goto_9

    :cond_5a
    invoke-virtual {v3, v2, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_55

    :array_5e
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public static a([BII)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v0, 0x1

    const/4 v5, 0x0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v1, p0

    invoke-static {p0, v5, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_19
    div-int/lit8 v3, v1, 0x2

    if-le v3, v4, :cond_22

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_19

    :cond_22
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v0, p0

    invoke-static {p0, v5, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pic-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 5

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/pic-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0

    :cond_2a
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_29
.end method

.method public static b([BII)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lcom/twitter/android/util/f;->a([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-le v6, v2, :cond_8

    rem-int v5, v6, v2

    if-eqz v5, :cond_8

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v2

    int-to-float v6, v6

    div-float/2addr v2, v6

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    goto :goto_8
.end method
