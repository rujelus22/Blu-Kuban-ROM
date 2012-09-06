.class public Lcom/x/google/common/graphics/android/AndroidImage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/graphics/GoogleImage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/common/graphics/android/AndroidImage$AutoScale;
    }
.end annotation


# instance fields
.field private volatile bitmap:Landroid/graphics/Bitmap;

.field protected referenceCount:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/x/google/common/graphics/android/AndroidImage;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->referenceCount:I

    if-eqz p3, :cond_1c

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_a
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_a

    :cond_1f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/x/google/common/graphics/android/AndroidImage$AutoScale;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/x/google/common/graphics/android/AndroidImage$AutoScale;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/x/google/common/graphics/android/AndroidImage;->referenceCount:I

    invoke-static {p3}, Lcom/x/google/common/graphics/android/AndroidImage;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_43

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_43

    const/4 v1, 0x0

    sget-object v2, Lcom/x/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Lcom/x/google/common/graphics/android/AndroidImage$AutoScale;

    if-ne p4, v2, :cond_20

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :cond_20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/x/google/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Lcom/x/google/common/graphics/android/AndroidImage$AutoScale;

    if-ne p4, v0, :cond_43

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/x/google/common/Config;->getPixelsPerInch()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_43
    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4d

    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    :cond_4d
    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_76

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null Bitmap! \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"; if seen during a test, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "this usually means that the image file needs to be added to the test.config file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->referenceCount:I

    iput-object p1, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->referenceCount:I

    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method

.method public constructor <init>([IIIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->referenceCount:I

    if-eqz p4, :cond_11

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_a
    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_11
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_a
.end method

.method private static cleanName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_d
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1a
    return-object p0
.end method


# virtual methods
.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 12

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_18
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_26
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_79
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_30} :catch_69
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_30} :catch_71

    :try_start_30
    iget-object v3, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x4b

    invoke-virtual {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_85
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_39} :catch_89
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_39} :catch_87

    :try_start_39
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_81

    :goto_3c
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    const-string v3, "image/jpeg"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orientation"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    :goto_68
    return-object v0

    :catch_69
    move-exception v1

    move-object v1, v0

    :goto_6b
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_68

    :catch_6f
    move-exception v1

    goto :goto_68

    :catch_71
    move-exception v1

    move-object v1, v0

    :goto_73
    :try_start_73
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_68

    :catch_77
    move-exception v1

    goto :goto_68

    :catchall_79
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_7d
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_83

    :goto_80
    throw v0

    :catch_81
    move-exception v0

    goto :goto_3c

    :catch_83
    move-exception v1

    goto :goto_80

    :catchall_85
    move-exception v0

    goto :goto_7d

    :catch_87
    move-exception v2

    goto :goto_73

    :catch_89
    move-exception v2

    goto :goto_6b
.end method

.method public addReference()Lcom/x/google/common/graphics/GoogleImage;
    .registers 2

    iget v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->referenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->referenceCount:I

    return-object p0
.end method

.method public createScaledImage(II)Lcom/x/google/common/graphics/GoogleImage;
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/x/google/common/graphics/android/AndroidImage;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/x/google/common/graphics/android/AndroidImage;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/x/google/common/graphics/android/AndroidImage;->createScaledImage(IIIIII)Lcom/x/google/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public createScaledImage(IIIIII)Lcom/x/google/common/graphics/GoogleImage;
    .registers 15

    new-instance v0, Lcom/x/google/common/graphics/android/ScaledAndroidImage;

    move-object v1, p0

    move v2, p5

    move v3, p6

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/x/google/common/graphics/android/ScaledAndroidImage;-><init>(Lcom/x/google/common/graphics/android/AndroidImage;IIIIII)V

    mul-int v1, p5, p6

    const/16 v2, 0x1000

    if-ge v1, v2, :cond_15

    invoke-virtual {v0}, Lcom/x/google/common/graphics/android/ScaledAndroidImage;->getGraphics()Lcom/x/google/common/graphics/GoogleGraphics;

    :cond_15
    return-object v0
.end method

.method public drawImage(Lcom/x/google/common/graphics/GoogleGraphics;II)V
    .registers 9

    check-cast p1, Lcom/x/google/common/graphics/android/AndroidGraphics;

    invoke-virtual {p1}, Lcom/x/google/common/graphics/android/AndroidGraphics;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v2, p2

    int-to-float v3, p3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->referenceCount:I

    if-eqz v0, :cond_4

    :cond_4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGraphics()Lcom/x/google/common/graphics/GoogleGraphics;
    .registers 4

    new-instance v0, Lcom/x/google/common/graphics/android/AndroidGraphics;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Lcom/x/google/common/graphics/android/AndroidGraphics;-><init>(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNumBytesUsed()I
    .registers 3

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_5
.end method

.method public getRGB([IIIIIII)V
    .registers 16

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-void
.end method

.method public getWidth()I
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2

    iget v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->referenceCount:I

    if-gtz v0, :cond_10

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    :cond_10
    return-void
.end method

.method public removeReference()V
    .registers 3

    iget v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->referenceCount:I

    iget v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->referenceCount:I

    if-gez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative reference count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/x/google/common/graphics/android/AndroidImage;->referenceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    return-void
.end method

.method public rotate(I)Lcom/x/google/common/graphics/GoogleImage;
    .registers 9

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object p0

    :cond_4
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/x/google/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance p0, Lcom/x/google/common/graphics/android/AndroidImage;

    invoke-direct {p0, v0}, Lcom/x/google/common/graphics/android/AndroidImage;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method
