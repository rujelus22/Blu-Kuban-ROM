.class public Lcom/sec/android/mimage/photoretouching/jni/PhotoEraser;
.super Ljava/lang/Object;
.source "PhotoEraser.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "nativeEraser"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native deleteStoredMask()I
.end method

.method public static native deleteStoredObject()I
.end method

.method public static native drawObject([III[IIIFLandroid/graphics/Rect;)I
.end method

.method public static native exitEraser()I
.end method

.method public static java_drawImage([I[IIIIIFLandroid/graphics/Rect;)Z
    .registers 19
    .parameter "dstBuff"
    .parameter "srcBuff"
    .parameter "dstBuffwidth"
    .parameter "dstBuffheight"
    .parameter "srcBuffwidth"
    .parameter "srcBuffheight"
    .parameter "scale"
    .parameter "src_roi"

    .prologue
    .line 24
    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    div-float v9, v9, p6

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v5, v9

    .line 25
    .local v5, startX:I
    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    div-float v9, v9, p6

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v1, v9

    .line 26
    .local v1, endX:I
    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    div-float v9, v9, p6

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v6, v9

    .line 27
    .local v6, startY:I
    move-object/from16 v0, p7

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    div-float v9, v9, p6

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v2, v9

    .line 29
    .local v2, endY:I
    move v3, v6

    .local v3, i:I
    :goto_2d
    if-le v3, v2, :cond_31

    .line 40
    const/4 v9, 0x1

    return v9

    .line 31
    :cond_31
    int-to-float v9, v3

    mul-float v9, v9, p6

    float-to-int v8, v9

    .line 33
    .local v8, ypos:I
    move v4, v5

    .local v4, j:I
    :goto_36
    if-lt v4, v1, :cond_3b

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 35
    :cond_3b
    int-to-float v9, v4

    mul-float v9, v9, p6

    float-to-int v7, v9

    .line 36
    .local v7, xpos:I
    mul-int v9, v3, p2

    add-int/2addr v9, v4

    mul-int v10, v8, p4

    add-int/2addr v10, v7

    aget v10, p1, v10

    aput v10, p0, v9

    .line 33
    add-int/lit8 v4, v4, 0x1

    goto :goto_36
.end method

.method public static native reStartEraser()I
.end method

.method public static native recoverMask([BIILandroid/graphics/Rect;)I
.end method

.method public static native recoverObject([IIILandroid/graphics/Rect;)I
.end method

.method public static native runEraser([I[BIIIIII)I
.end method

.method public static native stopEraser()I
.end method

.method public static native storeMask([BIILandroid/graphics/Rect;)I
.end method

.method public static native storeObject([IIILandroid/graphics/Rect;)I
.end method
