.class public Lcom/sec/android/seccamera/SecCamera;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/seccamera/SecCamera$1;,
        Lcom/sec/android/seccamera/SecCamera$Parameters;,
        Lcom/sec/android/seccamera/SecCamera$Area;,
        Lcom/sec/android/seccamera/SecCamera$Size;,
        Lcom/sec/android/seccamera/SecCamera$ErrorCallback;,
        Lcom/sec/android/seccamera/SecCamera$Face;,
        Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;,
        Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;,
        Lcom/sec/android/seccamera/SecCamera$PictureCallback;,
        Lcom/sec/android/seccamera/SecCamera$ShutterCallback;,
        Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;,
        Lcom/sec/android/seccamera/SecCamera$EventHandler;,
        Lcom/sec/android/seccamera/SecCamera$PreviewCallback;,
        Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;,
        Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;,
        Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;,
        Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;,
        Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;,
        Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field private static final ACTION_SHOT_CANCELSERIES:I = 0x407

.field private static final ACTION_SHOT_CAPTURED:I = 0xf045

.field private static final ACTION_SHOT_CREATING_RESULT_COMPLETED:I = 0xf043

.field private static final ACTION_SHOT_CREATING_RESULT_PROGRESS:I = 0xf042

.field private static final ACTION_SHOT_CREATING_RESULT_STARTED:I = 0xf041

.field private static final ACTION_SHOT_FINALIZE:I = 0x409

.field private static final ACTION_SHOT_INITIALIZE:I = 0x404

.field private static final ACTION_SHOT_PROGRESS_ACQUISITION:I = 0xf044

.field private static final ACTION_SHOT_RECT:I = 0xf046

.field private static final ACTION_SHOT_SETRESOLUTION:I = 0x405

.field private static final ACTION_SHOT_STARTSERIES:I = 0x406

.field private static final ACTION_SHOT_STOPSERIES:I = 0x408

.field private static final ADDME_SHOT_CANCEL_CAPTURE:I = 0x40e

.field private static final ADDME_SHOT_CAPUTRED_FIRSTPERSON:I = 0xf052

.field private static final ADDME_SHOT_ERR:I = 0xf051

.field private static final ADDME_SHOT_FINALIZE:I = 0x40f

.field private static final ADDME_SHOT_HANDLE_SNAPSHOT:I = 0x40d

.field private static final ADDME_SHOT_INIT:I = 0x40a

.field private static final ADDME_SHOT_PROGRESS_STITCHING:I = 0xf053

.field private static final ADDME_SHOT_START_CAPTURE:I = 0x40b

.field private static final ADDME_SHOT_SWITCH_POSITION:I = 0x40c

.field private static final BURST_SHOT_CAPTURE:I = 0x414

.field private static final BURST_SHOT_CAPTURING_PROGRESSED:I = 0xf091

.field private static final BURST_SHOT_CAPTURING_STOPPED:I = 0xf092

.field private static final BURST_SHOT_SAVING_COMPLETED:I = 0xf093

.field private static final BURST_SHOT_START_CAPTURE:I = 0x415

.field private static final BURST_SHOT_STOP_AND_ENCODING:I = 0x416

.field private static final BURST_SHOT_STORING:I = 0x413

.field private static final BURST_SHOT_TERMINATE:I = 0x417

.field public static final CAMERA_ERROR_PREVIEWFRAME_TIMEOUT:I = 0x3e9

.field public static final CAMERA_ERROR_PRIORITY_DIED:I = 0xc8

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field private static final CAMERA_MSG_ALL_MSGS:I = 0x4ff

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final CARTOON_SHOT_PROGRESS_RENDERING:I = 0xf071

.field private static final CARTOON_SHOT_SELECT_MODE:I = 0x410

.field private static final CHECK_MARKER_OF_SAMSUNG_DEFINED_CALLBACK_MSGS:I = 0xf000

.field private static final CONTINUOUS_SHOT_CAPTURING_PROGRESSED:I = 0xf031

.field private static final CONTINUOUS_SHOT_CAPTURING_STOPPED:I = 0xf032

.field private static final CONTINUOUS_SHOT_SAVING_COMPLETED:I = 0xf033

