.class public Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;
.super Ljava/lang/Object;
.source "RealCamera.java"

# interfaces
.implements Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;


# instance fields
.field private addBufferMethod:Ljava/lang/reflect/Method;

.field protected camera:Landroid/hardware/Camera;

.field private setCallbackWithBufferMethod:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Landroid/hardware/Camera;)V
    .registers 3
    .parameter "actualCamera"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->addBufferMethod:Ljava/lang/reflect/Method;

    .line 32
    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->setCallbackWithBufferMethod:Ljava/lang/reflect/Method;

    .line 60
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    .line 61
    return-void
.end method

.method public static open(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;
    .registers 6
    .parameter "handler"
    .parameter
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            ")",
            "Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, extraParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 44
    .local v0, camera:Landroid/hardware/Camera;
    if-nez v0, :cond_11

    .line 45
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_17

    .line 48
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 55
    :cond_11
    new-instance v1, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;

    invoke-direct {v1, v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;-><init>(Landroid/hardware/Camera;)V

    :goto_16
    return-object v1

    .line 50
    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .registers 12
    .parameter "buffer"

    .prologue
    .line 146
    iget-object v6, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->addBufferMethod:Ljava/lang/reflect/Method;

    if-nez v6, :cond_23

    .line 147
    iget-object v6, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 148
    .local v0, allMethods:[Ljava/lang/reflect/Method;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/reflect/Method;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_11
    if-ge v3, v4, :cond_23

    aget-object v5, v1, v3

    .line 149
    .local v5, method:Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "addCallbackBuffer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 150
    iput-object v5, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->addBufferMethod:Ljava/lang/reflect/Method;

    .line 157
    .end local v0           #allMethods:[Ljava/lang/reflect/Method;
    .end local v1           #arr$:[Ljava/lang/reflect/Method;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #method:Ljava/lang/reflect/Method;
    :cond_23
    :try_start_23
    iget-object v6, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->addBufferMethod:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_30} :catch_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_30} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_30} :catch_3e

    .line 165
    :goto_30
    return-void

    .line 148
    .restart local v0       #allMethods:[Ljava/lang/reflect/Method;
    .restart local v1       #arr$:[Ljava/lang/reflect/Method;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #method:Ljava/lang/reflect/Method;
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 158
    .end local v0           #allMethods:[Ljava/lang/reflect/Method;
    .end local v1           #arr$:[Ljava/lang/reflect/Method;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #method:Ljava/lang/reflect/Method;
    :catch_34
    move-exception v2

    .line 159
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_30

    .line 160
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_39
    move-exception v2

    .line 161
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_30

    .line 162
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_3e
    move-exception v2

    .line 163
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_30
.end method

.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .registers 3
    .parameter "autoFocusCallback"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 91
    return-void
.end method

.method public cancelAutoFocus()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 170
    return-void
.end method

.method public getParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    .registers 3

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;-><init>(Landroid/hardware/Camera$Parameters;)V

    return-object v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 66
    return-void
.end method

.method public setDisplayOrientation(I)V
    .registers 3
    .parameter "degrees"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 175
    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 3
    .parameter "previewCallback"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 112
    return-void
.end method

.method public setParameters(Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-interface {p1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;->getActualParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 86
    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 3
    .parameter "previewCallback"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 117
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 12
    .parameter "callback"

    .prologue
    .line 122
    iget-object v6, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->setCallbackWithBufferMethod:Ljava/lang/reflect/Method;

    if-nez v6, :cond_23

    .line 123
    iget-object v6, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 124
    .local v0, allMethods:[Ljava/lang/reflect/Method;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/reflect/Method;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_11
    if-ge v3, v4, :cond_23

    aget-object v5, v1, v3

    .line 125
    .local v5, method:Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "setPreviewCallbackWithBuffer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 126
    iput-object v5, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->setCallbackWithBufferMethod:Ljava/lang/reflect/Method;

    .line 133
    .end local v0           #allMethods:[Ljava/lang/reflect/Method;
    .end local v1           #arr$:[Ljava/lang/reflect/Method;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #method:Ljava/lang/reflect/Method;
    :cond_23
    :try_start_23
    iget-object v6, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->setCallbackWithBufferMethod:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_30} :catch_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_30} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_30} :catch_3e

    .line 141
    :goto_30
    return-void

    .line 124
    .restart local v0       #allMethods:[Ljava/lang/reflect/Method;
    .restart local v1       #arr$:[Ljava/lang/reflect/Method;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #method:Ljava/lang/reflect/Method;
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 134
    .end local v0           #allMethods:[Ljava/lang/reflect/Method;
    .end local v1           #arr$:[Ljava/lang/reflect/Method;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #method:Ljava/lang/reflect/Method;
    :catch_34
    move-exception v2

    .line 135
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_30

    .line 136
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_39
    move-exception v2

    .line 137
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_30

    .line 138
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_3e
    move-exception v2

    .line 139
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_30
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "cameraSurfaceHolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 96
    return-void
.end method

.method public setPreviewTexture(Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;)V
    .registers 3
    .parameter "cameraTextureView"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/env/PlatformVersionUtils;->setPreviewTexture(Landroid/hardware/Camera;Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;)V

    .line 101
    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 185
    return-void
.end method

.method public startPreview()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 71
    return-void
.end method

.method public startSmoothZoom(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 180
    return-void
.end method

.method public stopPreview()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 76
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .registers 5
    .parameter "shutterCallback"
    .parameter "object"
    .parameter "callback"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealCamera;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 107
    return-void
.end method
