.class public Lcom/sec/android/mimage/photoretouching/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "nativeEffect"

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

.method public static argb2gray([I[III[BLandroid/graphics/Rect;I)V
    .registers 14
    .parameter "in"
    .parameter "out"
    .parameter "width"
    .parameter "height"
    .parameter "mask"
    .parameter "roi"
    .parameter "step"

    .prologue
    .line 8
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/Effect;->native_argb2gray([I[IIILandroid/graphics/Rect;[BI)V

    .line 9
    return-void
.end method

.method public static native native_argb2gray([I[IIILandroid/graphics/Rect;[BI)V
.end method

.method public static native native_blur([I[B[IIIII)V
.end method

.method public static native native_brightness([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native native_contrast([I[B[IIIILandroid/graphics/Rect;)V
.end method

.method public static native native_crop([IIILandroid/graphics/Rect;)V
.end method

.method public static native native_destroyblur()V
.end method

.method public static native native_initblur([I[BIII)V
.end method

.method public static native native_makeblur([I[B[IIIII)V
.end method

.method public static native native_rotate([I[BIII)V
.end method

.method public static native native_rotate_flip([IIIIII)V
.end method

.method public static native native_rotate_height(III)I
.end method

.method public static native native_rotate_n([I[B[I[BIIIIILandroid/graphics/Rect;II)V
.end method

.method public static native native_rotate_width(III)I
.end method

.method public static native native_saturation([I[B[IIIILandroid/graphics/Rect;)V
.end method
