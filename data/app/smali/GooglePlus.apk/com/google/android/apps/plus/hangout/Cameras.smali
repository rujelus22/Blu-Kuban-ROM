.class Lcom/google/android/apps/plus/hangout/Cameras;
.super Ljava/lang/Object;
.source "Cameras.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;,
        Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;,
        Lcom/google/android/apps/plus/hangout/Cameras$CameraType;,
        Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;
    }
.end annotation


# static fields
.field private static cameraGetCameraInfo:Ljava/lang/reflect/Method;

.field private static cameraGetNumberOfCameras:Ljava/lang/reflect/Method;

.field private static cameraInfoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static cameraInfoFacing:Ljava/lang/reflect/Field;

.field private static cameraInfoFrontFacingConstant:I

.field private static cameraInfoOrientation:Ljava/lang/reflect/Field;

.field private static cameraOpen:Ljava/lang/reflect/Method;

.field private static gingerbreadCameraApiSupported:Z

.field private static selectedCameras:Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 52
    :try_start_0
    const-string v1, "android.hardware.Camera$CameraInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->cameraInfoClass:Ljava/lang/Class;

    .line 53
    const-class v1, Landroid/hardware/Camera;

    const-string v2, "open"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->cameraOpen:Ljava/lang/reflect/Method;

    .line 54
    const-class v1, Landroid/hardware/Camera;

    const-string v2, "getNumberOfCameras"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->cameraGetNumberOfCameras:Ljava/lang/reflect/Method;

    .line 55
    const-class v1, Landroid/hardware/Camera;

    const-string v2, "getCameraInfo"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/apps/plus/hangout/Cameras;->cameraInfoClass:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->cameraGetCameraInfo:Ljava/lang/reflect/Method;

    .line 57
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->cameraInfoClass:Ljava/lang/Class;

    const-string v2, "facing"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->cameraInfoFacing:Ljava/lang/reflect/Field;

    .line 58
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->cameraInfoClass:Ljava/lang/Class;

    const-string v2, "orientation"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->cameraInfoOrientation:Ljava/lang/reflect/Field;

    .line 59
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->cameraInfoClass:Ljava/lang/Class;

    const-string v2, "CAMERA_FACING_FRONT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/hangout/Cameras;->cameraInfoFrontFacingConstant:I

    .line 62
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/hangout/Cameras;->gingerbreadCameraApiSupported:Z
    :try_end_64
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_64} :catch_6f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_64} :catch_7a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_64} :catch_78
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_64} :catch_76

    .line 76
    :goto_64
    sget-boolean v1, Lcom/google/android/apps/plus/hangout/Cameras;->gingerbreadCameraApiSupported:Z

    if-eqz v1, :cond_6e

    .line 77
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->gingerbreadSelectCameras()Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->selectedCameras:Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;

    .line 79
    :cond_6e
    return-void

    .line 63
    :catch_6f
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 72
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_76
    move-exception v1

    goto :goto_64

    .line 70
    :catch_78
    move-exception v1

    goto :goto_64

    .line 67
    :catch_7a
    move-exception v1

    goto :goto_64
.end method

.method private static gingerbreadGetCameraProperties(I)Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    .registers 11
    .parameter "cameraId"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 243
    sget-boolean v5, Lcom/google/android/apps/plus/hangout/Cameras;->gingerbreadCameraApiSupported:Z

    if-nez v5, :cond_e

    .line 244
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Gingerbread camera API not supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 248
    :cond_e
    :try_start_e
    sget-object v5, Lcom/google/android/apps/plus/hangout/Cameras;->cameraInfoClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 249
    .local v0, cameraInfo:Ljava/lang/Object;
    sget-object v5, Lcom/google/android/apps/plus/hangout/Cameras;->cameraGetCameraInfo:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v5, Lcom/google/android/apps/plus/hangout/Cameras;->cameraInfoFacing:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    sget v6, Lcom/google/android/apps/plus/hangout/Cameras;->cameraInfoFrontFacingConstant:I

    if-ne v5, v6, :cond_3d

    .line 252
    .local v2, frontFacing:Z
    :goto_31
    sget-object v4, Lcom/google/android/apps/plus/hangout/Cameras;->cameraInfoOrientation:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 253
    .local v3, orientation:I
    new-instance v4, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    invoke-direct {v4, v2, v3}, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;-><init>(ZI)V
    :try_end_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_3c} :catch_3f
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_3c} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_3c} :catch_4d

    return-object v4

    .end local v2           #frontFacing:Z
    .end local v3           #orientation:I
    :cond_3d
    move v2, v4

    .line 250
    goto :goto_31

    .line 254
    .end local v0           #cameraInfo:Ljava/lang/Object;
    :catch_3f
    move-exception v1

    .line 256
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 257
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_46
    move-exception v1

    .line 259
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 260
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_4d
    move-exception v1

    .line 262
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static gingerbreadGetNumberOfCameras()I
    .registers 4

    .prologue
    .line 226
    sget-boolean v1, Lcom/google/android/apps/plus/hangout/Cameras;->gingerbreadCameraApiSupported:Z

    if-nez v1, :cond_c

    .line 227
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Gingerbread camera API not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_c
    :try_start_c
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->cameraGetNumberOfCameras:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_1b} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_1b} :catch_24

    move-result v1

    return v1

    .line 232
    :catch_1d
    move-exception v0

    .line 234
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 235
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_24
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static gingerbreadOpenCamera(I)Landroid/hardware/Camera;
    .registers 7
    .parameter "cameraId"

    .prologue
    .line 268
    sget-boolean v1, Lcom/google/android/apps/plus/hangout/Cameras;->gingerbreadCameraApiSupported:Z

    if-nez v1, :cond_c

    .line 269
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Gingerbread camera API not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_c
    :try_start_c
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->cameraOpen:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera;
    :try_end_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_1f} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_1f} :catch_27

    return-object v1

    .line 274
    :catch_20
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 277
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_27
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static gingerbreadSelectCameras()Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;
    .registers 8

    .prologue
    const/4 v7, -0x1

    .line 194
    sget-boolean v6, Lcom/google/android/apps/plus/hangout/Cameras;->gingerbreadCameraApiSupported:Z

    if-nez v6, :cond_d

    .line 195
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Gingerbread camera API not supported"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 198
    :cond_d
    const/4 v0, -0x1

    .line 199
    .local v0, frontFacingCameraId:I
    const/4 v1, 0x0

    .line 200
    .local v1, frontFacingCameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    const/4 v4, -0x1

    .line 201
    .local v4, rearFacingCameraId:I
    const/4 v5, 0x0

    .line 205
    .local v5, rearFacingCameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->gingerbreadGetNumberOfCameras()I

    move-result v6

    if-ge v2, v6, :cond_2e

    .line 206
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Cameras;->gingerbreadGetCameraProperties(I)Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    move-result-object v3

    .line 207
    .local v3, properties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    invoke-virtual {v3}, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;->isFrontFacing()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 208
    if-ne v0, v7, :cond_26

    .line 209
    move v0, v2

    .line 210
    move-object v1, v3

    .line 205
    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 213
    :cond_29
    if-ne v4, v7, :cond_26

    .line 214
    move v4, v2

    .line 215
    move-object v5, v3

    goto :goto_26

    .line 220
    .end local v3           #properties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    :cond_2e
    new-instance v6, Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;

    invoke-direct {v6, v4, v5, v0, v1}, Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;-><init>(ILcom/google/android/apps/plus/hangout/Cameras$CameraProperties;ILcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)V

    return-object v6
