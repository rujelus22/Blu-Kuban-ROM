.class public Lcom/android/samsungtest/camera/Camera;
.super Landroid/app/Activity;
.source "Camera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/samsungtest/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/camera/Camera$ImageCapture;,
        Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;,
        Lcom/android/samsungtest/camera/Camera$ErrorCallback;,
        Lcom/android/samsungtest/camera/Camera$JpegPictureCallback;,
        Lcom/android/samsungtest/camera/Camera$RawPictureCallback;,
        Lcom/android/samsungtest/camera/Camera$ShutterCallback;,
        Lcom/android/samsungtest/camera/Camera$ZoomListener;,
        Lcom/android/samsungtest/camera/Camera$MainHandler;,
        Lcom/android/samsungtest/camera/Camera$Capturer;
    }
.end annotation


# static fields
.field public static FRONT:I

.field public static NONE:I

.field public static REAR:I

.field public static cameraType:I

.field public static mFlashEnable:I


# instance fields
.field private final DEFAULT_IMEI:Ljava/lang/String;

.field private final IMEI:Ljava/lang/String;

.field public capturedData:[B

.field intentFilter:Landroid/content/IntentFilter;

.field private mAF_Fail_Count:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoFocusCallback:Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;

.field private mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

.field private mCameraStarted:I

.field private mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;

.field private mCaptureStartTime:J

.field private mCurrentSysVol:I

.field private mCurrentTime:J

.field private mDataline_chk:Z

.field private mDidRegister:Z

.field private mErrorCallback:Lcom/android/samsungtest/camera/Camera$ErrorCallback;

.field private mErrorPopup:Landroid/app/AlertDialog;

.field private mEsn:Ljava/lang/String;

.field private mFocusBlinkAnimation:Landroid/view/animation/Animation;

.field private mFocusCallbackTime:J

.field private mFocusFailIndicator:Landroid/view/View;

.field private mFocusRectangle:Lcom/android/samsungtest/camera/FocusRectangle;

.field private mFocusStartTime:J

.field private mFocusState:I

.field private mFocusSuccessIndicator:Landroid/view/View;

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private mHandler:Landroid/os/Handler;

.field private mImageCapture:Lcom/android/samsungtest/camera/Camera$ImageCapture;

.field private mIsCaptureEnble:Z

.field private mIsPressedBackkey:Z

.field private mKeepAndRestartPreview:Z

.field private mOriginalViewFinderHeight:I

.field private mOriginalViewFinderWidth:I

.field private mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

.field private mPausing:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPicturesRemaining:I

.field private mPreviewing:Z

.field private mRawPictureCallback:Lcom/android/samsungtest/camera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShutterButton:Lcom/android/samsungtest/camera/ShutterButton;

.field private mShutterCallback:Lcom/android/samsungtest/camera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field private mSmoothZoomSupported:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:I

.field mStartCheck:Ljava/lang/Runnable;

.field private mStatus:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcom/android/samsungtest/camera/VideoPreview;

.field protected mTimerHandler:Landroid/os/Handler;

.field private mViewFinderHeight:I

.field private mViewFinderWidth:I

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private mZoomButtons:Landroid/widget/ZoomButtonsController;

.field private final mZoomListener:Lcom/android/samsungtest/camera/Camera$ZoomListener;

.field private mZoomMax:I

.field private mZoomValue:I

.field private mZooming:Z

.field private mbErrorFlag:Z

.field public ommisionTest:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 213
    const/4 v0, -0x1

    sput v0, Lcom/android/samsungtest/camera/Camera;->NONE:I

    .line 214
    sput v1, Lcom/android/samsungtest/camera/Camera;->REAR:I

    .line 215
    const/4 v0, 0x1

    sput v0, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    .line 216
    sget v0, Lcom/android/samsungtest/camera/Camera;->NONE:I

    sput v0, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    .line 220
    sput v1, Lcom/android/samsungtest/camera/Camera;->mFlashEnable:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    iput-object v3, p0, Lcom/android/samsungtest/camera/Camera;->capturedData:[B

    .line 108
    iput-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->mZooming:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->mSmoothZoomSupported:Z

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    .line 127
    const-string v0, "ril.IMEI"

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->IMEI:Ljava/lang/String;

    .line 128
    const-string v0, "357858010034783"

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->DEFAULT_IMEI:Ljava/lang/String;

    .line 133
    iput-object v3, p0, Lcom/android/samsungtest/camera/Camera;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 134
    iput-object v3, p0, Lcom/android/samsungtest/camera/Camera;->mEsn:Ljava/lang/String;

    .line 141
    iput v2, p0, Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I

    .line 148
    iput-object v3, p0, Lcom/android/samsungtest/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 151
    iput-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->mDidRegister:Z

    .line 163
    new-instance v0, Lcom/android/samsungtest/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/samsungtest/camera/Camera$ShutterCallback;-><init>(Lcom/android/samsungtest/camera/Camera;Lcom/android/samsungtest/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mShutterCallback:Lcom/android/samsungtest/camera/Camera$ShutterCallback;

    .line 164
    new-instance v0, Lcom/android/samsungtest/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/samsungtest/camera/Camera$RawPictureCallback;-><init>(Lcom/android/samsungtest/camera/Camera;Lcom/android/samsungtest/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mRawPictureCallback:Lcom/android/samsungtest/camera/Camera$RawPictureCallback;

    .line 165
    new-instance v0, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v3}, Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/samsungtest/camera/Camera;Lcom/android/samsungtest/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mAutoFocusCallback:Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;

    .line 166
    new-instance v0, Lcom/android/samsungtest/camera/Camera$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/camera/Camera$ErrorCallback;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mErrorCallback:Lcom/android/samsungtest/camera/Camera$ErrorCallback;

    .line 174
    iput-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->mPausing:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->mDataline_chk:Z

    .line 177
    iput-object v3, p0, Lcom/android/samsungtest/camera/Camera;->mImageCapture:Lcom/android/samsungtest/camera/Camera$ImageCapture;

    .line 185
    iput-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    .line 196
    iput v2, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    .line 217
    iput-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->ommisionTest:Z

    .line 224
    iput v2, p0, Lcom/android/samsungtest/camera/Camera;->mSoundPoolId:I

    .line 228
    iput-object v3, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    .line 229
    iput-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->mbErrorFlag:Z

    .line 232
    new-instance v0, Lcom/android/samsungtest/camera/Camera$ZoomListener;

    invoke-direct {v0, p0, v3}, Lcom/android/samsungtest/camera/Camera$ZoomListener;-><init>(Lcom/android/samsungtest/camera/Camera;Lcom/android/samsungtest/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomListener:Lcom/android/samsungtest/camera/Camera$ZoomListener;

    .line 236
    iput-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->mIsPressedBackkey:Z

    .line 237
    iput-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->mIsCaptureEnble:Z

    .line 238
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/samsungtest/camera/Camera;->mCurrentTime:J

    .line 246
    iput v2, p0, Lcom/android/samsungtest/camera/Camera;->mCurrentSysVol:I

    .line 249
    iput v2, p0, Lcom/android/samsungtest/camera/Camera;->mAF_Fail_Count:I

    .line 253
    new-instance v0, Lcom/android/samsungtest/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/samsungtest/camera/Camera$MainHandler;-><init>(Lcom/android/samsungtest/camera/Camera;Lcom/android/samsungtest/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 355
    new-instance v0, Lcom/android/samsungtest/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/camera/Camera$2;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1403
    new-instance v0, Lcom/android/samsungtest/camera/Camera$6;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/camera/Camera$6;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    .line 1634
    new-instance v0, Lcom/android/samsungtest/camera/Camera$7;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/camera/Camera$7;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/samsungtest/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/samsungtest/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$1004(Lcom/android/samsungtest/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$1006(Lcom/android/samsungtest/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/samsungtest/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomMax:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/samsungtest/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mSmoothZoomSupported:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/samsungtest/camera/Camera;Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/samsungtest/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/samsungtest/camera/Camera;->mZooming:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/samsungtest/camera/Camera;)Lcom/sec/android/seccamera/SecCamera$Parameters;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/samsungtest/camera/Camera;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/samsungtest/camera/Camera;->updateStorageHint(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/samsungtest/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->processActionMediaUnmounted()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/samsungtest/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/samsungtest/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/samsungtest/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/samsungtest/camera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/samsungtest/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/android/samsungtest/camera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/android/samsungtest/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/samsungtest/camera/Camera;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/samsungtest/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/android/samsungtest/camera/Camera;->mCaptureStartTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/samsungtest/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/samsungtest/camera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/samsungtest/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/android/samsungtest/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/samsungtest/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mPausing:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/samsungtest/camera/Camera;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/samsungtest/camera/Camera;->dialogErrorPopup(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/samsungtest/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mAF_Fail_Count:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/samsungtest/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/samsungtest/camera/Camera;->mAF_Fail_Count:I

    return p1
.end method

.method static synthetic access$2408(Lcom/android/samsungtest/camera/Camera;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mAF_Fail_Count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/samsungtest/camera/Camera;->mAF_Fail_Count:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/samsungtest/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/samsungtest/camera/Camera;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/android/samsungtest/camera/Camera;->mFocusCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/samsungtest/camera/Camera;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/samsungtest/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/samsungtest/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$ImageCapture;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mImageCapture:Lcom/android/samsungtest/camera/Camera$ImageCapture;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/samsungtest/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->updateFocusIndicator()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/samsungtest/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->dialogFocusPopup()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/samsungtest/camera/Camera;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/samsungtest/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->restartPreview()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/samsungtest/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/samsungtest/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$ShutterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mShutterCallback:Lcom/android/samsungtest/camera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$RawPictureCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mRawPictureCallback:Lcom/android/samsungtest/camera/Camera$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/samsungtest/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/samsungtest/camera/Camera;->mKeepAndRestartPreview:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/android/samsungtest/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/samsungtest/camera/Camera;->mbErrorFlag:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$ErrorCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mErrorCallback:Lcom/android/samsungtest/camera/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/samsungtest/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mPicturesRemaining:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/samsungtest/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mIsPressedBackkey:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/samsungtest/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/samsungtest/camera/Camera;->mIsPressedBackkey:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/samsungtest/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mIsCaptureEnble:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/samsungtest/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/samsungtest/camera/Camera;->mIsCaptureEnble:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/samsungtest/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/samsungtest/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/samsungtest/camera/Camera;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/samsungtest/camera/Camera;)Lcom/android/samsungtest/camera/Camera$Capturer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/samsungtest/camera/Camera;Lcom/android/samsungtest/camera/Camera$Capturer;)Lcom/android/samsungtest/camera/Camera$Capturer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/samsungtest/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/samsungtest/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->isZooming()Z

    move-result v0

    return v0
.end method

.method private autoFocus()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 529
    const-string v0, "testCamera"

    const-string v1, "call autoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    if-eq v0, v2, :cond_3e

    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    .line 531
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_3e

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusStartTime:J

    .line 535
    iput v2, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    .line 536
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->updateFocusIndicator()V

    .line 537
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v1, "flash-value"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v0, "testCamera"

    const-string v1, "autofocus - set flash on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 541
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mAutoFocusCallback:Lcom/android/samsungtest/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V

    .line 544
    :cond_3e
    return-void
.end method

.method private static checkFsWritable()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1995
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

    .line 1997
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1998
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 1999
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 2014
    :cond_2d
    :goto_2d
    return v0

    .line 2003
    :cond_2e
    new-instance v2, Ljava/io/File;

    const-string v3, ".probe"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    :try_start_35
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2007
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2009
    :cond_3e
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2011
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_47} :catch_49

    .line 2012
    const/4 v0, 0x1

    goto :goto_2d

    .line 2013
    :catch_49
    move-exception v1

    goto :goto_2d
.end method

.method private clearFocusState()V
    .registers 2

    .prologue
    .line 493
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    .line 494
    return-void
.end method

.method private closeCamera()V
    .registers 3

    .prologue
    .line 1179
    const-string v0, "testCamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_1d

    .line 1181
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 1182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 1183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    .line 1184
    const-string v0, "testCamera"

    const-string v1, "closeCamera : mPreviewing set false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_1d
    return-void
.end method

.method private dialogErrorPopup(I)V
    .registers 8
    .parameter "messageId"

    .prologue
    .line 754
    const-string v1, "testCamera"

    const-string v2, "dialogErrorPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 757
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 763
    :cond_18
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I

    .line 764
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.CameraStart.Fail"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "TYPE"

    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TYPE"

    sget v5, Lcom/android/samsungtest/camera/Camera;->NONE:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 766
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 768
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 769
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 771
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 772
    const v1, 0x7f080018

    new-instance v2, Lcom/android/samsungtest/camera/Camera$3;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/camera/Camera$3;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 782
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 783
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    .line 784
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 785
    return-void
.end method

.method private dialogFocusPopup()V
    .registers 6

    .prologue
    .line 2081
    const-string v0, "testCamera"

    const-string v1, "dialogFocusPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_65

    .line 2086
    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.AUTOFOCUS_BAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TYPE"

    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TYPE"

    sget v4, Lcom/android/samsungtest/camera/Camera;->NONE:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 2088
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2090
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2091
    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2092
    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2093
    const v1, 0x7f080018

    new-instance v2, Lcom/android/samsungtest/camera/Camera$9;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/camera/Camera$9;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2104
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    .line 2105
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2107
    :cond_65
    return-void
.end method

.method private doFocus(Z)V
    .registers 5
    .parameter "pressed"

    .prologue
    .line 497
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

    sget v2, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPreviewing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    if-eqz p1, :cond_5a

    .line 499
    sget v0, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v1, Lcom/android/samsungtest/camera/Camera;->REAR:I

    if-eq v0, v1, :cond_3e

    sget v0, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v1, Lcom/android/samsungtest/camera/Camera;->NONE:I

    if-ne v0, v1, :cond_50

    .line 500
    :cond_3e
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_46

    .line 501
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->autoFocus()V

    .line 526
    :cond_45
    :goto_45
    return-void

    .line 502
    :cond_46
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;

    if-eqz v0, :cond_45

    .line 506
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;

    invoke-interface {v0}, Lcom/android/samsungtest/camera/Camera$Capturer;->onSnap()V

    goto :goto_45

    .line 510
    :cond_50
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;

    if-eqz v0, :cond_45

    .line 512
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;

    invoke-interface {v0}, Lcom/android/samsungtest/camera/Camera$Capturer;->onSnap()V

    goto :goto_45

    .line 516
    :cond_5a
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_45

    .line 519
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_63

    .line 522
    :cond_63
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->clearFocusState()V

    .line 523
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->updateFocusIndicator()V

    goto :goto_45
.end method

.method private doSnap()V
    .registers 4

    .prologue
    .line 573
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSnap()- mFocusState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget v0, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v1, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    if-ne v0, v1, :cond_26

    .line 576
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;

    invoke-interface {v0}, Lcom/android/samsungtest/camera/Camera$Capturer;->onSnap()V

    .line 601
    :cond_25
    :goto_25
    return-void

    .line 579
    :cond_26
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2f

    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    if-nez v0, :cond_3f

    .line 582
    :cond_2f
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;

    if-eqz v0, :cond_38

    .line 584
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;

    invoke-interface {v0}, Lcom/android/samsungtest/camera/Camera$Capturer;->onSnap()V

    .line 586
    :cond_38
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->clearFocusState()V

    .line 587
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->updateFocusIndicator()V

    goto :goto_25

    .line 588
    :cond_3f
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4c

    .line 589
    const-string v0, "testCamera"

    const-string v1, "doSnap()- FOCUS_FAIL : the shot is canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 590
    :cond_4c
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5c

    .line 594
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    .line 595
    const-string v0, "testCamera"

    const-string v1, "doSnap()- FOCUSING : the shot is canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 596
    :cond_5c
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    if-nez v0, :cond_25

    .line 598
    const-string v0, "testCamera"

    const-string v1, "doSnap()- FOCUS_NOT_STARTED : the shot is canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method private ensureCameraDevice()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1201
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v3, :cond_3a

    .line 1203
    :try_start_6
    sget v3, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->open(I)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v3

    iput-object v3, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    .line 1204
    const-string v3, "testCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ensureCameraDevice:Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_28} :catch_40

    .line 1212
    sget v3, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v4, Lcom/android/samsungtest/camera/Camera;->REAR:I

    if-ne v3, v4, :cond_51

    .line 1213
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v3, v2}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    .line 1219
    :goto_33
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v4, p0, Lcom/android/samsungtest/camera/Camera;->mErrorCallback:Lcom/android/samsungtest/camera/Camera$ErrorCallback;

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V

    .line 1221
    :cond_3a
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v3, :cond_58

    :goto_3e
    move v2, v1

    :goto_3f
    return v2

    .line 1205
    :catch_40
    move-exception v0

    .line 1206
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "testCamera"

    const-string v4, "ensureCameraDevice Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iput-boolean v1, p0, Lcom/android/samsungtest/camera/Camera;->mbErrorFlag:Z

    .line 1208
    const v1, 0x7f08002d

    invoke-direct {p0, v1}, Lcom/android/samsungtest/camera/Camera;->dialogErrorPopup(I)V

    goto :goto_3f

    .line 1216
    .end local v0           #e:Ljava/lang/Exception;
    :cond_51
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    goto :goto_33

    :cond_58
    move v1, v2

    .line 1221
    goto :goto_3e
.end method

.method public static hasStorage()Z
    .registers 4

    .prologue
    .line 1981
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1982
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

    .line 1984
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1985
    invoke-static {}, Lcom/android/samsungtest/camera/Camera;->checkFsWritable()Z

    move-result v0

    .line 1986
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

    .line 1989
    :goto_40
    return v0

    :cond_41
    const/4 v0, 0x0

    goto :goto_40
.end method

.method private initializeZoom()V
    .registers 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_9

    .line 344
    :goto_8
    return-void

    .line 299
    :cond_9
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomMax:I

    .line 300
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max zoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/camera/Camera;->mZoomMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mSmoothZoomSupported:Z

    .line 302
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Smooth zoom supported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->mSmoothZoomSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mZoomListener:Lcom/android/samsungtest/camera/Camera$ZoomListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setZoomChangeListener(Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;)V

    .line 305
    new-instance v0, Landroid/widget/ZoomButtonsController;

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mSurfaceView:Lcom/android/samsungtest/camera/VideoPreview;

    invoke-direct {v0, v1}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomButtons:Landroid/widget/ZoomButtonsController;

    .line 306
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomButtons:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setAutoDismissed(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomButtons:Landroid/widget/ZoomButtonsController;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/widget/ZoomButtonsController;->setZoomSpeed(J)V

    .line 308
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomButtons:Landroid/widget/ZoomButtonsController;

    new-instance v1, Lcom/android/samsungtest/camera/Camera$1;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/camera/Camera$1;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    goto :goto_8
.end method

.method private isZooming()Z
    .registers 4

    .prologue
    .line 346
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mZooming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->mZooming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mZooming:Z

    return v0
.end method

.method private processActionMediaUnmounted()V
    .registers 5

    .prologue
    .line 606
    const-string v0, ""

    .line 608
    .local v0, state:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 610
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processActionMediaUnmounted - state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 613
    const-string v1, "testCamera"

    const-string v2, "state == Environment.MEDIA_MOUNTED, return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_2d
    return-void

    .line 617
    :cond_2e
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/samsungtest/camera/Camera;->mPicturesRemaining:I

    .line 618
    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mPicturesRemaining:I

    invoke-direct {p0, v1}, Lcom/android/samsungtest/camera/Camera;->updateStorageHint(I)V

    goto :goto_2d
.end method

.method private restartPreview()V
    .registers 9

    .prologue
    const/16 v3, 0x280

    const/16 v1, 0x1e0

    const/16 v2, 0x140

    const/16 v0, 0xf0

    const/4 v7, 0x1

    .line 1663
    iget-object v4, p0, Lcom/android/samsungtest/camera/Camera;->mSurfaceView:Lcom/android/samsungtest/camera/VideoPreview;

    .line 1668
    const-string v5, "800x480"

    const-string v6, "400x240"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    move v1, v2

    .line 1703
    :goto_16
    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_51

    .line 1704
    sget v2, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v3, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    if-ne v2, v3, :cond_4d

    .line 1705
    invoke-virtual {v4}, Lcom/android/samsungtest/camera/VideoPreview;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v4}, Lcom/android/samsungtest/camera/VideoPreview;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, v7}, Lcom/android/samsungtest/camera/Camera;->setViewFinder(IIZ)V

    .line 1719
    :goto_2b
    iput v7, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    .line 1721
    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->calculatePicturesRemaining()I

    .line 1722
    return-void

    .line 1681
    :cond_31
    const-string v5, "800x480"

    const-string v6, "800x480"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    move v0, v1

    move v1, v3

    .line 1691
    goto :goto_16

    .line 1694
    :cond_3e
    const-string v5, "800x480"

    const-string v6, "640x480"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    move v0, v1

    move v1, v3

    .line 1696
    goto :goto_16

    :cond_4b
    move v1, v2

    .line 1700
    goto :goto_16

    .line 1707
    :cond_4d
    invoke-direct {p0, v1, v0, v7}, Lcom/android/samsungtest/camera/Camera;->setViewFinder(IIZ)V

    goto :goto_2b

    .line 1710
    :cond_51
    sget v2, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v3, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    if-ne v2, v3, :cond_5b

    .line 1711
    invoke-virtual {v4, v1, v0}, Lcom/android/samsungtest/camera/VideoPreview;->setAspectRatio(II)V

    goto :goto_2b

    .line 1715
    :cond_5b
    invoke-virtual {v4, v1, v0}, Lcom/android/samsungtest/camera/VideoPreview;->setAspectRatio(II)V

    goto :goto_2b
.end method

.method private setViewFinder(IIZ)V
    .registers 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1725
    const-string v2, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setViewFinder - w: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startPreview: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/samsungtest/camera/Camera;->mPausing:Z

    if-eqz v2, :cond_40

    .line 1727
    const-string v2, "testCamera"

    const-string v3, "setViewFinder - mPausing == true, return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_3f
    :goto_3f
    return-void

    .line 1731
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/samsungtest/camera/Camera;->mbErrorFlag:Z

    if-nez v2, :cond_3f

    .line 1734
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    if-eqz v2, :cond_ae

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/samsungtest/camera/Camera;->mViewFinderWidth:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_ae

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/samsungtest/camera/Camera;->mViewFinderHeight:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_ae

    .line 1735
    const-string v2, "testCamera"

    const-string v3, "mPreviewing && w == mViewFinderWidth && h == mViewFinderHeight"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    const-string v2, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPreviewing("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mViewFinderWidth("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/samsungtest/camera/Camera;->mViewFinderWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mViewFinderHeight("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/samsungtest/camera/Camera;->mViewFinderHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 1740
    :cond_ae
    invoke-direct/range {p0 .. p0}, Lcom/android/samsungtest/camera/Camera;->ensureCameraDevice()Z

    move-result v2

    if-nez v2, :cond_bc

    .line 1741
    const-string v2, "testCamera"

    const-string v3, "!ensureCameraDevice()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 1745
    :cond_bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_cb

    .line 1746
    const-string v2, "testCamera"

    const-string v3, "mSurfaceHolder == null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 1750
    :cond_cb
    invoke-virtual/range {p0 .. p0}, Lcom/android/samsungtest/camera/Camera;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 1751
    const-string v2, "testCamera"

    const-string v3, "isFinishing()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 1755
    :cond_da
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/samsungtest/camera/Camera;->mPausing:Z

    if-eqz v2, :cond_e9

    .line 1756
    const-string v2, "testCamera"

    const-string v3, "setViewFinder - mPausing == true, return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 1761
    :cond_e9
    const-string v2, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set ViewFinderWidth("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/camera/Camera;->mViewFinderWidth:I

    .line 1764
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/camera/Camera;->mViewFinderHeight:I

    .line 1765
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/samsungtest/camera/Camera;->mOriginalViewFinderHeight:I

    if-nez v2, :cond_15f

    .line 1766
    const-string v2, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set OriginalViewFinderWidth("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/camera/Camera;->mOriginalViewFinderWidth:I

    .line 1768
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/samsungtest/camera/Camera;->mOriginalViewFinderHeight:I

    .line 1785
    :cond_15f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    if-eqz v2, :cond_16f

    .line 1786
    const-string v2, "testCamera"

    const-string v3, "mPreviewing == true, stopPreview()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    invoke-direct/range {p0 .. p0}, Lcom/android/samsungtest/camera/Camera;->stopPreview()V

    .line 1792
    :cond_16f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 1800
    move/from16 v0, p1

    move/from16 v1, p2

    if-ge v0, v1, :cond_395

    .line 1804
    const-string v2, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Swapped dimensions W = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " H = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :goto_1a7
    sget v2, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v3, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    if-ne v2, v3, :cond_336

    .line 1809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "camera-id"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const-string v2, "testCamera"

    const-string v3, "VGA setting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :goto_1bf
    sget v2, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v3, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    if-ne v2, v3, :cond_1d0

    .line 1824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "chk_dataline"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setPreviewSize(II)V

    .line 1827
    const-string v2, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mParameters.setPreviewSize W = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " H = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    sget v2, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v3, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    if-ne v2, v3, :cond_34a

    .line 1830
    const-string v2, "testCamera"

    const-string v3, "self shot - preview size 640 x 480, display orientation 270"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v2, :cond_214

    .line 1850
    :cond_214
    :goto_214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "flash-mode"

    const-string v4, "on"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "native_camera"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 1854
    :try_start_229
    const-string v2, "testCamera"

    const-string v3, "mCameraDevice.setParameters(mParameters)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    sget v2, Lcom/android/samsungtest/camera/Camera;->mFlashEnable:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_240

    .line 1857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "flash-mode"

    const-string v4, "torch"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    :cond_240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    :try_end_24b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_229 .. :try_end_24b} :catch_392

    .line 1873
    :goto_24b
    const-string v2, "gsm.default.esn"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1874
    const-string v3, "TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_355

    const/4 v2, 0x1

    .line 1878
    :goto_25d
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/samsungtest/camera/Camera;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/camera/Camera;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/samsungtest/camera/Camera;->mEsn:Ljava/lang/String;

    .line 1882
    if-eqz v2, :cond_358

    .line 1883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setDefaultIMEI(I)V

    .line 1889
    :goto_27b
    :try_start_27b
    const-string v2, "testCamera"

    const-string v3, "mCameraDevice.setPreviewDisplay"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/samsungtest/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_28d
    .catch Ljava/io/IOException; {:try_start_27b .. :try_end_28d} :catch_362

    .line 1899
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1900
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v5

    .line 1902
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 1903
    new-instance v2, Ljava/lang/Thread;

    new-instance v8, Lcom/android/samsungtest/camera/Camera$8;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v7, v3, v4}, Lcom/android/samsungtest/camera/Camera$8;-><init>(Lcom/android/samsungtest/camera/Camera;Ljava/lang/Object;J)V

    invoke-direct {v2, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1940
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1946
    :try_start_2a9
    const-string v2, "testCamera"

    const-string v8, "mCameraDevice.startPreview()"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->startPreview()V

    .line 1948
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I
    :try_end_2bc
    .catch Ljava/lang/Throwable; {:try_start_2a9 .. :try_end_2bc} :catch_378

    .line 1958
    :goto_2bc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/samsungtest/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1959
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I

    const/4 v8, 0x2

    if-eq v2, v8, :cond_2db

    .line 1960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/samsungtest/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    const-wide/16 v9, 0xc8

    invoke-virtual {v2, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1962
    :cond_2db
    invoke-virtual/range {p0 .. p0}, Lcom/android/samsungtest/camera/Camera;->startTimerCaptureBlock()V

    .line 1964
    const-string v2, "testCamera"

    const-string v8, "setViewFinder : set mPreviewing = true"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    .line 1966
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/samsungtest/camera/Camera;->mZooming:Z

    .line 1967
    monitor-enter v7

    .line 1968
    :try_start_2f0
    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 1969
    monitor-exit v7
    :try_end_2f4
    .catchall {:try_start_2f0 .. :try_end_2f4} :catchall_38f

    .line 1971
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v7

    .line 1972
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1973
    sub-long v11, v9, v3

    const-wide/16 v13, 0xbb8

    cmp-long v2, v11, v13

    if-lez v2, :cond_3f

    .line 1974
    const-string v2, "testCamera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startPreview() to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v3, v9, v3

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms. Thread time was"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v7, v5

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 1814
    :cond_336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "camera-id"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    const-string v2, "testCamera"

    const-string v3, "5MP setting"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1bf

    .line 1839
    :cond_34a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v3, "60hz"

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setAntibanding(Ljava/lang/String;)V

    goto/16 :goto_214

    .line 1874
    :cond_355
    const/4 v2, 0x0

    goto/16 :goto_25d

    .line 1885
    :cond_358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setDefaultIMEI(I)V

    goto/16 :goto_27b

    .line 1891
    :catch_362
    move-exception v2

    .line 1892
    const-string v2, "testCamera"

    const-string v3, "mCameraDevice.setPreviewDisplay exception!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v2}, Lcom/sec/android/seccamera/SecCamera;->release()V

    .line 1894
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    goto/16 :goto_3f

    .line 1949
    :catch_378
    move-exception v2

    .line 1953
    const-string v8, "testCamera"

    const-string v9, "exception while startPreview"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1954
    const v2, 0x7f08002d

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/samsungtest/camera/Camera;->dialogErrorPopup(I)V

    .line 1955
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I

    goto/16 :goto_2bc

    .line 1969
    :catchall_38f
    move-exception v2

    :try_start_390
    monitor-exit v7
    :try_end_391
    .catchall {:try_start_390 .. :try_end_391} :catchall_38f

    throw v2

    .line 1859
    :catch_392
    move-exception v2

    goto/16 :goto_24b

    :cond_395
    move/from16 v15, p2

    move/from16 p2, p1

    move/from16 p1, v15

    goto/16 :goto_1a7
.end method

.method private stopPreview()V
    .registers 3

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_d

    .line 1192
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->stopPreview()V

    .line 1194
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    .line 1195
    const-string v0, "testCamera"

    const-string v1, "stopPreview : mPreviewing set false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->clearFocusState()V

    .line 1197
    return-void
.end method

.method private updateFocusIndicator()V
    .registers 3

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusRectangle:Lcom/android/samsungtest/camera/FocusRectangle;

    if-nez v0, :cond_5

    .line 2078
    :goto_4
    return-void

    .line 2069
    :cond_5
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 2070
    :cond_f
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusRectangle:Lcom/android/samsungtest/camera/FocusRectangle;

    invoke-virtual {v0}, Lcom/android/samsungtest/camera/FocusRectangle;->showStart()V

    goto :goto_4

    .line 2071
    :cond_15
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 2072
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusRectangle:Lcom/android/samsungtest/camera/FocusRectangle;

    invoke-virtual {v0}, Lcom/android/samsungtest/camera/FocusRectangle;->showSuccess()V

    goto :goto_4

    .line 2073
    :cond_20
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    .line 2074
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusRectangle:Lcom/android/samsungtest/camera/FocusRectangle;

    invoke-virtual {v0}, Lcom/android/samsungtest/camera/FocusRectangle;->showFail()V

    goto :goto_4

    .line 2076
    :cond_2b
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusRectangle:Lcom/android/samsungtest/camera/FocusRectangle;

    invoke-virtual {v0}, Lcom/android/samsungtest/camera/FocusRectangle;->clear()V

    goto :goto_4
.end method

.method private updateStorageHint(I)V
    .registers 4
    .parameter "remaining"

    .prologue
    .line 2043
    const/4 v0, 0x0

    .line 2061
    .local v0, noStorageText:Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 2062
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2064
    :cond_b
    return-void
.end method

.method private updateZoomButtonsEnabled()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 351
    iget-object v3, p0, Lcom/android/samsungtest/camera/Camera;->mZoomButtons:Landroid/widget/ZoomButtonsController;

    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    iget v4, p0, Lcom/android/samsungtest/camera/Camera;->mZoomMax:I

    if-ge v0, v4, :cond_18

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 352
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mZoomButtons:Landroid/widget/ZoomButtonsController;

    iget v3, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    if-lez v3, :cond_1a

    :goto_14
    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    .line 353
    return-void

    :cond_18
    move v0, v2

    .line 351
    goto :goto_b

    :cond_1a
    move v1, v2

    .line 352
    goto :goto_14
.end method


# virtual methods
.method public calculatePicturesRemaining()I
    .registers 6

    .prologue
    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 2020
    :try_start_2
    invoke-static {}, Lcom/android/samsungtest/camera/Camera;->hasStorage()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2021
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/samsungtest/camera/Camera;->mPicturesRemaining:I

    .line 2038
    :goto_b
    return v0

    .line 2024
    :cond_c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2025
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2026
    const-string v0, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stat.getAvailableBlocks - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stat.getBlockSize() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    const v2, 0x49f42400

    div-float/2addr v0, v2

    .line 2029
    float-to-int v0, v0

    iput v0, p0, Lcom/android/samsungtest/camera/Camera;->mPicturesRemaining:I

    .line 2030
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mPicturesRemaining:I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_57} :catch_58

    goto :goto_b

    .line 2032
    :catch_58
    move-exception v0

    .line 2036
    const-string v2, "testCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculatePicturesRemaining exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    iput v1, p0, Lcom/android/samsungtest/camera/Camera;->mPicturesRemaining:I

    move v0, v1

    .line 2038
    goto :goto_b
.end method

.method public initCameraSound()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2110
    const-string v0, "testCamera"

    const-string v1, "initCameraSound"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v3, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 2114
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/camera/Camera;->mSoundPoolId:I

    .line 2117
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/samsungtest/camera/Camera;->mCurrentSysVol:I

    .line 2118
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v3, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2119
    return-void
.end method

.method public onChkDataLineDone()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 867
    const-string v1, "testCamera"

    const-string v2, "onChkDataLineDone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 870
    sget v1, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v2, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    if-ne v1, v2, :cond_20

    .line 871
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    const-string v2, "chk_dataline"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_20
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->stopPreview()V

    .line 876
    :try_start_23
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.setParameters(mParameters)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_31} :catch_79

    .line 883
    :goto_31
    :try_start_31
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.startPreview()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->startPreview()V

    .line 885
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.startPreview() sucess mCameraStarted = STARTED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_47} :catch_67

    .line 896
    :goto_47
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 897
    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I

    if-eq v1, v4, :cond_5b

    .line 898
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 900
    :cond_5b
    iput-boolean v5, p0, Lcom/android/samsungtest/camera/Camera;->mPreviewing:Z

    .line 901
    iput-boolean v5, p0, Lcom/android/samsungtest/camera/Camera;->mDataline_chk:Z

    .line 902
    const-string v1, "testCamera"

    const-string v2, "onChkDataLineDone : mPreviewing set true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    return-void

    .line 887
    :catch_67
    move-exception v0

    .line 891
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "testCamera"

    const-string v2, "mCameraDevice.startPreview() fail mCameraStarted = FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iput v4, p0, Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I

    .line 893
    const-string v1, "testCamera"

    const-string v2, "exception while startPreview"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47

    .line 878
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_79
    move-exception v1

    goto :goto_31
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1227
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1229
    const-string v0, "testCamera"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 1231
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    .line 1232
    sput v4, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    .line 1233
    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_id"

    sget v2, Lcom/android/samsungtest/camera/Camera;->NONE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    .line 1234
    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ommision_test"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->ommisionTest:Z

    .line 1236
    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "flash_enable"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/samsungtest/camera/Camera;->mFlashEnable:I

    .line 1237
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFlashEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/samsungtest/camera/Camera;->mFlashEnable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/samsungtest/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/camera/Camera$4;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1260
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1262
    iput v4, p0, Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I

    .line 1266
    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1267
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1268
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camera/Camera;->setContentView(I)V

    .line 1269
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1270
    const/16 v2, 0x1a

    const-string v3, "testCamera"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1271
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/samsungtest/camera/VideoPreview;

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mSurfaceView:Lcom/android/samsungtest/camera/VideoPreview;

    .line 1276
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mSurfaceView:Lcom/android/samsungtest/camera/VideoPreview;

    invoke-virtual {v0}, Lcom/android/samsungtest/camera/VideoPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1277
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1278
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1280
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/samsungtest/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mShutterButton:Lcom/android/samsungtest/camera/ShutterButton;

    .line 1281
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mShutterButton:Lcom/android/samsungtest/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/samsungtest/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/samsungtest/camera/ShutterButton$OnShutterButtonListener;)V

    .line 1283
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusSuccessIndicator:Landroid/view/View;

    .line 1284
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusFailIndicator:Landroid/view/View;

    .line 1286
    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusBlinkAnimation:Landroid/view/animation/Animation;

    .line 1288
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusBlinkAnimation:Landroid/view/animation/Animation;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1289
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusBlinkAnimation:Landroid/view/animation/Animation;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 1292
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->intentFilter:Landroid/content/IntentFilter;

    .line 1294
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->intentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.samsungtest.CameraStart.Status"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->intentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.samsungtest.CameraStop.Status"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1296
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->intentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->intentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->intentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1299
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->intentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v2}, Lcom/android/samsungtest/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1301
    iput-boolean v5, p0, Lcom/android/samsungtest/camera/Camera;->mDidRegister:Z

    .line 1305
    :try_start_11e
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_121
    .catch Ljava/lang/InterruptedException; {:try_start_11e .. :try_end_121} :catch_16f

    .line 1309
    :goto_121
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-nez v0, :cond_135

    .line 1311
    const-string v0, "testCamera"

    const-string v1, "mCameraDevice == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const v0, 0x7f08002d

    invoke-direct {p0, v0}, Lcom/android/samsungtest/camera/Camera;->dialogErrorPopup(I)V

    .line 1313
    iput-boolean v5, p0, Lcom/android/samsungtest/camera/Camera;->mbErrorFlag:Z

    .line 1331
    :goto_134
    return-void

    .line 1316
    :cond_135
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 1317
    iput v4, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    .line 1318
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->initializeZoom()V

    .line 1320
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 1321
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setZoom(I)V

    .line 1324
    :cond_151
    invoke-static {}, Lcom/android/samsungtest/camera/ImageManager;->ensureOSXCompatibleFolder()V

    .line 1326
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/samsungtest/camera/FocusRectangle;

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusRectangle:Lcom/android/samsungtest/camera/FocusRectangle;

    .line 1327
    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->initCameraSound()V

    .line 1329
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    invoke-virtual {v0, p0}, Lcom/sec/android/seccamera/SecCamera;->setChkDataLineListener(Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;)V

    .line 1330
    const-string v0, "testCamera"

    const-string v1, "onCreate End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_134

    .line 1306
    :catch_16f
    move-exception v0

    goto :goto_121
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

    .line 1470
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1471
    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1473
    sparse-switch p1, :sswitch_data_196

    .line 1609
    :cond_19
    :goto_19
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1d
    :goto_1d
    :sswitch_1d
    return v0

    .line 1482
    :sswitch_1e
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_1d

    .line 1484
    sget v1, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v2, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    if-eq v1, v2, :cond_1d

    .line 1488
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v2, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setZoom(I)V

    .line 1489
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_1d

    .line 1493
    :sswitch_3b
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    if-eqz v1, :cond_1d

    .line 1496
    sget v1, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v2, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    if-eq v1, v2, :cond_1d

    .line 1500
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    iget v2, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/samsungtest/camera/Camera;->mZoomValue:I

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;->setZoom(I)V

    .line 1501
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;

    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera;->mParameters:Lcom/sec/android/seccamera/SecCamera$Parameters;

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    goto :goto_1d

    .line 1506
    :sswitch_58
    iget-boolean v1, p0, Lcom/android/samsungtest/camera/Camera;->ommisionTest:Z

    if-eqz v1, :cond_94

    .line 1507
    iget-boolean v1, p0, Lcom/android/samsungtest/camera/Camera;->mIsPressedBackkey:Z

    if-nez v1, :cond_70

    .line 1508
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1509
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/samsungtest/camera/Camera;->mCurrentTime:J

    .line 1510
    iput-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mIsPressedBackkey:Z

    .line 1511
    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->startTimer()V

    goto :goto_1d

    .line 1515
    :cond_70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/samsungtest/camera/Camera;->mIsPressedBackkey:Z

    .line 1516
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1517
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/samsungtest/camera/Camera;->mCurrentTime:J

    const-wide/16 v5, 0x7d0

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gtz v1, :cond_19

    .line 1518
    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    if-eq v1, v7, :cond_1d

    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    if-eq v1, v9, :cond_1d

    .line 1525
    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1526
    invoke-virtual {p0, v8, v0}, Lcom/android/samsungtest/camera/Camera;->setResult(ILandroid/content/Intent;)V

    goto :goto_19

    .line 1532
    :cond_94
    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    if-eq v1, v7, :cond_1d

    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    if-eq v1, v9, :cond_1d

    .line 1539
    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1540
    invoke-virtual {p0, v8, v0}, Lcom/android/samsungtest/camera/Camera;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_19

    .line 1547
    :sswitch_a5
    iget-boolean v1, p0, Lcom/android/samsungtest/camera/Camera;->mIsCaptureEnble:Z

    if-nez v1, :cond_b2

    .line 1548
    const-string v1, "testCamera"

    const-string v2, "mIsCaptureEnble is false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1551
    :cond_b2
    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    if-eq v1, v0, :cond_be

    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    if-eq v1, v7, :cond_be

    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    if-ne v1, v7, :cond_e6

    .line 1555
    :cond_be
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore KEYCODE_FOCUS - mFocusState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1558
    :cond_e6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1d

    .line 1559
    invoke-direct {p0, v0}, Lcom/android/samsungtest/camera/Camera;->doFocus(Z)V

    goto/16 :goto_1d

    .line 1563
    :sswitch_f1
    iget-boolean v1, p0, Lcom/android/samsungtest/camera/Camera;->mIsCaptureEnble:Z

    if-nez v1, :cond_fe

    .line 1564
    const-string v1, "testCamera"

    const-string v2, "mIsCaptureEnble is false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1567
    :cond_fe
    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    if-ne v1, v7, :cond_12a

    .line 1569
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore KEYCODE_CAMERA - mFocusState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1573
    :cond_12a
    sget v1, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v2, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    if-ne v1, v2, :cond_134

    .line 1575
    iget-boolean v1, p0, Lcom/android/samsungtest/camera/Camera;->mDataline_chk:Z

    if-eqz v1, :cond_1d

    .line 1579
    :cond_134
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1d

    .line 1580
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->doSnap()V

    goto/16 :goto_1d

    .line 1584
    :sswitch_13f
    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    if-eq v1, v0, :cond_14b

    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    if-eq v1, v7, :cond_14b

    iget v1, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    if-ne v1, v7, :cond_173

    .line 1588
    :cond_14b
    const-string v1, "testCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore KEYCODE_DPAD_CENTER - mFocusState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1593
    :cond_173
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1d

    .line 1598
    invoke-direct {p0, v0}, Lcom/android/samsungtest/camera/Camera;->doFocus(Z)V

    .line 1599
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mShutterButton:Lcom/android/samsungtest/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/samsungtest/camera/ShutterButton;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_190

    .line 1600
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mShutterButton:Lcom/android/samsungtest/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/samsungtest/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 1604
    :goto_189
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mShutterButton:Lcom/android/samsungtest/camera/ShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/samsungtest/camera/ShutterButton;->setPressed(Z)V

    goto/16 :goto_1d

    .line 1602
    :cond_190
    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mShutterButton:Lcom/android/samsungtest/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/android/samsungtest/camera/ShutterButton;->requestFocus()Z

    goto :goto_189

    .line 1473
    :sswitch_data_196
    .sparse-switch
        0x4 -> :sswitch_58
        0x5 -> :sswitch_1d
        0x17 -> :sswitch_13f
        0x18 -> :sswitch_3b
        0x19 -> :sswitch_1e
        0x1b -> :sswitch_f1
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

    .line 1614
    sparse-switch p1, :sswitch_data_e

    .line 1631
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    :sswitch_8
    return v0

    .line 1616
    :sswitch_9
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/samsungtest/camera/Camera;->doFocus(Z)V

    goto :goto_8

    .line 1614
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
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1431
    const-string v0, "testCamera"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mPausing:Z

    .line 1433
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->mStartCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1436
    :try_start_13
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1437
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2b} :catch_72

    .line 1443
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1444
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1447
    :cond_38
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->stopPreview()V

    .line 1448
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->closeCamera()V

    .line 1450
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1451
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1453
    :cond_4f
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_5a

    .line 1454
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1455
    iput-boolean v4, p0, Lcom/android/samsungtest/camera/Camera;->mDidRegister:Z

    .line 1458
    :cond_5a
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_65

    .line 1459
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1460
    iput-object v5, p0, Lcom/android/samsungtest/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 1463
    :cond_65
    const-string v0, "testCamera"

    const-string v1, "mImageCapture = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    iput-object v5, p0, Lcom/android/samsungtest/camera/Camera;->mImageCapture:Lcom/android/samsungtest/camera/Camera$ImageCapture;

    .line 1466
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1467
    return-void

    .line 1439
    :catch_72
    move-exception v0

    .line 1440
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2b
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1355
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1358
    :try_start_4
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1359
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/camera/Camera;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1c} :catch_2f

    .line 1365
    :cond_1c
    :goto_1c
    const-string v0, "testCamera"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mbErrorFlag:Z

    if-eqz v0, :cond_34

    .line 1368
    const-string v0, "testCamera"

    const-string v1, "onResume return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :goto_2e
    return-void

    .line 1361
    :catch_2f
    move-exception v0

    .line 1362
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1c

    .line 1371
    :cond_34
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1372
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1374
    :cond_41
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1375
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mPausing:Z

    .line 1379
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mDidRegister:Z

    if-nez v0, :cond_5f

    .line 1380
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/samsungtest/camera/Camera;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1381
    iput-boolean v4, p0, Lcom/android/samsungtest/camera/Camera;->mDidRegister:Z

    .line 1384
    :cond_5f
    new-instance v0, Lcom/android/samsungtest/camera/Camera$ImageCapture;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/camera/Camera$ImageCapture;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mImageCapture:Lcom/android/samsungtest/camera/Camera$ImageCapture;

    .line 1386
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->restartPreview()V

    .line 1389
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->updateFocusIndicator()V

    .line 1392
    :try_start_6c
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x1

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    :try_end_76
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_76} :catch_77

    goto :goto_2e

    .line 1394
    :catch_77
    move-exception v0

    .line 1395
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

    .line 1397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2e
