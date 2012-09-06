.class public interface abstract Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
.super Ljava/lang/Object;
.source "ParametersProxy.java"


# static fields
.field public static final FLASH_MODE_KEY:Ljava/lang/String; = "flash-mode"

.field public static final FLASH_MODE_VALUES_KEY:Ljava/lang/String; = "flash-mode-values"

.field public static final FOCUS_MODE_KEY:Ljava/lang/String; = "focus-mode"

.field public static final FOCUS_MODE_VALUES_KEY:Ljava/lang/String; = "focus-mode-values"

.field public static final JPEG_QUALITY_KEY:Ljava/lang/String; = "jpeg-quality"

.field public static final PICTURE_SIZE_KEY:Ljava/lang/String; = "picture-size"

.field public static final PICTURE_SIZE_VALUES_KEY:Ljava/lang/String; = "picture-size-values"

.field public static final PREVIEW_FRAME_RATE_KEY:Ljava/lang/String; = "preview-frame-rate"

.field public static final PREVIEW_SIZE_KEY:Ljava/lang/String; = "preview-size"

.field public static final PREVIEW_SIZE_VALUES_KEY:Ljava/lang/String; = "preview-size-values"


# virtual methods
.method public abstract flatten()Ljava/lang/String;
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActualParameters()Landroid/hardware/Camera$Parameters;
.end method

.method public abstract getInt(Ljava/lang/String;)I
.end method

.method public abstract getMaxZoom()I
.end method

.method public abstract getPictureFormat()I
.end method

.method public abstract getPictureSize()Lcom/google/android/apps/unveil/env/Size;
.end method

.method public abstract getPreviewFormat()I
.end method

.method public abstract getPreviewFrameRate()I
.end method

.method public abstract getPreviewSize()Lcom/google/android/apps/unveil/env/Size;
.end method

.method public abstract getSupportedPictureSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedPreviewSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isSmoothZoomSupported()Z
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract set(Ljava/lang/String;I)V
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPictureFormat(I)V
.end method

.method public abstract setPictureSize(II)V
.end method

.method public abstract setPreviewFormat(I)V
.end method

.method public abstract setPreviewFrameRate(I)V
.end method

.method public abstract setPreviewSize(II)V
.end method

.method public abstract unflatten(Ljava/lang/String;)V
.end method