.field private static final CONTINUOUS_SHOT_SOUND:I = 0x403

.field private static final CONTINUOUS_SHOT_START_CAPTURE:I = 0x400

.field private static final CONTINUOUS_SHOT_STOP_AND_ENCODING:I = 0x401

.field private static final CONTINUOUS_SHOT_TERMINATE:I = 0x402

.field private static final HAL_AE_AWB_LOCK_UNLOCK:I = 0x44d

.field private static final HAL_DISABLE_POSTVIEW_TO_OVERLAY:I = 0x455

.field private static final HAL_DONE_CHK_DATALINE:I = 0xf002

.field private static final HAL_FACE_DETECT_LOCK_UNLOCK:I = 0x44e

.field private static final HAL_MSG_OBJ_TRACKING:I = 0xf001

.field private static final HAL_OBJECT_POSITION:I = 0x44f

.field private static final HAL_OBJECT_TRACKING_STARTSTOP:I = 0x450

.field private static final HAL_SET_DEFAULT_IMEI:I = 0x453

.field private static final HAL_SET_FRONT_SENSOR_MIRROR:I = 0x456

.field private static final HAL_SET_SAMSUNG_CAMERA:I = 0x454

.field private static final HAL_STOP_CHK_DATALINE:I = 0x452

.field private static final HAL_TOUCH_AF_STARTSTOP:I = 0x451

.field private static final HDR_SHOT_ALL_PROGRESS_COMPLETED:I = 0xf084

.field private static final HDR_SHOT_RESULT_COMPLETED:I = 0xf083

.field private static final HDR_SHOT_RESULT_PROGRESS:I = 0xf082

.field private static final HDR_SHOT_RESULT_STARTED:I = 0xf081

.field public static final PANORAMA_DIRECTION_DOWN:I = 0x8

.field public static final PANORAMA_DIRECTION_DOWN_LEFT:I = 0xa

.field public static final PANORAMA_DIRECTION_DOWN_RIGHT:I = 0x9

.field public static final PANORAMA_DIRECTION_LEFT:I = 0x2

.field public static final PANORAMA_DIRECTION_RIGHT:I = 0x1

.field public static final PANORAMA_DIRECTION_UP:I = 0x4

.field public static final PANORAMA_DIRECTION_UP_LEFT:I = 0x6

.field public static final PANORAMA_DIRECTION_UP_RIGHT:I = 0x5

.field private static final PANORAMA_SHOT_CANCEL:I = 0x3ff

.field private static final PANORAMA_SHOT_CAPTURED:I = 0xf025

.field private static final PANORAMA_SHOT_CAPTURED_NEW:I = 0xf023

.field private static final PANORAMA_SHOT_DIR:I = 0xf026

.field private static final PANORAMA_SHOT_ERR:I = 0xf021

.field private static final PANORAMA_SHOT_FINALIZE:I = 0x3fe

.field private static final PANORAMA_SHOT_PROGRESS_STITCHING:I = 0xf024

.field private static final PANORAMA_SHOT_RECT_CENTER_POINT:I = 0xf022

.field private static final PANORAMA_SHOT_START:I = 0x3fc

.field private static final PANORAMA_SHOT_STOP:I = 0x3fd

.field private static final SAMSUNG_SHOT_COMPRESSED_IMAGE:I = 0xf101

.field private static final SET_DISPLAY_ORIENTATION_MIRROR:I = 0x412

.field private static final SHOT_ACTION:I = 0x3f2

.field private static final SHOT_ADDME:I = 0x3f1

.field private static final SHOT_BEAUTY:I = 0x3ef

.field private static final SHOT_BURST:I = 0x3f9

.field private static final SHOT_CARTOON:I = 0x3f5

.field private static final SHOT_CONTINUOUS:I = 0x3e9

.field private static final SHOT_FACEEFFECT:I = 0x3f7

.field private static final SHOT_FRAME:I = 0x3ed

.field private static final SHOT_HDR:I = 0x3f6

.field private static final SHOT_MOSAIC:I = 0x3ec

