.class public Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;
    }
.end annotation


# instance fields
.field private canvasBitmap:Landroid/graphics/Bitmap;

.field private canvasBitmap_land:Landroid/graphics/Bitmap;

.field private canvasBitmap_port:Landroid/graphics/Bitmap;

.field private canvasBuff:[I

.field private canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

.field private canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

.field private flagMain:Z

.field private flagPortrait:Z

.field private imageBitmap:Landroid/graphics/Bitmap;

.field private imageBuff:[I

.field private imageHeight:I

.field private imageWidth:I

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_port:Landroid/graphics/Bitmap;

    .line 31
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_land:Landroid/graphics/Bitmap;

    .line 32
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap:Landroid/graphics/Bitmap;

    .line 34
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->flagMain:Z

    .line 35
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->flagPortrait:Z

    .line 37
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    .line 38
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageHeight:I

    .line 39
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    .line 40
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBitmap:Landroid/graphics/Bitmap;

    .line 42
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBuff:[I

    .line 44
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->path:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    .line 47
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    .line 48
    return-void
.end method


# virtual methods
.method public changePtByOrientation(FF)[F
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 433
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 434
    .local v0, pts:[F
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 435
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    div-float/2addr v1, v2

    aput v1, v0, v3

    .line 436
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    mul-float/2addr v1, p2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    div-float/2addr v1, v2

    aput v1, v0, v4

    .line 441
    :goto_23
    return-object v0

    .line 438
    :cond_24
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    div-float/2addr v1, v2

    aput v1, v0, v3

    .line 439
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    mul-float/2addr v1, p2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    div-float/2addr v1, v2

    aput v1, v0, v4

    goto :goto_23
.end method

.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    .line 288
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 289
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap:Landroid/graphics/Bitmap;

    .line 292
    :cond_d
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_port:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    .line 294
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_port:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_port:Landroid/graphics/Bitmap;

    .line 298
    :cond_18
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_land:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    .line 300
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_land:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 301
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_land:Landroid/graphics/Bitmap;

    .line 304
    :cond_23
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2e

    .line 306
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 307
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBitmap:Landroid/graphics/Bitmap;

    .line 311
    :cond_2e
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    .line 312
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageHeight:I

    .line 314
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    .line 316
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBuff:[I

    .line 318
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    if-eqz v0, :cond_41

    .line 320
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->clear()V

    .line 321
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    .line 324
    :cond_41
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    if-eqz v0, :cond_4c

    .line 326
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->clear()V

    .line 327
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    .line 330
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    if-eqz v0, :cond_57

    .line 332
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/common/Utils;->nativeIntRelease([I)I

    .line 333
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    .line 337
    :cond_57
    return-void
.end method

.method public getCanvasBuff()[I
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBuff:[I

    return-object v0
.end method

.method public getCanvasHeight()I
    .registers 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 188
    const/16 v0, 0x280

    .line 193
    :goto_8
    return v0

    .line 190
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isMain()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 191
    const/16 v0, 0x1e0

    goto :goto_8

    .line 193
    :cond_12
    const/16 v0, 0x168

    goto :goto_8
.end method

.method public getCanvasRoi()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 124
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    .line 126
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->canvas_roi:Landroid/graphics/Rect;

    goto :goto_a
.end method

.method public getCanvasWidth()I
    .registers 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 176
    const/16 v0, 0x1e0

    .line 181
    :goto_8
    return v0

    .line 178
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isMain()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 179
    const/16 v0, 0x280

    goto :goto_8

    .line 181
    :cond_12
    const/16 v0, 0x320

    goto :goto_8
.end method

.method public getDrawBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_port:Landroid/graphics/Bitmap;

    .line 117
    :goto_8
    return-object v0

    .line 114
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isMain()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 115
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap:Landroid/graphics/Bitmap;

    goto :goto_8

    .line 117
    :cond_12
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_land:Landroid/graphics/Bitmap;

    goto :goto_8
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageBuff()[I
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    return-object v0
.end method

.method public getImageHeight()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageHeight:I

    return v0
.end method

.method public getImagePoint(FF)[F
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 419
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 420
    .local v0, points:[F
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_1b

    .line 421
    aput p1, v0, v2

    .line 422
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    aput v1, v0, v3

    .line 429
    :goto_1a
    return-object v0

    .line 425
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    aput v1, v0, v2

    .line 426
    aput p2, v0, v3

    goto :goto_1a
.end method

.method public getImageWidth()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    return v0
.end method

.method public getOtherSHeight()I
    .registers 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 168
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->height:I

    .line 170
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->height:I

    goto :goto_a
.end method

.method public getOtherSWidth()I
    .registers 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 161
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->width:I

    .line 163
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->width:I

    goto :goto_a
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getROTCanvasRoi()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 225
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    .line 227
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_canvas_roi:Landroid/graphics/Rect;

    goto :goto_a
.end method

.method public getROTSHeight()I
    .registers 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 240
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_height:I

    .line 242
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_height:I

    goto :goto_a
.end method

.method public getROTSWidth()I
    .registers 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 233
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_width:I

    .line 235
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->rot_width:I

    goto :goto_a
.end method

.method public getResizeBuff([III)V
    .registers 13
    .parameter "img"
    .parameter "resizew"
    .parameter "resizeh"

    .prologue
    .line 250
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    int-to-float v6, v6

    int-to-float v7, p2

    div-float v2, v6, v7

    .line 251
    .local v2, scalex:F
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageHeight:I

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v3, v6, v7

    .line 253
    .local v3, scaley:F
    const/4 v1, 0x0

    .local v1, j:I
    :goto_d
    if-lt v1, p3, :cond_10

    .line 267
    return-void

    .line 255
    :cond_10
    int-to-float v6, v1

    mul-float/2addr v6, v3

    float-to-int v5, v6

    .line 257
    .local v5, ypos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    if-lt v0, p2, :cond_19

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 259
    :cond_19
    int-to-float v6, v0

    mul-float/2addr v6, v2

    float-to-int v4, v6

    .line 261
    .local v4, xpos:I
    if-ltz v4, :cond_35

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    if-ge v4, v6, :cond_35

    if-ltz v5, :cond_35

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageHeight:I

    if-ge v5, v6, :cond_35

    .line 263
    mul-int v6, v1, p2

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v4

    aget v7, v7, v8

    aput v7, p1, v6

    .line 257
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method public getSBuff()[I
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 132
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->in_buf:[I

    .line 134
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->in_buf:[I

    goto :goto_a
.end method

.method public getSHeight()I
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 154
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->height:I

    .line 156
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->height:I

    goto :goto_a
.end method

.method public getSOutBuff()[I
    .registers 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 201
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->out_buf:[I

    .line 203
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->out_buf:[I

    goto :goto_a
.end method

.method public getSWidth()I
    .registers 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 147
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->width:I

    .line 149
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->width:I

    goto :goto_a
.end method

.method public getScale()F
    .registers 3

    .prologue
    const/high16 v0, 0x3f80

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 209
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    if-nez v1, :cond_d

    .line 218
    :cond_c
    :goto_c
    return v0

    .line 212
    :cond_d
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    goto :goto_c

    .line 215
    :cond_12
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    if-eqz v1, :cond_c

    .line 218
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->scale:F

    goto :goto_c
.end method

.method public getScreenPoint(II)[F
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 404
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 405
    .local v0, points:[F
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_1b

    .line 406
    int-to-float v1, p1

    aput v1, v0, v2

    .line 407
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    int-to-float v1, v1

    aput v1, v0, v3

    .line 414
    :goto_1a
    return-object v0

    .line 410
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    aput v1, v0, v2

    .line 411
    int-to-float v1, p2

    aput v1, v0, v3

    goto :goto_1a
.end method

.method public isCanvasNull()Z
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    if-nez v0, :cond_a

    .line 140
    :cond_8
    const/4 v0, 0x1

    .line 142
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isMain()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->flagMain:Z

    return v0
.end method

.method public isPortrait()Z
    .registers 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->flagPortrait:Z

    return v0
.end method

.method public setCanvas(IILandroid/graphics/Matrix;Landroid/graphics/Matrix;F)V
    .registers 13
    .parameter "width"
    .parameter "height"
    .parameter "matrix"
    .parameter "rotmatrix"
    .parameter "scale"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBuff:[I

    if-eqz v0, :cond_7

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBuff:[I

    .line 56
    :cond_7
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBuff:[I

    if-nez v0, :cond_12

    .line 57
    const v0, 0x4b000

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBuff:[I

    .line 60
    :cond_12
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_port:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1e

    .line 62
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_port:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_port:Landroid/graphics/Bitmap;

    .line 66
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_land:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2a

    .line 68
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_land:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_land:Landroid/graphics/Bitmap;

    .line 72
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_36

    .line 74
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap:Landroid/graphics/Bitmap;

    .line 78
    :cond_36
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_port:Landroid/graphics/Bitmap;

    if-nez v0, :cond_52

    .line 80
    const/16 v0, 0x1e0

    const/16 v1, 0x280

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_port:Landroid/graphics/Bitmap;

    .line 81
    const/16 v0, 0x320

    const/16 v1, 0x168

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap_land:Landroid/graphics/Bitmap;

    .line 84
    :cond_52
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    if-eqz v0, :cond_5e

    .line 86
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->clear()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    .line 90
    :cond_5e
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    if-eqz v0, :cond_6a

    .line 92
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;->clear()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    .line 96
    :cond_6a
    new-instance v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    const/16 v2, 0x1e0

    const/16 v3, 0x280

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageHeight:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;-><init>(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;IIII[I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_port:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    .line 97
    new-instance v0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    const/16 v2, 0x320

    const/16 v3, 0x168

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageHeight:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;-><init>(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;IIII[I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvas_land:Lcom/sec/android/mimage/photoretouching/common/ImageInfo$SmallCanvas;

    .line 99
    const/16 v0, 0x280

    const/16 v1, 0x1e0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->canvasBitmap:Landroid/graphics/Bitmap;

    .line 101
    return-void
.end method

.method public setImageBuff(Landroid/graphics/Bitmap;IZ)Z
    .registers 13
    .parameter "bmp"
    .parameter "rotate"
    .parameter "bclear"

    .prologue
    const/4 v2, 0x0

    .line 346
    const/4 v8, 0x0

    .line 348
    .local v8, result:Z
    if-nez p1, :cond_5

    .line 399
    :cond_4
    :goto_4
    return v2

    .line 351
    :cond_5
    if-eqz p3, :cond_a

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->clear()V

    .line 355
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    .line 356
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageHeight:I

    .line 358
    if-nez p3, :cond_24

    .line 360
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    if-eqz v0, :cond_24

    .line 362
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/common/Utils;->nativeIntRelease([I)I

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    .line 366
    :cond_24
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageHeight:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/common/Utils;->nativeIntAlloc(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    .line 368
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    if-eqz v0, :cond_4

    .line 371
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBuff:[I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageHeight:I

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 397
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBitmap:Landroid/graphics/Bitmap;

    goto :goto_4
.end method

.method public setImageBuff(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Z
    .registers 6
    .parameter "bmp"
    .parameter "_path"
    .parameter "rotate"
    .parameter "bclear"

    .prologue
    .line 340
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->path:Ljava/lang/String;

    .line 342
    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setImageBuff(Landroid/graphics/Bitmap;IZ)Z

    move-result v0

    return v0
.end method

.method public setImageWidthHeight(II)V
    .registers 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 446
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    .line 447
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageHeight:I

    .line 449
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBitmap:Landroid/graphics/Bitmap;

    .line 452
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageWidth:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->imageBitmap:Landroid/graphics/Bitmap;

    .line 453
    return-void
.end method

.method public setMainFlag(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->flagMain:Z

    .line 278
    return-void
.end method

.method public setPortrait(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->flagPortrait:Z

    .line 271
    return-void
.end method
