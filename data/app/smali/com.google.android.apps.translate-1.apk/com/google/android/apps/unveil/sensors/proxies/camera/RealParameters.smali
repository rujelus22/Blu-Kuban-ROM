.class public Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;
.super Ljava/lang/Object;
.source "RealParameters.java"

# interfaces
.implements Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;


# instance fields
.field private final actualParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Parameters;)V
    .registers 2
    .parameter "parameters"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    .line 25
    return-void
.end method

.method private toSizeList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/env/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, cameraSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v2, sizes:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/env/Size;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 144
    .local v0, cameraSize:Landroid/hardware/Camera$Size;
    new-instance v3, Lcom/google/android/apps/unveil/env/Size;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v5}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 146
    .end local v0           #cameraSize:Landroid/hardware/Camera$Size;
    :cond_22
    return-object v2
.end method


# virtual methods
.method public flatten()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActualParameters()Landroid/hardware/Camera$Parameters;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxZoom()I
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    return v0
.end method

.method public getPictureFormat()I
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v0

    return v0
.end method

.method public getPictureSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 3

    .prologue
    .line 51
    new-instance v0, Lcom/google/android/apps/unveil/env/Size;

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/env/Size;-><init>(Landroid/hardware/Camera$Size;)V

    return-object v0
.end method

.method public getPreviewFormat()I
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    return v0
.end method

.method public getPreviewFrameRate()I
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v0

    return v0
.end method

.method public getPreviewSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Lcom/google/android/apps/unveil/env/Size;

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/env/Size;-><init>(Landroid/hardware/Camera$Size;)V

    return-object v0
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .registers 2
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
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->toSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .registers 2
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
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->toSizeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSmoothZoomSupported()Z
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setPictureFormat(I)V
    .registers 3
    .parameter "pixelFormat"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 104
    return-void
.end method

.method public setPictureSize(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 109
    return-void
.end method

.method public setPreviewFormat(I)V
    .registers 3
    .parameter "pixelFormat"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 114
    return-void
.end method

.method public setPreviewFrameRate(I)V
    .registers 3
    .parameter "fps"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 119
    return-void
.end method

.method public setPreviewSize(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 124
    return-void
.end method

.method public unflatten(Ljava/lang/String;)V
    .registers 3
    .parameter "flattened"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/RealParameters;->actualParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 139
    return-void
.end method
