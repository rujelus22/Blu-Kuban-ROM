.class public Lcom/google/android/apps/unveil/env/PictureFactory;
.super Ljava/lang/Object;
.source "PictureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;,
        Lcom/google/android/apps/unveil/env/PictureFactory$ImageDecodingException;
    }
.end annotation


# static fields
.field public static final BYTES_PER_PIXEL:I = 0x4

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/PictureFactory;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static closeSafely(Ljava/io/InputStream;)V
    .registers 5
    .parameter "stream"

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 135
    :goto_3
    return-void

    .line 132
    :catch_4
    move-exception v0

    .line 133
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/google/android/apps/unveil/env/PictureFactory;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Failed to close stream."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method private static configureForDownsample(ILandroid/graphics/BitmapFactory$Options;)V
    .registers 6
    .parameter "maxBytes"
    .parameter "options"

    .prologue
    .line 114
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 115
    .local v2, width:I
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 116
    .local v1, height:I
    const/4 v0, 0x1

    .line 117
    .local v0, downsample:I
    :goto_5
    mul-int v3, v2, v1

    mul-int/lit8 v3, v3, 0x4

    if-le v3, p0, :cond_12

    .line 118
    mul-int/lit8 v0, v0, 0x2

    .line 119
    div-int/lit8 v2, v2, 0x2

    .line 120
    div-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 122
    :cond_12
    const/4 v3, 0x0

    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 123
    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 124
    return-void
.end method

.method public static create(Lcom/google/android/apps/unveil/env/Picture;)Lcom/google/android/apps/unveil/env/Picture;
    .registers 2
    .parameter "picture"

    .prologue
    .line 198
    new-instance v0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;-><init>(Lcom/google/android/apps/unveil/env/Picture;)V

    return-object v0
.end method

.method public static createBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Lcom/google/android/apps/unveil/env/Picture;
    .registers 9
    .parameter "contentResolver"
    .parameter "streamUri"
    .parameter "memoryBytes"
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/google/android/apps/unveil/env/PictureFactory$ImageDecodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 80
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 81
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 83
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 86
    .local v2, stream:Ljava/io/InputStream;
    invoke-static {v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 89
    invoke-static {v2}, Lcom/google/android/apps/unveil/env/PictureFactory;->closeSafely(Ljava/io/InputStream;)V

    .line 91
    invoke-static {p2, v1}, Lcom/google/android/apps/unveil/env/PictureFactory;->configureForDownsample(ILandroid/graphics/BitmapFactory$Options;)V

    .line 96
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 97
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    .local v0, image:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/google/android/apps/unveil/env/PictureFactory;->closeSafely(Ljava/io/InputStream;)V

    .line 101
    if-nez v0, :cond_2f

    .line 102
    new-instance v3, Lcom/google/android/apps/unveil/env/PictureFactory$ImageDecodingException;

    const-string v4, "BitmapFactory failed to decode stream"

    invoke-direct {v3, v4}, Lcom/google/android/apps/unveil/env/PictureFactory$ImageDecodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_2f
    new-instance v3, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;

    new-instance v4, Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    invoke-direct {v4, v0, p3}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-direct {v3, v4}, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;-><init>(Lcom/google/android/apps/unveil/env/Picture;)V

    return-object v3
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;I)Lcom/google/android/apps/unveil/env/Picture;
    .registers 4
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;

    new-instance v1, Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;-><init>(Lcom/google/android/apps/unveil/env/Picture;)V

    return-object v0
.end method

