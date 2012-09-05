.class public Lcom/google/android/opengl/carousel/GL2Helper;
.super Ljava/lang/Object;
.source "GL2Helper.java"


# static fields
.field private static mQuadTexCoord:Ljava/nio/FloatBuffer;

.field private static mQuadVertices:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadVertices:Ljava/nio/FloatBuffer;

    .line 38
    const/16 v0, 0x50

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadTexCoord:Ljava/nio/FloatBuffer;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .registers 5
    .parameter "op"

    .prologue
    .line 46
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_3f

    .line 47
    const-string v1, "GL2Helper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_3f
    return-void
.end method

.method public static clamp(FFF)F
    .registers 4
    .parameter "amount"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 157
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    .line 158
    move p0, p1

    .line 162
    :cond_5
    :goto_5
    return p0

    .line 159
    :cond_6
    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    .line 160
    move p0, p2

    goto :goto_5
.end method

.method public static convertNormalizedToPixelCoordinates([FFF)Z
    .registers 12
    .parameter "screenCoord"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v8, 0x3f80

    const/high16 v7, 0x3f00

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    aget v4, p0, v6

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_27

    .line 89
    const-string v3, "GL2Helper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad transform while converting from normalized to pixel coordinates: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_26
    return v2

    .line 93
    :cond_27
    aget v4, p0, v6

    div-float v1, v8, v4

    .line 94
    .local v1, inv:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2c
    if-ge v0, v6, :cond_3b

    .line 95
    aget v4, p0, v0

    mul-float/2addr v4, v1

    aput v4, p0, v0

    .line 96
    aget v4, p0, v0

    add-float/2addr v4, v8

    aput v4, p0, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 99
    :cond_3b
    aget v4, p0, v2

    mul-float/2addr v4, v7

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, p0, v2

    .line 100
    aget v2, p0, v3

    mul-float/2addr v2, v7

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    aput v2, p0, v3

    .line 101
    const/4 v2, 0x2

    const/high16 v4, -0x4100

    const/4 v5, 0x2

    aget v5, p0, v5

    mul-float/2addr v4, v5

    aput v4, p0, v2

    move v2, v3

    .line 103
    goto :goto_26
.end method

.method public static drawQuad([F)Z
    .registers 7
    .parameter "vertexData"

    .prologue
    const/4 v0, 0x0

    .line 111
    array-length v1, p0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_7

    .line 121
    :goto_6
    return v0

    .line 113
    :cond_7
    sget-object v1, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 114
    sget-object v1, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    const/4 v1, 0x3

    const/16 v2, 0x1406

    sget-object v5, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadVertices:Ljava/nio/FloatBuffer;

    move v3, v0

    move v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 119
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 121
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public static drawQuadTexCoords([F)Z
    .registers 13
    .parameter "vertexData"

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x3

    const/4 v11, 0x1

    const/16 v4, 0x14

    const/4 v0, 0x0

    .line 130
    array-length v3, p0

    if-eq v3, v4, :cond_b

    .line 146
    :goto_a
    return v0

    .line 132
    :cond_b
    sget-object v3, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadTexCoord:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 133
    sget-object v3, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadTexCoord:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    sget-object v5, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadTexCoord:Ljava/nio/FloatBuffer;

    move v3, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 139
    sget-object v3, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadTexCoord:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    const/4 v6, 0x2

    sget-object v10, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadTexCoord:Ljava/nio/FloatBuffer;

    move v5, v11

    move v7, v2

    move v8, v0

    move v9, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 144
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move v0, v11

    .line 146
    goto :goto_a
.end method

.method public static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "drawable"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    .line 220
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 222
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p0, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 223
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    return-object v0
.end method

.method public static getStringForFloatArray([F)Ljava/lang/String;
    .registers 9
    .parameter "array"

    .prologue
    .line 248
    array-length v4, p0

    .line 249
    .local v4, length:I
    new-instance v5, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v4, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 250
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v6, "[ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    move-object v1, p0

    .local v1, arr$:[F
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_10
    if-ge v2, v3, :cond_2d

    aget v0, v1, v2

    .line 252
    .local v0, a:F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 254
    .end local v0           #a:F
    :cond_2d
    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static loadPerspectiveMatrix([FFFFF)V
    .registers 15
    .parameter "matrix"
    .parameter "fovy"
    .parameter "aspect"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 57
    float-to-double v0, p3

    float-to-double v6, p1

    const-wide v8, 0x400921fb54442d18L

    mul-double/2addr v6, v8

    const-wide v8, 0x4076800000000000L

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    mul-double/2addr v0, v6

    double-to-float v5, v0

    .line 58
    .local v5, top:F
    neg-float v4, v5

    .line 59
    .local v4, bottom:F
    mul-float v2, v4, p2

    .line 60
    .local v2, left:F
    mul-float v3, v5, p2

    .line 61
    .local v3, right:F
    const/4 v1, 0x0

    move-object v0, p0

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 62
    return-void
.end method

.method public static printIntArray([I)V
    .registers 9
    .parameter "array"

    .prologue
    .line 233
    array-length v4, p0

    .line 234
    .local v4, length:I
    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0xa

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v6, "[ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    move-object v1, p0

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_10
    if-ge v2, v3, :cond_2d

    aget v0, v1, v2

    .line 237
    .local v0, a:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 239
    .end local v0           #a:I
    :cond_2d
    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v6, "GL2Helper"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public static proportionPoint(FFF)F
    .registers 6
    .parameter "left"
    .parameter "right"
    .parameter "t"

    .prologue
    .line 174
    const/high16 v1, 0x3f80

    sub-float/2addr v1, p2

    mul-float/2addr v1, p0

    mul-float v2, p1, p2

    add-float v0, v1, v2

    .line 175
    .local v0, v:F
    return v0
.end method

.method public static proportionPoint([F[FF)[F
    .registers 8
    .parameter "left"
    .parameter "right"
    .parameter "t"

    .prologue
    .line 186
    array-length v1, p0

    .line 187
    .local v1, len:I
    new-array v2, v1, [F

    .line 188
    .local v2, r:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v1, :cond_13

    .line 189
    aget v3, p0, v0

    aget v4, p1, v0

    invoke-static {v3, v4, p2}, Lcom/google/android/opengl/carousel/GL2Helper;->proportionPoint(FFF)F

    move-result v3

    aput v3, v2, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 192
    :cond_13
    return-object v2
.end method

.method public static setDefaultNPOTTextureState()V
    .registers 4

    .prologue
    const v3, 0x812f

    const v2, 0x46180400

    const/16 v1, 0xde1

    .line 269
    const/16 v0, 0x2801

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 271
    const/16 v0, 0x2800

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 275
    const/16 v0, 0x2802

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 277
    const/16 v0, 0x2803

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 279
    return-void
.end method

.method public static setVector12f([FFFFFFFFFFFFF)V
    .registers 14
    .parameter "vector"
    .parameter "v0"
    .parameter "v1"
    .parameter "v2"
    .parameter "v3"
    .parameter "v4"
    .parameter "v5"
    .parameter "v6"
    .parameter "v7"
    .parameter "v8"
    .parameter "v9"
    .parameter "v10"
    .parameter "v11"

    .prologue
    .line 201
    const/4 v0, 0x0

    aput p1, p0, v0

    .line 202
    const/4 v0, 0x1

    aput p2, p0, v0

    .line 203
    const/4 v0, 0x2

    aput p3, p0, v0

    .line 204
    const/4 v0, 0x3

    aput p4, p0, v0

    .line 205
    const/4 v0, 0x4

    aput p5, p0, v0

    .line 206
    const/4 v0, 0x5

    aput p6, p0, v0

    .line 207
    const/4 v0, 0x6

    aput p7, p0, v0

    .line 208
    const/4 v0, 0x7

    aput p8, p0, v0

    .line 209
    const/16 v0, 0x8

    aput p9, p0, v0

    .line 210
    const/16 v0, 0x9

    aput p10, p0, v0

    .line 211
    const/16 v0, 0xa

    aput p11, p0, v0

    .line 212
    const/16 v0, 0xb

    aput p12, p0, v0

    .line 213
    return-void
.end method