.end method

.method public onShutterButtonClick(Lcom/android/samsungtest/camera/ShutterButton;)V
    .registers 5
    .parameter "button"

    .prologue
    .line 547
    const-string v0, "testCamera"

    const-string v1, "call onShutterButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_c

    .line 567
    :goto_b
    return-void

    .line 552
    :cond_c
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    .line 554
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore onShutterButtonClick - mFocusState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 558
    :cond_38
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mIsCaptureEnble:Z

    if-nez v0, :cond_44

    .line 559
    const-string v0, "testCamera"

    const-string v1, "mIsCaptureEnble is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 562
    :cond_44
    invoke-virtual {p1}, Lcom/android/samsungtest/camera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    goto :goto_b

    .line 564
    :pswitch_4c
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->doSnap()V

    goto :goto_b

    .line 562
    :pswitch_data_50
    .packed-switch 0x7f09001f
        :pswitch_4c
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/samsungtest/camera/ShutterButton;Z)V
    .registers 6
    .parameter "button"
    .parameter "pressed"

    .prologue
    const/4 v2, 0x2

    .line 428
    const-string v0, "testCamera"

    const-string v1, "call onShutterButtonFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_d

    .line 456
    :cond_c
    :goto_c
    return-void

    .line 433
    :cond_d
    sget v0, Lcom/android/samsungtest/camera/Camera;->cameraType:I

    sget v1, Lcom/android/samsungtest/camera/Camera;->FRONT:I

    if-ne v0, v1, :cond_17

    .line 435
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mDataline_chk:Z

    if-eqz v0, :cond_c

    .line 439
    :cond_17
    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    if-eq v0, v2, :cond_24

    iget v0, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    if-ne v0, v2, :cond_4b

    .line 442
    :cond_24
    const-string v0, "testCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore onShutterButtonFocus - mFocusState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/camera/Camera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/samsungtest/camera/Camera;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 446
    :cond_4b
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mIsCaptureEnble:Z

    if-nez v0, :cond_57

    .line 447
    const-string v0, "testCamera"

    const-string v1, "mIsCaptureEnble is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 451
    :cond_57
    invoke-virtual {p1}, Lcom/android/samsungtest/camera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_64

    goto :goto_c

    .line 453
    :pswitch_5f
    invoke-direct {p0, p2}, Lcom/android/samsungtest/camera/Camera;->doFocus(Z)V

    goto :goto_c

    .line 451
    nop

    :pswitch_data_64
    .packed-switch 0x7f09001f
        :pswitch_5f
    .end packed-switch
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 1335
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1337
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/samsungtest/camera/Camera$5;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/camera/Camera$5;-><init>(Lcom/android/samsungtest/camera/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1350
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1351
    return-void
.end method

.method public onStop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1418
    const-string v0, "testCamera"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1421
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->stopPreview()V

    .line 1422
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->closeCamera()V

    .line 1423
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1424
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1426
    iput v3, p0, Lcom/android/samsungtest/camera/Camera;->mCameraStarted:I

    .line 1427
    return-void
.end method

.method protected startTimer()V
    .registers 5

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mTimerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1654
    return-void
.end method

.method protected startTimerCaptureBlock()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 1657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mIsCaptureEnble:Z

    .line 1658
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1659
    iget-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1660
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 10
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1130
    const-string v2, "testCamera"

    const-string v3, "surfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-boolean v2, p0, Lcom/android/samsungtest/camera/Camera;->mbErrorFlag:Z

    if-eqz v2, :cond_c

    .line 1162
    :goto_b
    return-void

    .line 1137
    :cond_c
    if-ge p3, p4, :cond_33

    .line 1138
    move v1, p3

    .line 1139
    .local v1, tmp_swp:I
    move p3, p4

    .line 1140
    move p4, v1

    .line 1141
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

    .line 1144
    .end local v1           #tmp_swp:I
    :cond_33
    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera;->mSurfaceView:Lcom/android/samsungtest/camera/VideoPreview;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/samsungtest/camera/VideoPreview;->setVisibility(I)V

    .line 1146
    const/4 v0, 0x1

    .line 1154
    .local v0, preview:Z
    iget v2, p0, Lcom/android/samsungtest/camera/Camera;->mOriginalViewFinderWidth:I

    if-nez v2, :cond_42

    .line 1155
    iput p3, p0, Lcom/android/samsungtest/camera/Camera;->mOriginalViewFinderWidth:I

    .line 1156
    iput p4, p0, Lcom/android/samsungtest/camera/Camera;->mOriginalViewFinderHeight:I

    .line 1158
    :cond_42
    invoke-direct {p0, p3, p4, v0}, Lcom/android/samsungtest/camera/Camera;->setViewFinder(IIZ)V

    .line 1161
    iget-object v2, p0, Lcom/android/samsungtest/camera/Camera;->mImageCapture:Lcom/android/samsungtest/camera/Camera$ImageCapture;

    iput-object v2, p0, Lcom/android/samsungtest/camera/Camera;->mCaptureObject:Lcom/android/samsungtest/camera/Camera$Capturer;

    goto :goto_b
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 1165
    const-string v0, "testCamera"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-boolean v0, p0, Lcom/android/samsungtest/camera/Camera;->mbErrorFlag:Z

    if-eqz v0, :cond_c

    .line 1170
    :goto_b
    return-void

    .line 1169
    :cond_c
    iput-object p1, p0, Lcom/android/samsungtest/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    goto :goto_b
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 1173
    const-string v0, "testCamera"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-direct {p0}, Lcom/android/samsungtest/camera/Camera;->stopPreview()V

    .line 1175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1176
    return-void
.end method
