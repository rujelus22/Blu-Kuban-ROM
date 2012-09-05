.class public Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;


# static fields
.field private static volatile bitmapCount:I

.field private static final resourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile bitmap:Landroid/graphics/Bitmap;

.field private final isOriginal:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmapCount:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->resourceMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_19

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_7
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_7

    :cond_1c
    const-class v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;

    monitor-enter v0

    :try_start_1f
    sget v1, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmapCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmapCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->isOriginal:Z

    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->cleanName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1d

    invoke-static {p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->getResourceId(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    :cond_1d
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_27

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_50

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null Bitmap! \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"; if seen during a test, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "this usually means that the image file needs to be added to the test.config file"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    const-class v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;

    monitor-enter v0

    :try_start_53
    sget v1, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmapCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmapCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->isOriginal:Z

    monitor-exit v0

    return-void

    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->isOriginal:Z

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null Bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const-class v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;

    monitor-enter v0

    :try_start_18
    sget v1, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmapCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmapCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->isOriginal:Z

    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public constructor <init>([IIIZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_1b

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_7
    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    const-class v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;

    monitor-enter v0

    :try_start_10
    sget v1, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmapCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmapCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->isOriginal:Z

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1e

    return-void

    :cond_1b
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_7

    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private static cleanName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1a

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    return-object v0

    :cond_1b
    move-object v0, p0

    goto :goto_d
.end method

.method private compact()V
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->isOriginal:Z

    if-nez v0, :cond_8

    iput-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    :cond_7
    :goto_7
    return-void

    :cond_8
    monitor-enter p0

    :try_start_9
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_27

    if-eqz v0, :cond_7

    const-class v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;

    monitor-enter v0

    :try_start_14
    sget v1, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmapCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sput v1, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmapCount:I

    sget v1, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmapCount:I

    if-gez v1, :cond_2a

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_24

    throw v1

    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0

    :cond_2a
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_24

    goto :goto_7
.end method

.method private static getResourceId(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->resourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    :goto_b
    return-object v0

    :cond_c
    :try_start_c
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_18} :catch_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_18} :catch_22

    move-result-object v0

    goto :goto_b

    :catch_1a
    move-exception v0

    const-string v1, "getResourceId"

    invoke-static {v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_20
    move-object v0, v2

    goto :goto_b

    :catch_22
    move-exception v0

    const-string v1, "getResourceId"

    invoke-static {v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method public static mapResource(Ljava/lang/String;I)V
    .registers 4

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->resourceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createScaledImage(II)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->getHeight()I

    move-result v4

    const/4 v7, 0x2

    move-object v0, p0

    move v2, v1

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageUtil;->createScaledImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;IIIIIII)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public createScaledImage(IIIIII)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .registers 15

    const/4 v7, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageUtil;->createScaledImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;IIIIIII)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public drawImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;II)V
    .registers 9

    check-cast p1, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidGraphics;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidGraphics;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v2, p2

    int-to-float v3, p3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->compact()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGraphics()Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;
    .registers 4

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidGraphics;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidGraphics;-><init>(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRGB([IIIIIII)V
    .registers 16

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

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

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/graphics/android/AndroidImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method
