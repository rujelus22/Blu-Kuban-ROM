.class public Lcom/google/android/apps/plus/hangout/VideoCapturer;
.super Ljava/lang/Object;
.source "VideoCapturer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private volatile frameRotationBeforeDisplaying:I

.field private volatile frameRotationBeforeSending:I

.field private final holder:Landroid/view/SurfaceHolder;

.field private final host:Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;

.field private volatile isCapturing:Z

.field private isSurfaceReady:Z

.field private final nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

.field private volatile previewFrameHeight:I

.field private volatile previewFrameWidth:I

.field private startCapturingWhenSurfaceReady:Z

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
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
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->context:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    .line 73
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->holder:Landroid/view/SurfaceHolder;

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 78
    iput-object p4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->host:Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;

    .line 79
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->windowManager:Landroid/view/WindowManager;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->deviceRotation:I

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/VideoCapturer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/VideoCapturer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->deviceOrientationChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/VideoCapturer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->configureCamera()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/hangout/VideoCapturer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeSending:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/hangout/VideoCapturer;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->nativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/hangout/VideoCapturer;)Landroid/hardware/Camera;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method private computeRotation()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 237
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->deviceRotation:I

    .line 239
    iget v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->deviceRotation:I

    packed-switch v2, :pswitch_data_94

    .line 253
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid value of deviceOrientation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :pswitch_1c
    const/4 v1, 0x0

    .line 275
    .local v1, deviceOrientationDegrees:I
    :goto_1d
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Compatibility;->getCameraOrientation(Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)I

    move-result v0

    .line 277
    .local v0, cameraOrientation:I
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;->isFrontFacing()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 286
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Compatibility;->isCameraCallbackFrameMirrored(Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 289
    add-int v2, v1, v0

    rem-int/lit16 v2, v2, 0x168

    rsub-int v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeSending:I

    .line 296
    :goto_3d
    add-int v2, v1, v0

    rem-int/lit16 v2, v2, 0x168

    rsub-int v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeDisplaying:I

    .line 306
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

    .line 308
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

    .line 310
    return-void

    .line 244
    .end local v0           #cameraOrientation:I
    .end local v1           #deviceOrientationDegrees:I
    :pswitch_72
    const/16 v1, 0x5a

    .line 245
    .restart local v1       #deviceOrientationDegrees:I
    goto :goto_1d

    .line 247
    .end local v1           #deviceOrientationDegrees:I
    :pswitch_75
    const/16 v1, 0xb4

    .line 248
    .restart local v1       #deviceOrientationDegrees:I
    goto :goto_1d

    .line 250
    .end local v1           #deviceOrientationDegrees:I
    :pswitch_78
    const/16 v1, 0x10e

    .line 251
    .restart local v1       #deviceOrientationDegrees:I
    goto :goto_1d

    .line 293
    .restart local v0       #cameraOrientation:I
    :cond_7b
    add-int v2, v0, v1

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeSending:I

    goto :goto_3d

    .line 300
    :cond_82
    sub-int v2, v0, v1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeSending:I

    .line 302
    sub-int v2, v0, v1

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeDisplaying:I

    goto :goto_47

    .line 239
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
    .registers 18

    .prologue
    .line 110
    const-string v12, "*** configureCamera"

    invoke-static {v12}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 112
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v12, v13}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_88

    .line 120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->configureCameraCaptureParameters(Landroid/hardware/Camera;Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)Landroid/hardware/Camera$Parameters;

    move-result-object v10

    .line 121
    .local v10, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 122
    .local v11, size:Landroid/hardware/Camera$Size;
    const-string v12, "Setting camera preview size to %d x %d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget v15, v11, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    iget v15, v11, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    const/16 v12, 0x11

    invoke-static {v12}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v12

    int-to-long v3, v12

    .line 128
    .local v3, bitsPerPixel:J
    iget v12, v11, Landroid/hardware/Camera$Size;->width:I

    iget v13, v11, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v12, v13

    int-to-long v12, v12

    mul-long v1, v12, v3

    .line 129
    .local v1, bitsPerFrame:J
    const-wide/16 v12, 0x7

    add-long/2addr v12, v1

    const-wide/16 v14, 0x8

    div-long/2addr v12, v14

    long-to-int v5, v12

    .line 130
    .local v5, bufferSize:I
    const-string v12, "BitsPerPixel: %d BitsPerFrame: %d BufferSize: %d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 133
    const/4 v7, 0x0

    .local v7, i:I
    :goto_76
    const/16 v12, 0xa

    if-ge v7, v12, :cond_9b

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    add-int/lit16 v13, v5, 0x400

    new-array v13, v13, [B

    invoke-virtual {v12, v13}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 133
    add-int/lit8 v7, v7, 0x1

    goto :goto_76

    .line 113
    .end local v1           #bitsPerFrame:J
    .end local v3           #bitsPerPixel:J
    .end local v5           #bufferSize:I
    .end local v7           #i:I
    .end local v10           #params:Landroid/hardware/Camera$Parameters;
    .end local v11           #size:Landroid/hardware/Camera$Size;
    :catch_88
    move-exception v6

    .line 114
    .local v6, e:Ljava/io/IOException;
    const-string v12, "setPreviewDisplay failed.  Ignoring, but video capture is disabled"

    invoke-static {v12}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v12}, Landroid/hardware/Camera;->release()V

    .line 116
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    .line 198
    .end local v6           #e:Ljava/io/IOException;
    :cond_9a
    :goto_9a
    return-void

    .line 138
    .restart local v1       #bitsPerFrame:J
    .restart local v3       #bitsPerPixel:J
    .restart local v5       #bufferSize:I
    .restart local v7       #i:I
    .restart local v10       #params:Landroid/hardware/Camera$Parameters;
    .restart local v11       #size:Landroid/hardware/Camera$Size;
    :cond_9b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    new-instance v13, Lcom/google/android/apps/plus/hangout/VideoCapturer$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer$1;-><init>(Lcom/google/android/apps/plus/hangout/VideoCapturer;)V

    invoke-virtual {v12, v13}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->computeRotation()V

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeDisplaying:I

    invoke-virtual {v12, v13}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 176
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameWidth:I

    .line 177
    .local v9, oldPreviewFrameWidth:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameHeight:I

    .line 179
    .local v8, oldPreviewFrameHeight:I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->frameRotationBeforeDisplaying:I

    sparse-switch v12, :sswitch_data_106

    .line 192
    :goto_c6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameWidth:I

    if-ne v12, v9, :cond_d2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameHeight:I

    if-eq v12, v8, :cond_9a

    .line 194
    :cond_d2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->context:Landroid/content/Context;

    const/16 v13, 0xcc

    new-instance v14, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameHeight:I

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/google/android/apps/plus/hangout/RectangleDimensions;-><init>(II)V

    invoke-static {v12, v13, v14}, Lcom/google/android/apps/plus/hangout/GCommApp;->sendObjectMessage(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_9a

    .line 182
    :sswitch_eb
    iget v12, v11, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameWidth:I

    .line 183
    iget v12, v11, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameHeight:I

    goto :goto_c6

    .line 187
    :sswitch_f8
    iget v12, v11, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameWidth:I

    .line 188
    iget v12, v11, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameHeight:I

    goto :goto_c6

    .line 179
    nop

    :sswitch_data_106
    .sparse-switch
        0x0 -> :sswitch_eb
        0x5a -> :sswitch_f8
        0xb4 -> :sswitch_eb
        0x10e -> :sswitch_f8
    .end sparse-switch
.end method

.method private static configureCameraCaptureParameters(Landroid/hardware/Camera;Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)Landroid/hardware/Camera$Parameters;
    .registers 14
    .parameter "camera"
    .parameter "cameraProperties"

    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 437
    .local v4, params:Landroid/hardware/Camera$Parameters;
    const/4 v0, 0x0

    .line 438
    .local v0, bestMatchSize:Landroid/hardware/Camera$Size;
    invoke-static {v4, p1}, Lcom/google/android/apps/plus/hangout/Compatibility;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 439
    .local v5, size:Landroid/hardware/Camera$Size;
    invoke-static {v5}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->getMisMatchArea(Landroid/hardware/Camera$Size;)J

    move-result-wide v6

    .line 440
    .local v6, thisSizeDelta:J
    const-string v8, "Supported camera preview size: %d x %d x %d. mismatch area=%d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget v11, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    if-nez v0, :cond_4d

    .line 443
    move-object v0, v5

    goto :goto_d

    .line 445
    :cond_4d
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->getMisMatchArea(Landroid/hardware/Camera$Size;)J

    move-result-wide v1

    .line 446
    .local v1, bestMatchSizeDelta:J
    cmp-long v8, v6, v1

    if-gez v8, :cond_d

    .line 447
    move-object v0, v5

    goto :goto_d

    .line 452
    .end local v1           #bestMatchSizeDelta:J
    .end local v5           #size:Landroid/hardware/Camera$Size;
    .end local v6           #thisSizeDelta:J
    :cond_57
    const/16 v8, 0x11

    invoke-virtual {v4, v8}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 453
    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v8, v9}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 454
    invoke-virtual {p0, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 455
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    return-object v8
.end method

.method private deviceOrientationChanged()Z
    .registers 3

    .prologue
    .line 101
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

.method private static getMisMatchArea(Landroid/hardware/Camera$Size;)J
    .registers 8
    .parameter "size"

    .prologue
    const-wide/16 v5, 0xb4

    const-wide/16 v3, 0x87

    const/16 v2, 0xb4

    const/16 v1, 0x87

    .line 380
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    if-gt v0, v2, :cond_21

    iget v0, p0, Landroid/hardware/Camera$Size;->height:I

    if-gt v0, v1, :cond_21

    .line 389
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    rsub-int v0, v0, 0xb4

    int-to-long v0, v0

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    rsub-int v2, v2, 0x87

    int-to-long v2, v2

    mul-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 428
    :goto_20
    return-wide v0

    .line 391
    :cond_21
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    if-le v0, v2, :cond_3a

    iget v0, p0, Landroid/hardware/Camera$Size;->height:I

    if-le v0, v1, :cond_3a

    .line 402
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    add-int/lit16 v0, v0, -0xb4

    int-to-long v0, v0

    mul-long/2addr v0, v3

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    add-int/lit16 v2, v2, -0x87

    int-to-long v2, v2

    iget v4, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_20

    .line 404
    :cond_3a
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    if-le v0, v2, :cond_5d

    .line 413
    sget-boolean v0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->$assertionsDisabled:Z

    if-nez v0, :cond_4c

    iget v0, p0, Landroid/hardware/Camera$Size;->height:I

    if-le v0, v1, :cond_4c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 414
    :cond_4c
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    add-int/lit16 v0, v0, -0xb4

    int-to-long v0, v0

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    rsub-int v2, v2, 0x87

    int-to-long v2, v2

    mul-long/2addr v2, v5

    add-long/2addr v0, v2

    goto :goto_20

    .line 427
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

    .line 428
    :cond_6f
    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    rsub-int v0, v0, 0xb4

    int-to-long v0, v0

    mul-long/2addr v0, v3

    iget v2, p0, Landroid/hardware/Camera$Size;->height:I

    add-int/lit16 v2, v2, -0x87

    int-to-long v2, v2

    iget v4, p0, Landroid/hardware/Camera$Size;->width:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_20
.end method

.method public static getSizeOfCapturedFrames(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)Landroid/hardware/Camera$Size;
    .registers 11
    .parameter "type"

    .prologue
    .line 468
    :try_start_0
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/Cameras;->open(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_32

    move-result-object v2

    .line 474
    .local v2, cameraResult:Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 475
    .local v0, camera:Landroid/hardware/Camera;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;->getProperties()Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    move-result-object v1

    .line 476
    .local v1, cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->configureCameraCaptureParameters(Landroid/hardware/Camera;Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;)Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 477
    .local v4, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 478
    .local v5, size:Landroid/hardware/Camera$Size;
    const-string v6, "Size of captured frames %d x %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/hangout/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 480
    .end local v0           #camera:Landroid/hardware/Camera;
    .end local v1           #cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;
    .end local v2           #cameraResult:Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;
    .end local v4           #params:Landroid/hardware/Camera$Parameters;
    .end local v5           #size:Landroid/hardware/Camera$Size;
    :goto_31
    return-object v5

    .line 469
    :catch_32
    move-exception v3

    .line 470
    .local v3, e:Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error opening camera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 471
    const/4 v5, 0x0

    goto :goto_31
.end method

.method private startCapturing()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 207
    monitor-enter p0

    .line 208
    :try_start_3
    iget-boolean v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    if-eqz v4, :cond_9

    .line 209
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_28

    .line 232
    :goto_8
    return v2

    .line 213
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    invoke-static {v4}, Lcom/google/android/apps/plus/hangout/Cameras;->open(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;

    move-result-object v1

    .line 215
    .local v1, result:Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;->getCamera()Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    .line 216
    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;->getProperties()Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraProperties:Lcom/google/android/apps/plus/hangout/Cameras$CameraProperties;

    .line 217
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->configureCamera()V

    .line 218
    iget-object v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V

    .line 219
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_28
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_26} :catch_2b

    .line 230
    :try_start_26
    monitor-exit p0

    goto :goto_8

    .end local v1           #result:Lcom/google/android/apps/plus/hangout/Cameras$CameraResult;
    :catchall_28
    move-exception v2

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_28

    throw v2

    .line 221
    :catch_2b
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_2c
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_3b

    .line 223
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 224
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    .line 225
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    .line 227
    :cond_3b
    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->host:Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;

    invoke-interface {v2, v0}, Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;->onCameraOpenError(Ljava/lang/RuntimeException;)V

    .line 228
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_28

    move v2, v3

    goto :goto_8
.end method

.method private stopCapturing()V
    .registers 2

    .prologue
    .line 318
    const-string v0, "*** stopCapturing"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 321
    monitor-enter p0

    .line 322
    :try_start_6
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    if-eqz v0, :cond_20

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 324
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->camera:Landroid/hardware/Camera;

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameWidth:I

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->previewFrameHeight:I

    .line 330
    :cond_20
    monitor-exit p0

    .line 331
    return-void

    .line 330
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw v0
.end method


# virtual methods
.method public start(Lcom/google/android/apps/plus/hangout/Cameras$CameraType;)V
    .registers 3
    .parameter "cameraType"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->cameraType:Lcom/google/android/apps/plus/hangout/Cameras$CameraType;

    .line 92
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isSurfaceReady:Z

    if-eqz v0, :cond_d

    .line 93
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->startCapturing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 98
    :goto_c
    return-void

    .line 97
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->startCapturingWhenSurfaceReady:Z

    goto :goto_c
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stopCapturing()V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->startCapturingWhenSurfaceReady:Z

    .line 315
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isSurfaceReady:Z

    .line 343
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->startCapturingWhenSurfaceReady:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isCapturing:Z

    if-nez v0, :cond_e

    .line 344
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->startCapturing()Z

    .line 346
    :cond_e
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter "holder"

    .prologue
    .line 355
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer;->isSurfaceReady:Z

    .line 364
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer;->stopCapturing()V

    .line 365
    return-void
.end method
