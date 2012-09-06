.class public Lcom/estrongs/android/pop/app/imageviewer/as;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/as;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    const/16 v0, 0x8

    if-gt v1, v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    if-lt v0, v1, :cond_c

    :goto_b
    return v0

    :cond_c
    shl-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    goto :goto_b
.end method

.method public static a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Landroid/content/Intent;
    .registers 4

    invoke-interface {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mimeType"

    invoke-interface {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method public static a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-nez p4, :cond_8

    :try_start_4
    invoke-static {p2, p3}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_6c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_5c

    move-result-object p4

    :cond_8
    if-nez p4, :cond_e

    invoke-static {p4}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Landroid/os/ParcelFileDescriptor;)V

    :goto_d
    return-object v0

    :cond_e
    if-nez p5, :cond_15

    :try_start_10
    new-instance p5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_15
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a()Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;

    move-result-object v2

    invoke-virtual {v2, v1, p5}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v2, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_2f

    iget v2, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v3, :cond_2f

    iget v2, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_6c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2d} :catch_5c

    if-ne v2, v3, :cond_33

    :cond_2f
    invoke-static {p4}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_d

    :cond_33
    :try_start_33
    invoke-static {p5, p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    iput-boolean v2, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v2, 0x1

    iput-boolean v2, p5, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v2, 0x1

    iput-boolean v2, p5, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const v2, 0x8000

    new-array v2, v2, [B

    iput-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a()Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;

    move-result-object v2

    invoke-virtual {v2, v1, p5}, Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;->a(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_57
    .catchall {:try_start_33 .. :try_end_57} :catchall_6c
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_57} :catch_5c

    move-result-object v0

    invoke-static {p4}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_d

    :catch_5c
    move-exception v1

    :try_start_5d
    instance-of v2, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_68

    const-string v2, "Util"

    const-string v3, "Got oom exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_6c

    :cond_68
    invoke-static {p4}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_d

    :catchall_6c
    move-exception v0

    invoke-static {p4}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0
.end method

.method public static a(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v6, 0x0

    :try_start_1
    const-string v0, "r"

    invoke-virtual {p3, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_19

    move-result-object v4

    if-eqz p4, :cond_2a

    :try_start_9
    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/as;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    :goto_d
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_26
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_28

    move-result-object v0

    invoke-static {v4}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Landroid/os/ParcelFileDescriptor;)V

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    move-object v4, v6

    :goto_1b
    invoke-static {v4}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Landroid/os/ParcelFileDescriptor;)V

    move-object v0, v6

    goto :goto_18

    :catchall_20
    move-exception v0

    move-object v4, v6

    :goto_22
    invoke-static {v4}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(Landroid/os/ParcelFileDescriptor;)V

    throw v0

    :catchall_26
    move-exception v0

    goto :goto_22

    :catch_28
    move-exception v0

    goto :goto_1b

    :cond_2a
    move-object v5, v6

    goto :goto_d
.end method

.method public static a(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v2, 0x0

    if-eqz p3, :cond_10

    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/as;->a()Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    :goto_7
    move v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/as;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_10
    move-object v5, v2

    goto :goto_7
.end method

.method public static a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;
    .registers 15

    const/high16 v8, 0x3f80

    const v7, 0x3f666666

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v2, v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v3, v0, p3

    if-nez p4, :cond_69

    if-ltz v2, :cond_19

    if-gez v3, :cond_69

    :cond_19
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {p3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/2addr v7, v1

    invoke-direct {v3, v2, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, p3, v2

    div-int/lit8 v2, v2, 0x2

    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, p2, v1

    sub-int v8, p3, v2

    invoke-direct {v6, v1, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, p1, v3, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p5, :cond_68

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_68
    :goto_68
    return-object v0

    :cond_69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float v4, p2

    int-to-float v6, p3

    div-float/2addr v4, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c7

    int-to-float v0, p3

    div-float/2addr v0, v2

    cmpg-float v2, v0, v7

    if-ltz v2, :cond_86

    cmpl-float v2, v0, v8

    if-lez v2, :cond_8a

    :cond_86
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v5, p0

    :cond_8a
    :goto_8a
    if-eqz v5, :cond_d7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    :goto_9c
    if-eqz p5, :cond_a3

    if-eq v2, p1, :cond_a3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2, v0, v1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v2, :cond_68

    if-nez p5, :cond_c3

    if-eq v2, p1, :cond_68

    :cond_c3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_68

    :cond_c7
    int-to-float v2, p2

    div-float v0, v2, v0

    cmpg-float v2, v0, v7

    if-ltz v2, :cond_d2

    cmpl-float v2, v0, v8

    if-lez v2, :cond_8a

    :cond_d2
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v5, p0

    goto :goto_8a

    :cond_d7
    move-object v2, p1

    goto :goto_9c
.end method

.method public static a()Landroid/graphics/BitmapFactory$Options;
    .registers 1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    return-object v0
.end method

.method private static a(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .registers 3

    :try_start_0
    const-string v0, "r"

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static a(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/at;

    invoke-direct {v2, p0, p3, v0, p4}, Lcom/estrongs/android/pop/app/imageviewer/at;-><init>(Lcom/estrongs/android/pop/app/imageviewer/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 14

    const/4 v1, 0x1

    const/4 v10, -0x1

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v2, v0

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v4, v0

    if-ne p2, v10, :cond_12

    move v0, v1

    :goto_b
    if-ne p1, v10, :cond_20

    const/16 v2, 0x80

    :goto_f
    if-ge v2, v0, :cond_32

    :cond_11
    :goto_11
    return v0

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

    :cond_32
    if-ne p2, v10, :cond_38

    if-ne p1, v10, :cond_38

    move v0, v1

    goto :goto_11

    :cond_38
    if-eq p1, v10, :cond_11

    move v0, v2

    goto :goto_11
.end method
