.class public Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;
.super Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;
.source "ImageSequenceCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;
    }
.end annotation


# static fields
.field public static final IMAGE_SEQUENCE_DIRECTORY_KEY:Ljava/lang/String; = "image_sequence_directory"

.field public static final JPEG_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final MAX_CACHE_BYTE_SIZE:I = 0xc00000

.field public static final PNG_EXTENSION:Ljava/lang/String; = ".png"

.field public static final SEQUENCES_DIRECTORY:Ljava/lang/String; = "image_sequences"

.field public static final SEQUENCES_LOCAL_PATH:Ljava/lang/String; = "/sdcard/goggles_data/image_sequences"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private allFiles:[Ljava/lang/String;

.field private fileNumber:I

.field private fromAssets:Z

.field private imageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final loader:Lcom/google/android/apps/unveil/env/StreamLoader;

.field private rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

.field private rawFrameSize:Lcom/google/android/apps/unveil/env/Size;

.field private sequencePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)V
    .registers 13
    .parameter "handler"
    .parameter
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, extraParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;-><init>(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)V

    .line 75
    new-instance v3, Lcom/google/android/apps/unveil/env/StreamLoader;

    invoke-direct {v3}, Lcom/google/android/apps/unveil/env/StreamLoader;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->loader:Lcom/google/android/apps/unveil/env/StreamLoader;

    .line 98
    iput v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->fileNumber:I

    .line 100
    const-string v3, "image_sequence_directory"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->getExtraValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, prefixedSequenceLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/unveil/env/ResourceUtils;->fromAssets(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->fromAssets:Z

    .line 103
    invoke-static {v2}, Lcom/google/android/apps/unveil/env/ResourceUtils;->getPathFromPrefixedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->sequencePath:Ljava/lang/String;

    .line 105
    sget-object v3, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Loading image sequence from %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->sequencePath:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :try_start_2f
    iget-boolean v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->fromAssets:Z

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->sequencePath:Ljava/lang/String;

    new-instance v5, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$1;

    invoke-direct {v5, p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$1;-><init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;)V

    invoke-static {p3, v3, v4, v5}, Lcom/google/android/apps/unveil/env/ResourceUtils;->listFiles(Landroid/content/res/Resources;ZLjava/lang/String;Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->allFiles:[Ljava/lang/String;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3e} :catch_ba

    .line 118
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->allFiles:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 120
    sget-object v3, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Found %d image files"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->allFiles:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->getParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;

    move-result-object v1

    .line 125
    .local v1, parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->allFiles:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->getImageSize(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrameSize:Lcom/google/android/apps/unveil/env/Size;

    .line 126
    const-string v3, "preview-size-values"

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrameSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/env/Size;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v3, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Set size to: %s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrameSize:Lcom/google/android/apps/unveil/env/Size;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->setParameters(Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;)V

    .line 130
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->allFiles:[Ljava/lang/String;

    array-length v3, v3

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v4, v4, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v5, v5, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v4, v5}, Lcom/google/android/apps/unveil/env/ImageUtils;->getYUVByteSize(II)I

    move-result v4

    mul-int/2addr v3, v4

    const/high16 v4, 0xc0

    if-gt v3, v4, :cond_b9

    const-string v3, "skip_rendering"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    const-string v3, "lockstep_callbacks"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b9

    .line 134
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->imageCache:Ljava/util/Map;

    .line 139
    :cond_b9
    return-void

    .line 114
    .end local v1           #parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    :catch_ba
    move-exception v0

    .line 115
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid directory given: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private decodeJpeg([BLcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)Z
    .registers 12
    .parameter "imageBytes"
    .parameter "destFrame"

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 207
    new-array v1, v8, [I

    .line 208
    .local v1, dimensions:[I
    invoke-virtual {p2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->getYuvDataAndClearRgbData()[B

    move-result-object v4

    invoke-static {p1, v4, v1}, Lcom/google/android/apps/unveil/env/ImageUtils;->decodeJpegToYUV420SP([B[B[I)[B

    .line 210
    iget-object v0, p2, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    .line 211
    .local v0, destSize:Lcom/google/android/apps/unveil/env/Size;
    aget v4, v1, v3

    iget v5, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    if-ne v4, v5, :cond_1a

    aget v4, v1, v2

    iget v5, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    if-eq v4, v5, :cond_37

    .line 212
    :cond_1a
    sget-object v4, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Invalid dimensions for image. Expected %s but got %d x %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aget v7, v1, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 216
    :cond_37
    return v2
.end method

.method private decodePng([BLcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)Z
    .registers 13
    .parameter "imageBytes"
    .parameter "destFrame"

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 220
    array-length v1, p1

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_a

    .line 236
    :goto_9
    return v2

    .line 226
    :cond_a
    iget-object v8, p2, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    .line 227
    .local v8, destSize:Lcom/google/android/apps/unveil/env/Size;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v3, v8, Lcom/google/android/apps/unveil/env/Size;->width:I

    if-ne v1, v3, :cond_1c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v3, v8, Lcom/google/android/apps/unveil/env/Size;->height:I

    if-eq v1, v3, :cond_40

    .line 228
    :cond_1c
    sget-object v1, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Invalid dimensions for image. Expected %s but got %d x %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrameSize:Lcom/google/android/apps/unveil/env/Size;

    aput-object v5, v4, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 233
    :cond_40
    invoke-virtual {p2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->getRgbData()[I

    move-result-object v1

    iget v3, v8, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v6, v8, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v7, v8, Lcom/google/android/apps/unveil/env/Size;->height:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 234
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move v2, v9

    .line 236
    goto :goto_9
.end method

.method private getBytesForImage(Ljava/lang/String;)[B
    .registers 8
    .parameter "filePath"

    .prologue
    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->resources:Landroid/content/res/Resources;

    iget-boolean v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->fromAssets:Z

    invoke-static {v3, v4, p1}, Lcom/google/android/apps/unveil/env/ResourceUtils;->getInputStreamForFile(Landroid/content/res/Resources;ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 159
    .local v1, inputStream:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->loader:Lcom/google/android/apps/unveil/env/StreamLoader;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/StreamLoader;->reset()V

    .line 160
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->loader:Lcom/google/android/apps/unveil/env/StreamLoader;

    invoke-virtual {v3, v1}, Lcom/google/android/apps/unveil/env/StreamLoader;->read(Ljava/io/InputStream;)[B
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v2

    .line 161
    .local v2, jpegFile:[B
    return-object v2

    .line 162
    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v2           #jpegFile:[B
    :catch_14
    move-exception v0

    .line 163
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getImageSequenceDirectories(Landroid/app/Activity;)[Landroid/util/Pair;
    .registers 16
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")[",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, allSequences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;>;"
    new-instance v1, Ljava/io/File;

    const-string v11, "/sdcard/goggles_data/image_sequences"

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    .local v1, allSequencesDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, sdCardList:[Ljava/lang/String;
    if-eqz v8, :cond_4a

    .line 267
    move-object v2, v8

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_15
    if-ge v5, v6, :cond_4a

    aget-object v10, v2, v5

    .line 268
    .local v10, string:Ljava/lang/String;
    new-instance v11, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sdcard:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sdcard:/sdcard/goggles_data/image_sequences/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 276
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v10           #string:Ljava/lang/String;
    :cond_4a
    :try_start_4a
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 277
    .local v7, manager:Landroid/content/res/AssetManager;
    const-string v11, "image_sequences"

    invoke-virtual {v7, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, assetsSequences:[Ljava/lang/String;
    if-eqz v3, :cond_99

    .line 279
    move-object v2, v3

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v6, v2

    .restart local v6       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_59
    if-ge v5, v6, :cond_99

    aget-object v10, v2, v5

    .line 280
    .restart local v10       #string:Ljava/lang/String;
    new-instance v11, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "assets:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "assets:image_sequences/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_8b} :catch_8e

    .line 279
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 285
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #assetsSequences:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #manager:Landroid/content/res/AssetManager;
    .end local v10           #string:Ljava/lang/String;
    :catch_8e
    move-exception v4

    .line 286
    .local v4, e:Ljava/io/IOException;
    sget-object v11, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v12, "Couldn\'t list assets directory!"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    .end local v4           #e:Ljava/io/IOException;
    :cond_99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;

    .line 290
    .local v9, sequenceArray:[Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 292
    return-object v9
.end method

.method private getImageSize(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Size;
    .registers 8
    .parameter "filePath"

    .prologue
    .line 143
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->resources:Landroid/content/res/Resources;

    iget-boolean v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->fromAssets:Z

    invoke-static {v3, v4, p1}, Lcom/google/android/apps/unveil/env/ResourceUtils;->getInputStreamForFile(Landroid/content/res/Resources;ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 145
    .local v1, inputStream:Ljava/io/InputStream;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 146
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 148
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 149
    new-instance v3, Lcom/google/android/apps/unveil/env/Size;

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v3, v4, v5}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_21

    return-object v3

    .line 150
    .end local v1           #inputStream:Ljava/io/InputStream;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_21
    move-exception v0

    .line 151
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Couldn\'t open stream!"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static initializePreferences(Landroid/preference/PreferenceActivity;)V
    .registers 11
    .parameter "preferenceActivity"

    .prologue
    .line 299
    invoke-static {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->getImageSequenceDirectories(Landroid/app/Activity;)[Landroid/util/Pair;

    move-result-object v6

    .line 303
    .local v6, options:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v9, v6

    if-nez v9, :cond_16

    .line 304
    sget v9, Lcom/google/android/apps/unveil/R$string;->camera_image_sequence_dir_key:I

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 306
    .local v7, pref:Landroid/preference/Preference;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 323
    .end local v7           #pref:Landroid/preference/Preference;
    :goto_15
    return-void

    .line 310
    :cond_16
    sget v9, Lcom/google/android/apps/unveil/R$string;->camera_image_sequence_dir_key:I

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 313
    .local v4, lp:Landroid/preference/ListPreference;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v8, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v6

    .local v0, arr$:[Landroid/util/Pair;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2f
    if-ge v2, v3, :cond_40

    aget-object v5, v0, v2

    .line 317
    .local v5, option:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 321
    .end local v5           #option:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_15
.end method

.method public static open(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
    .registers 5
    .parameter "handler"
    .parameter
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            ")",
            "Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, extraParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    if-eqz v0, :cond_14

    const-string v0, "lockstep_callbacks"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 242
    :cond_14
    new-instance v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;-><init>(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    .line 244
    :cond_1b
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    return-object v0
.end method


# virtual methods
.method protected generateFrame()Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    .registers 9

    .prologue
    .line 170
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->allFiles:[Ljava/lang/String;

    iget v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->fileNumber:I

    aget-object v0, v3, v4

    .line 173
    .local v0, filePath:Ljava/lang/String;
    iget v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->fileNumber:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->allFiles:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->fileNumber:I

    .line 175
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->imageCache:Ljava/util/Map;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->imageCache:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 176
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->imageCache:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    .line 203
    :goto_24
    return-object v3

    .line 179
    :cond_25
    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->getBytesForImage(Ljava/lang/String;)[B

    move-result-object v1

    .line 182
    .local v1, imageBytes:[B
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    if-nez v3, :cond_4a

    .line 183
    new-instance v3, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v4, v4, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v5, v5, Lcom/google/android/apps/unveil/env/Size;->height:I

    iget-object v6, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v6, v6, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v7, v7, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v6, v7}, Lcom/google/android/apps/unveil/env/ImageUtils;->getYUVByteSize(II)I

    move-result v6

    new-array v6, v6, [B

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;-><init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;II[B)V

    iput-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    .line 187
    :cond_4a
    const-string v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 188
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->decodeJpeg([BLcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 189
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Jpeg decoding failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_73
    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 192
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->decodePng([BLcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 193
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Png decoding failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    :cond_9c
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    .line 198
    .local v2, returnValue:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->imageCache:Ljava/util/Map;

    if-eqz v3, :cond_ac

    .line 199
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->imageCache:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;->rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    :cond_ac
    move-object v3, v2

    .line 203
    goto/16 :goto_24
.end method
