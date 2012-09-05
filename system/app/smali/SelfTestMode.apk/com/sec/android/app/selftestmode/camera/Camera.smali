.class public Lcom/sec/android/app/selftestmode/camera/Camera;
.super Landroid/app/Activity;
.source "Camera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/sec/android/app/selftestmode/camera/ShutterButton$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;,
        Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;,
        Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;,
        Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;,
        Lcom/sec/android/app/selftestmode/camera/Camera$JpegPictureCallback;,
        Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;,
        Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;,
        Lcom/sec/android/app/selftestmode/camera/Camera$ZoomListener;,
        Lcom/sec/android/app/selftestmode/camera/Camera$MainHandler;
    }
.end annotation


# static fields
.field private static final DIRECTORY_CAMERA_DATA:Ljava/lang/String;

.field private static final DIRECTORY_CAMERA_SDCARD:Ljava/lang/String;


# instance fields
.field private final DEFAULT_IMEI:Ljava/lang/String;

.field private final IMEI:Ljava/lang/String;

.field private bDoneDTP:Z

.field private bEnablePreviewCb:Z

.field private bSentAck:Z

.field private bUseSdcard:Z

.field private cameraType:I

.field public capturedData:[B

.field private filePath:Ljava/lang/String;

.field private mAutoFocusCallback:Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

.field private mCaptureStartTime:J

.field private mCurrentTime:J

.field private mErrorCallback:Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;

.field private mErrorPopup:Landroid/app/AlertDialog;

.field private mFlashEnable:I

.field private mFocusBlinkAnimation:Landroid/view/animation/Animation;

.field private mFocusCallbackTime:J

.field private mFocusRectangle:Lcom/sec/android/app/selftestmode/camera/FocusRectangle;

.field private mFocusStartTime:J

.field private mFocusState:I

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private mImageCapture:Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;

.field private mIsCaptureEnable:Z

.field private mIsPressedBackkey:Z

.field private mLastContentUri:Landroid/net/Uri;

.field private mMainHandler:Landroid/os/Handler;

.field private mOriginalViewFinderHeight:I

.field private mOriginalViewFinderWidth:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPausing:Z

.field private mPreviewCallback:Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;

.field private mPreviewing:Z

.field private mRawPictureCallback:Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShutterButton:Lcom/sec/android/app/selftestmode/camera/ShutterButton;

.field private mShutterCallback:Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field private mSmoothZoomSupported:Z

.field mStartCheck:Ljava/lang/Runnable;

.field private mStatus:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcom/sec/android/app/selftestmode/camera/VideoPreview;

.field protected mTimerHandler:Landroid/os/Handler;

.field private mViewFinderHeight:I

.field private mViewFinderWidth:I

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoomButtons:Landroid/widget/ZoomButtonsController;

.field private final mZoomListener:Lcom/sec/android/app/selftestmode/camera/Camera$ZoomListener;

.field private mZoomMax:I

.field private mZoomValue:I

.field private mZooming:Z

.field private ommisionTest:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/selftestmode/camera/Camera;->DIRECTORY_CAMERA_DATA:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/selftestmode/camera/Camera;->DIRECTORY_CAMERA_SDCARD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 165
    iput-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bEnablePreviewCb:Z

    .line 167
    iput-boolean v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bUseSdcard:Z

    .line 169
    iput-boolean v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bDoneDTP:Z

    .line 179
    iput-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZooming:Z

    .line 181
    iput-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSmoothZoomSupported:Z

    .line 189
    const-string v0, "ril.IMEI"

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->IMEI:Ljava/lang/String;

    .line 191
    const-string v0, "357858010034783"

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->DEFAULT_IMEI:Ljava/lang/String;

    .line 201
    iput-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 207
    iput-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mLastContentUri:Landroid/net/Uri;

    .line 209
    iput-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->filePath:Ljava/lang/String;

    .line 233
    new-instance v0, Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;Lcom/sec/android/app/selftestmode/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterCallback:Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;

    .line 235
    new-instance v0, Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;Lcom/sec/android/app/selftestmode/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mRawPictureCallback:Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;

    .line 237
    new-instance v0, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;Lcom/sec/android/app/selftestmode/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mAutoFocusCallback:Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;

    .line 239
    new-instance v0, Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorCallback:Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;

    .line 241
    new-instance v0, Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewCallback:Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;

    .line 257
    iput-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPausing:Z

    .line 259
    iput-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bSentAck:Z

    .line 263
    iput-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mImageCapture:Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;

    .line 277
    iput-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    .line 279
    iput v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    .line 281
    iput v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    .line 283
    iput v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFlashEnable:I

    .line 285
    iput-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->ommisionTest:Z

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    .line 293
    iput-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    .line 295
    new-instance v0, Lcom/sec/android/app/selftestmode/camera/Camera$ZoomListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/selftestmode/camera/Camera$ZoomListener;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;Lcom/sec/android/app/selftestmode/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomListener:Lcom/sec/android/app/selftestmode/camera/Camera$ZoomListener;

    .line 303
    iput-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mIsPressedBackkey:Z

    .line 305
    iput-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mIsCaptureEnable:Z

    .line 307
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCurrentTime:J

    .line 315
    new-instance v0, Lcom/sec/android/app/selftestmode/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/selftestmode/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;Lcom/sec/android/app/selftestmode/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;

    .line 507
    new-instance v0, Lcom/sec/android/app/selftestmode/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/selftestmode/camera/Camera$2;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2075
    new-instance v0, Lcom/sec/android/app/selftestmode/camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/selftestmode/camera/Camera$5;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    .line 2473
    new-instance v0, Lcom/sec/android/app/selftestmode/camera/Camera$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/selftestmode/camera/Camera$6;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/selftestmode/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/selftestmode/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$1004(Lcom/sec/android/app/selftestmode/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$1006(Lcom/sec/android/app/selftestmode/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/selftestmode/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomMax:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/selftestmode/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSmoothZoomSupported:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera;
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/selftestmode/camera/Camera;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/sec/android/app/selftestmode/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZooming:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/hardware/Camera$Parameters;
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/selftestmode/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/selftestmode/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/selftestmode/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/selftestmode/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureStartTime:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/selftestmode/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/selftestmode/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/selftestmode/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPausing:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->restartPreview()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/app/selftestmode/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bUseSdcard:Z

    return v0
.end method

.method static synthetic access$2200(J)Ljava/lang/String;
    .registers 3
    .parameter "x0"

    .prologue
    .line 153
    invoke-static {p0, p1}, Lcom/sec/android/app/selftestmode/camera/Camera;->createName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 153
    sget-object v0, Lcom/sec/android/app/selftestmode/camera/Camera;->DIRECTORY_CAMERA_SDCARD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/selftestmode/camera/Camera;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/selftestmode/camera/Camera;->writeImage(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$2502(Lcom/sec/android/app/selftestmode/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->filePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 153
    sget-object v0, Lcom/sec/android/app/selftestmode/camera/Camera;->DIRECTORY_CAMERA_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/selftestmode/camera/Camera;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/sec/android/app/selftestmode/camera/Camera;->dialogErrorPopup(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/selftestmode/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/selftestmode/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bDoneDTP:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/selftestmode/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bSentAck:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/sec/android/app/selftestmode/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bSentAck:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/selftestmode/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/selftestmode/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-wide p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/sec/android/app/selftestmode/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mImageCapture:Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/selftestmode/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    return v0
.end method

.method static synthetic access$3402(Lcom/sec/android/app/selftestmode/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    return p1
.end method

.method static synthetic access$3500(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->dialogFocusPopup()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->updateFocusIndicator()V

    return-void
.end method

.method static synthetic access$3800(Lcom/sec/android/app/selftestmode/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/sec/android/app/selftestmode/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterCallback:Lcom/sec/android/app/selftestmode/camera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mRawPictureCallback:Lcom/sec/android/app/selftestmode/camera/Camera$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorCallback:Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/android/app/selftestmode/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mIsPressedBackkey:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/sec/android/app/selftestmode/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mIsPressedBackkey:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/sec/android/app/selftestmode/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mIsCaptureEnable:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/sec/android/app/selftestmode/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mIsCaptureEnable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/selftestmode/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/selftestmode/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/selftestmode/camera/Camera;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/selftestmode/camera/Camera;)Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/selftestmode/camera/Camera;Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;)Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/selftestmode/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/selftestmode/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->isZooming()Z

    move-result v0

    return v0
.end method

.method private autoFocus()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 673
    const-string v0, "testCamera"

    const-string v1, "call autoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    if-eq v0, v2, :cond_27

    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_27

    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusStartTime:J

    .line 685
    iput v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    .line 687
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->updateFocusIndicator()V

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mAutoFocusCallback:Lcom/sec/android/app/selftestmode/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 697
    :cond_27
    return-void
.end method

.method private static checkFsWritable()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 3003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3007
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 3011
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 3041
    :cond_2d
    :goto_2d
    return v0

    .line 3019
    :cond_2e
    new-instance v2, Ljava/io/File;

    const-string v3, ".probe"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    :try_start_35
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 3027
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3031
    :cond_3e
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 3035
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_47} :catch_49

    .line 3037
    const/4 v0, 0x1

    goto :goto_2d

    .line 3039
    :catch_49
    move-exception v1

    goto :goto_2d
.end method

.method private clearFocusState()V
    .registers 2

    .prologue
    .line 615
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    .line 617
    return-void
.end method

.method private closeCamera()V
    .registers 3

    .prologue
    .line 1755
    const-string v0, "testCamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1d

    .line 1759
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 1763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    .line 1765
    const-string v0, "testCamera"

    const-string v1, "closeCamera : mPreviewing set false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_1d
    return-void
.end method

.method private static createName(J)Ljava/lang/String;
    .registers 3
    .parameter "dateTaken"

    .prologue
    .line 1047
    const-string v0, "yyyy-MM-dd kk.mm.ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dialogErrorPopup(I)V
    .registers 8
    .parameter "messageId"

    .prologue
    .line 1199
    const-string v1, "testCamera"

    const-string v2, "dialogFocusPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1205
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1209
    :cond_18
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.CAMERA_BAD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "TYPE"

    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TYPE"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1215
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bSentAck:Z

    .line 1219
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1225
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1229
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1231
    const v1, 0x7f080028

    new-instance v2, Lcom/sec/android/app/selftestmode/camera/Camera$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/selftestmode/camera/Camera$3;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1251
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    .line 1255
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1257
    return-void
.end method

.method private dialogFocusPopup()V
    .registers 6

    .prologue
    .line 3079
    const-string v0, "testCamera"

    const-string v1, "dialogFocusPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_64

    .line 3089
    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.AUTOFOCUS_BAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TYPE"

    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TYPE"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 3093
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3097
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3099
    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3101
    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3103
    const v1, 0x7f080028

    new-instance v2, Lcom/sec/android/app/selftestmode/camera/Camera$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/selftestmode/camera/Camera$8;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3123
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    .line 3127
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3131
    :cond_64
    return-void
.end method

.method private doFocus(Z)V
    .registers 5
    .parameter "pressed"

    .prologue
    .line 623
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFocus - pressed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cameraType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPreviewing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    if-eqz p1, :cond_57

    .line 627
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    if-eqz v0, :cond_3b

    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4d

    .line 631
    :cond_3b
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_43

    .line 633
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->autoFocus()V

    .line 667
    :cond_42
    :goto_42
    return-void

    .line 635
    :cond_43
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    if-eqz v0, :cond_42

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    invoke-interface {v0}, Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;->onSnap()V

    goto :goto_42

    .line 647
    :cond_4d
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    if-eqz v0, :cond_42

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    invoke-interface {v0}, Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;->onSnap()V

    goto :goto_42

    .line 657
    :cond_57
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_42

    .line 659
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->clearFocusState()V

    .line 661
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->updateFocusIndicator()V

    goto :goto_42
.end method

.method private doSnap()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 755
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSnap()- mFocusState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    if-ne v0, v3, :cond_25

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    invoke-interface {v0}, Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;->onSnap()V

    .line 807
    :cond_24
    :goto_24
    return-void

    .line 765
    :cond_25
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2e

    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    if-nez v0, :cond_3e

    .line 771
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    if-eqz v0, :cond_37

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    invoke-interface {v0}, Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;->onSnap()V

    .line 777
    :cond_37
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->clearFocusState()V

    .line 779
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->updateFocusIndicator()V

    goto :goto_24

    .line 781
    :cond_3e
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4b

    .line 783
    const-string v0, "testCamera"

    const-string v1, "doSnap()- FOCUS_FAIL : the shot is canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 785
    :cond_4b
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    if-ne v0, v3, :cond_5a

    .line 793
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    .line 795
    const-string v0, "testCamera"

    const-string v1, "doSnap()- FOCUSING : the shot is canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 797
    :cond_5a
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    if-nez v0, :cond_24

    .line 801
    const-string v0, "testCamera"

    const-string v1, "doSnap()- FOCUS_NOT_STARTED : the shot is canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private ensureCameraDevice()Z
    .registers 4

    .prologue
    .line 1797
    const-string v0, "testCamera"

    const-string v1, "ensureCameraDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_34

    .line 1801
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureCameraDevice:Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 1807
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorCallback:Lcom/sec/android/app/selftestmode/camera/Camera$ErrorCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1811
    :cond_34
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public static getAvailableSpaceSd()J
    .registers 10

    .prologue
    const-wide/16 v2, -0x1

    .line 995
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 997
    .local v5, state:Ljava/lang/String;
    const-string v6, "checking"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 999
    const-wide/16 v2, -0x2

    .line 1039
    :cond_10
    :goto_10
    return-wide v2

    .line 1003
    :cond_11
    const-string v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1011
    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/sec/android/app/selftestmode/camera/Camera;->DIRECTORY_CAMERA_SDCARD:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1013
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1015
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1025
    :try_start_2f
    new-instance v4, Landroid/os/StatFs;

    sget-object v6, Lcom/sec/android/app/selftestmode/camera/Camera;->DIRECTORY_CAMERA_SDCARD:Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v8, v8

    mul-long v2, v6, v8

    .line 1029
    .local v2, space:J
    const-string v6, "testCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAvailableSpaceSd : space ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5a} :catch_5b

    goto :goto_10

    .line 1033
    .end local v2           #space:J
    .end local v4           #stat:Landroid/os/StatFs;
    :catch_5b
    move-exception v1

    .line 1035
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "testCamera"

    const-string v7, "Fail to access external storage"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1039
    const-wide/16 v2, -0x3

    goto :goto_10
.end method

.method public static hasStorage()Z
    .registers 4

    .prologue
    .line 2975
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 2977
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasStorage - storage state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2983
    invoke-static {}, Lcom/sec/android/app/selftestmode/camera/Camera;->checkFsWritable()Z

    move-result v0

    .line 2985
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage writable is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    :goto_40
    return v0

    :cond_41
    const/4 v0, 0x0

    goto :goto_40
.end method

.method private initializeZoom()V
    .registers 4

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_9

    .line 485
    :goto_8
    return-void

    .line 395
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomMax:I

    .line 397
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max zoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSmoothZoomSupported:Z

    .line 401
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smooth zoom supported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSmoothZoomSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomListener:Lcom/sec/android/app/selftestmode/camera/Camera$ZoomListener;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 407
    new-instance v0, Landroid/widget/ZoomButtonsController;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSurfaceView:Lcom/sec/android/app/selftestmode/camera/VideoPreview;

    invoke-direct {v0, v1}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomButtons:Landroid/widget/ZoomButtonsController;

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomButtons:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setAutoDismissed(Z)V

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomButtons:Landroid/widget/ZoomButtonsController;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/widget/ZoomButtonsController;->setZoomSpeed(J)V

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomButtons:Landroid/widget/ZoomButtonsController;

    new-instance v1, Lcom/sec/android/app/selftestmode/camera/Camera$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/selftestmode/camera/Camera$1;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    goto :goto_8
.end method

.method private isZooming()Z
    .registers 4

    .prologue
    .line 489
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mZooming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZooming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZooming:Z

    return v0
.end method

.method private restartPreview()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2531
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSurfaceView:Lcom/sec/android/app/selftestmode/camera/VideoPreview;

    .line 2533
    .local v2, surfaceView:Lcom/sec/android/app/selftestmode/camera/VideoPreview;
    const/4 v1, 0x0

    .line 2535
    .local v1, previewWidth:I
    const/4 v0, 0x0

    .line 2539
    .local v0, previewHeight:I
    const/16 v1, 0x280

    .line 2541
    const/16 v0, 0x1e0

    .line 2545
    iget-object v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v3, :cond_29

    .line 2547
    iget v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    if-ne v3, v5, :cond_25

    .line 2549
    invoke-virtual {v2}, Lcom/sec/android/app/selftestmode/camera/VideoPreview;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/app/selftestmode/camera/VideoPreview;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/app/selftestmode/camera/Camera;->setViewFinder(IIZ)V

    .line 2573
    :goto_1c
    iput v5, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    .line 2575
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->clearFocusState()V

    .line 2577
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->updateFocusIndicator()V

    .line 2579
    return-void

    .line 2553
    :cond_25
    invoke-direct {p0, v1, v0, v5}, Lcom/sec/android/app/selftestmode/camera/Camera;->setViewFinder(IIZ)V

    goto :goto_1c

    .line 2559
    :cond_29
    iget v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    if-ne v3, v5, :cond_31

    .line 2561
    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/selftestmode/camera/VideoPreview;->setAspectRatio(II)V

    goto :goto_1c

    .line 2565
    :cond_31
    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/selftestmode/camera/VideoPreview;->setAspectRatio(II)V

    goto :goto_1c
.end method

.method private setViewFinder(IIZ)V
    .registers 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2585
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setViewFinder - w: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startPreview: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    iget-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPausing:Z

    if-eqz v1, :cond_3c

    .line 2589
    const-string v1, "testCamera"

    const-string v2, "setViewFinder - mPausing == true, return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    :cond_3b
    :goto_3b
    return-void

    .line 2597
    :cond_3c
    iget-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_96

    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mViewFinderWidth:I

    if-ne p1, v1, :cond_96

    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mViewFinderHeight:I

    move/from16 v0, p2

    if-ne v0, v1, :cond_96

    .line 2599
    const-string v1, "testCamera"

    const-string v2, "mPreviewing && w == mViewFinderWidth && h == mViewFinderHeight"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreviewing("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mViewFinderWidth("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mViewFinderWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mViewFinderHeight("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mViewFinderHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 2609
    :cond_96
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->ensureCameraDevice()Z

    move-result v1

    if-nez v1, :cond_a4

    .line 2611
    const-string v1, "testCamera"

    const-string v2, "!ensureCameraDevice()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 2619
    :cond_a4
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_b0

    .line 2621
    const-string v1, "testCamera"

    const-string v2, "mSurfaceHolder == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 2629
    :cond_b0
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 2631
    const-string v1, "testCamera"

    const-string v2, "isFinishing()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 2639
    :cond_bf
    iget-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPausing:Z

    if-eqz v1, :cond_cc

    .line 2641
    const-string v1, "testCamera"

    const-string v2, "setViewFinder - mPausing == true, return"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 2651
    :cond_cc
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set ViewFinderWidth("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    iput p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mViewFinderWidth:I

    .line 2657
    move/from16 v0, p2

    iput v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mViewFinderHeight:I

    .line 2659
    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mOriginalViewFinderHeight:I

    if-nez v1, :cond_130

    .line 2661
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set OriginalViewFinderWidth("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    iput p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mOriginalViewFinderWidth:I

    .line 2665
    move/from16 v0, p2

    iput v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mOriginalViewFinderHeight:I

    .line 2671
    :cond_130
    if-nez p3, :cond_13b

    .line 2673
    const-string v1, "testCamera"

    const-string v2, "startPreview == false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 2693
    :cond_13b
    iget-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    if-eqz v1, :cond_149

    .line 2695
    const-string v1, "testCamera"

    const-string v2, "mPreviewing == true, stopPreview()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->stopPreview()V

    .line 2707
    :cond_149
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2723
    move/from16 v0, p2

    if-ge p1, v0, :cond_29f

    .line 2731
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swapped dimensions W = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " H = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    :goto_179
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    move/from16 v0, p2

    invoke-virtual {v1, v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2739
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mParameters.setPreviewSize W = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " H = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    iget-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bDoneDTP:Z

    if-nez v1, :cond_26d

    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFlashEnable:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_26d

    .line 2747
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "chk_dataline"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2757
    :goto_1b5
    :try_start_1b5
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.setParameters(mParameters)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1c3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b5 .. :try_end_1c3} :catch_29c

    .line 2783
    :goto_1c3
    :try_start_1c3
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.setPreviewDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1d1
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1d1} :catch_277

    .line 2803
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2805
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v3

    .line 2809
    new-instance v5, Ljava/lang/Object;

    invoke-direct/range {v5 .. v5}, Ljava/lang/Object;-><init>()V

    .line 2811
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/sec/android/app/selftestmode/camera/Camera$7;

    invoke-direct {v7, p0, v5, v1, v2}, Lcom/sec/android/app/selftestmode/camera/Camera$7;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;Ljava/lang/Object;J)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2885
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2895
    :try_start_1eb
    const-string v6, "testCamera"

    const-string v7, "mCameraDevice.startPreview()"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    iget-boolean v6, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bEnablePreviewCb:Z

    if-eqz v6, :cond_1fd

    .line 2901
    iget-object v6, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewCallback:Lcom/sec/android/app/selftestmode/camera/Camera$PreviewCallback;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 2907
    :cond_1fd
    iget-object v6, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V
    :try_end_202
    .catch Ljava/lang/Throwable; {:try_start_1eb .. :try_end_202} :catch_289

    .line 2927
    iget-boolean v6, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bEnablePreviewCb:Z

    if-nez v6, :cond_216

    .line 2929
    iget-object v6, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2931
    iget-object v6, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2937
    :cond_216
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->startTimerCaptureBlock()V

    .line 2941
    const-string v6, "testCamera"

    const-string v7, "setViewFinder : set mPreviewing = true"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    .line 2945
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZooming:Z

    .line 2947
    monitor-enter v5

    .line 2949
    :try_start_227
    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 2951
    monitor-exit v5
    :try_end_22b
    .catchall {:try_start_227 .. :try_end_22b} :catchall_299

    .line 2955
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v5

    .line 2957
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 2959
    sub-long v9, v7, v1

    const-wide/16 v11, 0xbb8

    cmp-long v9, v9, v11

    if-lez v9, :cond_3b

    .line 2961
    const-string v9, "testCamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startPreview() to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v1, v7, v1

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms. Thread time was"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v5, v3

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 2751
    :cond_26d
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "chk_dataline"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1b5

    .line 2787
    :catch_277
    move-exception v1

    .line 2789
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.setPreviewDisplay exception!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 2793
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    goto/16 :goto_3b

    .line 2909
    :catch_289
    move-exception v1

    .line 2917
    const-string v2, "testCamera"

    const-string v3, "exception while startPreview"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2919
    const v1, 0x7f080030

    invoke-direct {p0, v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->dialogErrorPopup(I)V

    goto/16 :goto_3b

    .line 2951
    :catchall_299
    move-exception v1

    :try_start_29a
    monitor-exit v5
    :try_end_29b
    .catchall {:try_start_29a .. :try_end_29b} :catchall_299

    throw v1

    .line 2761
    :catch_29c
    move-exception v1

    goto/16 :goto_1c3

    :cond_29f
    move/from16 v13, p2

    move/from16 p2, p1

    move p1, v13

    goto/16 :goto_179
.end method

.method private stopPreview()V
    .registers 3

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_d

    .line 1781
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1785
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    .line 1787
    const-string v0, "testCamera"

    const-string v1, "stopPreview : mPreviewing set false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->clearFocusState()V

    .line 1791
    return-void
.end method

.method private updateFocusIndicator()V
    .registers 3

    .prologue
    .line 3051
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusRectangle:Lcom/sec/android/app/selftestmode/camera/FocusRectangle;

    if-nez v0, :cond_5

    .line 3073
    :goto_4
    return-void

    .line 3055
    :cond_5
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 3057
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusRectangle:Lcom/sec/android/app/selftestmode/camera/FocusRectangle;

    invoke-virtual {v0}, Lcom/sec/android/app/selftestmode/camera/FocusRectangle;->showStart()V

    goto :goto_4

    .line 3059
    :cond_15
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 3061
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusRectangle:Lcom/sec/android/app/selftestmode/camera/FocusRectangle;

    invoke-virtual {v0}, Lcom/sec/android/app/selftestmode/camera/FocusRectangle;->showSuccess()V

    goto :goto_4

    .line 3063
    :cond_20
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    .line 3065
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusRectangle:Lcom/sec/android/app/selftestmode/camera/FocusRectangle;

    invoke-virtual {v0}, Lcom/sec/android/app/selftestmode/camera/FocusRectangle;->showFail()V

    goto :goto_4

    .line 3069
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusRectangle:Lcom/sec/android/app/selftestmode/camera/FocusRectangle;

    invoke-virtual {v0}, Lcom/sec/android/app/selftestmode/camera/FocusRectangle;->clear()V

    goto :goto_4
.end method

.method private updateZoomButtonsEnabled()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 499
    iget-object v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomButtons:Landroid/widget/ZoomButtonsController;

    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    iget v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomMax:I

    if-ge v0, v4, :cond_18

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomButtons:Landroid/widget/ZoomButtonsController;

    iget v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    if-lez v3, :cond_1a

    :goto_14
    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    .line 503
    return-void

    :cond_18
    move v0, v2

    .line 499
    goto :goto_b

    :cond_1a
    move v1, v2

    .line 501
    goto :goto_14
.end method

.method private writeImage(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 13
    .parameter "directory"
    .parameter "filename"
    .parameter "jpegData"

    .prologue
    .line 1059
    const-string v6, "testCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeImage : directory = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v3, 0x0

    .line 1063
    .local v3, outputStream:Ljava/io/OutputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->filePath:Ljava/lang/String;

    .line 1069
    :try_start_32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 1075
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1077
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1079
    .local v5, redir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1083
    .end local v5           #redir:Ljava/io/File;
    :cond_48
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_51

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1085
    :cond_51
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5b
    .catchall {:try_start_32 .. :try_end_5b} :catchall_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_5b} :catch_66
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_5b} :catch_72

    .line 1089
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .local v4, outputStream:Ljava/io/OutputStream;
    :try_start_5b
    invoke-virtual {v4, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_85
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_5e} :catch_8b
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_88

    .line 1103
    :try_start_5e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_63

    move-object v3, v4

    .line 1113
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    :goto_62
    return-void

    .line 1105
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :catch_63
    move-exception v6

    move-object v3, v4

    .line 1111
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    goto :goto_62

    .line 1091
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    :catch_66
    move-exception v1

    .line 1093
    .local v1, ex:Ljava/io/FileNotFoundException;
    :goto_67
    :try_start_67
    const-string v6, "testCamera"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_7e

    .line 1103
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_62

    .line 1105
    :catch_70
    move-exception v6

    goto :goto_62

    .line 1095
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :catch_72
    move-exception v1

    .line 1097
    .local v1, ex:Ljava/io/IOException;
    :goto_73
    :try_start_73
    const-string v6, "testCamera"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_7e

    .line 1103
    :try_start_78
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_62

    .line 1105
    :catch_7c
    move-exception v6

    goto :goto_62

    .line 1101
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_7e
    move-exception v6

    .line 1103
    :goto_7f
    :try_start_7f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 1109
    :goto_82
    throw v6

    .line 1105
    :catch_83
    move-exception v7

    goto :goto_82

    .line 1101
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :catchall_85
    move-exception v6

    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    goto :goto_7f

    .line 1095
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :catch_88
    move-exception v1

    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    goto :goto_73

    .line 1091
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :catch_8b
    move-exception v1

    move-object v3, v4

    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    goto :goto_67
.end method


# virtual methods
.method public onCheckDataLineDone()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1407
    const-string v1, "testCamera"

    const-string v2, "onChkDataLineDone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iput-boolean v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bDoneDTP:Z

    .line 1415
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1417
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "chk_dataline"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->stopPreview()V

    .line 1427
    :try_start_1e
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.setParameters(mParameters)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_2c} :catch_4b

    .line 1441
    :goto_2c
    :try_start_2c
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.startPreview()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_38} :catch_42

    .line 1459
    :goto_38
    iput-boolean v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPreviewing:Z

    .line 1461
    const-string v1, "testCamera"

    const-string v2, "onChkDataLineDone : mPreviewing set true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    return-void

    .line 1445
    :catch_42
    move-exception v0

    .line 1453
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "testCamera"

    const-string v2, "exception while startPreview"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 1431
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_4b
    move-exception v1

    goto :goto_2c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1823
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1827
    const-string v0, "testCamera"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    .line 1831
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ommision_test"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->ommisionTest:Z

    .line 1833
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "torch_on"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFlashEnable:I

    .line 1835
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate : cameraType["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ommisionTest["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->ommisionTest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mFlashEnable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFlashEnable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iput-boolean v5, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bDoneDTP:Z

    .line 1843
    iput-boolean v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bEnablePreviewCb:Z

    .line 1845
    iput-boolean v5, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bUseSdcard:Z

    .line 1849
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/app/selftestmode/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/selftestmode/camera/Camera$4;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1869
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1873
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1875
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1877
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->setContentView(I)V

    .line 1879
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1881
    const/16 v2, 0x1a

    const-string v3, "testCamera"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1883
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/selftestmode/camera/VideoPreview;

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSurfaceView:Lcom/sec/android/app/selftestmode/camera/VideoPreview;

    .line 1893
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSurfaceView:Lcom/sec/android/app/selftestmode/camera/VideoPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/selftestmode/camera/VideoPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1895
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1897
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1901
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/selftestmode/camera/ShutterButton;

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterButton:Lcom/sec/android/app/selftestmode/camera/ShutterButton;

    .line 1903
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterButton:Lcom/sec/android/app/selftestmode/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->setOnShutterButtonListener(Lcom/sec/android/app/selftestmode/camera/ShutterButton$OnShutterButtonListener;)V

    .line 1907
    invoke-static {}, Lcom/sec/android/app/selftestmode/camera/Camera;->hasStorage()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 1909
    const v0, 0x7f08002a

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1911
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterButton:Lcom/sec/android/app/selftestmode/camera/ShutterButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->setVisibility(I)V

    .line 1917
    :cond_dc
    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusBlinkAnimation:Landroid/view/animation/Animation;

    .line 1919
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusBlinkAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1921
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusBlinkAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 1929
    :try_start_ef
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_f2
    .catch Ljava/lang/InterruptedException; {:try_start_ef .. :try_end_f2} :catch_11a

    .line 1937
    :goto_f2
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1939
    iput v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    .line 1941
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->initializeZoom()V

    .line 1945
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 1947
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1953
    :cond_10e
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/selftestmode/camera/FocusRectangle;

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusRectangle:Lcom/sec/android/app/selftestmode/camera/FocusRectangle;

    .line 1955
    return-void

    .line 1931
    :catch_11a
    move-exception v0

    goto :goto_f2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v0, 0x1

    .line 2175
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2177
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 2181
    sparse-switch p1, :sswitch_data_172

    .line 2423
    :cond_19
    :goto_19
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1d
    :goto_1d
    :sswitch_1d
    return v0

    .line 2199
    :sswitch_1e
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_1d

    .line 2203
    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    if-ne v1, v0, :cond_2a

    .line 2205
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->doSnap()V

    goto :goto_1d

    .line 2211
    :cond_2a
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2213
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1d

    .line 2221
    :sswitch_3d
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_1d

    .line 2227
    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    if-eq v1, v0, :cond_1d

    .line 2235
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mZoomValue:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2237
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1d

    .line 2247
    :sswitch_58
    iget-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->ommisionTest:Z

    if-eqz v1, :cond_94

    .line 2249
    iget-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mIsPressedBackkey:Z

    if-nez v1, :cond_70

    .line 2251
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2253
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCurrentTime:J

    .line 2255
    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mIsPressedBackkey:Z

    .line 2257
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->startTimer()V

    goto :goto_1d

    .line 2265
    :cond_70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mIsPressedBackkey:Z

    .line 2267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2269
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCurrentTime:J

    const-wide/16 v5, 0x7d0

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_19

    .line 2271
    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    if-eq v1, v7, :cond_1d

    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    if-eq v1, v9, :cond_1d

    .line 2285
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2287
    invoke-virtual {p0, v8, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->setResult(ILandroid/content/Intent;)V

    goto :goto_19

    .line 2299
    :cond_94
    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    if-eq v1, v7, :cond_1d

    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    if-eq v1, v9, :cond_1d

    .line 2313
    invoke-virtual {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2315
    invoke-virtual {p0, v8, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_19

    .line 2329
    :sswitch_a5
    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    if-eq v1, v0, :cond_b1

    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    if-eq v1, v7, :cond_b1

    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    if-ne v1, v7, :cond_d9

    .line 2337
    :cond_b1
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore KEYCODE_FOCUS - mFocusState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 2343
    :cond_d9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1d

    .line 2345
    invoke-direct {p0, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->doFocus(Z)V

    goto/16 :goto_1d

    .line 2353
    :sswitch_e4
    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    if-ne v1, v7, :cond_110

    .line 2357
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore KEYCODE_CAMERA - mFocusState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 2363
    :cond_110
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1d

    .line 2365
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->doSnap()V

    goto/16 :goto_1d

    .line 2373
    :sswitch_11b
    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    if-eq v1, v0, :cond_127

    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    if-eq v1, v7, :cond_127

    iget v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    if-ne v1, v7, :cond_14f

    .line 2381
    :cond_127
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore KEYCODE_DPAD_CENTER - mFocusState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 2391
    :cond_14f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1d

    .line 2401
    invoke-direct {p0, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->doFocus(Z)V

    .line 2403
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterButton:Lcom/sec/android/app/selftestmode/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_16c

    .line 2405
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterButton:Lcom/sec/android/app/selftestmode/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 2413
    :goto_165
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterButton:Lcom/sec/android/app/selftestmode/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->setPressed(Z)V

    goto/16 :goto_1d

    .line 2409
    :cond_16c
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mShutterButton:Lcom/sec/android/app/selftestmode/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->requestFocus()Z

    goto :goto_165

    .line 2181
    :sswitch_data_172
    .sparse-switch
        0x4 -> :sswitch_58
        0x5 -> :sswitch_1d
        0x17 -> :sswitch_11b
        0x18 -> :sswitch_3d
        0x19 -> :sswitch_1e
        0x1b -> :sswitch_e4
        0x50 -> :sswitch_a5
        0x52 -> :sswitch_1d
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2433
    sparse-switch p1, :sswitch_data_e

    .line 2467
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    :sswitch_8
    return v0

    .line 2437
    :sswitch_9
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/selftestmode/camera/Camera;->doFocus(Z)V

    goto :goto_8

    .line 2433
    :sswitch_data_e
    .sparse-switch
        0x5 -> :sswitch_8
        0x18 -> :sswitch_8
        0x19 -> :sswitch_8
        0x50 -> :sswitch_9
        0x52 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2117
    const-string v0, "testCamera"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPausing:Z

    .line 2123
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2127
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2129
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2135
    :cond_1f
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->stopPreview()V

    .line 2137
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->closeCamera()V

    .line 2141
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2143
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2147
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2151
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_46

    .line 2153
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 2155
    iput-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 2161
    :cond_46
    const-string v0, "testCamera"

    const-string v1, "mImageCapture = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    iput-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mImageCapture:Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;

    .line 2167
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2169
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1963
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1965
    const-string v0, "testCamera"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iput-boolean v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->bSentAck:Z

    .line 1973
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1975
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1979
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1981
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1985
    iput-boolean v4, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPausing:Z

    .line 1991
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1993
    const-string v1, "com.android.samsungtest.CameraStop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1997
    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2001
    new-instance v0, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;

    invoke-direct {v0, p0}, Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;-><init>(Lcom/sec/android/app/selftestmode/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mImageCapture:Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;

    .line 2005
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->ensureCameraDevice()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2007
    const-string v0, "testCamera"

    const-string v1, "onResume() - ensureCameraDevice is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    :goto_4e
    return-void

    .line 2015
    :cond_4f
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2019
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->cameraType:I

    if-nez v0, :cond_ae

    .line 2021
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFlashEnable:I

    if-ne v0, v5, :cond_a4

    .line 2023
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "torch"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    const-string v0, "testCamera"

    const-string v1, "flash-mode is FLASH_TORCH"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    :goto_6f
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2047
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->restartPreview()V

    .line 2051
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->updateFocusIndicator()V

    .line 2057
    :try_start_7c
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x1

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    :try_end_86
    .catch Ljava/lang/RuntimeException; {:try_start_7c .. :try_end_86} :catch_87

    goto :goto_4e

    .line 2061
    :catch_87
    move-exception v0

    .line 2063
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while creating local tone generator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_4e

    .line 2031
    :cond_a4
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    .line 2037
    :cond_ae
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "flash-mode"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f
.end method

.method public onShutterButtonClick(Lcom/sec/android/app/selftestmode/camera/ShutterButton;)V
    .registers 5
    .parameter "button"

    .prologue
    .line 703
    const-string v0, "testCamera"

    const-string v1, "call onShutterButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_c

    .line 743
    :goto_b
    return-void

    .line 713
    :cond_c
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    .line 717
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore onShutterButtonClick - mFocusState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 725
    :cond_38
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mIsCaptureEnable:Z

    if-nez v0, :cond_44

    .line 727
    const-string v0, "testCamera"

    const-string v1, "mIsCaptureEnble is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 733
    :cond_44
    invoke-virtual {p1}, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    goto :goto_b

    .line 737
    :pswitch_4c
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->doSnap()V

    goto :goto_b

    .line 733
    :pswitch_data_50
    .packed-switch 0x7f090004
        :pswitch_4c
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/sec/android/app/selftestmode/camera/ShutterButton;Z)V
    .registers 6
    .parameter "button"
    .parameter "pressed"

    .prologue
    const/4 v2, 0x2

    .line 537
    const-string v0, "testCamera"

    const-string v1, "call onShutterButtonFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_d

    .line 579
    :goto_c
    return-void

    .line 545
    :cond_d
    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    if-eq v0, v2, :cond_1a

    iget v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    if-ne v0, v2, :cond_41

    .line 551
    :cond_1a
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore onShutterButtonFocus - mFocusState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 559
    :cond_41
    iget-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mIsCaptureEnable:Z

    if-nez v0, :cond_4d

    .line 561
    const-string v0, "testCamera"

    const-string v1, "mIsCaptureEnble is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 569
    :cond_4d
    invoke-virtual {p1}, Lcom/sec/android/app/selftestmode/camera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    goto :goto_c

    .line 573
    :pswitch_55
    invoke-direct {p0, p2}, Lcom/sec/android/app/selftestmode/camera/Camera;->doFocus(Z)V

    goto :goto_c

    .line 569
    nop

    :pswitch_data_5a
    .packed-switch 0x7f090004
        :pswitch_55
    .end packed-switch
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 2099
    const-string v0, "testCamera"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->stopPreview()V

    .line 2103
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->closeCamera()V

    .line 2105
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2107
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2109
    return-void
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2513
    return-void
.end method

.method protected startTimerCaptureBlock()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 2519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mIsCaptureEnable:Z

    .line 2521
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2523
    iget-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2525
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 10
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1671
    const-string v2, "testCamera"

    const-string v3, "surfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    if-ge p3, p4, :cond_2e

    .line 1679
    move v1, p3

    .line 1681
    .local v1, tmp_swp:I
    move p3, p4

    .line 1683
    move p4, v1

    .line 1685
    const-string v2, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "swap - w : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    .end local v1           #tmp_swp:I
    :cond_2e
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSurfaceView:Lcom/sec/android/app/selftestmode/camera/VideoPreview;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/selftestmode/camera/VideoPreview;->setVisibility(I)V

    .line 1695
    const/4 v0, 0x1

    .line 1711
    .local v0, preview:Z
    iget v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mOriginalViewFinderWidth:I

    if-nez v2, :cond_3d

    .line 1713
    iput p3, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mOriginalViewFinderWidth:I

    .line 1715
    iput p4, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mOriginalViewFinderHeight:I

    .line 1719
    :cond_3d
    invoke-direct {p0, p3, p4, v0}, Lcom/sec/android/app/selftestmode/camera/Camera;->setViewFinder(IIZ)V

    .line 1725
    iget-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mImageCapture:Lcom/sec/android/app/selftestmode/camera/Camera$ImageCapture;

    iput-object v2, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mCaptureObject:Lcom/sec/android/app/selftestmode/camera/Interface/Capturer;

    .line 1727
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 1733
    const-string v0, "testCamera"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    iput-object p1, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1737
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 1743
    const-string v0, "testCamera"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    invoke-direct {p0}, Lcom/sec/android/app/selftestmode/camera/Camera;->stopPreview()V

    .line 1747
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/selftestmode/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1749
    return-void
.end method
