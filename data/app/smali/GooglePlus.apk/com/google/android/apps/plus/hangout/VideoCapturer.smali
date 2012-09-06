.class public Lcom/google/android/apps/plus/hangout/VideoCapturer;
.super Ljava/lang/Object;
.source "VideoCapturer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;,
        Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile camera:Landroid/hardware/Camera;

.field private cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

.field private cameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

.field private final context:Landroid/content/Context;

.field private volatile deviceRotation:I

.field private flashLightEnabled:Z

.field private volatile frameRotationBeforeDisplaying:I

.field private volatile frameRotationBeforeSending:I

.field private final holder:Landroid/view/SurfaceHolder;

.field private final host:Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;

.field protected volatile isCapturing:Z

.field protected isSurfaceReady:Z

.field private final nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

.field private volatile previewFrameHeight:I

.field private volatile previewFrameWidth:I

.field protected startCapturingWhenSurfaceReady:Z

.field private supportsFlashLight:Z

.field protected surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;Landroid/view/SurfaceHolder;Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;)V
    .registers 7
    .parameter "context"
    .parameter "nativeWrapper"
    .parameter "holder"
    .parameter "host"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->context:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    .line 146
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->holder:Landroid/view/SurfaceHolder;

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 151
    iput-object p4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->host:Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;

    .line 152
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->windowManager:Landroid/view/WindowManager;

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->deviceRotation:I

    .line 154
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;)V
    .registers 5
    .parameter "context"
    .parameter "nativeWrapper"
    .parameter "host"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->context:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->holder:Landroid/view/SurfaceHolder;

    .line 163
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->host:Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;

    .line 164
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->windowManager:Landroid/view/WindowManager;

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->deviceRotation:I

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/VideoCapturer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->deviceOrientationChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/VideoCapturer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->configureCamera()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/VideoCapturer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeSending:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/VideoCapturer;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/VideoCapturer;)Landroid/hardware/Camera;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method private computeRotation()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 356
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->deviceRotation:I

    .line 358
    iget v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->deviceRotation:I

    packed-switch v2, :pswitch_data_94

    .line 372
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid value of deviceOrientation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    :pswitch_1c
    const/4 v1, 0x0

    .line 394
    .local v1, deviceOrientationDegrees:I
    :goto_1d
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Compatibility;->getCameraOrientation(Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)I

    move-result v0

    .line 396
    .local v0, cameraOrientation:I
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;->isFrontFacing()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 405
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Compatibility;->isCameraCallbackFrameMirrored(Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 408
    add-int v2, v1, v0

    rem-int/lit16 v2, v2, 0x168

    rsub-int v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeSending:I

    .line 415
    :goto_3d
    add-int v2, v1, v0

    rem-int/lit16 v2, v2, 0x168

    rsub-int v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeDisplaying:I

    .line 425
    :goto_47
    const-string v2, "Device orientation is %d; camera orientation is %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    const-string v2, "frameRotationBeforeDisplaying is %d; frameRotationBeforeSending is %d"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeDisplaying:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeSending:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    return-void

    .line 363
    .end local v0           #cameraOrientation:I
    .end local v1           #deviceOrientationDegrees:I
    :pswitch_72
    const/16 v1, 0x5a

    .line 364
    .restart local v1       #deviceOrientationDegrees:I
    goto :goto_1d

    .line 366
    .end local v1           #deviceOrientationDegrees:I
    :pswitch_75
    const/16 v1, 0xb4

    .line 367
    .restart local v1       #deviceOrientationDegrees:I
    goto :goto_1d

    .line 369
    .end local v1           #deviceOrientationDegrees:I
    :pswitch_78
    const/16 v1, 0x10e

    .line 370
    .restart local v1       #deviceOrientationDegrees:I
    goto :goto_1d

    .line 412
    .restart local v0       #cameraOrientation:I
    :cond_7b
    add-int v2, v0, v1

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeSending:I

    goto :goto_3d

    .line 419
    :cond_82
    sub-int v2, v0, v1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeSending:I

    .line 421
    sub-int v2, v0, v1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeDisplaying:I

    goto :goto_47

    .line 358
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_72
        :pswitch_75
        :pswitch_78
    .end packed-switch
.end method

.method private configureCamera()V
    .registers 19

    .prologue
    .line 193
    const-string v13, "*** configureCamera"

    invoke-static {v13}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 195
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isSurfaceReady:Z

    if-eqz v13, :cond_ef

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v13, :cond_ef

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v13, v14}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1c} :catch_102

    .line 211
    :goto_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v13}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    .line 212
    .local v11, params:Landroid/hardware/Camera$Parameters;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    invoke-static {v13, v11}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->getBestMatchPreviewSize(Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 214
    .local v1, bestMatchSize:Landroid/hardware/Camera$Size;
    const/16 v13, 0x11

    invoke-virtual {v11, v13}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 215
    iget v13, v1, Landroid/hardware/Camera$Size;->width:I

    iget v14, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v13, v14}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 216
    const-string v13, "Setting camera preview size to %d x %d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget v0, v1, Landroid/hardware/Camera$Size;->height:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->supportsFlashLight:Z

    .line 220
    invoke-virtual {v11}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v12

    .line 221
    .local v12, supportedFlashModeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_6b

    .line 222
    const-string v13, "torch"

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->supportsFlashLight:Z

    .line 225
    :cond_6b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Camera flash light in torch mode supports: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->supportsFlashLight:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->supportsFlashLight:Z

    if-eqz v13, :cond_9b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->flashLightEnabled:Z

    if-eqz v13, :cond_9b

    .line 228
    const-string v13, "torch"

    invoke-virtual {v11, v13}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 229
    const-string v13, "Turning on flash light in torch mode"

    invoke-static {v13}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 231
    :cond_9b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v13, v11}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 236
    const/16 v13, 0x11

    invoke-static {v13}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v13

    int-to-long v4, v13

    .line 237
    .local v4, bitsPerPixel:J
    iget v13, v1, Landroid/hardware/Camera$Size;->width:I

    iget v14, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v13, v14

    int-to-long v13, v13

    mul-long v2, v13, v4

    .line 238
    .local v2, bitsPerFrame:J
    const-wide/16 v13, 0x7

    add-long/2addr v13, v2

    const-wide/16 v15, 0x8

    div-long/2addr v13, v15

    long-to-int v6, v13

    .line 239
    .local v6, bufferSize:I
    const-string v13, "BitsPerPixel: %d BitsPerFrame: %d BufferSize: %d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 242
    const/4 v8, 0x0

    .local v8, i:I
    :goto_de
    const/4 v13, 0x5

    if-ge v8, v13, :cond_140

    .line 245
    :try_start_e1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    add-int/lit16 v14, v6, 0x400

    new-array v14, v14, [B

    invoke-virtual {v13, v14}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_ec
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e1 .. :try_end_ec} :catch_11c

    .line 242
    add-int/lit8 v8, v8, 0x1

    goto :goto_de

    .line 198
    .end local v1           #bestMatchSize:Landroid/hardware/Camera$Size;
    .end local v2           #bitsPerFrame:J
    .end local v4           #bitsPerPixel:J
    .end local v6           #bufferSize:I
    .end local v8           #i:I
    .end local v11           #params:Landroid/hardware/Camera$Parameters;
    .end local v12           #supportedFlashModeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_ef
    :try_start_ef
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->holder:Landroid/view/SurfaceHolder;

    if-eqz v13, :cond_115

    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v13, v14}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_100} :catch_102

    goto/16 :goto_1c

    .line 204
    :catch_102
    move-exception v7

    .line 205
    .local v7, e:Ljava/io/IOException;
    const-string v13, "setPreviewDisplay failed.  Ignoring, but video capture is disabled"

    invoke-static {v13}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v13}, Landroid/hardware/Camera;->release()V

    .line 207
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    .line 314
    .end local v7           #e:Ljava/io/IOException;
    :cond_114
    :goto_114
    return-void

    .line 202
    :cond_115
    :try_start_115
    const-string v13, "No surface for camera preview."

    invoke-static {v13}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_11a} :catch_102

    goto/16 :goto_1c

    .line 246
    .restart local v1       #bestMatchSize:Landroid/hardware/Camera$Size;
    .restart local v2       #bitsPerFrame:J
    .restart local v4       #bitsPerPixel:J
    .restart local v6       #bufferSize:I
    .restart local v8       #i:I
    .restart local v11       #params:Landroid/hardware/Camera$Parameters;
    .restart local v12       #supportedFlashModeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_11c
    move-exception v7

    .line 247
    .local v7, e:Ljava/lang/OutOfMemoryError;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "camera.addCallbackBuffer failed.  Video capture is disabled: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v13}, Landroid/hardware/Camera;->release()V

    .line 249
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    goto :goto_114

    .line 254
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    new-instance v14, Lcom/google/android/apps/plus/hangout/VideoCapturer$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer$1;-><init>(Lcom/google/android/apps/plus/hangout/VideoCapturer;)V

    invoke-virtual {v13, v14}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->computeRotation()V

    .line 288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeDisplaying:I

    invoke-virtual {v13, v14}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 292
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameWidth:I

    .line 293
    .local v10, oldPreviewFrameWidth:I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameHeight:I

    .line 295
    .local v9, oldPreviewFrameHeight:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeDisplaying:I

    sparse-switch v13, :sswitch_data_1ac

    .line 308
    :goto_16b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameWidth:I

    if-ne v13, v10, :cond_177

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameHeight:I

    if-eq v13, v9, :cond_114

    .line 310
    :cond_177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->context:Landroid/content/Context;

    const/16 v14, 0xcc

    new-instance v15, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameHeight:I

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/android/apps/plus/hangout/RectangleDimensions;-><init>(II)V

    invoke-static {v13, v14, v15}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_114

    .line 298
    :sswitch_192
    iget v13, v1, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameWidth:I

    .line 299
    iget v13, v1, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameHeight:I

    goto :goto_16b

    .line 303
    :sswitch_19f
    iget v13, v1, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameWidth:I

    .line 304
    iget v13, v1, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameHeight:I

    goto :goto_16b

    .line 295
    :sswitch_data_1ac
    .sparse-switch
        0x0 -> :sswitch_192
        0x5a -> :sswitch_19f
        0xb4 -> :sswitch_192
        0x10e -> :sswitch_19f
    .end sparse-switch
