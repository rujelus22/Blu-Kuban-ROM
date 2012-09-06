.class public Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;
.super Ljava/lang/Object;
.source "FakeParameters.java"

# interfaces
.implements Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;


# static fields
.field private static final DEFAULT_PICTURE_SIZES:Ljava/lang/String; = "2592x1944,2048x1536,1600x1200,1024x768,512x384"

.field private static final DEFAULT_PREVIEW_SIZES:Ljava/lang/String; = "1280x720,800x480,720x480,640x480,576x432,480x320,384x288,352x288,320x240,240x160,176x144"


# instance fields
.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private final parameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "antibanding"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "antibanding-values"

    const-string v2, "off,50hz,60hz,auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "effect"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "effect-values"

    const-string v2, "none,mono,negative,solarize,sepia,posterize,whiteboard,blackboard,aqua"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "flash-mode"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "flash-mode-values"

    const-string v2, "off,auto,on"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "focus-mode"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "focus-mode-values"

    const-string v2, "auto,infinity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "jpeg-quality"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "jpeg-thumbnail-height"

    const-string v2, "384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "jpeg-thumbnail-quality"

    const-string v2, "90"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "jpeg-thumbnail-width"

    const-string v2, "512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "max-zoom"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "picture-format"

    const-string v2, "jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "picture-format-values"

    const-string v2, "jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "picture-size"

    const-string v2, "2048x1536"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "picture-size-values"

    const-string v2, "2592x1944,2048x1536,1600x1200,1024x768,512x384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "preview-format"

    const-string v2, "yuv420sp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "preview-format-values"

    const-string v2, "yuv420sp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "preview-frame-rate"

    const-string v2, "15"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "preview-size"

    const-string v2, "720x480"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "preview-size-values"

    const-string v2, "1280x720,800x480,720x480,640x480,576x432,480x320,384x288,352x288,320x240,240x160,176x144"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "whitebalance"

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "whitebalance-values"

    const-string v2, "auto,incandescent,fluorescent,daylight,cloudy-daylight"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "zoom"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "zoom-supported"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;)V
    .registers 4
    .parameter "that"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    .line 31
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 32
    return-void
.end method


# virtual methods
.method public flatten()Ljava/lang/String;
    .registers 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "flatten() is unimplemented!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getActualParameters()Landroid/hardware/Camera$Parameters;
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "getActualParameters() is unimplemented!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxZoom()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "getMaxZoom() is unimplemented!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    return v3
.end method

.method public getPictureFormat()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "getPictureFormat() is unimplemented!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    return v3
.end method

.method public getPictureSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "picture-size"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Size;->parseFromString(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewFormat()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "getPreviewFormat() is unimplemented!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    return v3
.end method

.method public getPreviewFrameRate()I
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "preview-frame-rate"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPreviewSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "preview-size"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Size;->parseFromString(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Size;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "picture-size-values"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Size;->sizeStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "preview-size-values"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/Size;->sizeStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSmoothZoomSupported()Z
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public setPictureFormat(I)V
    .registers 5
    .parameter "pixelFormat"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "setPictureFormat() is unimplemented!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public setPictureSize(II)V
    .registers 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "picture-size"

    new-instance v2, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v2, p1, p2}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public setPreviewFormat(I)V
    .registers 5
    .parameter "pixelFormat"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "setPreviewFormat() is unimplemented!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public setPreviewFrameRate(I)V
    .registers 6
    .parameter "fps"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "preview-frame-rate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public setPreviewSize(II)V
    .registers 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->parameterMap:Ljava/util/HashMap;

    const-string v1, "preview-size"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public unflatten(Ljava/lang/String;)V
    .registers 5
    .parameter "flattened"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "unflatten() is unimplemented!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    return-void
.end method
