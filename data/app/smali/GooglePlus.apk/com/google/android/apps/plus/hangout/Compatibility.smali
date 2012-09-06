.class public Lcom/google/android/apps/plus/hangout/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# direct methods
.method public static getCameraOrientation(Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)I
    .registers 6
    .parameter "cameraProperties"

    .prologue
    .line 74
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Compatibility;->isHtcWithCameraOrientationProblem()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;->isFrontFacing()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 75
    const/16 v1, 0x10e

    .line 85
    :goto_e
    return v1

    .line 80
    :cond_f
    :try_start_f
    sget-object v3, Lcom/google/android/apps/plus/util/Property;->HANGOUT_CAMERA_ORIENTATION:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, orientationOverride:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 82
    .local v1, orientation:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using camera orientation of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_2f} :catch_30

    goto :goto_e

    .line 84
    .end local v1           #orientation:I
    .end local v2           #orientationOverride:Ljava/lang/String;
    :catch_30
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;->getOrientation()I

    move-result v1

    goto :goto_e
.end method

.method public static getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)Ljava/util/List;
    .registers 8
    .parameter "params"
    .parameter "cameraProperties"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 55
    .local v2, reportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Compatibility;->isMotorolaDroid3()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 56
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;->isFrontFacing()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v0, filteredSizes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 60
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    const/16 v5, 0xf0

    if-ne v4, v5, :cond_37

    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    const/16 v5, 0xa0

    if-eq v4, v5, :cond_1f

    .line 61
    :cond_37
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .end local v0           #filteredSizes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #size:Landroid/hardware/Camera$Size;
    :cond_3b
    move-object v0, v2

    .line 68
    :cond_3c
    return-object v0
.end method

.method public static isCameraCallbackFrameMirrored(Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)Z
    .registers 3
    .parameter "cameraProperties"

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->HANGOUT_CAMERA_MIRRORED:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FALSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 108
    const/4 v0, 0x1

    .line 111
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static isHtcWithCameraOrientationProblem()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 36
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "HTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 40
    :cond_b
    :goto_b
    return v0

    :cond_c
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "PC36100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "myTouch_4G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "HTC Glacier"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ADR6400L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "HTC Incredible S S710e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A9191"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_48
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private static isMotorolaDroid3()Z
    .registers 2

    .prologue
    .line 31
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "DROID3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
