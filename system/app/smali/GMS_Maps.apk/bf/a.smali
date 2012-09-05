.class public Lbf/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/ui/wizard/bx;)I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bx;->c:Ljava/lang/String;

    invoke-static {v0}, Lbf/a;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/InputStream;)I
    .registers 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .registers 3

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-static {v0}, Lbf/a;->a(Ljava/io/InputStream;)I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public static a(Lcom/google/googlenav/ui/wizard/bx;IZ)Lah/f;
    .registers 5

    new-instance v0, Lai/f;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bx;->c:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lbf/a;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lai/f;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p0}, Lbf/a;->a(Lcom/google/googlenav/ui/wizard/bx;)I

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0, v1}, Lah/f;->a(I)Lah/f;

    move-result-object v0

    :cond_15
    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_10

    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    if-le v0, v1, :cond_1a

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0, v2, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_f

    :cond_1a
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v2, v1, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_f
.end method

.method public static a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/2addr v0, p1

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p2, :cond_30

    invoke-static {v0}, Lbf/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_30
    return-object v0
.end method

.method public static a(Ljava/io/InputStream;II)[B
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lbf/a;->a(Ljava/io/InputStream;III)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;III)[B
    .registers 8

    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    invoke-static {p0, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p3, :cond_2c

    new-instance v1, Lai/f;

    invoke-direct {v1, v0}, Lai/f;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, p3}, Lai/f;->a(I)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Lai/f;->d()V

    :cond_2c
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;II)[B
    .registers 5

    invoke-static {p0}, Lbf/a;->b(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_9
    invoke-static {v1, p1, p2, v0}, Lbf/a;->a(Ljava/io/InputStream;III)[B
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_11
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method private static b(Ljava/lang/String;)I
    .registers 4

    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    :pswitch_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :pswitch_11
    const/16 v0, 0x5a

    goto :goto_10

    :pswitch_14
    const/16 v0, 0xb4

    goto :goto_10

    :pswitch_17
    const/16 v0, 0x10e

    goto :goto_10

    :pswitch_data_1a
    .packed-switch 0x3
        :pswitch_14
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;II)[B
    .registers 5

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_6
    invoke-static {v0, p1, p2, v1}, Lbf/a;->a(Ljava/io/InputStream;III)[B
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method