.end method

.method public static isAnyCameraAvailable()Z
    .registers 1

    .prologue
    .line 134
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isFrontFacingCameraAvailable()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isRearFacingCameraAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isFrontFacingCameraAvailable()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 138
    sget-boolean v1, Lcom/google/android/apps/plus/hangout/Cameras;->gingerbreadCameraApiSupported:Z

    if-eqz v1, :cond_d

    .line 139
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->selectedCameras:Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;

    iget v1, v1, Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;->frontFacingCameraId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    const/4 v0, 0x1

    .line 144
    :cond_d
    return v0
.end method

.method public static isRearFacingCameraAvailable()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 149
    sget-boolean v1, Lcom/google/android/apps/plus/hangout/Cameras;->gingerbreadCameraApiSupported:Z

    if-eqz v1, :cond_c

    .line 150
    sget-object v1, Lcom/google/android/apps/plus/hangout/Cameras;->selectedCameras:Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;

    iget v1, v1, Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;->rearFacingCameraId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    .line 153
    :cond_c
    :goto_c
    return v0

    .line 150
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static open(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;
    .registers 6
    .parameter "type"

    .prologue
    .line 158
    sget-boolean v2, Lcom/google/android/apps/plus/hangout/Cameras;->gingerbreadCameraApiSupported:Z

    if-eqz v2, :cond_4d

    .line 159
    const/4 v0, -0x1

    .line 160
    .local v0, id:I
    const/4 v1, 0x0

    .line 162
    .local v1, properties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    sget-object v2, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    if-ne p0, v2, :cond_10

    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isFrontFacingCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_10
    sget-object v2, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->RearFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    if-ne p0, v2, :cond_22

    invoke-static {}, Lcom/google/android/apps/plus/hangout/Cameras;->isRearFacingCameraAvailable()Z

    move-result v2

    if-nez v2, :cond_22

    .line 164
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Requested camera type not available"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_22
    sget-object v2, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    if-ne p0, v2, :cond_38

    .line 169
    sget-object v2, Lcom/google/android/apps/plus/hangout/Cameras;->selectedCameras:Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;

    iget v0, v2, Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;->frontFacingCameraId:I

    .line 170
    sget-object v2, Lcom/google/android/apps/plus/hangout/Cameras;->selectedCameras:Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;

    iget-object v1, v2, Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;->frontFacingCameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    .line 178
    :goto_2e
    new-instance v2, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Cameras;->gingerbreadOpenCamera(I)Landroid/hardware/Camera;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;-><init>(Landroid/hardware/Camera;Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)V

    .line 185
    .end local v0           #id:I
    .end local v1           #properties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    :goto_37
    return-object v2

    .line 171
    .restart local v0       #id:I
    .restart local v1       #properties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    :cond_38
    sget-object v2, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->RearFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    if-ne p0, v2, :cond_45

    .line 172
    sget-object v2, Lcom/google/android/apps/plus/hangout/Cameras;->selectedCameras:Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;

    iget v0, v2, Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;->rearFacingCameraId:I

    .line 173
    sget-object v2, Lcom/google/android/apps/plus/hangout/Cameras;->selectedCameras:Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;

    iget-object v1, v2, Lcom/google/android/apps/plus/hangout/Cameras$SelectedCameras;->rearFacingCameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    goto :goto_2e

    .line 175
    :cond_45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown camera type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    .end local v0           #id:I
    .end local v1           #properties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    :cond_4d
    sget-object v2, Lcom/google/android/apps/plus/hangout/Cameras$CameraType;->FrontFacing:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    if-ne p0, v2, :cond_59

    .line 183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Requested camera type not available"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_59
    new-instance v2, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;->FROYO_CAMERA_PROPERTIES:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;-><init>(Landroid/hardware/Camera;Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)V

    goto :goto_37
.end method
