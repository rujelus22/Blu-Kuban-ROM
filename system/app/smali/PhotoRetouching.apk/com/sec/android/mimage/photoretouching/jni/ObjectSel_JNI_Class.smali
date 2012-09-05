.class public Lcom/sec/android/mimage/photoretouching/jni/ObjectSel_JNI_Class;
.super Ljava/lang/Object;
.source "ObjectSel_JNI_Class.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "ObjectSel_JNI_Class"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native argb2gray([III[I)V
.end method

.method public static native destroy_objectsel()V
.end method

.method public static native draw_reversemask([I[I[BII)V
.end method

.method public static native draw_withmask([I[I[BILandroid/graphics/Rect;)V
.end method

.method public static native get_brush_center()I
.end method

.method public static native get_brush_radius()I
.end method

.method public static native get_objectROI(Landroid/graphics/Rect;)V
.end method

.method public static native init_objectsel(II)I
.end method

.method public static native inverse_objectsel([BII)V
.end method

.method public static native modify_objectsel([I[BIILandroid/graphics/Point;ILandroid/graphics/Rect;I)V
.end method

.method public static native reinit_objectsel([BIILandroid/graphics/Rect;)V
.end method

.method public static native reset_fill_ROI(II)V
.end method

.method public static native reset_objectsel([BII)V
.end method

.method public static native set_brush_size(II)V
.end method

.method public static native set_objectROI(Landroid/graphics/Rect;)V
.end method

.method public static native update_objectROI([BII)V
.end method
