.class public Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;
.super Lcom/google/android/youtube/videos/store/BitmapStore;
.source "LocalVideoThumbnailStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/videos/store/BitmapStore",
        "<",
        "Lcom/google/android/youtube/videos/LocalVideo;",
        ">;"
    }
.end annotation


# static fields
.field private static final bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 35
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;->bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 36
    sget-object v0, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;->bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 37
    sget-object v0, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;->bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 38
    sget-object v0, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;->bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/io/File;Lcom/google/android/youtube/core/converter/ResponseConverter;Landroid/content/Context;)V
    .registers 5
    .parameter "executor"
    .parameter "thumbnailDirectory"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/io/File;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<[B",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, bitmapConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<[BLandroid/graphics/Bitmap;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/videos/store/BitmapStore;-><init>(Ljava/util/concurrent/Executor;Ljava/io/File;Lcom/google/android/youtube/core/converter/ResponseConverter;)V

    .line 47
    iput-object p4, p0, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;->context:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method protected fetchBitmapFromSource(Lcom/google/android/youtube/videos/LocalVideo;Lcom/google/android/youtube/core/async/Callback;Ljava/io/File;)V
    .registers 14
    .parameter "request"
    .parameter
    .parameter "storageFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/videos/LocalVideo;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/videos/LocalVideo;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/LocalVideo;Landroid/graphics/Bitmap;>;"
    const/16 v9, 0x100

    .line 62
    iget-object v4, p0, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/android/youtube/videos/LocalVideo;->id:J

    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;->bitmapDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v5, v6, v7, v8}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 68
    .local v1, original:Landroid/graphics/Bitmap;
    if-nez v1, :cond_31

    .line 69
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t get thumbnail for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/google/android/youtube/videos/LocalVideo;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1, v4}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 96
    :goto_30
    return-void

    .line 73
    :cond_31
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v4, v9, :cond_3b

    .line 75
    invoke-interface {p2, p1, v1}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_30

    .line 82
    :cond_3b
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit16 v4, v4, 0x100

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v3, v4, v5

    .line 83
    .local v3, scaledHeight:I
    const/4 v4, 0x0

    invoke-static {v1, v9, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 85
    .local v2, scaled:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 87
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x50

    invoke-virtual {v2, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 90
    :try_start_5b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, p3, v4}, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;->storeBytes(Ljava/io/File;[B)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_62} :catch_66

    .line 95
    :goto_62
    invoke-interface {p2, p1, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_30

    .line 91
    :catch_66
    move-exception v4

    goto :goto_62
.end method

.method protected bridge synthetic fetchBitmapFromSource(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;Ljava/io/File;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/youtube/videos/LocalVideo;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;->fetchBitmapFromSource(Lcom/google/android/youtube/videos/LocalVideo;Lcom/google/android/youtube/core/async/Callback;Ljava/io/File;)V

    return-void
.end method

.method protected toFile(Lcom/google/android/youtube/videos/LocalVideo;)Ljava/io/File;
    .registers 6
    .parameter "request"

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;->bitmapDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/youtube/videos/LocalVideo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/youtube/videos/LocalVideo;->dateModified:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic toFile(Ljava/lang/Object;)Ljava/io/File;
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    check-cast p1, Lcom/google/android/youtube/videos/LocalVideo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/store/LocalVideoThumbnailStore;->toFile(Lcom/google/android/youtube/videos/LocalVideo;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
