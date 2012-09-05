.class public Lcom/samsung/swift/service/media/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final IMAGE:Ljava/lang/String; = "Image"

.field private static final TRACE_LOG:Ljava/lang/String; = null

.field private static final VIDEO:Ljava/lang/String; = "Video"

.field private static final jpegQuality:I

.field private static final pngQuality:I


# instance fields
.field private final compressionQuality:I

.field private final imageInputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private final inputFile:Ljava/io/File;

.field private mediaFormat:Ljava/lang/String;

.field private final outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private peer:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 104
    const-class v0, Lcom/samsung/swift/service/media/Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/media/Request;->TRACE_LOG:Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/samsung/swift/util/SwiftConfig;->INSTANCE:Lcom/samsung/swift/util/SwiftConfig;

    const-string v1, "WEBPHONE_JPEG_COMPRESSION"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/SwiftConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/swift/service/media/Request;->jpegQuality:I

    .line 108
    sget-object v0, Lcom/samsung/swift/util/SwiftConfig;->INSTANCE:Lcom/samsung/swift/util/SwiftConfig;

    const-string v1, "WEBPHONE_PNG_COMPRESSION"

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/SwiftConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/swift/service/media/Request;->pngQuality:I

    return-void
.end method

.method public constructor <init>(J)V
    .registers 8
    .parameter "peer"

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object v3, p0, Lcom/samsung/swift/service/media/Request;->mediaFormat:Ljava/lang/String;

    .line 120
    iput-wide p1, p0, Lcom/samsung/swift/service/media/Request;->peer:J

    .line 122
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/Request;->outputMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_47

    .line 124
    iput-object v3, p0, Lcom/samsung/swift/service/media/Request;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 125
    iput v4, p0, Lcom/samsung/swift/service/media/Request;->compressionQuality:I

    .line 156
    :goto_18
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/Request;->inputFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/swift/service/media/Request;->inputFile:Ljava/io/File;

    .line 157
    iget-object v1, p0, Lcom/samsung/swift/service/media/Request;->inputFile:Ljava/io/File;

    invoke-static {v1}, Lcom/samsung/swift/service/media/Request;->getCompressImageFormat(Ljava/io/File;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/swift/service/media/Request;->imageInputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 158
    iget-object v1, p0, Lcom/samsung/swift/service/media/Request;->imageInputFormat:Landroid/graphics/Bitmap$CompressFormat;

    if-nez v1, :cond_a4

    .line 160
    iget-object v1, p0, Lcom/samsung/swift/service/media/Request;->inputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, fname:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/swift/service/media/Request;->isImageFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 164
    sget-object v1, Lcom/samsung/swift/service/media/Request;->TRACE_LOG:Ljava/lang/String;

    const-string v2, "***** Image file ********"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v1, "Image"

    iput-object v1, p0, Lcom/samsung/swift/service/media/Request;->mediaFormat:Ljava/lang/String;

    .line 175
    .end local v0           #fname:Ljava/lang/String;
    :cond_46
    :goto_46
    return-void

    .line 129
    :cond_47
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/Request;->outputMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 131
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v1, p0, Lcom/samsung/swift/service/media/Request;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 142
    :goto_57
    iget-object v1, p0, Lcom/samsung/swift/service/media/Request;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v1, v2, :cond_7d

    .line 144
    sget v1, Lcom/samsung/swift/service/media/Request;->jpegQuality:I

    iput v1, p0, Lcom/samsung/swift/service/media/Request;->compressionQuality:I

    goto :goto_18

    .line 133
    :cond_62
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/Request;->outputMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 135
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v1, p0, Lcom/samsung/swift/service/media/Request;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_57

    .line 139
    :cond_73
    sget-object v1, Lcom/samsung/swift/service/media/Request;->TRACE_LOG:Ljava/lang/String;

    const-string v2, "mimeType not supported!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput-object v3, p0, Lcom/samsung/swift/service/media/Request;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_57

    .line 146
    :cond_7d
    iget-object v1, p0, Lcom/samsung/swift/service/media/Request;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v1, v2, :cond_88

    .line 148
    sget v1, Lcom/samsung/swift/service/media/Request;->pngQuality:I

    iput v1, p0, Lcom/samsung/swift/service/media/Request;->compressionQuality:I

    goto :goto_18

    .line 152
    :cond_88
    sget-object v1, Lcom/samsung/swift/service/media/Request;->TRACE_LOG:Ljava/lang/String;

    const-string v2, "mimeType not supported!!! using compression 100"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput v4, p0, Lcom/samsung/swift/service/media/Request;->compressionQuality:I

    goto :goto_18

    .line 167
    .restart local v0       #fname:Ljava/lang/String;
    :cond_92
    invoke-virtual {p0, v0}, Lcom/samsung/swift/service/media/Request;->isVideoFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 169
    sget-object v1, Lcom/samsung/swift/service/media/Request;->TRACE_LOG:Ljava/lang/String;

    const-string v2, "***** Video file ********"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v1, "Video"

    iput-object v1, p0, Lcom/samsung/swift/service/media/Request;->mediaFormat:Ljava/lang/String;

    goto :goto_46

    .line 174
    .end local v0           #fname:Ljava/lang/String;
    :cond_a4
    const-string v1, "Image"

    iput-object v1, p0, Lcom/samsung/swift/service/media/Request;->mediaFormat:Ljava/lang/String;

    goto :goto_46
.end method

.method private static getCompressImageFormat(Ljava/io/File;)Landroid/graphics/Bitmap$CompressFormat;
    .registers 10
    .parameter "file"

    .prologue
    .line 272
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, name:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 274
    .local v2, p:I
    if-ltz v2, :cond_60

    int-to-long v3, v2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-eqz v3, :cond_60

    .line 276
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, ext:Ljava/lang/String;
    const-string v3, "png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 279
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 287
    .end local v0           #ext:Ljava/lang/String;
    :goto_2c
    return-object v3

    .line 281
    .restart local v0       #ext:Ljava/lang/String;
    :cond_2d
    const-string v3, "jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    const-string v3, "gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 283
    :cond_45
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_2c

    .line 285
    :cond_48
    sget-object v3, Lcom/samsung/swift/service/media/Request;->TRACE_LOG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no image mimeType found for extention "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .end local v0           #ext:Ljava/lang/String;
    :cond_60
    const/4 v3, 0x0

    goto :goto_2c
.end method

.method private static isImageBMPFile(Ljava/io/File;)Z
    .registers 10
    .parameter "file"

    .prologue
    .line 291
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, name:Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 293
    .local v2, p:I
    if-ltz v2, :cond_34

    int-to-long v3, v2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-eqz v3, :cond_34

    .line 295
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, ext:Ljava/lang/String;
    const-string v3, "bmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "wbmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 298
    :cond_32
    const/4 v3, 0x1

    .line 301
    .end local v0           #ext:Ljava/lang/String;
    :goto_33
    return v3

    :cond_34
    const/4 v3, 0x0

    goto :goto_33
.end method

.method public static pluginUnloading()V
    .registers 0

    .prologue
    .line 327
    return-void
.end method


# virtual methods
.method public getCompressionQuality()I
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Lcom/samsung/swift/service/media/Request;->compressionQuality:I

    return v0
.end method

.method public getImageInputFormat()Landroid/graphics/Bitmap$CompressFormat;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/swift/service/media/Request;->imageInputFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public getInputFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/swift/service/media/Request;->inputFile:Ljava/io/File;

    return-object v0
.end method

.method getOutputCompressFormat()Landroid/graphics/Bitmap$CompressFormat;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/swift/service/media/Request;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public native inputFilePath()Ljava/lang/String;
.end method

.method public native isImageFile(Ljava/lang/String;)Z
.end method

.method public isImageInputFormat()Z
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/swift/service/media/Request;->mediaFormat:Ljava/lang/String;

    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public native isVideoFile(Ljava/lang/String;)Z
.end method

.method public isVideoInputFormat()Z
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/samsung/swift/service/media/Request;->mediaFormat:Ljava/lang/String;

    const-string v1, "Video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public native outputMimeType()Ljava/lang/String;
.end method

.method public native prapareRawSend()Lcom/samsung/swift/util/ostream;
.end method

.method protected process()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/service/media/UnsupportedFormatException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/Request;->outputMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/swift/service/media/Request;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v0, :cond_12

    :cond_e
    iget-object v0, p0, Lcom/samsung/swift/service/media/Request;->mediaFormat:Ljava/lang/String;

    if-nez v0, :cond_26

    .line 314
    :cond_12
    iget-object v0, p0, Lcom/samsung/swift/service/media/Request;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/samsung/swift/service/media/Request;->mediaFormat:Ljava/lang/String;

    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_26

    .line 316
    :cond_20
    new-instance v0, Lcom/samsung/swift/service/media/UnsupportedFormatException;

    invoke-direct {v0}, Lcom/samsung/swift/service/media/UnsupportedFormatException;-><init>()V

    throw v0

    .line 319
    :cond_26
    iget-object v0, p0, Lcom/samsung/swift/service/media/Request;->inputFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_34

    .line 321
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 323
    :cond_34
    return-void
.end method

.method public send(Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "bitmap"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/swift/service/media/Request;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v1, p0, Lcom/samsung/swift/service/media/Request;->compressionQuality:I

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/Request;->prapareRawSend()Lcom/samsung/swift/util/ostream;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 263
    return-void
.end method

.method public native sendError(Ljava/lang/String;)V
.end method

.method public native sendFile(Ljava/lang/String;)V
.end method

.method public native setInputFilePath(Ljava/lang/String;)V
.end method

.method public native setOutputMimeType(Ljava/lang/String;)V
.end method
