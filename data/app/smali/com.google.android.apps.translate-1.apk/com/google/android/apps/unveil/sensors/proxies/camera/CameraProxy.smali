.class public interface abstract Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;
.super Ljava/lang/Object;
.source "CameraProxy.java"


# virtual methods
.method public abstract addCallbackBuffer([B)V
.end method

.method public abstract autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
.end method

.method public abstract cancelAutoFocus()V
.end method

.method public abstract getParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
.end method

.method public abstract release()V
.end method

.method public abstract setDisplayOrientation(I)V
.end method

.method public abstract setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public abstract setParameters(Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;)V
.end method

.method public abstract setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public abstract setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public abstract setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setPreviewTexture(Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
.end method

.method public abstract startPreview()V
.end method

.method public abstract startSmoothZoom(I)V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
.end method
