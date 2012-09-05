.class public Lcom/sec/android/app/myfiles/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 17
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"

    .prologue
    .line 195
    if-nez p1, :cond_4

    .line 196
    const/4 v8, 0x0

    .line 267
    :cond_3
    :goto_3
    return-object v8

    .line 244
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_52

    .line 245
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v11, v0, v1

    .line 251
    .local v11, scale:F
    :goto_16
    if-eqz p0, :cond_5b

    .line 252
    invoke-virtual {p0, v11, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 254
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 259
    .local v7, b1:Landroid/graphics/Bitmap;
    :goto_2c
    const/4 v0, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 260
    .local v9, dx1:I
    const/4 v0, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 262
    .local v10, dy1:I
    div-int/lit8 v0, v9, 0x2

    div-int/lit8 v1, v10, 0x2

    invoke-static {v7, v0, v1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 264
    .local v8, b2:Landroid/graphics/Bitmap;
    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    .line 247
    .end local v7           #b1:Landroid/graphics/Bitmap;
    .end local v8           #b2:Landroid/graphics/Bitmap;
    .end local v9           #dx1:I
    .end local v10           #dy1:I
    .end local v11           #scale:F
    :cond_52
    int-to-float v0, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v11, v0, v1

    .restart local v11       #scale:F
    goto :goto_16

    .line 256
    :cond_5b
    move-object v7, p1

    .restart local v7       #b1:Landroid/graphics/Bitmap;
    goto :goto_2c
.end method