.field private static final SHOT_PANORAMA:I = 0x3ea

.field private static final SHOT_PARTY:I = 0x3f4

.field private static final SHOT_SELF:I = 0x3ee

.field private static final SHOT_SINGLE:I = 0x3e8

.field private static final SHOT_SMARTAF:I = 0x3f8

.field private static final SHOT_SMILE:I = 0x3eb

.field private static final SHOT_STOPMOTION:I = 0x3f3

.field private static final SHOT_VINTAGE:I = 0x3f0

.field private static final SMILE_SHOT_DETECTION_REINIT:I = 0x411

.field private static final SMILE_SHOT_DETECTION_START:I = 0x3fa

.field private static final SMILE_SHOT_DETECTION_STOP:I = 0x3fb

.field private static final SMILE_SHOT_DETECTION_SUCCESS:I = 0xf061

.field private static final SMILE_SHOT_FACE_RECT:I = 0xf062

.field private static final SMILE_SHOT_SMILE_RECT:I = 0xf063

.field private static final TAG:Ljava/lang/String; = "SecCamera-JNI-Java"


# instance fields
.field private mAGifMaker:I

.field private mArcBlinkShot:I

.field private mArcFrameShot:I

.field private mArcMosaicShot:I

.field private mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

.field private mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

.field private mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

.field private mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

.field private mNativeContext:I

.field private mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

.field private mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

.field private mOnBlinkDetectionEventListener:Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;

.field private mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

.field private mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

.field private mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

.field private mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

.field private mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

.field private mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

.field private mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

.field private mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

.field private mOneShot:Z

.field private mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

.field private mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

.field private mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

.field private mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

.field private mWithBuffer:Z

.field private mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2130
    const-string v0, "seccamera_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2131
    return-void
.end method

.method constructor <init>(II)V
    .registers 8
    .parameter "cameraId"
    .parameter "priority"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 600
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-boolean v4, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 405
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    .line 418
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    .line 431
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    .line 444
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    .line 460
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    .line 471
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBlinkDetectionEventListener:Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;

    .line 482
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    .line 493
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    .line 504
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    .line 517
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    .line 531
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    .line 601
    const-string v1, "SecCamera-JNI-Java"

    const-string v2, "SecCamera()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    .line 604
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 605
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 606
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 607
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 608
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    .line 611
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_4b

    .line 612
    new-instance v1, Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/sec/android/seccamera/SecCamera$EventHandler;-><init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    .line 619
    :goto_3d
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_setup(Ljava/lang/Object;II)V

    .line 620
    const/16 v1, 0x454

    invoke-virtual {p0, v1, v4, v4}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 621
    return-void

    .line 613
    :cond_4b
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 614
    new-instance v1, Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/sec/android/seccamera/SecCamera$EventHandler;-><init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    goto :goto_3d

    .line 616
    :cond_59
    iput-object v3, p0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    goto :goto_3d
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ShutterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ErrorCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/seccamera/SecCamera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_release()V

    return-void
.end method

