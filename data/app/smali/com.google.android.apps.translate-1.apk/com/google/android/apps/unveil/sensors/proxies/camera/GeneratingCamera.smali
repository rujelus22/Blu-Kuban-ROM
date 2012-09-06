.class public Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;
.super Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;
.source "GeneratingCamera.java"


# instance fields
.field private internalBitmap:Landroid/graphics/Bitmap;

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private rVal:I

.field private rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)V
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
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, extraParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;-><init>(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)V

    .line 22
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->rVal:I

    .line 35
    return-void
.end method

.method public static open(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
    .registers 4
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
    .line 85
    .local p1, extraParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    if-nez v0, :cond_b

    .line 86
    new-instance v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;-><init>(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    .line 88
    :cond_b
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    return-object v0
.end method


# virtual methods
.method protected generateFrame()Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    .registers 16

    .prologue
    const/high16 v14, 0x4000

    const-wide/high16 v12, 0x4059

    const-wide v10, 0x400921fb54442d18L

    const/high16 v9, 0x437f

    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->getWidth()I

    move-result v3

    .line 43
    .local v3, width:I
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->getHeight()I

    move-result v1

    .line 45
    .local v1, height:I
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->internalBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_28

    .line 46
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->internalBitmap:Landroid/graphics/Bitmap;

    .line 47
    new-instance v4, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, p0, v5}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;-><init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    .line 50
    :cond_28
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .local v2, paint:Landroid/graphics/Paint;
    iget v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->rVal:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->rVal:I

    .line 56
    const/16 v4, 0xff

    iget v5, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->rVal:I

    iget v6, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->rVal:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->rVal:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 59
    const/16 v4, -0x100

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x400ccccd

    div-float/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 63
    const/high16 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->rVal:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    int-to-float v5, v3

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->rVal:I

    int-to-float v5, v5

    div-float/2addr v5, v9

    int-to-float v6, v1

    mul-float/2addr v5, v6

    const/high16 v6, 0x4120

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 67
    const/high16 v4, -0x100

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    const/high16 v4, 0x41c0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This is a fake picture "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/high16 v5, 0x4044

    iget v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->rVal:I

    int-to-float v7, v7

    div-float/2addr v7, v9

    mul-float/2addr v7, v14

    float-to-double v7, v7

    mul-double/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v5, v12

    double-to-int v5, v5

    int-to-float v5, v5

    const-wide/high16 v6, 0x406e

    iget v8, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->rVal:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    mul-float/2addr v8, v14

    float-to-double v8, v8

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    double-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 73
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->loadRgb(Landroid/graphics/Bitmap;)V

    .line 75
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/GeneratingCamera;->rawFrame:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    return-object v4
.end method