.end method

.method private deviceOrientationChanged()Z
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->deviceRotation:I

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static getBestMatchPreviewSize(Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .registers 15
    .parameter "cameraProperties"
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, bestMatchSize:Landroid/hardware/Camera$Size;
    invoke-static {p1, p0}, Lcom/google/android/apps/plus/hangout/Compatibility;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)Ljava/util/List;

    move-result-object v4

    .line 590
    .local v4, previewSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v4, :cond_59

    .line 591
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 592
    .local v5, size:Landroid/hardware/Camera$Size;
    invoke-static {v5}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->getMisMatchArea(Landroid/hardware/Camera$Size;)J

    move-result-wide v6

    .line 593
    .local v6, thisSizeDelta:J
    const-string v10, "Supported camera preview size: %d x %d x %d. mismatch area=%d"

    const/4 v8, 0x4

    new-array v11, v8, [Ljava/lang/Object;

    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v11, v9

    const/4 v8, 0x1

    iget v12, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const/4 v12, 0x2

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v8

    :goto_39
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v11, v12

    const/4 v8, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    if-nez v0, :cond_4f

    .line 598
    move-object v0, v5

    goto :goto_c

    :cond_4d
    move v8, v9

    .line 593
    goto :goto_39

    .line 600
    :cond_4f
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->getMisMatchArea(Landroid/hardware/Camera$Size;)J

    move-result-wide v1

    .line 601
    .local v1, bestMatchSizeDelta:J
    cmp-long v8, v6, v1

    if-gez v8, :cond_c

    .line 602
    move-object v0, v5

    goto :goto_c

    .line 607
    .end local v1           #bestMatchSizeDelta:J
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #thisSizeDelta:J
    :cond_59
    return-object v0
.end method

.method private static getMisMatchArea(Landroid/hardware/Camera$Size;)J
    .registers 8
    .parameter "size"

    .prologue
    const-wide/16 v5, 0x1e0

    const-wide/16 v3, 0x168

    const/16 v2, 0x1e0

    const/16 v1, 0x168

    .line 526
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    if-gt v0, v2, :cond_21

    iget v0, p0, Landroid/hardware/Camera$Size;->height:I

    if-gt v0, v1, :cond_21

    .line 535
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    rsub-int v0, v0, 0x1e0

    int-to-long v0, v0

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    rsub-int v2, v2, 0x168

    int-to-long v2, v2

    mul-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 574
    :goto_20
    return-wide v0

    .line 537
    :cond_21
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    if-le v0, v2, :cond_3a

    iget v0, p0, Landroid/hardware/Camera$Size;->height:I

    if-le v0, v1, :cond_3a

    .line 548
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    add-int/lit16 v0, v0, -0x1e0

    int-to-long v0, v0

    mul-long/2addr v0, v3

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    add-int/lit16 v2, v2, -0x168

    int-to-long v2, v2

    iget v4, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_20

    .line 550
    :cond_3a
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    if-le v0, v2, :cond_5d

    .line 559
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->$assertionsDisabled:Z

    if-nez v0, :cond_4c

    iget v0, p0, Landroid/hardware/Camera$Size;->height:I

    if-le v0, v1, :cond_4c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 560
    :cond_4c
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    add-int/lit16 v0, v0, -0x1e0

    int-to-long v0, v0

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    rsub-int v2, v2, 0x168

    int-to-long v2, v2

    mul-long/2addr v2, v5

    add-long/2addr v0, v2

    goto :goto_20

    .line 573
    :cond_5d
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->$assertionsDisabled:Z

    if-nez v0, :cond_6f

    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    if-gt v0, v2, :cond_69

    iget v0, p0, Landroid/hardware/Camera$Size;->height:I

    if-gt v0, v1, :cond_6f

    :cond_69
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 574
    :cond_6f
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    rsub-int v0, v0, 0x1e0

    int-to-long v0, v0

    mul-long/2addr v0, v3

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    add-int/lit16 v2, v2, -0x168

    int-to-long v2, v2

    iget v4, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_20
.end method

.method public static getSizeOfCapturedFrames(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)Landroid/hardware/Camera$Size;
    .registers 10
    .parameter "type"

    .prologue
    .line 620
    :try_start_0
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/Cameras;->open(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_34

    move-result-object v2

    .line 626
    .local v2, cameraResult:Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 627
    .local v0, camera:Landroid/hardware/Camera;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;->getProperties()Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    move-result-object v1

    .line 628
    .local v1, cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->getBestMatchPreviewSize(Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 630
    .local v4, size:Landroid/hardware/Camera$Size;
    if-eqz v4, :cond_30

    .line 631
    const-string v5, "Size of captured frames %d x %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    :cond_30
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 634
    .end local v0           #camera:Landroid/hardware/Camera;
    .end local v1           #cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    .end local v2           #cameraResult:Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;
    .end local v4           #size:Landroid/hardware/Camera$Size;
    :goto_33
    return-object v4

    .line 621
    :catch_34
    move-exception v3

    .line 622
    .local v3, e:Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error opening camera: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 623
    const/4 v4, 0x0

    goto :goto_33
.end method


# virtual methods
.method public flashLightEnabled()Z
    .registers 2

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->flashLightEnabled:Z

    return v0
.end method

.method public isCapturing()Z
    .registers 2

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    return v0
.end method

.method public start(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    .registers 3
    .parameter "cameraType"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->startCapturingWhenSurfaceReady:Z

    .line 178
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isSurfaceReady:Z

    if-eqz v0, :cond_c

    .line 179
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->startCapturing()Z

    .line 181
    :cond_c
    return-void
.end method

.method protected startCapturing()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 325
    monitor-enter p0

    .line 326
    :try_start_3
    iget-boolean v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    if-eqz v4, :cond_9

    .line 327
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2f

    .line 351
    :goto_8
    return v2

    .line 331
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Cameras;->open(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;

    move-result-object v1

    .line 333
    .local v1, result:Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;->getCamera()Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    .line 334
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;->getProperties()Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    .line 335
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->configureCamera()V

    .line 336
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 337
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    .line 338
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->host:Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;

    iget-boolean v5, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    invoke-interface {v4, v5}, Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;->onCapturingStateChanged(Z)V
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2f
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_2d} :catch_32

    .line 349
    :try_start_2d
    monitor-exit p0

    goto :goto_8

    .end local v1           #result:Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;
    :catchall_2f
    move-exception v2

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_2f

    throw v2

    .line 339
    :catch_32
    move-exception v0

    .line 340
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_33
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_3f

    .line 341
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 342
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    .line 344
    :cond_3f
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    .line 345
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->host:Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;

    iget-boolean v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    invoke-interface {v2, v4}, Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;->onCapturingStateChanged(Z)V

    .line 346
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->host:Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;

    invoke-interface {v2, v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;->onCameraOpenError(Ljava/lang/RuntimeException;)V

    .line 347
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_2f

    move v2, v3

    goto :goto_8
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stopCapturing()V

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->startCapturingWhenSurfaceReady:Z

    .line 434
    return-void
.end method

.method protected stopCapturing()V
    .registers 3

    .prologue
    .line 462
    const-string v0, "*** stopCapturing"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 465
    monitor-enter p0

    .line 466
    :try_start_6
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    if-eqz v0, :cond_27

    .line 467
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 468
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    .line 471
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->host:Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;->onCapturingStateChanged(Z)V

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameWidth:I

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameHeight:I

    .line 475
    :cond_27
    monitor-exit p0

    .line 476
    return-void

    .line 475
    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public supportsFlashLight()Z
    .registers 2

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->supportsFlashLight:Z

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isSurfaceReady:Z

    .line 488
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->startCapturingWhenSurfaceReady:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    if-nez v0, :cond_e

    .line 489
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->startCapturing()Z

    .line 491
    :cond_e
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter "holder"

    .prologue
    .line 501
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isSurfaceReady:Z

    .line 510
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stopCapturing()V

    .line 511
    return-void
.end method

.method public toggleFlashLightEnabled()V
    .registers 3

    .prologue
    .line 437
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->supportsFlashLight:Z

    if-nez v1, :cond_5

    .line 451
    :goto_4
    return-void

    .line 441
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->flashLightEnabled:Z

    if-nez v1, :cond_26

    const/4 v1, 0x1

    :goto_a
    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->flashLightEnabled:Z

    .line 442
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 443
    .local v0, params:Landroid/hardware/Camera$Parameters;
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->flashLightEnabled:Z

    if-eqz v1, :cond_28

    .line 444
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 445
    const-string v1, "Turning on flash light in torch mode"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 450
    :goto_20
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_4

    .line 441
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :cond_26
    const/4 v1, 0x0

    goto :goto_a

    .line 447
    .restart local v0       #params:Landroid/hardware/Camera$Parameters;
    :cond_28
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 448
    const-string v1, "Turning off flash light in torch mode"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_20
.end method