.method static synthetic access$1302(Lcom/sec/android/seccamera/SecCamera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/seccamera/SecCamera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/seccamera/SecCamera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/seccamera/SecCamera;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .registers 6
    .parameter "callbackBuffer"
    .parameter "msgType"

    .prologue
    .line 967
    const/16 v0, 0x10

    if-eq p2, v0, :cond_21

    const/16 v0, 0x80

    if-eq p2, v0, :cond_21

    .line 969
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_21
    invoke-direct {p0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->_addCallbackBuffer([BI)V

    .line 974
    return-void
.end method

.method public static native getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V
.end method

.method public static native getNumberOfCameras()I
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_initializeFrameShot()V
.end method

.method private final native native_initializeMosaicShot()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;II)V
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Lcom/sec/android/seccamera/SecCamera;
    .registers 5

    .prologue
    .line 589
    invoke-static {}, Lcom/sec/android/seccamera/SecCamera;->getNumberOfCameras()I

    move-result v2

    .line 590
    .local v2, numberOfCameras:I
    new-instance v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    invoke-direct {v0}, Lcom/sec/android/seccamera/SecCamera$CameraInfo;-><init>()V

    .line 591
    .local v0, cameraInfo:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_1e

    .line 592
    invoke-static {v1, v0}, Lcom/sec/android/seccamera/SecCamera;->getCameraInfo(ILcom/sec/android/seccamera/SecCamera$CameraInfo;)V

    .line 593
    iget v3, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-nez v3, :cond_1b

    .line 594
    new-instance v3, Lcom/sec/android/seccamera/SecCamera;

    const/16 v4, 0x64

    invoke-direct {v3, v1, v4}, Lcom/sec/android/seccamera/SecCamera;-><init>(II)V

    .line 597
    :goto_1a
    return-object v3

    .line 591
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 597
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public static open(I)Lcom/sec/android/seccamera/SecCamera;
    .registers 3
    .parameter "cameraId"

    .prologue
    .line 569
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "SecCamera.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v0, Lcom/sec/android/seccamera/SecCamera;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/sec/android/seccamera/SecCamera;-><init>(II)V

    return-object v0
.end method

.method public static open(II)Lcom/sec/android/seccamera/SecCamera;
    .registers 3
    .parameter "cameraId"
    .parameter "priority"

    .prologue
    .line 576
    new-instance v0, Lcom/sec/android/seccamera/SecCamera;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/seccamera/SecCamera;-><init>(II)V

    return-object v0
.end method

.method private static postBlinkRectFromNative(Ljava/lang/Object;I[I[I[I[I)V
    .registers 13
    .parameter "camera_ref"
    .parameter "blink_rect_cnt"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1276
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "postBlinkRectFromNative"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/seccamera/SecCamera;

    .line 1279
    .local v6, c:Lcom/sec/android/seccamera/SecCamera;
    if-nez v6, :cond_12

    .line 1287
    :goto_11
    return-void

    .line 1282
    :cond_12
    iget-object v0, v6, Lcom/sec/android/seccamera/SecCamera;->mOnBlinkDetectionEventListener:Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;

    if-eqz v0, :cond_21

    .line 1283
    iget-object v0, v6, Lcom/sec/android/seccamera/SecCamera;->mOnBlinkDetectionEventListener:Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;->onBlinkDetectionEvent(I[I[I[I[I)V

    goto :goto_11

    .line 1285
    :cond_21
    const-string v0, "SecCamera-JNI-Java"

    const-string v1, "mOnBlinkDetectionEventListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 9
    .parameter "camera_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1259
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/seccamera/SecCamera;

    .line 1260
    .local v0, c:Lcom/sec/android/seccamera/SecCamera;
    if-nez v0, :cond_b

    .line 1269
    :goto_a
    return-void

    .line 1263
    :cond_b
    iget-object v2, v0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    if-eqz v2, :cond_1b

    .line 1264
    iget-object v2, v0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/sec/android/seccamera/SecCamera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1265
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Lcom/sec/android/seccamera/SecCamera;->mEventHandler:Lcom/sec/android/seccamera/SecCamera$EventHandler;

    invoke-virtual {v2, v1}, Lcom/sec/android/seccamera/SecCamera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a

    .line 1267
    .end local v1           #m:Landroid/os/Message;
    :cond_1b
    const-string v2, "SecCamera-JNI-Java"

    const-string v3, "mEventHandler is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private final native releaseFrameShot()V
.end method

.method private final native releaseMosaicShot()V
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setPreviewDisplay(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .registers 3
    .parameter "callbackBuffer"

    .prologue
    .line 918
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/sec/android/seccamera/SecCamera;->_addCallbackBuffer([BI)V

    .line 919
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .registers 3
    .parameter "callbackBuffer"

    .prologue
    .line 961
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/sec/android/seccamera/SecCamera;->addCallbackBuffer([BI)V

    .line 962
    return-void
.end method

.method public final autoFocus(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V
    .registers 2
    .parameter "cb"

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    .line 1363
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_autoFocus()V

    .line 1364
    return-void
.end method

.method public final cancelAutoFocus()V
    .registers 1

    .prologue
    .line 1379
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_cancelAutoFocus()V

    .line 1380
    return-void
.end method

.method public cancelCaptureAddMeShot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2038
    const/16 v0, 0x40e

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2039
    return-void
.end method

.method public cancelPanorama()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1950
    const/16 v0, 0x3ff

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1951
    return-void
.end method

.method public cancelSeriesActionShot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2013
    const/16 v0, 0x407

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2014
    return-void
.end method

.method public captureBurstShot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1992
    const/16 v0, 0x414

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1993
    return-void
.end method

.method public doSnapAddMeShot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2034
    const/16 v0, 0x40d

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2035
    return-void
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_release()V

    .line 625
    return-void
.end method

.method public finishActionShot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2017
    const/16 v0, 0x409

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2018
    return-void
.end method

.method public finishAddMeShot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2042
    const/16 v0, 0x40f

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2043
    return-void
.end method

.method public finishFrameShot()V
    .registers 1

    .prologue
    .line 2087
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->releaseFrameShot()V

    .line 2088
    return-void
.end method

.method public finishMosaicShot()V
    .registers 1

    .prologue
    .line 2097
    return-void
.end method

.method public getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;
    .registers 4

    .prologue
    .line 1817
    new-instance v0, Lcom/sec/android/seccamera/SecCamera$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sec/android/seccamera/SecCamera$Parameters;-><init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera$1;)V

    .line 1818
    .local v0, p:Lcom/sec/android/seccamera/SecCamera$Parameters;
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 1819
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 1820
    return-object v0
.end method

.method public initializeActionShot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1997
    const/16 v0, 0x404

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1998
    return-void
.end method

.method public initializeAddMeShot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2022
    const/16 v0, 0x40a

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2023
    return-void
.end method

.method public initializeFrameShot()V
    .registers 1

    .prologue
    .line 2083
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_initializeFrameShot()V

    .line 2084
    return-void
.end method

.method public initializeMosaicShot()V
    .registers 1

    .prologue
    .line 2092
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_initializeMosaicShot()V

    .line 2093
    return-void
.end method

.method public final native lock()V
.end method

.method public lockFaceDetect()V
    .registers 4

    .prologue
    .line 2050
    const/16 v0, 0x44e

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2051
    return-void
.end method

.method public final native native_initializeBlinkDetection()V
.end method

.method public final native native_sendcommand(III)V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .registers 2

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->native_release()V

    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 639
    return-void
.end method

.method public final native releaseBlinkDetection()V
.end method

.method public setAEAWBLockState(II)V
    .registers 4
    .parameter "ae_lockunlock"
    .parameter "awb_lockunlock"

    .prologue
    .line 2046
    const/16 v0, 0x44d

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2047
    return-void
.end method

.method public final setAutoFocusCb(Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;)V
    .registers 2
    .parameter "cb"

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    .line 1386
    return-void
.end method

.method public setBurstShotStoring()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1988
    const/16 v0, 0x413

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1989
    return-void
.end method

.method public setChkDataLineListener(Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    .line 508
    return-void
.end method

.method public setContinuousShotSound(I)V
    .registers 4
    .parameter "sound"

    .prologue
    const/16 v1, 0x403

    const/4 v0, 0x0

    .line 1967
    if-lez p1, :cond_9

    .line 1968
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1972
    :goto_8
    return-void

    .line 1970
    :cond_9
    invoke-virtual {p0, v1, v0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_8
.end method

.method public setDefaultIMEI(I)V
    .registers 4
    .parameter "bIsDefaultIMEI"

    .prologue
    .line 2078
    const/16 v0, 0x453

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2079
    return-void
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Lcom/sec/android/seccamera/SecCamera$ErrorCallback;)V
    .registers 2
    .parameter "cb"

    .prologue
    .line 1792
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

    .line 1793
    return-void
.end method

.method public final setFaceDetectionListener(Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1626
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

    .line 1627
    return-void
.end method

.method public final native setFrameShotIndex(I)V
.end method

.method public setFrontSensorMirror(ZI)V
    .registers 7
    .parameter "mirror"
    .parameter "orientation"

    .prologue
    const/16 v3, 0x456

    const/16 v2, 0x412

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2101
    if-eqz p1, :cond_f

    .line 2102
    invoke-virtual {p0, v3, v1, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2103
    invoke-virtual {p0, v2, p2, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2108
    :goto_e
    return-void

    .line 2105
    :cond_f
    invoke-virtual {p0, v3, v0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2106
    invoke-virtual {p0, v2, p2, v0}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_e
.end method

.method public final native setMosaicShotBack()V
.end method

.method public final native setMosaicShotIndex(I)V
.end method

.method public final native setMosaicShotNext()V
.end method

.method public setObjectTrackingMsgListener(Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    .line 497
    return-void
.end method

.method public setObjectTrackingPosition(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2058
    const/16 v0, 0x44f

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2059
    return-void
.end method

.method public setOnActionShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    .line 464
    return-void
.end method

.method public setOnAddMeEventListener(Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnAddMeEventListener:Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;

    .line 448
    return-void
.end method

.method public setOnBlinkDetectionEventListener(Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 474
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBlinkDetectionEventListener:Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;

    .line 475
    return-void
.end method

.method public setOnBurstShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    .line 435
    return-void
.end method

.method public setOnCartoonShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    .line 486
    return-void
.end method

.method public setOnContinuousShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 421
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    .line 422
    return-void
.end method

.method public setOnHDRShotEventListener(Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 534
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    .line 535
    return-void
.end method

.method public setOnPanoramaEventListener(Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 408
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    .line 409
    return-void
.end method

.method public setOnSmileShotDetectionSuccessListener(Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    .line 521
    return-void
.end method

.method public final setOneShotPreviewCallback(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V
    .registers 4
    .parameter "cb"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 853
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 854
    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    .line 855
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    .line 856
    if-eqz p1, :cond_e

    :goto_a
    invoke-direct {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZ)V

    .line 857
    return-void

    :cond_e
    move v0, v1

    .line 856
    goto :goto_a
.end method

.method public setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V
    .registers 3
    .parameter "params"

    .prologue
    .line 1806
    invoke-virtual {p1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_setParameters(Ljava/lang/String;)V

    .line 1807
    return-void
.end method

.method public final setPreviewCallback(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V
    .registers 4
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 835
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 836
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    .line 837
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    .line 840
    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-direct {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZ)V

    .line 841
    return-void

    :cond_e
    move v0, v1

    .line 840
    goto :goto_a
.end method

.method public final setPreviewCallbackWithBuffer(Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)V
    .registers 4
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 882
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 883
    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z

    .line 884
    iput-boolean v1, p0, Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z

    .line 885
    if-eqz p1, :cond_b

    move v0, v1

    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZ)V

    .line 886
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    if-eqz p1, :cond_a

    .line 723
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 727
    :goto_9
    return-void

    .line 725
    :cond_a
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_9
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setResolutionActionShot(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2001
    const/16 v0, 0x405

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2002
    return-void
.end method

.method public setShootingMode(I)V
    .registers 4
    .parameter "shootingMode"

    .prologue
    const/4 v1, 0x0

    .line 1824
    add-int/lit16 v0, p1, 0x3e8

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1825
    return-void
.end method

.method public setShootingModeCallbacks(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V
    .registers 5
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 1925
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    .line 1926
    iput-object p2, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 1927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 1928
    iput-object p3, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 1929
    return-void
.end method

.method public final setZoomChangeListener(Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1599
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    .line 1600
    return-void
.end method

.method public startBurstShot(Z)V
    .registers 4
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 1976
    if-eqz p1, :cond_9

    .line 1977
    const/16 v0, 0x415

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1981
    :goto_8
    return-void

    .line 1979
    :cond_9
    const/16 v0, 0x416

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_8
.end method

.method public startCaptureAddMeShot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2026
    const/16 v0, 0x40b

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2027
    return-void
.end method

.method public startContinuousShot(Z)V
    .registers 4
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 1955
    if-eqz p1, :cond_9

    .line 1956
    const/16 v0, 0x400

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1960
    :goto_8
    return-void

    .line 1958
    :cond_9
    const/16 v0, 0x401

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_8
.end method

.method public final startFaceDetection()V
    .registers 3

    .prologue
    .line 1650
    iget-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_c

    .line 1651
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1652
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-gtz v0, :cond_1e

    .line 1653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getMaxNumDetectedFaces() return 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1655
    :cond_1e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->_startFaceDetection(I)V

    .line 1656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 1657
    return-void
.end method

.method public startObjectTracking()V
    .registers 4

    .prologue
    .line 2062
    const/16 v0, 0x450

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2063
    return-void
.end method

.method public startPanorama(Z)V
    .registers 4
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 1942
    if-eqz p1, :cond_9

    .line 1943
    const/16 v0, 0x3fc

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1947
    :goto_8
    return-void

    .line 1945
    :cond_9
    const/16 v0, 0x3fd

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_8
.end method

.method public final native startPreview()V
.end method

.method public startSeriesActionShot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2005
    const/16 v0, 0x406

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2006
    return-void
.end method

.method public startSmileDetection(Z)V
    .registers 4
    .parameter "start"

    .prologue
    const/4 v1, 0x0

    .line 1933
    if-eqz p1, :cond_9

    .line 1934
    const/16 v0, 0x3fa

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1938
    :goto_8
    return-void

    .line 1936
    :cond_9
    const/16 v0, 0x3fb

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    goto :goto_8
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public startTouchAutoFocus()V
    .registers 4

    .prologue
    .line 2070
    const/16 v0, 0x451

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2071
    return-void
.end method

.method public final stopFaceDetection()V
    .registers 2

    .prologue
    .line 1665
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->_stopFaceDetection()V

    .line 1666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 1667
    return-void
.end method

.method public stopObjectTracking()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2066
    const/16 v0, 0x450

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2067
    return-void
.end method

.method public final stopPreview()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 805
    invoke-direct {p0}, Lcom/sec/android/seccamera/SecCamera;->_stopPreview()V

    .line 806
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z

    .line 808
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    .line 809
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 810
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 811
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 812
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    .line 813
    return-void
.end method

.method public stopSeriesActionShot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2009
    const/16 v0, 0x408

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2010
    return-void
.end method

.method public final native stopSmoothZoom()V
.end method

.method public stopTouchAutoFocus()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2074
    const/16 v0, 0x451

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2075
    return-void
.end method

.method public switchPositionAddMeShot(I)V
    .registers 4
    .parameter "setLeft"

    .prologue
    .line 2030
    const/16 v0, 0x40c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2031
    return-void
.end method

.method public final takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V
    .registers 5
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 1429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sec/android/seccamera/SecCamera;->takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 1430
    return-void
.end method

.method public final takePicture(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V
    .registers 7
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    .line 1465
    iput-object p2, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 1466
    iput-object p3, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 1467
    iput-object p4, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    .line 1470
    const/4 v0, 0x0

    .line 1471
    .local v0, msgType:I
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    if-eqz v1, :cond_f

    .line 1472
    or-int/lit8 v0, v0, 0x2

    .line 1474
    :cond_f
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    if-eqz v1, :cond_15

    .line 1475
    or-int/lit16 v0, v0, 0x80

    .line 1477
    :cond_15
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    if-eqz v1, :cond_1b

    .line 1478
    or-int/lit8 v0, v0, 0x40

    .line 1480
    :cond_1b
    iget-object v1, p0, Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    if-eqz v1, :cond_21

    .line 1481
    or-int/lit16 v0, v0, 0x100

    .line 1484
    :cond_21
    invoke-direct {p0, v0}, Lcom/sec/android/seccamera/SecCamera;->native_takePicture(I)V

    .line 1485
    return-void
.end method

.method public terminateBurstShot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1984
    const/16 v0, 0x417

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1985
    return-void
.end method

.method public terminateContinuousShot()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1963
    const/16 v0, 0x402

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 1964
    return-void
.end method

.method public final native unlock()V
.end method

.method public unlockFaceDetect()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2054
    const/16 v0, 0x44e

    invoke-virtual {p0, v0, v1, v1}, Lcom/sec/android/seccamera/SecCamera;->native_sendcommand(III)V

    .line 2055
    return-void
.end method
