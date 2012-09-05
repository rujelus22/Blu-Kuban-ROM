.class public Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SmallCanvas"
.end annotation


# instance fields
.field protected canvas_roi:Landroid/graphics/Rect;

.field protected height:I

.field protected in_buf:[I

.field protected out_buf:[I

.field protected rot_canvas_roi:Landroid/graphics/Rect;

.field protected rot_height:I

.field protected rot_width:I

.field protected scale:F

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

.field protected width:I


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;IIII[I)V
    .registers 16
    .parameter
    .parameter "viewWidth"
    .parameter "viewHeight"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "org_buf"

    .prologue
    .line 464
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->this$0:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 467
    .local v3, matrix:Landroid/graphics/Matrix;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    .line 469
    int-to-float v6, p2

    int-to-float v7, p4

    div-float v5, v6, v7

    .line 470
    .local v5, widthScale:F
    int-to-float v6, p3

    int-to-float v7, p5

    div-float v1, v6, v7

    .line 471
    .local v1, heightScale:F
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 473
    .local v4, scale:F
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 474
    int-to-float v6, p2

    int-to-float v7, p4

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    int-to-float v7, p3

    int-to-float v8, p5

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 476
    const/16 v6, 0x9

    new-array v0, v6, [F

    .line 477
    .local v0, fmat:[F
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 478
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    const/4 v7, 0x2

    aget v7, v0, v7

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 479
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    const/4 v7, 0x0

    aget v7, v0, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v0, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 480
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    const/4 v7, 0x5

    aget v7, v0, v7

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 481
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    const/4 v7, 0x4

    aget v7, v0, v7

    int-to-float v8, p5

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, v0, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 483
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 484
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, p2, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 485
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 486
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, p3, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 488
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->width:I

    .line 489
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->height:I

    .line 491
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->width:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->height:I

    mul-int/2addr v6, v7

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->in_buf:[I

    .line 492
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->width:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->height:I

    mul-int/2addr v6, v7

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->out_buf:[I

    .line 494
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 495
    .local v2, inversM:Landroid/graphics/Matrix;
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 496
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 498
    const/4 v6, 0x0

    aget v6, v0, v6

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    .line 500
    invoke-virtual {p0, p4, p5, p6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->setBuf(II[I)V

    .line 503
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 504
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    .line 506
    int-to-float v6, p2

    int-to-float v7, p5

    div-float v5, v6, v7

    .line 507
    int-to-float v6, p3

    int-to-float v7, p4

    div-float v1, v6, v7

    .line 508
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 510
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 511
    int-to-float v6, p2

    int-to-float v7, p5

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    int-to-float v7, p3

    int-to-float v8, p4

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 513
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 514
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    const/4 v7, 0x2

    aget v7, v0, v7

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 515
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    const/4 v7, 0x0

    aget v7, v0, v7

    int-to-float v8, p5

    mul-float/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v0, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 516
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    const/4 v7, 0x5

    aget v7, v0, v7

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 517
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    const/4 v7, 0x4

    aget v7, v0, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, v0, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 519
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 520
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, p2, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 521
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 522
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, p3, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 524
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_width:I

    .line 525
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_height:I

    .line 527
    return-void
.end method


# virtual methods
.method protected clear()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 562
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->width:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->height:I

    .line 563
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->in_buf:[I

    .line 564
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->out_buf:[I

    .line 565
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    .line 566
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    .line 567
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    .line 568
    return-void
.end method

.method protected setBuf(II[I)V
    .registers 13
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "org_buf"

    .prologue
    const/4 v8, 0x0

    .line 530
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->height:I

    if-lt v0, v4, :cond_13

    .line 558
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->in_buf:[I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->out_buf:[I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->width:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->height:I

    mul-int/2addr v6, v7

    invoke-static {v4, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    return-void

    .line 532
    :cond_13
    int-to-float v4, v0

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 534
    .local v3, ypos:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_19
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->width:I

    if-lt v1, v4, :cond_20

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 536
    :cond_20
    int-to-float v4, v1

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 538
    .local v2, xpos:I
    if-gez v2, :cond_3b

    .line 539
    const/4 v2, 0x0

    .line 543
    :cond_28
    :goto_28
    if-gez v3, :cond_40

    .line 544
    const/4 v3, 0x0

    .line 549
    :cond_2b
    :goto_2b
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->in_buf:[I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->width:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    mul-int v6, v3, p1

    add-int/2addr v6, v2

    aget v6, p3, v6

    aput v6, v4, v5

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 540
    :cond_3b
    if-lt v2, p1, :cond_28

    .line 541
    add-int/lit8 v2, p1, -0x1

    goto :goto_28

    .line 545
    :cond_40
    if-lt v3, p2, :cond_2b

    .line 546
    add-int/lit8 v3, p2, -0x1

    goto :goto_2b
.end method
