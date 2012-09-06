.class public Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
.super Ljava/lang/Object;
.source "FakeCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RawFrame"
.end annotation


# instance fields
.field final frameSize:Lcom/google/android/apps/unveil/env/Size;

.field private isRgbDataDirty:Z

.field private rgbData:[I

.field final synthetic this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

.field private yuvData:[B


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;II[B)V
    .registers 6
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "yuvData"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->isRgbDataDirty:Z

    .line 338
    new-instance v0, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v0, p2, p3}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    .line 339
    iput-object p4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->yuvData:[B

    .line 340
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;II[I)V
    .registers 6
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "rgbData"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->this$0:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->isRgbDataDirty:Z

    .line 332
    new-instance v0, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v0, p2, p3}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    .line 333
    iput-object p4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->rgbData:[I

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->isRgbDataDirty:Z

    .line 335
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter
    .parameter "source"

    .prologue
    .line 343
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;-><init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;II[I)V

    .line 344
    invoke-virtual {p0, p2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->loadRgb(Landroid/graphics/Bitmap;)V

    .line 345
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->rgbData:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->yuvData:[B

    return-object v0
.end method


# virtual methods
.method public getRgbData()[I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->rgbData:[I

    if-nez v0, :cond_12

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v0, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v1, v1, Lcom/google/android/apps/unveil/env/Size;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->rgbData:[I

    .line 319
    :cond_12
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->isRgbDataDirty:Z

    if-eqz v0, :cond_27

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->yuvData:[B

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->rgbData:[I

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v2, v2, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v3, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/unveil/env/ImageUtils;->convertYUV420SPToARGB8888([B[IIIZ)V

    .line 322
    iput-boolean v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->isRgbDataDirty:Z

    .line 325
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->rgbData:[I

    return-object v0
.end method

.method public getYuvDataAndClearRgbData()[B
    .registers 2

    .prologue
    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->isRgbDataDirty:Z

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->yuvData:[B

    return-object v0
.end method

.method public loadRgb(Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->rgbData:[I

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v3, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v6, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v7, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 352
    iput-boolean v2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->isRgbDataDirty:Z

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->yuvData:[B

    .line 354
    return-void
.end method
