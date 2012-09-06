.class public Lcom/android/gallery3d/common/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public static compressToBytes(Landroid/graphics/Bitmap;I)[B
    .registers 4
    .parameter "bitmap"
    .parameter "quality"

    .prologue
    .line 243
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/high16 v1, 0x1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 244
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 245
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static computeSampleSizeLarger(F)I
    .registers 4
    .parameter "scale"

    .prologue
    const/4 v1, 0x1

    .line 99
    const/high16 v2, 0x3f80

    div-float/2addr v2, p0

    invoke-static {v2}, Landroid/util/FloatMath;->floor(F)F

    move-result v2

    float-to-int v0, v2

    .line 100
    .local v0, initialSize:I
    if-gt v0, v1, :cond_c

    .line 102
    :goto_b
    return v1

    :cond_c
    const/16 v1, 0x8

    if-gt v0, v1, :cond_15

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_b

    :cond_15
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_b
.end method

.method public static computeSampleSizeLarger(III)I
    .registers 7
    .parameter "w"
    .parameter "h"
    .parameter "minSideLength"

    .prologue
    const/4 v1, 0x1

    .line 89
    div-int v2, p0, p2

    div-int v3, p1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 90
    .local v0, initialSize:I
    if-gt v0, v1, :cond_c

    .line 92
    :goto_b
    return v1

    :cond_c
    const/16 v1, 0x8

    if-gt v0, v1, :cond_15

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->prevPowerOf2(I)I

    move-result v1

    goto :goto_b

    :cond_15
    div-int/lit8 v1, v0, 0x8

    mul-int/lit8 v1, v1, 0x8

    goto :goto_b
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .registers 2
    .parameter "bitmap"

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 133
    .local v0, config:Landroid/graphics/Bitmap$Config;
    if-nez v0, :cond_8

    .line 134
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 136
    :cond_8
    return-object v0
.end method

.method public static resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "bitmap"
    .parameter "size"
    .parameter "recycle"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 150
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 151
    .local v6, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 152
    .local v1, h:I
    if-ne v6, p1, :cond_10

    if-ne v1, p1, :cond_10

    .line 167
    .end local p0
    :goto_f
    return-object p0

    .line 156
    .restart local p0
    :cond_10
    int-to-float v8, p1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float v4, v8, v9

    .line 158
    .local v4, scale:F
    invoke-static {p0}, Lcom/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {p1, p1, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 159
    .local v5, target:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 160
    .local v7, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 161
    .local v2, height:I
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    .local v0, canvas:Landroid/graphics/Canvas;
    sub-int v8, p1, v7

    int-to-float v8, v8

    div-float/2addr v8, v11

    sub-int v9, p1, v2

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 163
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 164
    new-instance v3, Landroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-direct {v3, v8}, Landroid/graphics/Paint;-><init>(I)V

    .line 165
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v10, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 166
    if-eqz p2, :cond_55

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_55
    move-object p0, v5

    .line 167
    goto :goto_f
.end method

.method public static resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "bitmap"
    .parameter "scale"
    .parameter "recycle"

    .prologue
    const/4 v6, 0x0

    .line 118
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 119
    .local v4, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 120
    .local v1, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_22

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v1, v5, :cond_22

    .line 128
    .end local p0
    :goto_21
    return-object p0

    .line 122
    .restart local p0
    :cond_22
    invoke-static {p0}, Lcom/android/gallery3d/common/BitmapUtils;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 123
    .local v3, target:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 125
    new-instance v2, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 126
    .local v2, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    if-eqz p2, :cond_40

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_40
    move-object p0, v3

    .line 128
    goto :goto_21
.end method

.method public static resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "bitmap"
    .parameter "maxLength"
    .parameter "recycle"

    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 142
    .local v2, srcWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 143
    .local v1, srcHeight:I
    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, p1

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 145
    .local v0, scale:F
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_19

    .line 146
    .end local p0
    :goto_18
    return-object p0

    .restart local p0
    :cond_19
    invoke-static {p0, v0, p2}, Lcom/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_18
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "source"
    .parameter "rotation"
    .parameter "recycle"

    .prologue
    const/4 v1, 0x0

    .line 180
    if-nez p1, :cond_4

    .line 187
    .end local p0
    :goto_3
    return-object p0

    .line 181
    .restart local p0
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 182
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 183
    .local v4, h:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 184
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 185
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 186
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_21

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_21
    move-object p0, v7

    .line 187
    goto :goto_3
.end method
