.class public Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
.super Landroid/widget/ImageView;
.source "ImageViewWithMask.java"


# instance fields
.field private bStartView:I

.field protected brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

.field private c1:I

.field private c2:I

.field private final color1:I

.field private final color2:I

.field private count:I

.field private currX:F

.field private currY:F

.field private dashed_line:Ljava/lang/Thread;

.field private drawMask:Z

.field private drawbrushanimation:Z

.field private imageBrushRadius:I

.field private inversM:Landroid/graphics/Matrix;

.field private isRunning:Z

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field private mHandler:Landroid/os/Handler;

.field protected mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

.field mMatrix:Landroid/graphics/Matrix;

.field private final mMatrixValues:[F

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field private mapPoint:[I

.field protected mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

.field protected maxZoom:F

.field protected minZoom:F

.field paint:Landroid/graphics/Paint;

.field scale:F

.field transX:I

.field transY:I

.field private viewHeight:F

.field private viewWidth:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 638
    const-string v0, "native_resize"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/high16 v3, -0x100

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 23
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    .line 24
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 32
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->bStartView:I

    .line 34
    new-instance v0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$1;-><init>(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->paint:Landroid/graphics/Paint;

    .line 184
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mMatrixValues:[F

    .line 348
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->inversM:Landroid/graphics/Matrix;

    .line 402
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mMatrix:Landroid/graphics/Matrix;

    .line 474
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currX:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currY:F

    .line 475
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->count:I

    .line 476
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->c1:I

    .line 477
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->c2:I

    .line 478
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->color1:I

    .line 479
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->color2:I

    .line 480
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->imageBrushRadius:I

    .line 562
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->dashed_line:Ljava/lang/Thread;

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/high16 v3, -0x100

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 23
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    .line 24
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    .line 28
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 30
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 32
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->bStartView:I

    .line 34
    new-instance v0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$1;-><init>(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->paint:Landroid/graphics/Paint;

    .line 184
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mMatrixValues:[F

    .line 348
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->inversM:Landroid/graphics/Matrix;

    .line 402
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mMatrix:Landroid/graphics/Matrix;

    .line 474
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currX:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currY:F

    .line 475
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->count:I

    .line 476
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->c1:I

    .line 477
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->c2:I

    .line 478
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->color1:I

    .line 479
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->color2:I

    .line 480
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->imageBrushRadius:I

    .line 562
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->dashed_line:Ljava/lang/Thread;

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;)Z
    .registers 2
    .parameter

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawbrushanimation:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;)Z
    .registers 2
    .parameter

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->isRunning:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 551
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->isRunning:Z

    return-void
.end method

.method static synthetic access$4(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;)V
    .registers 1
    .parameter

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->dashed_line_anim()V

    return-void
.end method

.method private dashed_line_anim()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/high16 v8, -0x100

    .line 565
    iput-boolean v11, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawbrushanimation:Z

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 567
    .local v3, startTime:J
    :cond_b
    :goto_b
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawbrushanimation:Z

    if-nez v5, :cond_10

    .line 597
    :goto_f
    return-void

    .line 569
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 571
    .local v1, now:J
    sub-long v5, v1, v3

    long-to-float v0, v5

    .line 573
    .local v0, currentMs:F
    const/high16 v5, 0x4348

    cmpl-float v5, v0, v5

    if-lez v5, :cond_b

    .line 575
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    if-nez v5, :cond_28

    .line 577
    :cond_25
    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawbrushanimation:Z

    goto :goto_f

    .line 581
    :cond_28
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->count:I

    if-nez v5, :cond_45

    .line 583
    iput v8, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->c1:I

    .line 584
    iput v9, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->c2:I

    .line 585
    iput v11, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->count:I

    .line 593
    :goto_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 594
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mHandler:Landroid/os/Handler;

    const v7, 0xd002

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b

    .line 589
    :cond_45
    iput v9, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->c1:I

    .line 590
    iput v8, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->c2:I

    .line 591
    iput v10, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->count:I

    goto :goto_32
.end method

.method private getBaseMatrix(IILandroid/graphics/Matrix;)V
    .registers 13
    .parameter "imagewidth"
    .parameter "imageheight"
    .parameter "matrix"

    .prologue
    const/high16 v8, 0x4000

    .line 156
    int-to-float v3, p1

    .line 157
    .local v3, w:F
    int-to-float v0, p2

    .line 159
    .local v0, h:F
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 164
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewWidth:F

    div-float v4, v5, v3

    .line 165
    .local v4, widthScale:F
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewHeight:F

    div-float v1, v5, v0

    .line 166
    .local v1, heightScale:F
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 168
    .local v2, scale:F
    invoke-virtual {p3, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 169
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewWidth:F

    mul-float v6, v3, v2

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewHeight:F

    mul-float v7, v0, v2

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    invoke-virtual {p3, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 170
    return-void
.end method

.method static native native_drawImage([III[IIIFIILandroid/graphics/Rect;)Z
.end method

.method static native native_drawImageWithMaskContour([III[III[BFIIIILandroid/graphics/Rect;)Z
.end method

.method static native native_drawSmallImage([III[IIILandroid/graphics/Rect;)Z
.end method

.method static native native_drawSmallImageWithMaskContour([III[III[BIILandroid/graphics/Rect;)Z
.end method

.method private static native native_setImagePoints(IIIIFII[I)V
.end method

.method private onUpdateCanvasBitmap()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 419
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-nez v3, :cond_6

    .line 425
    :goto_5
    return v2

    .line 422
    :cond_6
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 424
    .local v1, tmp:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 425
    .local v0, drawroi:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->onUpdateCanvasBitmap(Landroid/graphics/Rect;)Z

    move-result v2

    goto :goto_5
.end method

.method private onUpdateCanvasBitmap(Landroid/graphics/Rect;)Z
    .registers 13
    .parameter "drawroi"

    .prologue
    const/4 v10, 0x0

    const/high16 v2, 0x3f00

    .line 433
    const/4 v8, 0x0

    .line 435
    .local v8, result:Z
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->inversM:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 437
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->inversM:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->scale:F

    .line 439
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->inversM:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getTransX(Landroid/graphics/Matrix;)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->transX:I

    .line 440
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->inversM:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getTransY(Landroid/graphics/Matrix;)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->transY:I

    .line 441
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 443
    .local v9, tRect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 445
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->bStartView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    .line 446
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->InitBrush()V

    .line 447
    iput v10, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->bStartView:I

    .line 450
    :cond_41
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    if-eqz v0, :cond_a0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask:Z

    if-eqz v0, :cond_a0

    .line 451
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->scale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->transX:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->transY:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->c1:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->c2:I

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawImageWithMaskContour(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;FIIIILandroid/graphics/Rect;)Z

    move-result v8

    .line 455
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_9f

    .line 458
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasBuff()[I

    move-result-object v1

    .line 459
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasWidth()I

    move-result v3

    mul-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasWidth()I

    move-result v3

    .line 460
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v10, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v10

    add-int/lit8 v7, v7, 0x1

    .line 458
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 463
    :cond_9f
    return v8

    .line 452
    :cond_a0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_5f

    .line 453
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->scale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->transX:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->transY:I

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawImage(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;FIILandroid/graphics/Rect;)Z

    move-result v8

    goto :goto_5f
.end method


# virtual methods
.method protected center(ZZ)V
    .registers 15
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 300
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-nez v8, :cond_8

    .line 339
    :goto_7
    return-void

    .line 304
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 306
    .local v3, m:Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 308
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 310
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 311
    .local v2, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 313
    .local v7, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 315
    .local v1, deltaY:F
    if-eqz p2, :cond_42

    .line 316
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getHeight()I

    move-result v5

    .line 317
    .local v5, viewHeight:I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_5b

    .line 318
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 326
    .end local v5           #viewHeight:I
    :cond_42
    :goto_42
    if-eqz p1, :cond_54

    .line 327
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getWidth()I

    move-result v6

    .line 328
    .local v6, viewWidth:I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_76

    .line 329
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 337
    .end local v6           #viewWidth:I
    :cond_54
    :goto_54
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->postTranslate(FF)V

    .line 338
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->invalidate()V

    goto :goto_7

    .line 319
    .restart local v5       #viewHeight:I
    :cond_5b
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_65

    .line 320
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_42

    .line 321
    :cond_65
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_42

    .line 322
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_42

    .line 330
    .end local v5           #viewHeight:I
    .restart local v6       #viewWidth:I
    :cond_76
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_80

    .line 331
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_54

    .line 332
    :cond_80
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_54

    .line 333
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_54
.end method

.method public clearImageInfo()V
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 86
    return-void
.end method

.method protected drawImage(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;FIILandroid/graphics/Rect;)Z
    .registers 16
    .parameter "info"
    .parameter "scale"
    .parameter "transX"
    .parameter "transY"
    .parameter "drawroi"

    .prologue
    .line 626
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasBuff()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v5

    move v6, p2

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-static/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->native_drawImage([III[IIIFIILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected drawImageWithMaskContour(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;FIIIILandroid/graphics/Rect;)Z
    .registers 21
    .parameter "info"
    .parameter "scale"
    .parameter "transX"
    .parameter "transY"
    .parameter "color"
    .parameter "color2"
    .parameter "drawroi"

    .prologue
    .line 629
    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasBuff()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getBuff()[B

    move-result-object v6

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-static/range {v0 .. v12}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->native_drawImageWithMaskContour([III[III[BFIIIILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public drawMask(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask:Z

    return-void
.end method

.method public endAnim()V
    .registers 2

    .prologue
    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawbrushanimation:Z

    .line 555
    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->isRunning:Z

    if-nez v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->dashed_line:Ljava/lang/Thread;

    if-eqz v0, :cond_10

    .line 557
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->dashed_line:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 559
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->dashed_line:Ljava/lang/Thread;

    .line 560
    return-void
.end method

.method public endBrush(FFZ)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "bbrush"

    .prologue
    const/4 v2, 0x0

    .line 535
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    if-eqz v1, :cond_a

    .line 536
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->setVisible(Z)V

    .line 539
    :cond_a
    if-eqz p3, :cond_1c

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getImagePoint(FF)[F

    move-result-object v0

    .line 542
    .local v0, lt:[F
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    aget v2, v0, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->end(II)V

    .line 546
    .end local v0           #lt:[F
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->invalidate()V

    .line 548
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->startAnim()V

    .line 549
    return-void
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 345
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getImagePoint(FF)[F
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 352
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 354
    .local v0, image_pt:[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 355
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 357
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->inversM:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 358
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->inversM:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 360
    return-object v0
.end method

.method public getImageRadius(F)F
    .registers 4
    .parameter "view_radius"

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->inversM:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 366
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->inversM:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v0

    return v0
.end method

.method public getScale()F
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .registers 3
    .parameter "matrix"

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getTransX(Landroid/graphics/Matrix;)F
    .registers 3
    .parameter "matrix"

    .prologue
    .line 191
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getTransY(Landroid/graphics/Matrix;)F
    .registers 3
    .parameter "matrix"

    .prologue
    .line 192
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .registers 4
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 188
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public getViewHeight()F
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewHeight:F

    return v0
.end method

.method public getViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 11
    .parameter "imageRect"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 371
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 372
    .local v2, tRect:Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 377
    .local v0, dst:Landroid/graphics/Rect;
    const/16 v3, 0x9

    new-array v1, v3, [F

    .line 378
    .local v1, fmat:[F
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 379
    aget v3, v1, v5

    iget v4, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v4

    aget v4, v1, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 380
    aget v3, v1, v5

    iget v4, v2, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, v4

    aget v4, v1, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 381
    aget v3, v1, v7

    iget v4, v2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v4

    aget v4, v1, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 382
    aget v3, v1, v7

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v3, v4

    aget v4, v1, v8

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 384
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 385
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 386
    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 387
    const/16 v3, 0x259

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 389
    return-object v0
.end method

.method public getViewWidth()F
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewWidth:F

    return v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 71
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawbrushanimation:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask:Z

    .line 75
    return-void
.end method

.method public isOnMask(FF)Z
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getImagePoint(FF)[F

    move-result-object v0

    .line 395
    .local v0, pt:[F
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->isOnMask(II)Z

    move-result v1

    return v1
.end method

.method protected maxZoom()F
    .registers 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-nez v1, :cond_7

    .line 174
    const/high16 v0, 0x3f80

    .line 180
    :goto_6
    return v0

    .line 179
    :cond_7
    const/high16 v0, 0x4080

    .line 180
    .local v0, max:F
    goto :goto_6
.end method

.method public moveBrush(FF)V
    .registers 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x0

    .line 496
    new-instance v0, Landroid/graphics/Rect;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currX:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getRadius()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currY:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getRadius()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currX:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getRadius()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currY:F

    float-to-int v7, v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getRadius()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 498
    .local v0, dst:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v4, :cond_42

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_43

    .line 531
    :cond_42
    :goto_42
    return-void

    .line 500
    :cond_43
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 501
    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 502
    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 503
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 505
    new-instance v1, Landroid/graphics/Rect;

    float-to-int v4, p1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getRadius()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    float-to-int v5, p2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getRadius()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    float-to-int v6, p1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getRadius()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    float-to-int v7, p2

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getRadius()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 507
    .local v1, dst2:Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 508
    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 509
    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 510
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 512
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getImagePoint(FF)[F

    move-result-object v2

    .line 514
    .local v2, lt:[F
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    aget v5, v2, v9

    float-to-int v5, v5

    const/4 v6, 0x1

    aget v6, v2, v6

    float-to-int v6, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->imageBrushRadius:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->update(III)Z

    .line 516
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getObjroi()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 518
    .local v3, tmp:Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 519
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 520
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 521
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 523
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 524
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 525
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 526
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 527
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->invalidate(Landroid/graphics/Rect;)V

    .line 529
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currX:F

    .line 530
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currY:F

    goto/16 :goto_42
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-nez v0, :cond_6

    .line 151
    :cond_5
    :goto_5
    return-void

    .line 144
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->onUpdateCanvasBitmap()Z

    .line 145
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currX:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currX:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currY:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Matrix;)V

    goto :goto_5
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/high16 v1, 0x43f0

    .line 99
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 102
    :cond_11
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewWidth:F

    .line 103
    const v0, 0x44168000

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewHeight:F

    .line 112
    :goto_18
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_79

    .line 113
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getBaseMatrix(IILandroid/graphics/Matrix;)V

    .line 115
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 116
    .local v4, rotMatrix:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, v4}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getBaseMatrix(IILandroid/graphics/Matrix;)V

    .line 118
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 119
    .local v6, inversM:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 120
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewWidth:F

    float-to-int v1, v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewHeight:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mBaseMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getValue(Landroid/graphics/Matrix;I)F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setCanvas(IILandroid/graphics/Matrix;Landroid/graphics/Matrix;F)V

    .line 122
    const/4 v4, 0x0

    .line 124
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->maxZoom()F

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->maxZoom:F

    .line 126
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->minZoom:F

    .line 134
    .end local v4           #rotMatrix:Landroid/graphics/Matrix;
    .end local v6           #inversM:Landroid/graphics/Matrix;
    :goto_71
    return-void

    .line 105
    :cond_72
    const/high16 v0, 0x4420

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewWidth:F

    .line 106
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewHeight:F

    goto :goto_18

    .line 129
    :cond_79
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 130
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mSuppMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->minZoom:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->minZoom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_71
.end method

.method public panBy(FF)V
    .registers 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->postTranslate(FF)V

    .line 203
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->center(ZZ)V

    .line 204
    return-void
.end method

.method public postTranslate(FF)V
    .registers 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 198
    return-void
.end method

.method public rotate(F)V
    .registers 3
    .parameter "r"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 294
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->invalidate()V

    .line 298
    return-void
.end method

.method public saveMatrix(Landroid/graphics/Matrix;)V
    .registers 3
    .parameter "matrix"

    .prologue
    .line 406
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 407
    const/4 p1, 0x0

    .line 411
    :cond_9
    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 412
    :cond_13
    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 413
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 415
    :cond_22
    return-void
.end method

.method public setImageInfo(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->requestLayout()V

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->invalidate()V

    .line 82
    return-void
.end method

.method protected setImagePoints(FII)V
    .registers 12
    .parameter "scale"
    .parameter "moveX"
    .parameter "moveY"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mapPoint:[I

    if-nez v0, :cond_f

    .line 469
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewWidth:F

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewHeight:F

    float-to-int v1, v1

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mapPoint:[I

    .line 471
    :cond_f
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewWidth:F

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->viewHeight:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mapPoint:[I

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->native_setImagePoints(IIIIFII[I)V

    .line 473
    return-void
.end method

.method public setMask(Lcom/sec/android/mimage/photoretouching/mask/MaskManager;Lcom/sec/android/mimage/photoretouching/mask/Brush;)V
    .registers 4
    .parameter "_mask"
    .parameter "_brush"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    .line 91
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->bStartView:I

    .line 94
    return-void
.end method

.method public startAnim()V
    .registers 3

    .prologue
    .line 601
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getObjroi()Landroid/graphics/Rect;

    move-result-object v0

    .line 603
    .local v0, roi:Landroid/graphics/Rect;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_14

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_15

    .line 623
    :cond_14
    :goto_14
    return-void

    .line 606
    :cond_15
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawbrushanimation:Z

    if-nez v1, :cond_14

    .line 608
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->dashed_line:Ljava/lang/Thread;

    if-nez v1, :cond_14

    .line 610
    new-instance v1, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$3;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$3;-><init>(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->dashed_line:Ljava/lang/Thread;

    .line 621
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->dashed_line:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_14
.end method

.method public startBrush(FF)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 485
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currX:F

    .line 486
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->currY:F

    .line 488
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_2c

    .line 489
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->setVisible(Z)V

    .line 490
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageBuff()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getRealRadius(Landroid/graphics/Matrix;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->begin([II)V

    .line 492
    :cond_2c
    return-void
.end method

.method protected zoom(F)V
    .registers 6
    .parameter "scalefactor"

    .prologue
    const/high16 v3, 0x4000

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 207
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 209
    .local v1, cy:F
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->zoom(FFF)V

    .line 210
    return-void
.end method

.method public zoom(FFF)V
    .registers 8
    .parameter "scalefactor"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x1

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getScale()F

    move-result v1

    .line 220
    .local v1, old_scale:F
    mul-float v0, v1, p1

    .line 221
    .local v0, cur_scale:F
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->maxZoom:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1a

    .line 222
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->maxZoom:F

    div-float p1, v2, v1

    .line 227
    :cond_11
    :goto_11
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 228
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->center(ZZ)V

    .line 229
    return-void

    .line 223
    :cond_1a
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->minZoom:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_11

    .line 224
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->minZoom:F

    div-float p1, v2, v1

    goto :goto_11
.end method

.method public zoomEnd()F
    .registers 3

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getScale()F

    move-result v0

    .line 273
    .local v0, oldScale:F
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->minZoom:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_12

    .line 274
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->minZoom:F

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->zoomTo(F)V

    .line 275
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->minZoom:F

    .line 283
    .end local v0           #oldScale:F
    :goto_11
    return v0

    .line 277
    .restart local v0       #oldScale:F
    :cond_12
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->maxZoom:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_20

    .line 278
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->maxZoom:F

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->zoomTo(F)V

    .line 279
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->maxZoom:F

    goto :goto_11

    .line 282
    :cond_20
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->startAnim()V

    goto :goto_11
.end method

.method public zoomTo(F)V
    .registers 6
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 232
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 234
    .local v1, cy:F
    const/high16 v2, 0x4396

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->zoomTo(FFFF)V

    .line 235
    return-void
.end method

.method protected zoomTo(FFF)V
    .registers 6
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getScale()F

    move-result v1

    .line 239
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 241
    .local v0, deltaScale:F
    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->zoom(FFF)V

    .line 242
    return-void
.end method

.method public zoomTo(FFFF)V
    .registers 15
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 247
    .local v6, incrementPerMs:F
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getScale()F

    move-result v5

    .line 248
    .local v5, oldScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 252
    .local v3, startTime:J
    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$2;-><init>(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method