.method public static createBitmap([BIII)Lcom/google/android/apps/unveil/env/Picture;
    .registers 6
    .parameter "yuvData"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;

    new-instance v1, Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;-><init>([BIII)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;-><init>(Lcom/google/android/apps/unveil/env/Picture;)V

    return-object v0
.end method

.method public static createBitmapWithDownsampling([BI)Lcom/google/android/apps/unveil/env/Picture;
    .registers 6
    .parameter "jpegData"
    .parameter "maxBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/env/PictureFactory$ImageDecodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 145
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 146
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 149
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 151
    invoke-static {p1, v1}, Lcom/google/android/apps/unveil/env/PictureFactory;->configureForDownsample(ILandroid/graphics/BitmapFactory$Options;)V

    .line 153
    array-length v2, p0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    .local v0, downsampled:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1f

    .line 156
    new-instance v2, Lcom/google/android/apps/unveil/env/PictureFactory$ImageDecodingException;

    const-string v3, "Failed to downsample image"

    invoke-direct {v2, v3}, Lcom/google/android/apps/unveil/env/PictureFactory$ImageDecodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :cond_1f
    invoke-static {v0, v3}, Lcom/google/android/apps/unveil/env/PictureFactory;->createBitmap(Landroid/graphics/Bitmap;I)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v2

    return-object v2
.end method

.method public static createJpeg(Lcom/google/android/apps/unveil/env/Picture;)Lcom/google/android/apps/unveil/env/Picture;
    .registers 6
    .parameter "picture"

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;

    new-instance v1, Lcom/google/android/apps/unveil/sensors/JpegPicture;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/Picture;->getJpegData()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/Picture;->getOrientation()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/Picture;->getSource()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/unveil/sensors/JpegPicture;-><init>([BII)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;-><init>(Lcom/google/android/apps/unveil/env/Picture;)V

    return-object v0
.end method

.method public static createJpeg([BI)Lcom/google/android/apps/unveil/env/Picture;
    .registers 4
    .parameter "data"
    .parameter "orientation"

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;

    new-instance v1, Lcom/google/android/apps/unveil/sensors/JpegPicture;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/unveil/sensors/JpegPicture;-><init>([BI)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;-><init>(Lcom/google/android/apps/unveil/env/Picture;)V

    return-object v0
.end method

.method public static createJpeg([BII)Lcom/google/android/apps/unveil/env/Picture;
    .registers 5
    .parameter "imageData"
    .parameter "i"
    .parameter "sourceShared"

    .prologue
    .line 56
    new-instance v0, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;

    new-instance v1, Lcom/google/android/apps/unveil/sensors/JpegPicture;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/unveil/sensors/JpegPicture;-><init>([BII)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/env/PictureFactory$WrappedPicture;-><init>(Lcom/google/android/apps/unveil/env/Picture;)V

    return-object v0
.end method

.method public static loadAndDownsample(Landroid/content/Context;Landroid/net/Uri;I)Lcom/google/android/apps/unveil/env/Picture;
    .registers 9
    .parameter "context"
    .parameter "uri"
    .parameter "orientation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/env/PictureLoadingException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/google/android/apps/unveil/env/ImageUtils;->getPicture(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v1

    .line 174
    .local v1, highResImage:Lcom/google/android/apps/unveil/env/Picture;
    if-nez v1, :cond_12

    .line 175
    new-instance v4, Lcom/google/android/apps/unveil/env/PictureLoadingException;

    const-string v5, "Loading raw image failed."

    invoke-direct {v4, v5}, Lcom/google/android/apps/unveil/env/PictureLoadingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 178
    :cond_12
    new-instance v2, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;

    const v4, 0x63d80

    invoke-direct {v2, v1, v4}, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;-><init>(Lcom/google/android/apps/unveil/env/Picture;I)V

    .line 181
    .local v2, photoTask:Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    :try_start_20
    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/unveil/env/Picture;

    .line 185
    .local v3, rotated:Lcom/google/android/apps/unveil/env/Picture;
    if-nez v3, :cond_39

    .line 186
    new-instance v4, Lcom/google/android/apps/unveil/env/PictureLoadingException;

    const-string v5, "Rotating failed"

    invoke-direct {v4, v5}, Lcom/google/android/apps/unveil/env/PictureLoadingException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_30} :catch_30

    .line 189
    .end local v3           #rotated:Lcom/google/android/apps/unveil/env/Picture;
    :catch_30
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/google/android/apps/unveil/env/PictureLoadingException;

    const-string v5, "Rotating/downscaling failed"

    invoke-direct {v4, v5, v0}, Lcom/google/android/apps/unveil/env/PictureLoadingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 188
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #rotated:Lcom/google/android/apps/unveil/env/Picture;
    :cond_39
    return-object v3
.end method
