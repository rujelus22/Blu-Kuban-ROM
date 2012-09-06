.class public LaT/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/googlenav/ui/wizard/cc;)I
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cc;->c:Ljava/lang/String;

    invoke-static {v0}, LaT/a;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/InputStream;)I
    .registers 3
    .parameter

    .prologue
    .line 105
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 107
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 109
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 122
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 124
    :try_start_5
    invoke-static {v0}, LaT/a;->a(Ljava/io/InputStream;)I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result v1

    .line 126
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public static a(Lcom/google/googlenav/ui/wizard/cc;IZ)LS/f;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    new-instance v0, LT/f;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cc;->c:Ljava/lang/String;

    invoke-static {v1, p1, p2}, LaT/a;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, LT/f;-><init>(Landroid/graphics/Bitmap;)V

    .line 235
    invoke-static {p0}, LaT/a;->a(Lcom/google/googlenav/ui/wizard/cc;)I

    move-result v1

    .line 242
    if-eqz v1, :cond_15

    .line 243
    invoke-interface {v0, v1}, LS/f;->a(I)LS/f;

    move-result-object v0

    .line 246
    :cond_15
    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 258
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 260
    if-ne v0, v1, :cond_10

    .line 261
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 268
    :goto_f
    return-object v0

    .line 263
    :cond_10
    if-le v0, v1, :cond_1a

    .line 265
    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0, v2, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_f

    .line 268
    :cond_1a
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {p0, v2, v1, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_f
.end method

.method public static a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 284
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 288
    :try_start_6
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 289
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 290
    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 291
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_41

    .line 294
    :try_start_15
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 295
    div-int/2addr v0, p1

    .line 298
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_48

    .line 299
    :try_start_23
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 300
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 301
    const/4 v0, 0x0

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    if-eqz p2, :cond_3b

    .line 305
    invoke-static {v0}, LaT/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_41

    move-result-object v0

    .line 310
    if-eqz v1, :cond_3a

    .line 311
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_3a
    :goto_3a
    return-object v0

    .line 310
    :cond_3b
    if-eqz v1, :cond_3a

    .line 311
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_3a

    .line 310
    :catchall_41
    move-exception v0

    :goto_42
    if-eqz v1, :cond_47

    .line 311
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_47
    throw v0

    .line 310
    :catchall_48
    move-exception v0

    move-object v1, v2

    goto :goto_42
.end method

.method public static a(Ljava/io/InputStream;II)[B
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LaT/a;->a(Ljava/io/InputStream;III)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;III)[B
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v0

    .line 157
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 161
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 162
    const/4 v0, 0x0

    invoke-static {p0, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    if-eqz p3, :cond_33

    .line 165
    new-instance v1, LT/f;

    invoke-direct {v1, v0}, LT/f;-><init>(Landroid/graphics/Bitmap;)V

    .line 166
    invoke-virtual {v1, p3}, LT/f;->a(I)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 167
    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    invoke-virtual {v1}, LT/f;->d()V

    .line 171
    :cond_33
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 175
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;II)[B
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-static {p0}, LaT/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 191
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 193
    :try_start_9
    invoke-static {v1, p1, p2, v0}, LaT/a;->a(Ljava/io/InputStream;III)[B
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    move-result-object v0

    .line 195
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_11
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method private static b(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    .line 46
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 51
    packed-switch v0, :pswitch_data_1a

    .line 62
    :pswitch_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 53
    :pswitch_11
    const/16 v0, 0x5a

    goto :goto_10

    .line 56
    :pswitch_14
    const/16 v0, 0xb4

    goto :goto_10

    .line 59
    :pswitch_17
    const/16 v0, 0x10e

    goto :goto_10

    .line 51
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 213
    const/4 v1, 0x0

    :try_start_6
    invoke-static {v0, p1, p2, v1}, LaT/a;->a(Ljava/io/InputStream;III)[B
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    move-result-object v1

    .line 215
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_e
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method
