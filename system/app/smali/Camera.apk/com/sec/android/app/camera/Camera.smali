.class public Lcom/sec/android/app/camera/Camera;
.super Lcom/sec/android/app/camera/AbstractCameraActivity;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camera$UserWrapper;,
        Lcom/sec/android/app/camera/Camera$OnUserSelected;,
        Lcom/sec/android/app/camera/Camera$LastContentUriCallback;,
        Lcom/sec/android/app/camera/Camera$MainHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MOVE_SENSITIVITY:I = 0x5

.field public static ACTIVE_REQUEST_TIMEOUT:I = 0x0

.field public static ACTIVE_USER:I = 0x0

.field private static final AF_TOUCH_ALLOW_LEFT_MARGIN:I = 0x34

.field private static final AF_TOUCH_ALLOW_TOP_MARGIN:I = 0x34

.field private static AF_WAIT_TIMER_EXPIRED:I = 0x0

.field public static CANCEL_ACTIVE_USER:I = 0x0

.field private static CA_HARDKEY_FULL_PRESS:I = 0x0

.field private static CA_HARDKEY_FULL_UP:I = 0x0

.field private static CA_HARDKEY_HALF_PRESS:I = 0x0

.field private static CA_HARDKEY_HALF_UP:I = 0x0

.field private static CA_HARDKEY_NONE:I = 0x0

.field private static CONTINUOUS_SHOT_DELAYED_SAVING:I = 0x0

.field private static final DM_CAMERA_OFF:I = 0x0

.field private static final DM_CAMERA_ON:I = 0x1

.field public static final FILE_USER_PHOTO_DIR:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera"

.field public static final FILE_USER_PHOTO_PATH:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

.field public static final FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

.field private static FOCUS_TEXT_DURATION:I = 0x0

.field private static FOCUS_TEXT_TIMER_EXPIRED:I = 0x0

.field private static HALF_SHUTTER_DURATION:I = 0x0

.field private static final INTENT_MSG_SECURITY:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field private static final LAST_CAPTURE_RAW_DATA:Ljava/lang/String; = "mLastCaptureRawData"

.field private static final NUM_SHUTTERSOUND_CHANNELS:I = 0x3

.field public static final OBJECT_TRACKING_STATUS_BASE:I = 0x0

.field public static final OBJECT_TRACKING_STATUS_FAIL:I = 0x3

.field public static final OBJECT_TRACKING_STATUS_MISSING:I = 0x4

.field public static final OBJECT_TRACKING_STATUS_PROGRESSING:I = 0x1

.field public static final OBJECT_TRACKING_STATUS_SUCCESS:I = 0x2

.field private static ORIENTATION_DIRTY_DURATION:I = 0x0

.field private static ORIENTATION_TIMER_EXPIRED:I = 0x0

.field private static final PREVIEW_NORMAL_WIDTH:I = 0x280

.field private static final PREVIEW_WIDE_WIDTH:I = 0x320

.field public static REFESH_VIEW_COMMAND:I = 0x0

.field private static RETRY_AUDIO_FOCUS_GAIN:I = 0x0

.field private static RETRY_AUDIO_FOCUS_GAIN_DURATION:I = 0x0

.field private static RUN_DIALOG_TO_CONFIRM:I = 0x0

.field private static RUN_DIALOG_TO_NOTICE_COMFIRMED:I = 0x0

.field private static RUN_TO_SNS_MODE:I = 0x0

.field private static final SCREEN_HEIGHT:I = 0x1e0

.field private static final SCREEN_WIDTH:I = 0x320

.field private static final SERVICE_RESPOND_TO_CLIENT_DIALOG:I = 0x3e8

.field private static final SERVICE_RESPOND_TO_CLIENT_STATUS:I = 0x3e9

.field private static SET_DIRTY_COUNT:I = 0x0

.field private static SET_DIRTY_DURATION:I = 0x0

.field private static SET_DIRTY_TIMER_EXPIRED:I = 0x0

.field public static SnS_RECV_FOLDER:Ljava/lang/String; = null

.field protected static final TAG:Ljava/lang/String; = "Camera"

.field private static final WIDGET_SETTINGS_OFF:Ljava/lang/String; = "com.sec.samsung.torchwidget.widget_off"

.field private static final ZOOM_VELOCITY:I = 0x46

.field private static mScanToast:Landroid/widget/Toast;

.field private static mStorageToast:Landroid/widget/Toast;


# instance fields
.field private args:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private bFromSecureSetting:Z

.field private bIsCharging:Z

.field private battLevel:I

.field private battScale:I

.field private callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

.field private cb_conn:Landroid/content/ServiceConnection;

.field private conn:Landroid/content/ServiceConnection;

.field public devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

.field public iShootShareService:Lcom/samsung/shareshot/IShareShotService;

.field private localPersonInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

.field private mActionMoveCount:I

.field private mActiveIp:Ljava/lang/String;

.field public mActivieUserHandler:Landroid/os/Handler;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBinded:Z

.field private mBlinkDetectionRects:[[I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

.field private mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

.field private mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

.field private mChkAllowFocusTouch:Z

.field private mChkBlinkDetection:Z

.field private mChkFromMobileFax:Z

.field private mChkLaunchGallery:Z

.field private mCropValue:Ljava/lang/String;

.field public mDeviceList:Lcom/sec/android/glview/TwGLList;

.field public mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mDirtyCount:I

.field private mFinishOnCreate:Z

.field private mFocusText:Landroid/widget/TextView;

.field private mHardKeyStatus:I

.field mHideScaleZoomRect:Ljava/lang/Runnable;

.field private mIfBackToPreMode:Z

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsDestroying:Z

.field private mIsTouchFocusStarted:Z

.field private mLastCaptureRawData:[B

.field private mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

.field protected mLowBatteryDisableFlashPopupDisplayed:Z

.field private mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

.field public mName:Ljava/lang/String;

.field public mNameChanged:Z

.field public mNotify:Z

.field public mOnUserSelected:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/Camera$OnUserSelected;",
            ">;"
        }
    .end annotation
.end field

.field public mPhotoPath:Ljava/lang/String;

.field private mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mPreMode:I

.field public mReceiveImagePath:Ljava/lang/String;

.field public mReceived:Z

.field public mRespond:Z

.field public mRespondNoti:Z

.field private mRetryAudioFocusCount:I

.field private mReturnUri:Z

.field private mSaveUri:Landroid/net/Uri;

.field private mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

.field private mSideMenuLoadingThread:Ljava/lang/Thread;

.field private mSnsPrefs:Landroid/content/SharedPreferences;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStreamVolume:F

.field private mTouchAutoFocusActive:Z

.field private mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

.field public mUserArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;"
        }
    .end annotation
.end field

.field public mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

.field private mWifiBroadcastRegister:Z

.field private mWindowManager:Landroid/view/IWindowManager;

.field public misTvoutenabled:Z

.field public sobject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v1, 0x12c

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 219
    const/16 v0, 0x1388

    sput v0, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_DURATION:I

    .line 221
    sput v2, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    .line 222
    sput v3, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    .line 223
    sput v4, Lcom/sec/android/app/camera/Camera;->AF_WAIT_TIMER_EXPIRED:I

    .line 224
    sput v1, Lcom/sec/android/app/camera/Camera;->HALF_SHUTTER_DURATION:I

    .line 226
    sput v5, Lcom/sec/android/app/camera/Camera;->ORIENTATION_TIMER_EXPIRED:I

    .line 227
    const/16 v0, 0x3e8

    sput v0, Lcom/sec/android/app/camera/Camera;->ORIENTATION_DIRTY_DURATION:I

    .line 229
    const/4 v0, 0x5

    sput v0, Lcom/sec/android/app/camera/Camera;->SET_DIRTY_TIMER_EXPIRED:I

    .line 230
    const/16 v0, 0x64

    sput v0, Lcom/sec/android/app/camera/Camera;->SET_DIRTY_DURATION:I

    .line 231
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/camera/Camera;->SET_DIRTY_COUNT:I

    .line 233
    const/16 v0, 0xc8

    sput v0, Lcom/sec/android/app/camera/Camera;->RUN_DIALOG_TO_CONFIRM:I

    .line 234
    const/16 v0, 0xc9

    sput v0, Lcom/sec/android/app/camera/Camera;->RUN_TO_SNS_MODE:I

    .line 235
    const/16 v0, 0xca

    sput v0, Lcom/sec/android/app/camera/Camera;->RUN_DIALOG_TO_NOTICE_COMFIRMED:I

    .line 236
    const/16 v0, 0xcb

    sput v0, Lcom/sec/android/app/camera/Camera;->ACTIVE_USER:I

    .line 237
    const/16 v0, 0xcc

    sput v0, Lcom/sec/android/app/camera/Camera;->CANCEL_ACTIVE_USER:I

    .line 238
    const/16 v0, 0xcd

    sput v0, Lcom/sec/android/app/camera/Camera;->REFESH_VIEW_COMMAND:I

    .line 239
    const/16 v0, 0xce

    sput v0, Lcom/sec/android/app/camera/Camera;->ACTIVE_REQUEST_TIMEOUT:I

    .line 241
    sput v1, Lcom/sec/android/app/camera/Camera;->RETRY_AUDIO_FOCUS_GAIN:I

    .line 242
    const/16 v0, 0x1f4

    sput v0, Lcom/sec/android/app/camera/Camera;->RETRY_AUDIO_FOCUS_GAIN_DURATION:I

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ShareShot/RECV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->SnS_RECV_FOLDER:Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_NONE:I

    .line 306
    sput v2, Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_HALF_PRESS:I

    .line 307
    sput v3, Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_HALF_UP:I

    .line 308
    sput v4, Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_FULL_PRESS:I

    .line 309
    sput v5, Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_FULL_UP:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 178
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 179
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 180
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 181
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 183
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 185
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDetection:Z

    .line 186
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 187
    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    move-object v0, v1

    .line 190
    check-cast v0, [[I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 191
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 195
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 200
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 208
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    .line 209
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    .line 210
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->bIsCharging:Z

    .line 213
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 214
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mChkFromMobileFax:Z

    .line 216
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 217
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 232
    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    .line 243
    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mRetryAudioFocusCount:I

    .line 249
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 250
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    .line 258
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->bFromSecureSetting:Z

    .line 276
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 280
    const-string v0, " "

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    .line 281
    const-string v0, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 287
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 288
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mRespondNoti:Z

    .line 290
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->misTvoutenabled:Z

    .line 294
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mNotify:Z

    .line 295
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mRespond:Z

    .line 297
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mWifiBroadcastRegister:Z

    .line 298
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 299
    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mPreMode:I

    .line 300
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReceiveImagePath:Ljava/lang/String;

    .line 301
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mReceived:Z

    .line 302
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    .line 303
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mBinded:Z

    .line 311
    sget v0, Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_NONE:I

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mHardKeyStatus:I

    .line 407
    new-instance v0, Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 410
    new-instance v0, Lcom/sec/android/app/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$1;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    .line 478
    new-instance v0, Lcom/sec/android/app/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$2;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1910
    new-instance v0, Lcom/sec/android/app/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$4;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 3641
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 4555
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    .line 4556
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    .line 4557
    new-instance v0, Lcom/sec/android/app/camera/Camera$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$12;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    .line 4615
    new-instance v0, Lcom/sec/android/app/camera/Camera$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$13;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    .line 4684
    new-instance v0, Lcom/sec/android/app/camera/Camera$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$14;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    .line 4969
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    .line 5200
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    .line 5201
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    return-void
.end method

.method private IsGpsEnableInSettings()V
    .registers 4

    .prologue
    .line 2627
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900dd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090014

    new-instance v2, Lcom/sec/android/app/camera/Camera$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$6;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900df

    new-instance v2, Lcom/sec/android/app/camera/Camera$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$5;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2638
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 144
    sget v0, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 144
    sget v0, Lcom/sec/android/app/camera/Camera;->AF_WAIT_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/sec/android/app/camera/Camera;->mPreMode:I

    return p1
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    return-object p1
.end method

.method static synthetic access$1300()I
    .registers 1

    .prologue
    .line 144
    sget v0, Lcom/sec/android/app/camera/Camera;->RUN_TO_SNS_MODE:I

    return v0
.end method

.method static synthetic access$1400()I
    .registers 1

    .prologue
    .line 144
    sget v0, Lcom/sec/android/app/camera/Camera;->RUN_DIALOG_TO_NOTICE_COMFIRMED:I

    return v0
.end method

.method static synthetic access$1500()I
    .registers 1

    .prologue
    .line 144
    sget v0, Lcom/sec/android/app/camera/Camera;->RETRY_AUDIO_FOCUS_GAIN:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mRetryAudioFocusCount:I

    return v0
.end method

.method static synthetic access$1608(Lcom/sec/android/app/camera/Camera;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mRetryAudioFocusCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mRetryAudioFocusCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/Camera;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$1800()I
    .registers 1

    .prologue
    .line 144
    sget v0, Lcom/sec/android/app/camera/Camera;->RETRY_AUDIO_FOCUS_GAIN_DURATION:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 144
    sget v0, Lcom/sec/android/app/camera/Camera;->ORIENTATION_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/Camera;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery()V

    return-void
.end method

.method static synthetic access$2602(Lcom/sec/android/app/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->bFromSecureSetting:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraIndicators;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/Camera;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B

    return-object v0
.end method

.method static synthetic access$3002(Lcom/sec/android/app/camera/Camera;[B)[B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B

    return-object p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/MenuBase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    return-void
.end method

.method static synthetic access$3302(Lcom/sec/android/app/camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/sec/android/app/camera/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mBinded:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/IShareShotCallbackRegister;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/shareshot/IShareShotServiceCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V

    return-void
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 144
    sget v0, Lcom/sec/android/app/camera/Camera;->SET_DIRTY_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$500()I
    .registers 1

    .prologue
    .line 144
    sget v0, Lcom/sec/android/app/camera/Camera;->SET_DIRTY_DURATION:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/Camera;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    iput p1, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    return p1
.end method

.method static synthetic access$704(Lcom/sec/android/app/camera/Camera;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    return v0
.end method

.method static synthetic access$800()I
    .registers 1

    .prologue
    .line 144
    sget v0, Lcom/sec/android/app/camera/Camera;->SET_DIRTY_COUNT:I

    return v0
.end method

.method static synthetic access$900()I
    .registers 1

    .prologue
    .line 144
    sget v0, Lcom/sec/android/app/camera/Camera;->RUN_DIALOG_TO_CONFIRM:I

    return v0
.end method

.method private changeResolutionToPreviewSize(Z)Z
    .registers 5
    .parameter "restartPreview"

    .prologue
    .line 2358
    const-string v1, "800x480"

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v1

    if-ltz v1, :cond_19

    .line 2361
    const/16 v0, 0xb

    .line 2365
    .local v0, resolution:I
    :goto_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(IZ)Z

    move-result v1

    return v1

    .line 2363
    .end local v0           #resolution:I
    :cond_19
    const/16 v0, 0x11

    .restart local v0       #resolution:I
    goto :goto_10
.end method

.method private checkBatteryStatus()V
    .registers 3

    .prologue
    .line 2813
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2814
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2815
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2816
    return-void
.end method

.method private createCaptureBitmap([B)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "data"

    .prologue
    .line 3809
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getTempJpegPath()Ljava/lang/String;

    move-result-object v2

    .line 3810
    .local v2, filepath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3811
    .local v1, degree:I
    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/Camera;->saveDataToFile(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3812
    invoke-static {v2}, Lcom/sec/android/app/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 3813
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3817
    :cond_17
    const v3, 0xc800

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3818
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3819
    return-object v0
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2819
    const-string v3, "status"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2820
    .local v1, battStatus:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    .line 2821
    const-string v3, "level"

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    .line 2822
    const-string v3, "plugged"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2823
    .local v0, battPlugged:I
    const-string v3, "temperature"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2824
    .local v2, battTemp:I
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->bIsCharging:Z

    .line 2826
    const/4 v3, 0x2

    if-eq v0, v3, :cond_30

    if-ne v0, v5, :cond_32

    .line 2827
    :cond_30
    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->bIsCharging:Z

    .line 2829
    :cond_32
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleBatteryChanged : Level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", battPlugged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", battTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    if-gt v3, v4, :cond_9b

    .line 2855
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    sget v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v3, v4, :cond_cb

    .line 2856
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_93

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 2857
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 2859
    :cond_93
    iput-object v7, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 2861
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 2862
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->handleLowBattery()V

    .line 2884
    :cond_9b
    :goto_9b
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    if-le v3, v4, :cond_c1

    .line 2885
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_b2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 2886
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 2888
    :cond_b2
    iput-object v7, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 2890
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-eqz v3, :cond_c1

    .line 2891
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 2892
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 2897
    :cond_c1
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->bIsCharging:Z

    if-eqz v3, :cond_d6

    .line 2898
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setBatteryCharging()V

    .line 2903
    :goto_ca
    return-void

    .line 2864
    :cond_cb
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v3, :cond_9b

    .line 2865
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 2866
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery()V

    goto :goto_9b

    .line 2902
    :cond_d6
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    mul-int/lit8 v4, v4, 0x64

    iget v5, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setBatteryLevel(I)V

    goto :goto_ca
.end method

.method private handlePluggedLowBattery()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4489
    const-string v1, "Camera"

    const-string v2, "handlePluggedLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4491
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4526
    :goto_14
    return-void

    .line 4494
    :cond_15
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4495
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4496
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 4497
    const v1, 0x7f0900fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 4499
    const v1, 0x7f090016

    new-instance v2, Lcom/sec/android/app/camera/Camera$10;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$10;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4505
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 4506
    new-instance v1, Lcom/sec/android/app/camera/Camera$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$11;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 4521
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 4522
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 4524
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 4525
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_14
.end method

.method private handleShutterKey()Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, 0x2a

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3367
    const-string v4, "Camera"

    const-string v5, "handleShutterKey"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    const-string v4, "AXLOG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total-Shot2Shot**StartU["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]**"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    const-string v4, "AXLOG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ShutterKeyPressed**Point["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]**"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v4, :cond_64

    .line 3377
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 3381
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 3382
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 3386
    :cond_64
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    if-ne v4, v10, :cond_76

    .line 3387
    const-string v3, "Camera"

    const-string v4, "handleShutterKey - CE_STATE_STARTING_PREVIEW"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    :cond_75
    :goto_75
    return v2

    .line 3391
    :cond_76
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 3392
    const-string v2, "Camera"

    const-string v4, "returning because it is capturing.."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3393
    goto :goto_75

    .line 3396
    :cond_87
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    if-ne v4, v10, :cond_b1

    .line 3397
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x2c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 3398
    .local v1, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V

    .line 3399
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 3400
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v2, v3

    .line 3401
    goto :goto_75

    .line 3405
    .end local v1           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :cond_b1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_c3

    .line 3406
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v2, v3

    .line 3407
    goto :goto_75

    .line 3408
    :cond_c3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    if-ne v4, v9, :cond_75

    .line 3409
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3410
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v0, :cond_f1

    .line 3411
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v8, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3412
    .restart local v0       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3414
    :cond_f1
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;)V

    .line 3415
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->isPanoramaCapturing()Z

    move-result v4

    if-eqz v4, :cond_75

    .line 3416
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v2

    if-ge v2, v9, :cond_103

    move v2, v3

    .line 3417
    goto/16 :goto_75

    .line 3418
    :cond_103
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v2, v3

    .line 3419
    goto/16 :goto_75
.end method

.method private handleShutterKeyReleased()Z
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x2a

    const/4 v2, 0x1

    .line 3429
    const-string v3, "Camera"

    const-string v4, "handleShutterKeyReleased"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 3432
    const-string v3, "Camera"

    const-string v4, "handleShutterKeyReleased - returning because it is capturing.."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    :goto_1a
    return v2

    .line 3436
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    if-ne v3, v6, :cond_5d

    .line 3437
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3438
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v0, :cond_49

    .line 3439
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v5, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3440
    .restart local v0       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3442
    :cond_49
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->isPanoramaCapturing()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v3

    if-ge v3, v6, :cond_5d

    .line 3443
    const-string v3, "Camera"

    const-string v4, "handleShutterKeyReleased - panorama can be saved at least two shot"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 3448
    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_5d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_bb

    .line 3449
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x2c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 3450
    .local v1, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V

    .line 3451
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 3452
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 3454
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    goto :goto_1a

    .line 3457
    :cond_91
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->stopSmileShot()V

    .line 3458
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 3459
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_1a

    .line 3462
    :cond_a0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->startDetect(Z)V

    .line 3463
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartSmileDetection()V

    .line 3464
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_1a

    .line 3469
    .end local v1           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :cond_bb
    const/4 v2, 0x0

    goto/16 :goto_1a
.end method

.method private initBlinkdetection()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDetection:Z

    move-object v0, v1

    .line 936
    check-cast v0, [[I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 937
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 938
    return-void
.end method

.method private initIntentFilter()V
    .registers 8

    .prologue
    .line 821
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 824
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 826
    const-string v6, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 828
    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 829
    const-string v6, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 830
    const-string v6, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 831
    const-string v6, "file"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 832
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 835
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 836
    .local v2, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    const-string v6, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 838
    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 839
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 842
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 843
    .local v3, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 844
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 868
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 869
    .local v0, i:Landroid/content/IntentFilter;
    const-string v6, "com.android.shoot.userchanged"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 870
    const-string v6, "com.android.shootshare.recvfile"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 873
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 874
    .local v5, wifiDirectFilter:Landroid/content/IntentFilter;
    const-string v6, "android.net.wifidirect.DIRECT_PEER_CONNECTED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    const-string v6, "android.net.wifidirect.CREATE_LINK_FAIL"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 876
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v5}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 879
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 880
    .local v4, intentFilterShutdown:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 881
    const-string v6, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 882
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v4}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 884
    return-void
.end method

.method private initIntentReceive()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 919
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 921
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_48

    .line 922
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 923
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 924
    const-string v1, "return-uri"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    .line 926
    const-string v1, "mobilefax"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mChkFromMobileFax:Z

    .line 927
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mChkFromMobileFax = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkFromMobileFax:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :goto_47
    return-void

    .line 929
    :cond_48
    const-string v1, "Camera"

    const-string v2, "Extra is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method

.method private initRemains()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 888
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->searchForInitialLastContentUri()V

    .line 891
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 894
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initCameraSound()V

    .line 895
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initBlinkdetection()V

    .line 897
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraIndicators;->initIndicators()V

    .line 900
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 902
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 904
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 905
    return-void
.end method

.method private isAutoFocusEnabled()Z
    .registers 3

    .prologue
    .line 1970
    const/4 v0, 0x1

    .line 1975
    .local v0, shootingmode:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_10

    .line 1982
    :goto_c
    return v0

    .line 1978
    :sswitch_d
    const/4 v0, 0x0

    goto :goto_c

    .line 1975
    nop

    :sswitch_data_10
    .sparse-switch
        0x2 -> :sswitch_d
        0xa -> :sswitch_d
    .end sparse-switch
.end method

.method private isTouchAutoFocusEnabled()Z
    .registers 4

    .prologue
    .line 1954
    const/4 v0, 0x0

    .line 1955
    .local v0, shootingmode:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1a

    .line 1966
    :cond_c
    :goto_c
    return v0

    .line 1961
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    .line 1962
    const/4 v0, 0x1

    goto :goto_c

    .line 1955
    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_d
        0x1 -> :sswitch_d
        0x8 -> :sswitch_d
        0xe -> :sswitch_d
        0xf -> :sswitch_d
    .end sparse-switch
.end method

.method private manageLocalService(Z)V
    .registers 11
    .parameter "start"

    .prologue
    const/4 v8, 0x1

    .line 4642
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " manageLocalService "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    if-nez p1, :cond_8c

    .line 4644
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v5, :cond_20

    .line 4682
    :cond_1f
    :goto_1f
    return-void

    .line 4646
    :cond_20
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    if-eqz v5, :cond_1f

    .line 4649
    :try_start_24
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v5

    if-nez v5, :cond_31

    .line 4650
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->leaveOut()V

    .line 4652
    :cond_31
    const-string v5, "Camera"

    const-string v6, " unbind service"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4653
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    invoke-interface {v5, v6}, Lcom/samsung/shareshot/IShareShotCallbackRegister;->unregisterCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z

    .line 4654
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWifiDirectConnected()Z

    move-result v5

    if-nez v5, :cond_81

    .line 4655
    :cond_4d
    const-string v5, "Camera"

    const-string v6, " stop service"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4657
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_5e} :catch_7c

    .line 4659
    :try_start_5e
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4660
    .local v2, callbackUnbindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->stopService(Landroid/content/Intent;)Z

    .line 4661
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4662
    .local v4, unbindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->stopService(Landroid/content/Intent;)Z
    :try_end_72
    .catch Ljava/lang/NullPointerException; {:try_start_5e .. :try_end_72} :catch_73
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_72} :catch_7c

    goto :goto_1f

    .line 4663
    .end local v2           #callbackUnbindIntent:Landroid/content/Intent;
    .end local v4           #unbindIntent:Landroid/content/Intent;
    :catch_73
    move-exception v3

    .line 4664
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_74
    const-string v5, "Camera"

    const-string v6, " service null exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_7b} :catch_7c

    goto :goto_1f

    .line 4670
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catch_7c
    move-exception v3

    .line 4671
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f

    .line 4667
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_81
    :try_start_81
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4668
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8b} :catch_7c

    goto :goto_1f

    .line 4673
    :cond_8c
    if-ne p1, v8, :cond_1f

    .line 4674
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4675
    .local v1, callbackBindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4676
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v5, v8}, Lcom/sec/android/app/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 4678
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4679
    .local v0, bindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 4680
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v5, v8}, Lcom/sec/android/app/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_1f
.end method

.method private onChkImageCaptureIntent()Z
    .registers 3

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V
    .registers 4
    .parameter "gsUserInfo"

    .prologue
    .line 4796
    const-string v0, "Camera"

    const-string v1, "RECV_ACTIVATE_MSG: showing dialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4797
    const-string v0, "Camera"

    const-string v1, "checkActivateDlg() == false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    new-instance v0, Lcom/sec/android/app/camera/Camera$15;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/Camera$15;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4821
    return-void
.end method

.method private onUserCancelSelected(Lcom/samsung/shareshot/User;)V
    .registers 5
    .parameter "user"

    .prologue
    .line 4953
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->cancelActivateUser(Ljava/lang/String;)V

    .line 4954
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onUnSelected()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 4959
    :goto_10
    return-void

    .line 4956
    :catch_11
    move-exception v0

    .line 4957
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10
.end method

.method private onUserSelected(Lcom/samsung/shareshot/User;)V
    .registers 5
    .parameter "user"

    .prologue
    .line 4935
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->isOnline()Z

    move-result v1

    if-nez v1, :cond_b

    .line 4946
    :goto_a
    return-void

    .line 4941
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->activateUser(Ljava/lang/String;)V

    .line 4942
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onSelected()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_1c

    goto :goto_a

    .line 4943
    :catch_1c
    move-exception v0

    .line 4944
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method private resetFocusDueToZoom()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1894
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1895
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 1897
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1898
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1900
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_19

    .line 1901
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 1902
    :cond_19
    return-void
.end method

.method private setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 811
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 812
    if-nez p1, :cond_1c

    .line 813
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f03000a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/EmptyView;

    .line 814
    .local v0, emptyview:Lcom/sec/android/app/camera/EmptyView;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 815
    invoke-virtual {v0}, Lcom/sec/android/app/camera/EmptyView;->showMenu()V

    .line 817
    .end local v0           #emptyview:Lcom/sec/android/app/camera/EmptyView;
    :cond_1c
    return-void
.end method

.method private startAFWaitTimer()V
    .registers 5

    .prologue
    .line 4447
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4448
    .local v0, msg:Landroid/os/Message;
    sget v1, Lcom/sec/android/app/camera/Camera;->AF_WAIT_TIMER_EXPIRED:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4449
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v2, Lcom/sec/android/app/camera/Camera;->HALF_SHUTTER_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4450
    return-void
.end method

.method private stopAFWaitTimer()V
    .registers 3

    .prologue
    .line 4454
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camera;->AF_WAIT_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 4455
    return-void
.end method

.method private declared-synchronized stopPostCaptureAnimation()V
    .registers 5

    .prologue
    .line 4373
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v1, :cond_50

    .line 4375
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 4380
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 4381
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 4383
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 4385
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 4386
    .local v0, orientation:I
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPostCaptureAnimation - OrientationForPicture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4389
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_50} :catch_55

    .line 4399
    .end local v0           #orientation:I
    :cond_50
    :goto_50
    monitor-exit p0

    return-void

    .line 4373
    :catchall_52
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4395
    :catch_55
    move-exception v1

    goto :goto_50
.end method

.method private switchToCamcorder()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2697
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2705
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 2707
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 2709
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/Camera$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$7;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2717
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    .line 2718
    return-void
.end method


# virtual methods
.method public cancelAutoFocus()V
    .registers 2

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1841
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1842
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1843
    return-void
.end method

.method public cancelCapturePanorama()V
    .registers 2

    .prologue
    .line 4127
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 4128
    return-void
.end method

.method public cancelShutterTimer()V
    .registers 2

    .prologue
    .line 4105
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doCancelShutterTimer()V

    .line 4106
    return-void
.end method

.method public cancelTouchAutoFocus()V
    .registers 4

    .prologue
    .line 1813
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->stopLongTouchAutoFocus()V

    .line 1815
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getTouchFocusRectCenterX()I

    move-result v0

    .line 1816
    .local v0, TouchFocusRectCenterX:I
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getTouchFocusRectCenterY()I

    move-result v1

    .line 1817
    .local v1, TouchFocusRectCenterY:I
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchFocusRectCenter(II)V

    .line 1819
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 1821
    return-void
.end method

.method public changeContrastPreview(I)V
    .registers 4
    .parameter "contrast"

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2650
    return-void
.end method

.method public changeEffectPreview(I)V
    .registers 5
    .parameter "effect"

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2464
    if-eqz p1, :cond_11

    .line 2465
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2466
    :cond_11
    return-void
.end method

.method public changeSaturationPreview(I)V
    .registers 4
    .parameter "saturation"

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2658
    return-void
.end method

.method public changeSceneModePreview(I)V
    .registers 4
    .parameter "sceneMode"

    .prologue
    .line 2103
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2104
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .registers 4
    .parameter "sharpness"

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2666
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .registers 5
    .parameter "whiteBalance"

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2479
    if-eqz p1, :cond_11

    .line 2480
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2481
    :cond_11
    return-void
.end method

.method public checkStorage(ZZ)V
    .registers 3
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 4179
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 4180
    return-void
.end method

.method public checkStorageLow()V
    .registers 7

    .prologue
    .line 4165
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v0

    .line 4166
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    .line 4167
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 4176
    :goto_d
    return-void

    .line 4170
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2e

    .line 4172
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    goto :goto_d

    .line 4174
    :cond_2e
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    goto :goto_d
.end method

.method public checkWifiConnection()Z
    .registers 4

    .prologue
    .line 2132
    const-string v1, "Camera"

    const-string v2, "checkWifiConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWifiDirectConnected()Z

    move-result v0

    .line 2134
    .local v0, bool_direct:Z
    if-nez v0, :cond_12

    .line 2135
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->showDialog(I)V

    .line 2136
    const/4 v0, 0x0

    .line 2138
    .end local v0           #bool_direct:Z
    :cond_12
    return v0
.end method

.method public clearActionShotRect()V
    .registers 4

    .prologue
    .line 5204
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v1, :cond_16

    .line 5205
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 5206
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_17

    .line 5211
    .end local v0           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    :cond_16
    :goto_16
    return-void

    .line 5209
    .restart local v0       #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    :cond_17
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->clearActionShotRect()V

    goto :goto_16
.end method

.method public clearInvisibleListViews()V
    .registers 2

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v0, :cond_9

    .line 2382
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleListViews()V

    .line 2384
    :cond_9
    return-void
.end method

.method public clearPanoramaRect()V
    .registers 4

    .prologue
    .line 3136
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v1, :cond_16

    .line 3137
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3138
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v0, :cond_17

    .line 3142
    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_16
    :goto_16
    return-void

    .line 3140
    .restart local v0       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_17
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->clearPanoramaRect()V

    goto :goto_16
.end method

.method public decreaseRemainCount()V
    .registers 3

    .prologue
    .line 4131
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->getRemainCount()I

    move-result v0

    .line 4132
    .local v0, nRemainCount:I
    if-lez v0, :cond_a

    .line 4133
    add-int/lit8 v0, v0, -0x1

    .line 4135
    :cond_a
    if-gtz v0, :cond_13

    .line 4136
    const/4 v0, 0x0

    .line 4137
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 4138
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->mediaStorageDialog()V

    .line 4140
    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setRemainCount(I)V

    .line 4141
    return-void
.end method

.method public finishTimerCount()V
    .registers 5

    .prologue
    .line 4476
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030012

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerCounting;

    .line 4477
    .local v0, menu:Lcom/sec/android/app/camera/TimerCounting;
    if-nez v0, :cond_10

    .line 4482
    :cond_f
    :goto_f
    return-void

    .line 4480
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerCounting;->isActive()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4481
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_f
.end method

.method public getActionShotProgressValue()I
    .registers 5

    .prologue
    const/16 v3, 0x2b

    .line 3563
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 3564
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_26

    .line 3565
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .end local v0           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3566
    .restart local v0       #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3568
    :cond_26
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActionShotProgressValue - progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->getProgressValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->getProgressValue()I

    move-result v1

    return v1
.end method

.method public getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;
    .registers 2

    .prologue
    .line 4529
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3473
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method public getChkSideMenuItemsShow()Z
    .registers 2

    .prologue
    .line 4420
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getChkSideMenuItemsShow()Z

    move-result v0

    return v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 4826
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 4832
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsLaunchGallery()Z
    .registers 2

    .prologue
    .line 1934
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    return v0
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 4838
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchAutoFocusActive()Z
    .registers 2

    .prologue
    .line 1947
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    return v0
.end method

.method public handleResolutionChanged(I)V
    .registers 3
    .parameter "resolution"

    .prologue
    .line 2398
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(IZ)V

    .line 2399
    return-void
.end method

.method public handleResolutionChanged(IZ)V
    .registers 5
    .parameter "resolution"
    .parameter "restartPreview"

    .prologue
    .line 2402
    const-string v0, "Camera"

    const-string v1, "handleResolutionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2405
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 2407
    if-eqz p2, :cond_1f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2410
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2413
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_38

    .line 2414
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setWideViewBGVisibility()V

    .line 2415
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2416
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_38

    .line 2417
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setGuideLineWideResolution(Z)V

    .line 2423
    :cond_38
    :goto_38
    return-void

    .line 2419
    :cond_39
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_38

    .line 2420
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setGuideLineWideResolution(Z)V

    goto :goto_38
.end method

.method public handleShootingModeChanged(I)V
    .registers 13
    .parameter "shootingMode"

    .prologue
    .line 2188
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleShootingModeChanged: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    const/4 v4, 0x0

    .line 2192
    .local v4, resolutionChanged:Z
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/CameraBaseIndicators;->changeIndicatorMode(I)V

    .line 2194
    const/16 v7, 0xf

    if-ne p1, v7, :cond_b6

    .line 2195
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v7, :cond_2e

    .line 2196
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 2198
    :cond_2e
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshForSNS()V

    .line 2199
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed()V

    .line 2200
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/CameraBaseIndicators;->changeIndicatorMode(I)V

    .line 2201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v7

    const/16 v8, 0x27

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 2215
    :goto_4a
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_de

    .line 2216
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 2221
    :goto_5a
    const/4 v7, 0x6

    if-ne p1, v7, :cond_e5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 2222
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    .line 2227
    :cond_6d
    :goto_6d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v4

    .line 2228
    if-eqz p1, :cond_7f

    const/16 v7, 0xf

    if-eq p1, v7, :cond_7f

    .line 2229
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initBlinkdetection()V

    .line 2232
    :cond_7f
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8d

    .line 2233
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2235
    :cond_8d
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2236
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2239
    packed-switch p1, :pswitch_data_286

    .line 2339
    :goto_9a
    :pswitch_9a
    const/16 v7, 0xf

    if-ne p1, v7, :cond_277

    .line 2340
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 2345
    :goto_a5
    if-eqz v4, :cond_27f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v7

    if-eqz v7, :cond_27f

    .line 2346
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 2347
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2353
    :goto_b5
    return-void

    .line 2204
    :cond_b6
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v7, :cond_c8

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v7, :cond_c8

    .line 2205
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 2206
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->unLockModeButton()V

    .line 2208
    :cond_c8
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v7, :cond_d2

    .line 2209
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->backFromSNS(Z)V

    .line 2211
    :cond_d2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v7

    const/16 v8, 0x27

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    goto/16 :goto_4a

    .line 2218
    :cond_de
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    goto/16 :goto_5a

    .line 2223
    :cond_e5
    const/4 v7, 0x6

    if-eq p1, v7, :cond_6d

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v7

    if-nez v7, :cond_6d

    .line 2224
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    goto/16 :goto_6d

    .line 2241
    :pswitch_fa
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x2a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 2242
    .local v3, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v3, :cond_124

    .line 2243
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v3           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    const/16 v7, 0x2a

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v3, p0, v7, v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2244
    .restart local v3       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x2a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2246
    :cond_124
    invoke-virtual {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;)V

    .line 2247
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showMenu()V

    .line 2248
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2250
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v4

    .line 2251
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_9a

    .line 2255
    .end local v3           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :pswitch_13c
    const-string v7, "Debug"

    const-string v8, "SMILE SHOT button clicked"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x2c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 2257
    .local v6, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    if-nez v6, :cond_174

    .line 2258
    const-string v7, "Debug"

    const-string v8, "SMILE VIEW create"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    new-instance v6, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .end local v6           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    const/16 v7, 0x2c

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2260
    .restart local v6       #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x2c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    :cond_174
    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showMenu()V

    .line 2263
    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    .line 2264
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_9a

    .line 2268
    .end local v6           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :pswitch_17f
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x2b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 2269
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_1a9

    .line 2270
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .end local v0           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    const/16 v7, 0x2b

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v7, v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2271
    .restart local v0       #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x2b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2273
    :cond_1a9
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setActionShotCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;)V

    .line 2274
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 2275
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showMenu()V

    .line 2276
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2277
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v4

    .line 2278
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_9a

    .line 2282
    .end local v0           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    :pswitch_1c4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getShootingVintageMode()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1d7

    .line 2283
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/CameraSettings;->setShootingVintageMode(I)V

    .line 2285
    :cond_1d7
    const/16 v7, 0x1f

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v10, 0x4

    invoke-static {v7, p0, v8, v9, v10}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_9a

    .line 2290
    :pswitch_1e7
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_9a

    .line 2293
    :pswitch_1ed
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_9a

    .line 2296
    :pswitch_1f3
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x2d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 2297
    .local v1, cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    if-nez v1, :cond_21d

    .line 2298
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .end local v1           #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    const/16 v7, 0x2d

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, p0, v7, v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2299
    .restart local v1       #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x2d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2301
    :cond_21d
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showMenu()V

    .line 2302
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_9a

    .line 2305
    .end local v1           #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    :pswitch_225
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v8, 0x7f030011

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/SelfShotView;

    .line 2307
    .local v5, self:Lcom/sec/android/app/camera/SelfShotView;
    invoke-virtual {v5}, Lcom/sec/android/app/camera/SelfShotView;->showMenu()V

    .line 2308
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2311
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    const/16 v8, 0x8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(IZ)Z

    move-result v4

    .line 2323
    goto/16 :goto_9a

    .line 2325
    .end local v5           #self:Lcom/sec/android/app/camera/SelfShotView;
    :pswitch_245
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x2e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 2326
    .local v2, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v2, :cond_26f

    .line 2327
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .end local v2           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    const/16 v7, 0x2e

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v2, p0, v7, v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2328
    .restart local v2       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v7, v7, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v8, 0x2e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2330
    :cond_26f
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showMenu()V

    .line 2331
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_9a

    .line 2342
    .end local v2           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :cond_277
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, p1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto/16 :goto_a5

    .line 2351
    :cond_27f
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_b5

    .line 2239
    :pswitch_data_286
    .packed-switch 0x0
        :pswitch_1e7
        :pswitch_9a
        :pswitch_fa
        :pswitch_13c
        :pswitch_9a
        :pswitch_9a
        :pswitch_225
        :pswitch_1e7
        :pswitch_1c4
        :pswitch_9a
        :pswitch_17f
        :pswitch_9a
        :pswitch_9a
        :pswitch_1f3
        :pswitch_245
        :pswitch_1ed
    .end packed-switch
.end method

.method public handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V
    .registers 12
    .parameter "event"

    .prologue
    .line 1987
    const-string v8, "Camera"

    const-string v9, "handleTouchAutoFocusEvent"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v8

    if-nez v8, :cond_11

    .line 2077
    :cond_10
    :goto_10
    return-void

    .line 1994
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v1, v8

    .line 1995
    .local v1, PtX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v2, v8

    .line 1996
    .local v2, PtY:I
    const/4 v5, 0x0

    .line 1998
    .local v5, previewWidth:I
    const/4 v7, 0x0

    .line 1999
    .local v7, screenWidth:I
    const/4 v6, 0x0

    .line 2000
    .local v6, screenHeight:I
    const/4 v3, 0x0

    .line 2001
    .local v3, allowLeftMargin:I
    const/4 v4, 0x0

    .line 2003
    .local v4, allowTopMargin:I
    const-string v8, "400x240"

    const-string v9, "800x480"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 2004
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v8

    if-eqz v8, :cond_b6

    .line 2005
    const/16 v5, 0x190

    .line 2011
    :goto_3a
    const/16 v7, 0x190

    .line 2012
    const/16 v6, 0xf0

    .line 2013
    const/16 v3, 0x1e

    .line 2014
    const/16 v4, 0x1e

    .line 2027
    :goto_42
    const/16 v3, 0x34

    .line 2028
    const/16 v4, 0x34

    .line 2030
    sub-int v8, v7, v5

    div-int/lit8 v8, v8, 0x2

    if-lt v1, v8, :cond_10

    sub-int v8, v7, v5

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v7, v8

    if-gt v1, v8, :cond_10

    .line 2031
    sub-int v8, v7, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v3

    if-gt v1, v8, :cond_d6

    .line 2032
    sub-int v8, v7, v5

    div-int/lit8 v8, v8, 0x2

    add-int v1, v8, v3

    .line 2036
    :cond_61
    :goto_61
    if-gt v2, v4, :cond_e9

    .line 2037
    move v2, v4

    .line 2043
    :cond_64
    :goto_64
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v8

    if-eqz v8, :cond_71

    .line 2044
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 2045
    :cond_71
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v8

    if-nez v8, :cond_f1

    .line 2050
    const-string v8, "RS_M5LS"

    const-string v9, "S5K4ECGX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 2051
    const-string v8, "Camera"

    const-string v9, "S5K4ECGX Normal resolution"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->setTouchFocusMode()V

    .line 2054
    :cond_95
    sub-int v8, v7, v5

    div-int/lit8 v8, v8, 0x2

    sub-int v0, v1, v8

    .line 2056
    .local v0, NormalPtX:I
    const-string v8, "Camera"

    const-string v9, "Normal resolution adjust"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8, v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setTouchFocusPosition(II)V

    .line 2071
    .end local v0           #NormalPtX:I
    :goto_a7
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->startTouchAutoFocus()V

    .line 2072
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v8, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setTouchFocusRectCenter(II)V

    .line 2074
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    goto/16 :goto_10

    .line 2008
    :cond_b6
    const/16 v5, 0x140

    goto :goto_3a

    .line 2016
    :cond_b9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 2017
    const/16 v5, 0x320

    .line 2021
    :goto_c9
    const/16 v7, 0x320

    .line 2022
    const/16 v6, 0x1e0

    .line 2023
    const/16 v3, 0x32

    .line 2024
    const/16 v4, 0x32

    goto/16 :goto_42

    .line 2019
    :cond_d3
    const/16 v5, 0x280

    goto :goto_c9

    .line 2033
    :cond_d6
    sub-int v8, v7, v5

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v7, v8

    sub-int/2addr v8, v3

    if-lt v1, v8, :cond_61

    .line 2034
    sub-int v8, v7, v5

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v7, v8

    sub-int v1, v8, v3

    goto/16 :goto_61

    .line 2038
    :cond_e9
    sub-int v8, v6, v4

    if-lt v2, v8, :cond_64

    .line 2039
    sub-int v2, v6, v4

    goto/16 :goto_64

    .line 2063
    :cond_f1
    const-string v8, "RS_M5LS"

    const-string v9, "S5K4ECGX"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_107

    .line 2064
    const-string v8, "Camera"

    const-string v9, "S5K4ECGX Wide resolution"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->setTouchFocusMode()V

    .line 2068
    :cond_107
    const-string v8, "Camera"

    const-string v9, "Wide resolution adjust"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->setTouchFocusPosition(II)V

    goto :goto_a7
.end method

.method public hideFocusText()V
    .registers 3

    .prologue
    .line 4119
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 4120
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 4121
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4124
    :cond_11
    return-void
.end method

.method public hideLaunchIcon()V
    .registers 2

    .prologue
    .line 4099
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_9

    .line 4100
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideLaunchIcon()V

    .line 4102
    :cond_9
    return-void
.end method

.method public hideReviewMenu()V
    .registers 5

    .prologue
    .line 4035
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_5

    .line 4055
    :cond_4
    :goto_4
    return-void

    .line 4039
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030010

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PostView;

    .line 4041
    .local v0, menu:Lcom/sec/android/app/camera/PostView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PostView;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 4042
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 4044
    iget-boolean v1, v0, Lcom/sec/android/app/camera/PostView;->mPrevSideMenuVisible:Z

    if-nez v1, :cond_29

    .line 4045
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideMenu()V

    .line 4046
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    .line 4050
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    .line 4051
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->restoreMenu()V

    goto :goto_4

    .line 4052
    :cond_3a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 4053
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    goto :goto_4
.end method

.method public hideSideMenu()V
    .registers 2

    .prologue
    .line 4412
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideSideMenu()V

    .line 4413
    return-void
.end method

.method public hideSideMenuItems()V
    .registers 2

    .prologue
    .line 4402
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_9

    .line 4403
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideSideMenuItems()V

    .line 4404
    :cond_9
    return-void
.end method

.method public initCameraSound()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 3278
    const-string v0, "Camera"

    const-string v1, "Initialize Camera Sound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 3287
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 3288
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 3289
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f05

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 3291
    return-void
.end method

.method public isActivityDestoying()Z
    .registers 2

    .prologue
    .line 4458
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    return v0
.end method

.method public isCapturing()Z
    .registers 3

    .prologue
    .line 4183
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_d

    .line 4184
    const-string v0, "Camera"

    const-string v1, "isCapturing - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    const/4 v0, 0x0

    .line 4187
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    goto :goto_c
.end method

.method public isPreviewStarted()Z
    .registers 2

    .prologue
    .line 4191
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v0

    return v0
.end method

.method public isSystemKeyEventRequested(I)Z
    .registers 5
    .parameter "keyCode"

    .prologue
    .line 4437
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 4442
    :goto_a
    return v1

    .line 4438
    :catch_b
    move-exception v0

    .line 4439
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4442
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isTimerCounting()Z
    .registers 2

    .prologue
    .line 4485
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v0

    return v0
.end method

.method public isWifiDirectConnected()Z
    .registers 5

    .prologue
    .line 2142
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2143
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2144
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2145
    const-string v2, "Camera"

    const-string v3, "wifi direct connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    const/4 v2, 0x1

    .line 2148
    :goto_22
    return v2

    :cond_23
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public isZoomAvailable()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2792
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_d

    .line 2809
    :cond_c
    :goto_c
    return v0

    .line 2796
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    .line 2800
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_c

    .line 2804
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_37

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v1

    if-nez v1, :cond_c

    .line 2809
    :cond_37
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public join()V
    .registers 2

    .prologue
    .line 716
    new-instance v0, Lcom/sec/android/app/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$3;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 733
    return-void
.end method

.method public needToResizeForPreviewAspectRatio()Z
    .registers 7

    .prologue
    .line 2725
    const/4 v1, 0x0

    .line 2727
    .local v1, result:Z
    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 2729
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2730
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ffaaaaaaaaaaaabL

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3f

    .line 2731
    const/4 v1, 0x0

    .line 2741
    :goto_26
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToResizeForPreviewAspectRatio : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    return v1

    .line 2733
    :cond_3f
    const/4 v1, 0x1

    goto :goto_26

    .line 2735
    :cond_41
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ff5555555555555L

    cmpl-double v2, v2, v4

    if-nez v2, :cond_50

    .line 2736
    const/4 v1, 0x0

    goto :goto_26

    .line 2738
    :cond_50
    const/4 v1, 0x1

    goto :goto_26
.end method

.method public onActionShotAcquisitionProgress(I)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 3477
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActionShotAcquisitionProgress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->chkActionShotStarted()Z

    move-result v1

    if-nez v1, :cond_21

    .line 3495
    :cond_20
    :goto_20
    return-void

    .line 3483
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 3484
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-eqz v0, :cond_20

    .line 3488
    if-ltz p1, :cond_39

    const/16 v1, 0x64

    if-le p1, v1, :cond_40

    .line 3489
    :cond_39
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 3490
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    goto :goto_20

    .line 3492
    :cond_40
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setAcquisitionProgress(I)V

    .line 3493
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showCaptureLayout()V

    goto :goto_20
.end method

.method public onActionShotCaptureCancelled()V
    .registers 4

    .prologue
    .line 3498
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 3499
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_13

    .line 3507
    :goto_12
    return-void

    .line 3502
    :cond_13
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 3503
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 3504
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotCaptureCancelled()V

    .line 3506
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelSeriesActionShot()V

    goto :goto_12
.end method

.method public onActionShotCaptured()V
    .registers 4

    .prologue
    .line 3546
    const-string v0, "Camera"

    const-string v1, "onActionShotCaptured"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    return-void
.end method

.method public onActionShotCreatingResultCompleted(Z)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 3510
    const-string v1, "Camera"

    const-string v2, "onActionShotCreatingResultCompleted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 3513
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_1a

    .line 3519
    :goto_19
    return-void

    .line 3516
    :cond_1a
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 3517
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgressForImageStoreCompleted()V

    .line 3518
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopActionShot()V

    goto :goto_19
.end method

.method public onActionShotCreatingResultProgress(I)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 3522
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 3523
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_13

    .line 3527
    :goto_12
    return-void

    .line 3526
    :cond_13
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setPostCaptureProgress(I)V

    goto :goto_12
.end method

.method public onActionShotCreatingResultStarted()V
    .registers 7

    .prologue
    const/16 v5, 0x1a

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 3530
    const-string v1, "Camera"

    const-string v2, "onActionShotCreatingResultStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3533
    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 3534
    :cond_14
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 3535
    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 3537
    :cond_1d
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 3538
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_30

    .line 3543
    :goto_2f
    return-void

    .line 3541
    :cond_30
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 3542
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotCreatingResultStarted()V

    goto :goto_2f
.end method

.method public onActionShotRectChanged([B)V
    .registers 5
    .parameter "data"

    .prologue
    .line 3551
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_d

    .line 3560
    :cond_c
    :goto_c
    return-void

    .line 3555
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 3556
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-eqz v0, :cond_c

    .line 3559
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotRectChanged([B)V

    goto :goto_c
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 24
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3842
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--onActivityResult--requestCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--onActivityResult--resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--onActivityResult--data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3846
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 3847
    .local v18, myExtras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-nez v3, :cond_6c

    .line 3848
    if-eqz v18, :cond_6c

    .line 3849
    const-string v3, "output"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 3852
    :cond_6c
    packed-switch p1, :pswitch_data_39c

    .line 3992
    :cond_6f
    :goto_6f
    :pswitch_6f
    return-void

    .line 3854
    :pswitch_70
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_183

    if-eqz p3, :cond_183

    .line 3855
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v3, :cond_14d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_14d

    const-string v3, "specify-data"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_14d

    .line 3856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 3857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_e8

    .line 3859
    :try_start_a9
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3860
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a9 .. :try_end_d2} :catch_399

    .line 3881
    :goto_d2
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->setResult(I)V

    .line 3882
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 3888
    :cond_db
    :goto_db
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 3889
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_6f

    .line 3865
    :cond_e8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "uri-data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3866
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_10e

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_117

    .line 3867
    :cond_10e
    const-string v3, "Camera"

    const-string v4, "Something goes wrong!! Restart attach mode."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f

    .line 3870
    :cond_117
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3871
    const-string v3, "_data"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3873
    .local v16, filepath:Ljava/lang/String;
    :try_start_124
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3875
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "uri-data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_149
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_124 .. :try_end_149} :catch_396

    .line 3879
    :goto_149
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_d2

    .line 3883
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #filepath:Ljava/lang/String;
    :cond_14d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v3, :cond_db

    const-string v3, "bitmap-data"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_db

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    if-eqz v3, :cond_db

    .line 3884
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/Camera;->createCaptureBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3885
    .local v9, bitmap:Landroid/graphics/Bitmap;
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_db

    .line 3890
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    :cond_183
    if-nez p2, :cond_6f

    .line 3891
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1c2

    .line 3894
    :try_start_199
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3897
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1c2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_199 .. :try_end_1c2} :catch_393

    .line 3902
    :cond_1c2
    :goto_1c2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_6f

    .line 3904
    :try_start_1c8
    new-instance v17, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 3905
    .local v17, mSave:Ljava/net/URI;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1e1} :catch_1e3

    goto/16 :goto_6f

    .line 3906
    .end local v17           #mSave:Ljava/net/URI;
    :catch_1e3
    move-exception v3

    goto/16 :goto_6f

    .line 3913
    :pswitch_1e6
    if-nez p2, :cond_6f

    if-eqz p3, :cond_6f

    const-string v3, "delete-image"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6f

    .line 3915
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_6f

    .line 3917
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3920
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_6f

    .line 3926
    :pswitch_235
    const-string v3, "-------on result PHOTO_PICKED_WITH_DATA"

    const-string v4, "PHOTO_PICKED_WITH_DATA"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_258

    .line 3928
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3930
    :cond_258
    if-eqz p3, :cond_2f1

    .line 3931
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/graphics/Bitmap;

    .line 3932
    .local v19, photo:Landroid/graphics/Bitmap;
    const-string v3, "photo w,h"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------------photo w,h-------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    new-instance v11, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera"

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3935
    .local v11, dir:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_29e

    .line 3936
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 3938
    :cond_29e
    new-instance v15, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3939
    .local v15, file:Ljava/io/File;
    const/4 v13, 0x0

    .line 3941
    .local v13, fOut:Ljava/io/FileOutputStream;
    :try_start_2a6
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2ab
    .catch Ljava/io/FileNotFoundException; {:try_start_2a6 .. :try_end_2ab} :catch_2d9

    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .local v14, fOut:Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 3946
    .end local v14           #fOut:Ljava/io/FileOutputStream;
    .restart local v13       #fOut:Ljava/io/FileOutputStream;
    :goto_2ac
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3948
    :try_start_2b5
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2b8
    .catchall {:try_start_2b5 .. :try_end_2b8} :catchall_2ea
    .catch Ljava/io/IOException; {:try_start_2b5 .. :try_end_2b8} :catch_2de

    .line 3953
    if-eqz v13, :cond_2bd

    .line 3955
    :try_start_2ba
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2bd
    .catch Ljava/io/IOException; {:try_start_2ba .. :try_end_2bd} :catch_38d

    .line 3961
    :cond_2bd
    :goto_2bd
    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 3962
    const/16 v3, 0x38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_6f

    .line 3942
    :catch_2d9
    move-exception v12

    .line 3944
    .local v12, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2ac

    .line 3949
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :catch_2de
    move-exception v12

    .line 3951
    .local v12, e:Ljava/io/IOException;
    :try_start_2df
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2e2
    .catchall {:try_start_2df .. :try_end_2e2} :catchall_2ea

    .line 3953
    if-eqz v13, :cond_2bd

    .line 3955
    :try_start_2e4
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e7
    .catch Ljava/io/IOException; {:try_start_2e4 .. :try_end_2e7} :catch_2e8

    goto :goto_2bd

    .line 3956
    :catch_2e8
    move-exception v3

    goto :goto_2bd

    .line 3953
    .end local v12           #e:Ljava/io/IOException;
    :catchall_2ea
    move-exception v3

    if-eqz v13, :cond_2f0

    .line 3955
    :try_start_2ed
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f0
    .catch Ljava/io/IOException; {:try_start_2ed .. :try_end_2f0} :catch_390

    .line 3958
    :cond_2f0
    :goto_2f0
    throw v3

    .line 3966
    .end local v11           #dir:Ljava/io/File;
    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v19           #photo:Landroid/graphics/Bitmap;
    :cond_2f1
    const/16 v3, 0x3b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_6f

    .line 3971
    :pswitch_307
    const-string v3, "-------on result NAME_WITH_DATA"

    const-string v4, "NAME_WITH_DATA"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    if-eqz p3, :cond_6f

    .line 3973
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "user_name_changed"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 3974
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v3, :cond_6f

    .line 3975
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "user_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    .line 3976
    const-string v3, "wenfeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NAME_WITH_DATA "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6f

    .line 3982
    :pswitch_350
    const-string v3, "@"

    const-string v4, "-BACK_FROM_ACCEPT_DIALOG-"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3983
    const/16 v3, 0x7d6

    move/from16 v0, p2

    if-ne v0, v3, :cond_6f

    .line 3984
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_6f

    .line 3985
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-nez v3, :cond_384

    .line 3986
    const/16 v3, 0x36

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getSideMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 3987
    :cond_384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_6f

    .line 3956
    .restart local v11       #dir:Ljava/io/File;
    .restart local v13       #fOut:Ljava/io/FileOutputStream;
    .restart local v15       #file:Ljava/io/File;
    .restart local v19       #photo:Landroid/graphics/Bitmap;
    :catch_38d
    move-exception v3

    goto/16 :goto_2bd

    :catch_390
    move-exception v4

    goto/16 :goto_2f0

    .line 3898
    .end local v11           #dir:Ljava/io/File;
    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v19           #photo:Landroid/graphics/Bitmap;
    :catch_393
    move-exception v3

    goto/16 :goto_1c2

    .line 3876
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v16       #filepath:Ljava/lang/String;
    :catch_396
    move-exception v3

    goto/16 :goto_149

    .line 3861
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #filepath:Ljava/lang/String;
    :catch_399
    move-exception v3

    goto/16 :goto_d2

    .line 3852
    :pswitch_data_39c
    .packed-switch 0x7d1
        :pswitch_70
        :pswitch_6f
        :pswitch_1e6
        :pswitch_235
        :pswitch_307
        :pswitch_350
    .end packed-switch
.end method

.method public onAntishakeSelect(I)V
    .registers 5
    .parameter "antishake"

    .prologue
    .line 2503
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    .line 2505
    const/4 v0, 0x0

    .line 2506
    .local v0, resolutionChanged:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v0

    .line 2507
    if-eqz v0, :cond_1f

    .line 2508
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(I)V

    .line 2510
    :cond_1f
    return-void
.end method

.method public onAutocontrastSelect(I)V
    .registers 5
    .parameter "autocontrast"

    .prologue
    .line 2513
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    .line 2515
    const/4 v0, 0x0

    .line 2516
    .local v0, resolutionChanged:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v0

    .line 2517
    if-eqz v0, :cond_1f

    .line 2518
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(I)V

    .line 2520
    :cond_1f
    return-void
.end method

.method public onBlinkDetectionEvent(I[I[I[I[I)V
    .registers 19
    .parameter "blink_rect_cnt"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 3145
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBlinkDetectionEvent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    if-nez p1, :cond_1e

    .line 3148
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDetection:Z

    .line 3220
    :cond_1d
    return-void

    .line 3150
    :cond_1e
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDetection:Z

    .line 3152
    const/4 v6, 0x4

    new-array v6, v6, [[I

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 3154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v4

    .line 3155
    .local v4, picWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    .line 3157
    .local v3, picHeight:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3f
    const/4 v6, 0x4

    if-ge v0, v6, :cond_4b

    .line 3158
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    new-array v7, p1, [I

    aput-object v7, v6, v0

    .line 3157
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 3160
    :cond_4b
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v2

    .line 3161
    .local v2, orientationForPicture:I
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBlinkDetectionEvent - orientationForPicture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    const/4 v0, 0x0

    :goto_70
    if-ge v0, p1, :cond_f4

    .line 3164
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 3166
    .local v5, rect:Landroid/graphics/Rect;
    sparse-switch v2, :sswitch_data_184

    .line 3188
    aget v6, p2, v0

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3189
    aget v6, p3, v0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3190
    aget v6, p4, v0

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3191
    aget v6, p5, v0

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3195
    :goto_8a
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v7, v5, Landroid/graphics/Rect;->left:I

    aput v7, v6, v0

    .line 3196
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget v7, v5, Landroid/graphics/Rect;->top:I

    aput v7, v6, v0

    .line 3197
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v7, 0x2

    aget-object v6, v6, v7

    iget v7, v5, Landroid/graphics/Rect;->right:I

    aput v7, v6, v0

    .line 3198
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v7, 0x3

    aget-object v6, v6, v7

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    aput v7, v6, v0

    .line 3163
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 3168
    :sswitch_b1
    aget v6, p5, v0

    sub-int v6, v3, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3169
    aget v6, p2, v0

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3170
    aget v6, p3, v0

    sub-int v6, v3, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3171
    aget v6, p4, v0

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_8a

    .line 3174
    :sswitch_c6
    aget v6, p2, v0

    sub-int v6, v4, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3175
    aget v6, p3, v0

    sub-int v6, v3, v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3176
    aget v6, p4, v0

    sub-int v6, v4, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3177
    aget v6, p5, v0

    sub-int v6, v3, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_8a

    .line 3180
    :sswitch_df
    aget v6, p3, v0

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3181
    aget v6, p4, v0

    sub-int v6, v4, v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3182
    aget v6, p5, v0

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3183
    aget v6, p2, v0

    sub-int v6, v4, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_8a

    .line 3201
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_f4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3202
    .local v1, log:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_fa
    if-ge v0, p1, :cond_14c

    .line 3203
    const-string v6, "OnBlinkDetectonRectSave Complete : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3204
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v7, 0x0

    aget-object v6, v6, v7

    aget v6, v6, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3205
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3206
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v7, 0x1

    aget-object v6, v6, v7

    aget v6, v6, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3207
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3208
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v7, 0x2

    aget-object v6, v6, v7

    aget v6, v6, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3209
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3210
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v7, 0x3

    aget-object v6, v6, v7

    aget v6, v6, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3211
    const-string v6, "Camera"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3212
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3202
    add-int/lit8 v0, v0, 0x1

    goto :goto_fa

    .line 3215
    :cond_14c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 3216
    const/4 v0, 0x0

    :goto_154
    if-ge v0, p1, :cond_1d

    .line 3217
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    new-instance v7, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aget v8, v8, v0

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget v9, v9, v0

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v11, 0x2

    aget-object v10, v10, v11

    aget v10, v10, v0

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v12, 0x3

    aget-object v11, v11, v12

    aget v11, v11, v0

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3216
    add-int/lit8 v0, v0, 0x1

    goto :goto_154

    .line 3166
    nop

    :sswitch_data_184
    .sparse-switch
        0x5a -> :sswitch_b1
        0xb4 -> :sswitch_c6
        0x10e -> :sswitch_df
    .end sparse-switch
.end method

.method public onBlinkdetectionSelect(I)V
    .registers 3
    .parameter "blinkdetection"

    .prologue
    .line 2523
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    .line 2524
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initBlinkdetection()V

    .line 2525
    return-void
.end method

.method public onCameraQualityMenuSelect(I)V
    .registers 3
    .parameter "quality"

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 2529
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 2530
    return-void
.end method

.method public onCartoonShotProgressRendering(I)V
    .registers 7
    .parameter "arg0"

    .prologue
    const/16 v4, 0x2d

    .line 3995
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCartoonShotProgressRendering : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 3999
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    if-nez v0, :cond_3e

    .line 4000
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 4001
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4003
    :cond_3e
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showPostCaptureLayout()V

    .line 4004
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->setRederingProgress(I)V

    .line 4005
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    .line 4006
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_50

    .line 4007
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 4009
    :cond_50
    const/16 v1, 0x64

    if-ne p1, v1, :cond_63

    .line 4010
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showHelpText()V

    .line 4011
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 4012
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_63

    .line 4013
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 4015
    :cond_63
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "newConfig"

    .prologue
    const v4, 0x7f030002

    const/4 v3, 0x1

    .line 692
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 693
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_c

    .line 713
    :cond_b
    :goto_b
    return-void

    .line 696
    :cond_c
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3d

    .line 697
    const-string v1, "Camera"

    const-string v2, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/BlackScreen;

    .line 700
    .local v0, menu:Lcom/sec/android/app/camera/BlackScreen;
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/sec/android/app/camera/BlackScreen;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 701
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 702
    :cond_2d
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    .line 703
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v2, Lcom/sec/android/app/camera/Camera;->ORIENTATION_TIMER_EXPIRED:I

    sget v3, Lcom/sec/android/app/camera/Camera;->ORIENTATION_DIRTY_DURATION:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_b

    .line 705
    .end local v0           #menu:Lcom/sec/android/app/camera/BlackScreen;
    :cond_3d
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_b

    .line 706
    const-string v1, "Camera"

    const-string v2, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/BlackScreen;

    .line 709
    .restart local v0       #menu:Lcom/sec/android/app/camera/BlackScreen;
    if-eqz v0, :cond_57

    .line 710
    invoke-virtual {v0}, Lcom/sec/android/app/camera/BlackScreen;->showMenu()V

    .line 711
    :cond_57
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    goto :goto_b
.end method

.method public onContrastMenuSelect(I)V
    .registers 3
    .parameter "contrast"

    .prologue
    .line 2645
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 2646
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, -0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 736
    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    .line 737
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 739
    const-string v6, "Camera"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string v6, "AXLOG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Total-CameraPreviewLoading**StartU["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]**"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v6, "AXLOG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Total-CameraUILoading(TSP)**StartU["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]**"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 748
    .local v2, _axtime_st_1:J
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSelectedMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/app/camera/Camera;->mSelectedMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string v6, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onChkImageCaptureIntent()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v6

    if-nez v6, :cond_ad

    sget v6, Lcom/sec/android/app/camera/Camera;->mSelectedMode:I

    if-ne v6, v11, :cond_ad

    .line 751
    const v6, 0x7f030002

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 752
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder()V

    .line 753
    iput-boolean v11, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    .line 808
    :goto_ac
    return-void

    .line 757
    :cond_ad
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 758
    .local v5, win:Landroid/view/Window;
    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 760
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    .line 761
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 763
    const v6, 0x7f03000f

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 764
    const v6, 0x7f080044

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    .line 766
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 767
    new-instance v6, Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 769
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v7, 0x7f030005

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 770
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v7, 0x7f030006

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/CameraIndicators;

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 771
    const v6, 0x7f080027

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    .line 772
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setSelected(Z)V

    .line 773
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 775
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 777
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    .line 779
    new-instance v6, Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/CameraEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 780
    new-instance v6, Landroid/media/AudioManager;

    invoke-direct {v6, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 782
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v6, :cond_14f

    .line 783
    new-instance v6, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 785
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 788
    .local v4, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 789
    iput v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 790
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v5, v6, v4}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    .end local v4           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_14f
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 795
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamera()V

    .line 797
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initializeGLSurfaceView()V

    .line 799
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/16 v7, 0xf

    if-eq v6, v7, :cond_174

    .line 800
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7, v10}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 801
    :cond_174
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    if-nez v6, :cond_17f

    .line 802
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    .line 805
    :cond_17f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 806
    .local v0, _axtime_ed_1:J
    const-string v6, "AXLOG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate-End**End["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]**["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]**[]**"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    move-wide v2, v0

    .line 808
    goto/16 :goto_ac
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1303
    const-string v0, "Camera"

    const-string v2, "onDestroy"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v0, :cond_11

    .line 1307
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->manageLocalService(Z)V

    .line 1309
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 1310
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1313
    :cond_1a
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 1315
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setMainCameraSelected(Z)V

    .line 1317
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1319
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearGLSurfaceView()V

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v0, :cond_38

    .line 1328
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->onDestroy()V

    .line 1329
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 1332
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_46

    .line 1333
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 1334
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->releaseCamera()V

    .line 1336
    :cond_46
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 1338
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_55

    .line 1340
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->clear()V

    .line 1341
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 1344
    :cond_55
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    if-eqz v0, :cond_60

    .line 1345
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraIndicators;->clear()V

    .line 1346
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 1349
    :cond_60
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    if-eqz v0, :cond_6b

    .line 1350
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->clear()V

    .line 1351
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    :cond_6b
    move-object v0, v1

    .line 1354
    check-cast v0, [[I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 1355
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 1356
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 1357
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 1358
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 1359
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    .line 1360
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 1361
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1362
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 1363
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 1364
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    .line 1365
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 1366
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_91

    .line 1368
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->clear()V

    .line 1369
    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 1372
    :cond_91
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 1373
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 1374
    return-void
.end method

.method public onEditModeSelectCommand()V
    .registers 4

    .prologue
    .line 2598
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2599
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    .line 2605
    :goto_d
    return-void

    .line 2602
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0

    .line 2604
    :cond_12
    const/16 v0, 0x28

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v0, p0, v1, v2}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_d
.end method

.method public onEffectMenuSelect(I)V
    .registers 4
    .parameter "effect"

    .prologue
    .line 2455
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setEffect(I)V

    .line 2456
    if-eqz p1, :cond_11

    .line 2457
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2459
    :cond_11
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .registers 3
    .parameter "exposureValue"

    .prologue
    .line 2080
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 2081
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->invalidatePreview()V

    .line 2082
    return-void
.end method

.method public onExposuremeterMenuSelect(I)V
    .registers 3
    .parameter "exposuremeter"

    .prologue
    .line 2494
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2495
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    .line 2496
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .registers 3
    .parameter "flashMode"

    .prologue
    .line 2085
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 2086
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .registers 3
    .parameter "flip"

    .prologue
    .line 2608
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setFlip(I)V

    .line 2609
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 2610
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setFrontSensorMirror(I)V

    .line 2611
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPreviewAsync()V

    .line 2612
    return-void
.end method

.method public onFocusModeMenuSelect(I)V
    .registers 3
    .parameter "focusMode"

    .prologue
    .line 2369
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2370
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 2373
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 2374
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2375
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 2378
    :cond_16
    return-void
.end method

.method public onFocusStateChanged(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 2906
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v0, :cond_1d

    .line 2942
    :cond_1c
    :goto_1c
    return-void

    .line 2911
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_3a

    .line 2912
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 2913
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getTouchFocusPositioned()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 2914
    :cond_35
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFocusIndicator(I)V

    .line 2921
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1c

    .line 2929
    if-nez p1, :cond_1c

    .line 2930
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v0

    if-nez v0, :cond_1c

    .line 2931
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 2932
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->forSetOrgFocus()V

    .line 2933
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 2936
    :cond_85
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_8e

    .line 2937
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 2939
    :cond_8e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    goto :goto_1c

    .line 2917
    :cond_93
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFocusIndicator(I)V

    goto :goto_3a
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .registers 4
    .parameter "rootView"

    .prologue
    .line 4201
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 4203
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    .line 4204
    const-string v0, "Camera"

    const-string v1, "mSideMenuLoadingThread is not null, return.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    :goto_e
    return-void

    .line 4208
    :cond_f
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camera$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$8;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    .line 4262
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    const-string v1, "sideMenuLoadingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4263
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_e
.end method

.method public onGpsChanged(I)V
    .registers 3
    .parameter "gps"

    .prologue
    .line 2615
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 2624
    :goto_a
    return-void

    .line 2618
    :cond_b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2619
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->IsGpsEnableInSettings()V

    goto :goto_a

    .line 2621
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGps(I)V

    goto :goto_a
.end method

.method public onGuidelineSelect(I)V
    .registers 3
    .parameter "guideline"

    .prologue
    .line 2533
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 2534
    return-void
.end method

.method public onHDRShotAllProgressCompleted(Z)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 3611
    const-string v0, "Camera"

    const-string v1, "onHDRShotAllProgressCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    return-void
.end method

.method public onHDRShotResultCompleted(Z)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 3597
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 3598
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_13

    .line 3608
    :cond_12
    :goto_12
    return-void

    .line 3602
    :cond_13
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    .line 3603
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showHelpText()V

    .line 3604
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setRederingProgress(I)V

    .line 3606
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_12

    .line 3607
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    goto :goto_12
.end method

.method public onHDRShotResultProgress(I)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 3589
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 3590
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_13

    .line 3594
    :goto_12
    return-void

    .line 3593
    :cond_13
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgress(I)V

    goto :goto_12
.end method

.method public onHDRShotResultStarted()V
    .registers 4

    .prologue
    .line 3573
    const-string v1, "Camera"

    const-string v2, "onHDRShotCreatingResultStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 3576
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_1a

    .line 3586
    :goto_19
    return-void

    .line 3580
    :cond_1a
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_23

    .line 3581
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 3583
    :cond_23
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgress(I)V

    .line 3584
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showPostCaptureLayout()V

    .line 3585
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgressMax(I)V

    goto :goto_19
.end method

.method public onISOMenuSelect(I)V
    .registers 5
    .parameter "iso"

    .prologue
    .line 2484
    const/4 v0, 0x0

    .line 2486
    .local v0, resolutionChanged:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v0

    .line 2487
    if-eqz v0, :cond_18

    .line 2488
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(I)V

    .line 2490
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 2491
    return-void
.end method

.method protected onImageStoringCompleted()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 3223
    const-string v4, "Camera"

    const-string v5, "onImageStoringCompleted"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v4, :cond_d

    .line 3275
    :cond_c
    :goto_c
    return-void

    .line 3228
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->decreaseRemainCount()V

    .line 3230
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_49

    .line 3231
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x2a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3233
    .local v3, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v3, :cond_30

    .line 3234
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 3236
    :cond_30
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v4, :cond_39

    .line 3237
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->resetPanoramaCapturing()V

    .line 3260
    .end local v3           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_39
    :goto_39
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v4, :cond_de

    .line 3261
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDetection:Z

    if-eqz v4, :cond_cc

    .line 3262
    const-string v4, "blinkdetection"

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_c

    .line 3239
    :cond_49
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_69

    .line 3240
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x2d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 3242
    .local v0, CartoonShotView:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->reset()V

    goto :goto_39

    .line 3243
    .end local v0           #CartoonShotView:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    :cond_69
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0xe

    if-ne v4, v5, :cond_89

    .line 3244
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x2e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 3245
    .local v2, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    goto :goto_39

    .line 3246
    .end local v2           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :cond_89
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_a9

    .line 3247
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 3248
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->IsWaitingAnimation()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 3249
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 3250
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraEngine;->setWaitingAnimation(Z)V

    goto :goto_39

    .line 3252
    :cond_a9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_39

    .line 3253
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x2b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 3254
    .local v1, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-eqz v1, :cond_c

    .line 3257
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    goto/16 :goto_39

    .line 3264
    .end local v1           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    :cond_cc
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 3265
    const-string v4, "reviewon"

    invoke-virtual {p0, v4, v6}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_c

    .line 3269
    :cond_de
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDetection:Z

    if-eqz v4, :cond_eb

    .line 3270
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_c

    .line 3272
    :cond_eb
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_c
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v7, 0x12

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1380
    const/4 v2, 0x1

    .line 1382
    .local v2, shutterKey:Z
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mGLInitialized:Z

    if-nez v3, :cond_b

    move v3, v4

    .line 1580
    :goto_a
    return v3

    .line 1387
    :cond_b
    :try_start_b
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_16
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_16} :catch_1b

    move-result v3

    if-eqz v3, :cond_1c

    move v3, v4

    .line 1388
    goto :goto_a

    .line 1390
    :catch_1b
    move-exception v3

    .line 1394
    :cond_1c
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_26

    move v3, v4

    .line 1395
    goto :goto_a

    .line 1398
    :cond_26
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isResetDialogActive()Z

    move-result v3

    if-eqz v3, :cond_2e

    move v3, v4

    .line 1399
    goto :goto_a

    .line 1410
    :cond_2e
    sparse-switch p1, :sswitch_data_204

    .line 1580
    :cond_31
    :goto_31
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_a

    :sswitch_36
    move v3, v5

    .line 1412
    goto :goto_a

    :sswitch_38
    move v3, v4

    .line 1418
    goto :goto_a

    .line 1420
    :sswitch_3a
    if-eqz p2, :cond_44

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_44

    move v3, v4

    .line 1421
    goto :goto_a

    .line 1423
    :cond_44
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_52

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v3

    if-nez v3, :cond_52

    move v3, v4

    .line 1424
    goto :goto_a

    .line 1427
    :cond_52
    if-eqz p2, :cond_58

    .line 1428
    sget v3, Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_HALF_PRESS:I

    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mHardKeyStatus:I

    .line 1430
    :cond_58
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKey()Z

    move-result v3

    if-nez v3, :cond_31

    .line 1433
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-nez v3, :cond_79

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v3

    if-eqz v3, :cond_79

    .line 1436
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 1438
    :cond_79
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_8a

    .line 1440
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 1443
    :cond_8a
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    goto :goto_31

    .line 1450
    :sswitch_90
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_99

    move v3, v4

    .line 1451
    goto/16 :goto_a

    .line 1454
    :cond_99
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_ab

    .line 1456
    const-string v3, "Camera"

    const-string v5, "Preview is not ready..."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1457
    goto/16 :goto_a

    .line 1460
    :cond_ab
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 1462
    const-string v3, "Camera"

    const-string v5, "Camera is capturing..."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1463
    goto/16 :goto_a

    .line 1466
    :cond_bd
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 1467
    const-string v3, "Camera"

    const-string v5, "returning because it is launch gallery"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1468
    goto/16 :goto_a

    .line 1470
    :cond_cd
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v3, :cond_d7

    .line 1471
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v3, v4

    .line 1472
    goto/16 :goto_a

    .line 1475
    :cond_d7
    if-eqz p2, :cond_e2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_e2

    move v3, v4

    .line 1476
    goto/16 :goto_a

    .line 1481
    :cond_e2
    :try_start_e2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKey()Z
    :try_end_e5
    .catch Ljava/lang/NullPointerException; {:try_start_e2 .. :try_end_e5} :catch_11e

    move-result v2

    .line 1488
    :goto_e6
    if-nez v2, :cond_123

    if-nez p2, :cond_123

    .line 1491
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v3

    if-eqz v3, :cond_105

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-nez v3, :cond_105

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v3

    if-eqz v3, :cond_105

    .line 1494
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 1496
    :cond_105
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-eqz v3, :cond_116

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_116

    .line 1498
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 1501
    :cond_116
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 1502
    goto/16 :goto_a

    .line 1483
    :catch_11e
    move-exception v0

    .line 1485
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_e6

    .line 1505
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_123
    if-eqz p2, :cond_1b0

    .line 1507
    const/16 v3, 0x1b

    if-ne p1, v3, :cond_139

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mHardKeyStatus:I

    sget v6, Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_NONE:I

    if-eq v3, v6, :cond_135

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mHardKeyStatus:I

    sget v6, Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_HALF_PRESS:I

    if-ne v3, v6, :cond_139

    .line 1509
    :cond_135
    sget v3, Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_FULL_PRESS:I

    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mHardKeyStatus:I

    .line 1512
    :cond_139
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_144

    .line 1513
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 1522
    :cond_144
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_156

    .line 1524
    const-string v3, "Camera"

    const-string v5, "Preview is not ready..."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1525
    goto/16 :goto_a

    .line 1528
    :cond_156
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_168

    .line 1530
    const-string v3, "Camera"

    const-string v5, "Camera is Capturing..."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1531
    goto/16 :goto_a

    .line 1534
    :cond_168
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_171

    move v3, v4

    .line 1535
    goto/16 :goto_a

    .line 1537
    :cond_171
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v3

    if-eqz v3, :cond_18b

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-ne v3, v4, :cond_18b

    .line 1539
    const-string v3, "Camera"

    const-string v5, "camera is autofocusing in smile shot"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1540
    goto/16 :goto_a

    .line 1542
    :cond_18b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_19b

    .line 1543
    const-string v3, "Camera"

    const-string v5, "returning because it is launch gallery"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1544
    goto/16 :goto_a

    .line 1546
    :cond_19b
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v3, :cond_1a5

    .line 1547
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v3, v4

    .line 1548
    goto/16 :goto_a

    .line 1550
    :cond_1a5
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v3

    if-nez v3, :cond_1b0

    .line 1551
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    :cond_1b0
    move v3, v4

    .line 1554
    goto/16 :goto_a

    .line 1558
    :sswitch_1b3
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v3

    if-eqz v3, :cond_1bf

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v3, :cond_1c2

    :cond_1bf
    move v3, v4

    .line 1559
    goto/16 :goto_a

    .line 1560
    :cond_1c2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isZoomAvailable()Z

    move-result v3

    if-eqz v3, :cond_201

    .line 1561
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 1562
    .local v1, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v1, :cond_1de

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v3

    if-nez v3, :cond_1ea

    .line 1563
    :cond_1de
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    invoke-static {v7, p0, v3, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 1565
    :cond_1ea
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 1566
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 1568
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v3, :cond_201

    .line 1570
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1571
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .end local v1           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_201
    move v3, v4

    .line 1575
    goto/16 :goto_a

    .line 1410
    :sswitch_data_204
    .sparse-switch
        0x4 -> :sswitch_38
        0x17 -> :sswitch_90
        0x18 -> :sswitch_1b3
        0x19 -> :sswitch_1b3
        0x1a -> :sswitch_38
        0x1b -> :sswitch_90
        0x42 -> :sswitch_90
        0x50 -> :sswitch_3a
        0x52 -> :sswitch_36
        0x55 -> :sswitch_38
        0x59 -> :sswitch_38
        0x5a -> :sswitch_38
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1585
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mGLInitialized:Z

    if-nez v0, :cond_8

    move v0, v1

    .line 1719
    :goto_7
    return v0

    .line 1590
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1592
    const-string v0, "Camera"

    const-string v2, "Delivering to other view. return true"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_1d} :catch_1f

    move v0, v1

    .line 1593
    goto :goto_7

    .line 1595
    :catch_1f
    move-exception v0

    .line 1599
    :cond_20
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isResetDialogActive()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1600
    const/4 v0, 0x4

    if-ne p1, v0, :cond_33

    .line 1602
    const-string v0, "Camera"

    const-string v2, "Dissmiss Reset Dialog"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->dismissResetDialog()V

    :cond_33
    move v0, v1

    .line 1605
    goto :goto_7

    .line 1610
    :cond_35
    sparse-switch p1, :sswitch_data_184

    .line 1719
    :cond_38
    :goto_38
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7

    .line 1613
    :sswitch_3d
    const-string v0, "Camera"

    const-string v2, "return true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    if-eqz v0, :cond_51

    .line 1615
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mPreMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 1616
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    move v0, v1

    .line 1617
    goto :goto_7

    .line 1620
    :cond_51
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_66

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_66

    move v0, v1

    .line 1621
    goto :goto_7

    .line 1623
    :cond_66
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isStartingEngine()Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isStartingPreview()Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1624
    :cond_7e
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_90

    .line 1628
    const-string v0, "Camera"

    const-string v2, "Ignoring because preview is being started!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1629
    goto/16 :goto_7

    .line 1632
    :cond_90
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v0, v1

    .line 1633
    goto/16 :goto_7

    .line 1635
    :sswitch_96
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_a1

    move v0, v1

    .line 1636
    goto/16 :goto_7

    .line 1638
    :cond_a1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_ca

    .line 1639
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getChkSideMenuItemsShow()Z

    move-result v0

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_ca

    .line 1640
    const/16 v0, 0x27

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v0, p0, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    :cond_ca
    move v0, v1

    .line 1642
    goto/16 :goto_7

    .line 1647
    :sswitch_cd
    if-eqz p2, :cond_d2

    move v0, v1

    .line 1648
    goto/16 :goto_7

    .line 1651
    :cond_d2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 1660
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_e7

    .line 1662
    const-string v0, "Camera"

    const-string v2, "Preview is not ready..."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1663
    goto/16 :goto_7

    .line 1666
    :cond_e7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 1668
    const-string v0, "Camera"

    const-string v2, "Camera is Capturing..."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1669
    goto/16 :goto_7

    .line 1672
    :cond_f9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_102

    move v0, v1

    .line 1673
    goto/16 :goto_7

    .line 1675
    :cond_102
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v0

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    if-ne v0, v1, :cond_11c

    .line 1677
    const-string v0, "Camera"

    const-string v2, "camera is autofocusing in smile shot"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1678
    goto/16 :goto_7

    .line 1680
    :cond_11c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 1681
    const-string v0, "Camera"

    const-string v2, "returning because it is launch gallery"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1682
    goto/16 :goto_7

    .line 1684
    :cond_12c
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v0, :cond_136

    .line 1685
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v0, v1

    .line 1686
    goto/16 :goto_7

    .line 1688
    :cond_136
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1689
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_38

    :sswitch_143
    move v0, v1

    .line 1695
    goto/16 :goto_7

    .line 1698
    :sswitch_146
    if-eqz p2, :cond_151

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_151

    move v0, v1

    .line 1699
    goto/16 :goto_7

    .line 1701
    :cond_151
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_16a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_16a

    .line 1702
    :goto_15d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_167

    .line 1703
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_15d

    :cond_167
    move v0, v1

    .line 1705
    goto/16 :goto_7

    .line 1708
    :cond_16a
    if-eqz p2, :cond_179

    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mHardKeyStatus:I

    sget v2, Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_FULL_PRESS:I

    if-ne v0, v2, :cond_179

    .line 1710
    sget v0, Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_HALF_UP:I

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mHardKeyStatus:I

    move v0, v1

    .line 1711
    goto/16 :goto_7

    .line 1714
    :cond_179
    sget v0, Lcom/sec/android/app/camera/Camera;->CA_HARDKEY_HALF_UP:I

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mHardKeyStatus:I

    .line 1716
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->shutterButtonCancelAction()V

    move v0, v1

    .line 1717
    goto/16 :goto_7

    .line 1610
    nop

    :sswitch_data_184
    .sparse-switch
        0x4 -> :sswitch_3d
        0x17 -> :sswitch_cd
        0x18 -> :sswitch_143
        0x19 -> :sswitch_143
        0x1a -> :sswitch_143
        0x1b -> :sswitch_cd
        0x42 -> :sswitch_cd
        0x50 -> :sswitch_146
        0x52 -> :sswitch_96
    .end sparse-switch
.end method

.method public onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 6
    .parameter "keyValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3615
    .local p2, rectlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLaunchGalleryFromCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3617
    if-nez p1, :cond_1b

    .line 3632
    :goto_1a
    return-void

    .line 3620
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3621
    const-string v0, "Camera"

    const-string v1, "returning because it is launch gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 3625
    :cond_29
    new-instance v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;-><init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 3626
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 3627
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 3628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    goto :goto_1a

    .line 3630
    :cond_41
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->searchForLastContentUri()V

    goto :goto_1a
.end method

.method public onModechanged()V
    .registers 4

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    .line 2670
    const-string v0, "Camera"

    const-string v1, "changeMode failed - engine not started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    :goto_12
    return-void

    .line 2674
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2676
    :cond_29
    const-string v0, "Camera"

    const-string v1, "changeMode failed - image capturing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2685
    :cond_31
    const-string v0, "Camera"

    const-string v1, "changeMode Started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModechanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/Camera;->mSelectedMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 2690
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 2692
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/Camera;->mSelectedMode:I

    .line 2693
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder()V

    goto :goto_12
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 908
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 910
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->setIntent(Landroid/content/Intent;)V

    .line 911
    return-void
.end method

.method public onObjectTrackingStatus(I)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 4064
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectTrackingStatus - msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    packed-switch p1, :pswitch_data_40

    .line 4077
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectTrackingStatus - undefined msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    :pswitch_3f
    return-void

    .line 4065
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

.method public onObjecttrackingChanged(I)V
    .registers 3
    .parameter "objecttracking"

    .prologue
    .line 2499
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setObjecttracking(I)V

    .line 2500
    return-void
.end method

.method public onOutdoorVisibilitySelect(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 2577
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraOutdoorVisibility(I)V

    .line 2578
    return-void
.end method

.method public onPanoramaCaptureCancelled()V
    .registers 2

    .prologue
    .line 3130
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 3131
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_c

    .line 3132
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 3133
    :cond_c
    return-void
.end method

.method public onPanoramaCaptureStart()Z
    .registers 5

    .prologue
    const/16 v3, 0x2a

    .line 3121
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3122
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v0, :cond_26

    .line 3123
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3124
    .restart local v0       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3126
    :cond_26
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->isPanoramaCapturing()Z

    move-result v1

    return v1
.end method

.method public onPanoramaCaptured()V
    .registers 8

    .prologue
    const/16 v6, 0x1a

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 3097
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptured"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1e

    .line 3099
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptured - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    :cond_1d
    :goto_1d
    return-void

    .line 3102
    :cond_1e
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isPanoramaCapturing()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3106
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3107
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_1d

    .line 3109
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setCaptureProgressIncreased()V

    .line 3110
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->restartCancelTimer()V

    .line 3112
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1d

    .line 3113
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 3114
    invoke-virtual {p0, v6, v4}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 3115
    :cond_4f
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 3116
    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    goto :goto_1d
.end method

.method public onPanoramaCapturedNew()V
    .registers 4

    .prologue
    .line 3001
    const-string v0, "Camera"

    const-string v1, "onPanoramaCapturedNew"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    return-void
.end method

.method public onPanoramaDirectionChanged(I)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 3006
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPanoramaDirectionChanged - direction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_2b

    .line 3008
    const-string v1, "Camera"

    const-string v2, "onPanoramaDirectionChanged - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    :cond_2a
    :goto_2a
    return-void

    .line 3012
    :cond_2b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    .line 3016
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3017
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 3021
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->panoramaDirectionChanged(I)V

    goto :goto_2a
.end method

.method public onPanoramaError(I)V
    .registers 9
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    .line 3027
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - error"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v1, :cond_21

    .line 3029
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - mCameraEngine is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    :cond_20
    :goto_20
    return-void

    .line 3033
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 3035
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_32

    .line 3036
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 3040
    :cond_32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 3042
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3043
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_20

    .line 3045
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showCaptureLayout()V

    .line 3046
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 3047
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 3049
    const v1, 0x7f090019

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_20
.end method

.method public onPanoramaProgressStitching(I)V
    .registers 7
    .parameter "arg0"

    .prologue
    const/16 v4, 0x64

    .line 3073
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPanoramaProgressStitching - Stitch progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_2d

    .line 3075
    const-string v1, "Camera"

    const-string v2, "onPanoramaProgressStitching - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    :cond_2c
    :goto_2c
    return-void

    .line 3079
    :cond_2d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 3082
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3083
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->isPanoramaCapturing()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 3085
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 3087
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setPostCaptureProgress(I)V

    .line 3089
    if-ne p1, v4, :cond_2c

    .line 3090
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setPostCaptureProgressMax(I)V

    .line 3091
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showCaptureLayout()V

    goto :goto_2c
.end method

.method public onPanoramaRectChanged(II)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 3055
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_c

    .line 3056
    const-string v1, "Camera"

    const-string v2, "onPanoramaRectChanged - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    :cond_b
    :goto_b
    return-void

    .line 3060
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 3064
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3065
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_b

    .line 3068
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->panoramaRectChanged(II)V

    goto :goto_b
.end method

.method protected onPause()V
    .registers 9

    .prologue
    const/16 v7, 0x1a

    const/4 v6, 0x7

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 941
    const-string v2, "Camera"

    const-string v3, "onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->PauseGLSurface()V

    .line 946
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->notifyOnPause()V

    .line 948
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 950
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    if-eqz v2, :cond_1d

    .line 954
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    .line 1075
    :goto_1c
    return-void

    .line 971
    :cond_1d
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 972
    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 973
    :cond_26
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 974
    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 976
    :cond_2f
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 977
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v3, Lcom/sec/android/app/camera/Camera;->ORIENTATION_TIMER_EXPIRED:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 978
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v3, Lcom/sec/android/app/camera/Camera;->SET_DIRTY_TIMER_EXPIRED:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 979
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 980
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    .line 982
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v3, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 983
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v3, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 985
    :cond_5a
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v2

    if-nez v2, :cond_75

    .line 986
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 988
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v2, :cond_75

    .line 989
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 992
    :cond_75
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v2, :cond_89

    .line 993
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->IsWaitingAnimation()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 994
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 995
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/CameraEngine;->setWaitingAnimation(Z)V

    .line 1000
    :cond_89
    :try_start_89
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_92

    .line 1001
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_92
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_92} :catch_12b

    .line 1007
    :cond_92
    :goto_92
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v2, :cond_af

    .line 1008
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->waitForEngineStartingThread()V

    .line 1009
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->waitForStartPreviewThreadComplete()V

    .line 1010
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentSearchingLastContentUri()V

    .line 1011
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 1014
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->enableStatusBar()V

    .line 1017
    :cond_af
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1018
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->onFocusStateChanged(I)V

    .line 1019
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideAllDlg()V

    .line 1021
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v2, :cond_eb

    .line 1022
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->clearTimer()V

    .line 1023
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    .line 1024
    .local v1, oldState:I
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1026
    if-eqz v1, :cond_e6

    .line 1029
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1030
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 1031
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 1032
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1044
    :cond_e6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->onPause()V

    .line 1047
    .end local v1           #oldState:I
    :cond_eb
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v3, 0x7f030010

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PostView;

    .line 1048
    .local v0, menu:Lcom/sec/android/app/camera/PostView;
    if-eqz v0, :cond_108

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PostView;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_108

    .line 1049
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1050
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->restoreMenu()V

    .line 1053
    :cond_108
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    if-eqz v2, :cond_111

    .line 1054
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraBaseIndicators;->onPause()V

    .line 1056
    :cond_111
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    if-eqz v2, :cond_11a

    .line 1057
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraIndicators;->disableOrientationListener()V

    .line 1059
    :cond_11a
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v2, :cond_123

    .line 1060
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->onPause()V

    .line 1062
    :cond_123
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPostCaptureAnimation()V

    .line 1074
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    goto/16 :goto_1c

    .line 1003
    .end local v0           #menu:Lcom/sec/android/app/camera/PostView;
    :catch_12b
    move-exception v2

    goto/16 :goto_92
.end method

.method public onPreviewFileReceived(I)V
    .registers 5
    .parameter "preview"

    .prologue
    const/4 v1, 0x1

    .line 2552
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_6

    .line 2561
    :goto_5
    return-void

    .line 2555
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1c

    :goto_a
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 2556
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_5

    .line 2557
    :catch_17
    move-exception v0

    .line 2559
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5

    .line 2555
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1c
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onResolutionMenuSelect(I)V
    .registers 3
    .parameter "resolution"

    .prologue
    .line 2392
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2393
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 2394
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 2395
    return-void
.end method

.method public onRespondSharewithNotify()V
    .registers 6

    .prologue
    .line 5028
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/UserInfo;

    .line 5029
    .local v0, userInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 5030
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/Camera$20;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/Camera$20;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 5042
    return-void
.end method

.method protected onResume()V
    .registers 14

    .prologue
    .line 1078
    const-string v9, "Camera"

    const-string v10, "onResume"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/16 v9, 0x1a

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1081
    const/16 v9, 0x1a

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 1082
    :cond_15
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camera;->isSystemKeyEventRequested(I)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 1083
    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvent(IZ)Z

    .line 1085
    :cond_21
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v9, :cond_38

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    if-eqz v9, :cond_38

    .line 1086
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->updateGuidelines(I)V

    .line 1090
    :cond_38
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    if-nez v9, :cond_43

    .line 1091
    new-instance v9, Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/Camera$UserWrapper;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v9, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    .line 1092
    :cond_43
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camera;->mIsFromSNS:Z

    .line 1095
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1097
    .local v2, _axtime_st_1:J
    iget-boolean v9, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    if-eqz v9, :cond_52

    .line 1098
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1300
    :goto_51
    return-void

    .line 1102
    :cond_52
    iget-boolean v9, p0, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    if-eqz v9, :cond_115

    .line 1103
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    .line 1104
    const/16 v9, 0xf

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 1110
    :cond_5e
    :goto_5e
    const-string v9, "enterprise_policy"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1111
    .local v4, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_7b

    .line 1112
    const-string v9, "Camera"

    const-string v10, "onResume CAMERA disable"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1117
    :cond_7b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 1119
    .local v6, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 1120
    const-string v9, "Camera"

    const-string v10, "onResume CAMERA disable"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const v9, 0x7f0900f1

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1123
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1141
    :cond_a3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 1142
    .local v8, win:Landroid/view/Window;
    const/16 v9, 0x80

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 1144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_cb

    .line 1145
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 1146
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 1147
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1154
    :cond_cb
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "torch_light"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_126

    const/4 v5, 0x1

    .line 1155
    .local v5, externalTorchEnabled:Z
    :goto_da
    if-eqz v5, :cond_128

    .line 1156
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/sec/android/app/camera/MenuDimController;->setIsFlashDimmed(Z)V

    .line 1162
    :goto_e3
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->onResume()V

    .line 1163
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->disableStatusBar()V

    .line 1166
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 1167
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1169
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1170
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1172
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentFilter()V

    .line 1174
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_Call()Z

    move-result v9

    if-nez v9, :cond_110

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_VoIPCall()Z

    move-result v9

    if-eqz v9, :cond_133

    .line 1175
    :cond_110
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_51

    .line 1105
    .end local v4           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v5           #externalTorchEnabled:Z
    .end local v6           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v8           #win:Landroid/view/Window;
    :cond_115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v9

    const/16 v10, 0xf

    if-ne v9, v10, :cond_5e

    .line 1106
    const/4 v9, 0x1

    sput-boolean v9, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    goto/16 :goto_5e

    .line 1154
    .restart local v4       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v6       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v8       #win:Landroid/view/Window;
    :cond_126
    const/4 v5, 0x0

    goto :goto_da

    .line 1158
    .restart local v5       #externalTorchEnabled:Z
    :cond_128
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.sec.samsung.torchwidget.widget_off"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v7, widgetSettingsOff:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_e3

    .line 1180
    .end local v7           #widgetSettingsOff:Landroid/content/Intent;
    :cond_133
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_161

    .line 1181
    sget-object v9, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    if-nez v9, :cond_14c

    .line 1182
    const-string v9, ""

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    sput-object v9, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    .line 1184
    :cond_14c
    sget-object v9, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    const v10, 0x7f0900e9

    invoke-virtual {v9, v10}, Landroid/widget/Toast;->setText(I)V

    .line 1185
    sget-object v9, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1186
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1187
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_51

    .line 1190
    :cond_161
    sget-object v9, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    if-eqz v9, :cond_16a

    .line 1191
    sget-object v9, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->cancel()V

    .line 1193
    :cond_16a
    const/4 v9, 0x0

    sput-object v9, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    .line 1196
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 1197
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 1198
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 1199
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v9

    const/16 v10, 0xf

    if-ne v9, v10, :cond_2a6

    .line 1200
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1206
    :goto_19f
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 1207
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentReceive()V

    .line 1209
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1c5

    .line 1216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 1217
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraBaseIndicators;->resumeOrientationListener()V

    .line 1218
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraIndicators;->resumeOrientationListener()V

    .line 1221
    :cond_1c5
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v9

    if-eqz v9, :cond_2c1

    .line 1222
    const-string v9, "from_app"

    iput-object v9, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 1223
    iget-boolean v9, p0, Lcom/sec/android/app/camera/Camera;->mChkFromMobileFax:Z

    if-nez v9, :cond_2b6

    .line 1224
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1227
    :goto_1dc
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1234
    :goto_1e4
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v9, :cond_1f1

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v9, :cond_1f1

    .line 1235
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 1238
    :cond_1f1
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1240
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v9, p0}, Lcom/sec/android/app/camera/CameraEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2d7

    .line 1241
    sget-object v9, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    if-nez v9, :cond_20b

    .line 1242
    const-string v9, ""

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    sput-object v9, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    .line 1244
    :cond_20b
    sget-object v9, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    const v10, 0x7f0900e7

    invoke-virtual {v9, v10}, Landroid/widget/Toast;->setText(I)V

    .line 1245
    sget-object v9, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1246
    const-string v9, "Camera"

    const-string v10, "Camera is finished due to media scanning"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->scheduleProcessBack()V

    .line 1255
    :goto_224
    iget-boolean v9, p0, Lcom/sec/android/app/camera/Camera;->bFromSecureSetting:Z

    if-eqz v9, :cond_23b

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v9

    if-eqz v9, :cond_23b

    .line 1256
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setGps(I)V

    .line 1257
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camera;->bFromSecureSetting:Z

    .line 1260
    :cond_23b
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v9, :cond_252

    .line 1261
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getChkSideMenuItemsShow()Z

    move-result v9

    if-nez v9, :cond_248

    .line 1262
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 1264
    :cond_248
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refresh()V

    .line 1265
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 1268
    :cond_252
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    if-eqz v9, :cond_25b

    .line 1269
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraBaseIndicators;->onResume()V

    .line 1272
    :cond_25b
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    if-eqz v9, :cond_264

    .line 1273
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraIndicators;->onResume()V

    .line 1276
    :cond_264
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->updateStorage()V

    .line 1278
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initRemains()V

    .line 1290
    const-string v9, "camera"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 1295
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1298
    .local v0, _axtime_ed_1:J
    const-string v9, "AXLOG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onResume-End**End["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]**["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v11, v0, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]**[]**"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    move-wide v2, v0

    .line 1300
    goto/16 :goto_51

    .line 1204
    .end local v0           #_axtime_ed_1:J
    :cond_2a6
    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto/16 :goto_19f

    .line 1226
    :cond_2b6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    goto/16 :goto_1dc

    .line 1229
    :cond_2c1
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 1230
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1231
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    goto/16 :goto_1e4

    .line 1249
    :cond_2d7
    sget-object v9, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    if-eqz v9, :cond_2e0

    .line 1250
    sget-object v9, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->cancel()V

    .line 1252
    :cond_2e0
    const/4 v9, 0x0

    sput-object v9, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    goto/16 :goto_224
.end method

.method public onReviewMenuSelect(I)V
    .registers 3
    .parameter "review"

    .prologue
    .line 2537
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    .line 2538
    return-void
.end method

.method public onRunSNSAfterConnect(I)V
    .registers 5
    .parameter "auto"

    .prologue
    const/4 v1, 0x1

    .line 2564
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_6

    .line 2574
    :goto_5
    return-void

    .line 2567
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1e

    :goto_a
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoStart(Z)V

    .line 2568
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_20

    .line 2573
    :goto_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setNetWork(I)V

    goto :goto_5

    .line 2567
    :cond_1e
    const/4 v1, 0x0

    goto :goto_a

    .line 2569
    :catch_20
    move-exception v0

    .line 2571
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16
.end method

.method public onSaturationMenuSelect(I)V
    .registers 3
    .parameter "saturation"

    .prologue
    .line 2653
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 2654
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 9
    .parameter "s"

    .prologue
    const/4 v6, 0x0

    .line 1846
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    .line 1864
    :goto_9
    return v6

    .line 1850
    :cond_a
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    const-wide v4, 0x4051800000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v0, v1, v2

    .line 1852
    .local v0, newZoomValue:I
    if-gez v0, :cond_21

    .line 1853
    const/4 v0, 0x0

    .line 1855
    :cond_21
    const/16 v1, 0x1e

    if-le v0, v1, :cond_27

    .line 1856
    const/16 v0, 0x1e

    .line 1858
    :cond_27
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1860
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 1861
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V

    .line 1862
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1863
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 8
    .parameter "arg0"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 1868
    const-string v2, "Camera"

    const-string v3, "onScaleBegin"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1870
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    .line 1872
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 1874
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v2, :cond_3a

    .line 1875
    new-instance v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 1877
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1878
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1881
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1882
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1883
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1886
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_3a
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 1887
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1888
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1889
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1890
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 1905
    const-string v0, "Camera"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1907
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1908
    return-void
.end method

.method public onSceneModeMenuSelect(I)V
    .registers 6
    .parameter "sceneMode"

    .prologue
    .line 2089
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSceneModeChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2092
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 2094
    const/4 v0, 0x0

    .line 2096
    .local v0, resolutionChanged:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v0

    .line 2097
    if-eqz v0, :cond_39

    .line 2098
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(I)V

    .line 2100
    :cond_39
    return-void
.end method

.method public onSearchingLastContentUriCompleted()V
    .registers 2

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    if-eqz v0, :cond_c

    .line 3636
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 3637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 3639
    :cond_c
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .registers 3

    .prologue
    .line 2107
    const-string v0, "Camera"

    const-string v1, "onSelfModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2110
    const-string v0, "Camera"

    const-string v1, "onSelfModeChangeSelected failed - queue is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    :cond_1a
    :goto_1a
    return-void

    .line 2114
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2115
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v0

    if-nez v0, :cond_40

    .line 2116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfMode(I)V

    .line 2121
    :goto_30
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 2124
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 2125
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2126
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    goto :goto_1a

    .line 2119
    :cond_40
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfMode(I)V

    goto :goto_30
.end method

.method public onSharpnessMenuSelect(I)V
    .registers 3
    .parameter "sharpness"

    .prologue
    .line 2661
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 2662
    return-void
.end method

.method public onShootAndShareMenuSelect(I)V
    .registers 4
    .parameter "sns"

    .prologue
    .line 2541
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootAndShare(I)V

    .line 2542
    const-string v0, "onShootAndShareMenuSelect"

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 2544
    const-string v0, "onShootAndShareMenuSelect"

    const-string v1, "-----------on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    :cond_18
    return-void
.end method

.method public onShootingModeMenuSelect(I)V
    .registers 8
    .parameter "shootingMode"

    .prologue
    const/16 v5, 0xf

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 2153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 2154
    if-ne p1, v5, :cond_20

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2155
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraBaseIndicators;->changeIndicatorMode(I)V

    .line 2156
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 2157
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mShowWifiDialog:Z

    .line 2160
    :cond_20
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShootingModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    if-ne p1, v5, :cond_3d

    .line 2163
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->manageLocalService(Z)V

    .line 2166
    :cond_3d
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5c

    .line 2167
    const-string v0, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Switching][Begin] - Shooting mode change start::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    :cond_5c
    if-ne p1, v4, :cond_77

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v4, :cond_77

    .line 2170
    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v3, 0x4

    invoke-static {v0, p0, v1, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 2184
    :cond_76
    :goto_76
    return-void

    .line 2173
    :cond_77
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2175
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 2176
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 2179
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 2180
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 2181
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    goto :goto_76
.end method

.method public onShutterSoundMenuSelect(I)V
    .registers 3
    .parameter "shuttersound"

    .prologue
    .line 2581
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    .line 2585
    return-void
.end method

.method public onSmileDetectingStopped()V
    .registers 4

    .prologue
    .line 2955
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 2956
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 2957
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->stopDetect()V

    .line 2958
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->cleanSmileRect()V

    .line 2960
    return-void
.end method

.method public onSmileShotDetectionSuccess()V
    .registers 3

    .prologue
    .line 2963
    const-string v0, "Camera"

    const-string v1, "onOnSmileShotDetectionSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->smileDetectionCompleted()V

    .line 2965
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    .line 2966
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    .line 2967
    return-void
.end method

.method public onSmileShotFaceRectChanged([B)V
    .registers 5
    .parameter "data"

    .prologue
    .line 2972
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    .line 2982
    :cond_b
    :goto_b
    return-void

    .line 2976
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 2977
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2981
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->smileShotFaceRectChanged([B)V

    goto :goto_b
.end method

.method public onSmileShotSmileRectChanged([B)V
    .registers 5
    .parameter "data"

    .prologue
    .line 2987
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    .line 2997
    :cond_b
    :goto_b
    return-void

    .line 2991
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 2992
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2996
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->smileShotSmileRectChanged([B)V

    goto :goto_b
.end method

.method public onStartingPreviewCompleted()V
    .registers 1

    .prologue
    .line 2786
    return-void
.end method

.method public onStorageMenuSelect(I)V
    .registers 3
    .parameter "storage"

    .prologue
    .line 2594
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 2595
    return-void
.end method

.method public onTimerEvent(I)V
    .registers 6
    .parameter "value"

    .prologue
    .line 2945
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030012

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerCounting;

    .line 2946
    .local v0, menu:Lcom/sec/android/app/camera/TimerCounting;
    if-eqz v0, :cond_1e

    .line 2947
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/TimerCounting;->setOrientaion(I)V

    .line 2948
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerCounting;->showMenu()V

    .line 2949
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/TimerCounting;->updateCountingNum(I)V

    .line 2951
    :cond_1e
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .registers 5
    .parameter "timer"

    .prologue
    .line 2387
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    .line 2388
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v1, 0x7f030012

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    .line 2389
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1723
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPostCaptureAnimation()V

    .line 1725
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    .line 1808
    :goto_f
    return v0

    .line 1729
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    .line 1730
    goto :goto_f

    .line 1733
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_27

    .line 1734
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_f

    .line 1738
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_32
    .catch Ljava/util/NoSuchElementException; {:try_start_27 .. :try_end_32} :catch_37

    move-result v0

    if-eqz v0, :cond_38

    move v0, v1

    .line 1739
    goto :goto_f

    .line 1741
    :catch_37
    move-exception v0

    .line 1745
    :cond_38
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isPreviewTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_40

    move v0, v1

    .line 1746
    goto :goto_f

    .line 1749
    :cond_40
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_50
    move v0, v1

    .line 1750
    goto :goto_f

    .line 1753
    :cond_52
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_77

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isZoomAvailable()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1754
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1755
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_77

    :cond_75
    move v0, v1

    .line 1757
    goto :goto_f

    .line 1761
    :cond_77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_102

    .line 1808
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_f

    .line 1766
    :pswitch_83
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    if-eqz v0, :cond_aa

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    if-eqz v0, :cond_aa

    .line 1768
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1769
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->shrinkTouchFocusRect()V

    .line 1770
    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 1771
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 1772
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 1775
    :cond_aa
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    move v0, v1

    .line 1776
    goto/16 :goto_f

    .line 1780
    :pswitch_af
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 1782
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    if-ne v0, v1, :cond_ca

    .line 1783
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1785
    :cond_ca
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V

    .line 1786
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    :cond_cf
    move v0, v1

    .line 1789
    goto/16 :goto_f

    .line 1792
    :pswitch_d2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    if-eqz v0, :cond_eb

    .line 1793
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1794
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_eb

    .line 1795
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V

    :cond_eb
    move v0, v1

    .line 1799
    goto/16 :goto_f

    .line 1801
    :pswitch_ee
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1802
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1803
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1804
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    move v0, v1

    .line 1805
    goto/16 :goto_f

    .line 1761
    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_af
        :pswitch_83
        :pswitch_d2
        :pswitch_ee
    .end packed-switch
.end method

.method public onUserSelectionListChanged(Lcom/samsung/shareshot/User;Z)V
    .registers 6
    .parameter "user"
    .parameter "isChecked"

    .prologue
    .line 4925
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4927
    if-eqz p2, :cond_22

    .line 4928
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onUserSelected(Lcom/samsung/shareshot/User;)V

    .line 4932
    :goto_21
    return-void

    .line 4930
    :cond_22
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onUserCancelSelected(Lcom/samsung/shareshot/User;)V

    goto :goto_21
.end method

.method public onVintageMenuSelect(I)V
    .registers 3
    .parameter "vintage"

    .prologue
    .line 2721
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingVintageMode(I)V

    .line 2722
    return-void
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .registers 4
    .parameter "whiteBalance"

    .prologue
    .line 2470
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2471
    if-eqz p1, :cond_11

    .line 2472
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setEffect(I)V

    .line 2474
    :cond_11
    return-void
.end method

.method public onZoomValueMenuSelect(I)V
    .registers 3
    .parameter "zoomValue"

    .prologue
    .line 2641
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 2642
    return-void
.end method

.method public playCameraSound(II)V
    .registers 11
    .parameter "Sound"
    .parameter "loop"

    .prologue
    .line 3294
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_c

    .line 3295
    const-string v0, "Camera"

    const-string v1, "playCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :goto_b
    return-void

    .line 3299
    :cond_c
    const/16 v7, 0xf

    .line 3300
    .local v7, MAX_VOLUME:I
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 3302
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_16

    .line 3314
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_b
.end method

.method public declared-synchronized refreshDeviceList()V
    .registers 7

    .prologue
    .line 4533
    monitor-enter p0

    :try_start_1
    const-string v2, "#"

    const-string v3, " refreshDeviceList"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4534
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    if-eqz v2, :cond_69

    .line 4535
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    const/high16 v3, 0x440a

    const v4, 0x44274000

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 4536
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    .line 4537
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v4

    const/high16 v5, 0x4210

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 4538
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x36

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 4539
    .local v0, menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v2

    if-nez v2, :cond_6b

    .line 4540
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 4541
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 4543
    :cond_56
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4544
    .local v1, text:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_7f

    .line 4553
    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    .end local v1           #text:Ljava/lang/String;
    :cond_69
    :goto_69
    monitor-exit p0

    return-void

    .line 4547
    .restart local v0       #menu:Lcom/sec/android/app/camera/MenuBase;
    :cond_6b
    if-eqz v0, :cond_72

    .line 4548
    :try_start_6d
    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->refreshMenuPosition()V

    .line 4549
    :cond_72
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    if-eqz v2, :cond_69

    .line 4550
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v3, 0x7f020177

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLTitleDecorator;->setNinePatchBackground(I)Z
    :try_end_7e
    .catchall {:try_start_6d .. :try_end_7e} :catchall_7f

    goto :goto_69

    .line 4533
    :catchall_7f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public requestSystemKeyEvent(IZ)Z
    .registers 6
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 4426
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mWindowManager:Landroid/view/IWindowManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 4431
    :goto_a
    return v1

    .line 4427
    :catch_b
    move-exception v0

    .line 4428
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4431
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public resetScaleDetector()V
    .registers 3

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_a

    .line 1922
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1923
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_13

    .line 1924
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 1925
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1926
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1927
    return-void
.end method

.method public resetToDefaultSettings()V
    .registers 8

    .prologue
    const/16 v6, 0x28

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3318
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetCameraSettingsToDefault()V

    .line 3320
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v2, :cond_14

    .line 3321
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setWideViewBGVisibility()V

    .line 3324
    :cond_14
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v2, :cond_1d

    .line 3325
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setGuideLineWideResolution(Z)V

    .line 3327
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->resetDim()V

    .line 3330
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->closeVisibleViews()V

    .line 3332
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    const/16 v3, 0x16

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 3334
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v2, :cond_41

    .line 3335
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mChkFromMobileFax:Z

    if-nez v2, :cond_8e

    .line 3336
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 3341
    :cond_41
    :goto_41
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 3343
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3344
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 3346
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 3347
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_97

    .line 3348
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 3352
    :goto_62
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x29

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 3353
    .local v1, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    if-eqz v1, :cond_7a

    .line 3354
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshEditableMenu()V

    .line 3355
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 3357
    :cond_7a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3358
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 3360
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v2, :cond_8d

    .line 3361
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 3363
    :cond_8d
    return-void

    .line 3338
    .end local v0           #editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    .end local v1           #sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    :cond_8e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    goto :goto_41

    .line 3350
    .restart local v0       #editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    :cond_97
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_62
.end method

.method public resetTouchFocus()V
    .registers 3

    .prologue
    .line 4083
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4084
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->forSetOrgFocus()V

    .line 4085
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 4087
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1b

    .line 4088
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 4091
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 4092
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 4094
    :cond_29
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 4095
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 4096
    return-void
.end method

.method public resizeForPreviewAspectRatio()Z
    .registers 7

    .prologue
    const-wide v4, 0x3ff5555555555555L

    .line 2746
    const-string v2, "Camera"

    const-string v3, "resizeForPreviewAspectRatio"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    const/4 v1, 0x0

    .line 2752
    .local v1, result:Z
    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 2760
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2761
    const-wide v2, 0x3ffaaaaaaaaaaaabL

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v1

    .line 2780
    :goto_2d
    return v1

    .line 2763
    :cond_2e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3e

    .line 2767
    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v1

    goto :goto_2d

    .line 2770
    :cond_3e
    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v1

    goto :goto_2d
.end method

.method public restartTouchAutoFocus()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1825
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    if-eqz v0, :cond_28

    .line 1827
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1829
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_21

    .line 1830
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mTwGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->shrinkTouchFocusRect()V

    .line 1832
    :cond_21
    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 1833
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 1835
    :cond_28
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 1837
    return-void
.end method

.method public runComfirmedDialog(Lcom/samsung/shareshot/User;)V
    .registers 5
    .parameter "user"

    .prologue
    .line 4842
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Notice"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has accepted your request!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/sec/android/app/camera/Camera$16;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$16;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4849
    return-void
.end method

.method public runDialog(Lcom/samsung/shareshot/User;)V
    .registers 5
    .parameter "user"

    .prologue
    .line 4852
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Share with request"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wants to share image with you. Continue?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/sec/android/app/camera/Camera$18;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/Camera$18;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/sec/android/app/camera/Camera$17;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/Camera$17;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4883
    return-void
.end method

.method public saveDataToFile(Ljava/lang/String;[B)Z
    .registers 8
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 3823
    const/4 v1, 0x0

    .line 3825
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_11

    .line 3826
    .end local v1           #f:Ljava/io/FileOutputStream;
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_6
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_26
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_29

    .line 3830
    if-eqz v2, :cond_e

    .line 3832
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_22

    .line 3838
    :cond_e
    :goto_e
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :cond_10
    :goto_10
    return v3

    .line 3827
    :catch_11
    move-exception v0

    .line 3828
    .local v0, e:Ljava/io/IOException;
    :goto_12
    const/4 v3, 0x0

    .line 3830
    if-eqz v1, :cond_10

    .line 3832
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_10

    .line 3833
    :catch_19
    move-exception v4

    goto :goto_10

    .line 3830
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1b
    move-exception v3

    :goto_1c
    if-eqz v1, :cond_21

    .line 3832
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_24

    .line 3835
    :cond_21
    :goto_21
    throw v3

    .line 3833
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_22
    move-exception v3

    goto :goto_e

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :catch_24
    move-exception v4

    goto :goto_21

    .line 3830
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catchall_26
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_1c

    .line 3827
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_29
    move-exception v0

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_12
.end method

.method public searchUser(Lcom/samsung/dmc/ux/db/UserInfo;)Lcom/samsung/shareshot/User;
    .registers 9
    .parameter "gsUserInfo"

    .prologue
    .line 4886
    const/4 v3, 0x0

    .line 4887
    .local v3, user:Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 4889
    .local v2, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_2
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v4

    .line 4890
    .local v4, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 4891
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 4892
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 4893
    if-eqz v2, :cond_c

    .line 4894
    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v6

    if-ne v5, v6, :cond_c

    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_35} :catch_3a

    move-result v5

    if-eqz v5, :cond_c

    move-object v5, v3

    .line 4903
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v4           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_39
    return-object v5

    .line 4900
    :catch_3a
    move-exception v5

    .line 4903
    :cond_3b
    const/4 v5, 0x0

    goto :goto_39
.end method

.method public searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;
    .registers 9
    .parameter "userIP"

    .prologue
    .line 4980
    const/4 v4, 0x0

    .line 4981
    .local v4, user:Lcom/samsung/shareshot/User;
    const/4 v3, 0x0

    .line 4984
    .local v3, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v6}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v5

    .line 4985
    .local v5, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    monitor-enter v5
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_34

    .line 4986
    :try_start_9
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 4987
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v4, v0

    .line 4988
    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    .line 4989
    if-eqz v3, :cond_d

    .line 4990
    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 4992
    monitor-exit v5

    move-object v6, v4

    .line 5002
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_2d
    return-object v6

    .line 4996
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .restart local v5       #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :cond_2e
    monitor-exit v5

    .line 5002
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_2f
    const/4 v6, 0x0

    goto :goto_2d

    .line 4996
    .restart local v5       #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :catchall_31
    move-exception v6

    monitor-exit v5
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_31

    :try_start_33
    throw v6
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_34} :catch_34

    .line 4997
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :catch_34
    move-exception v1

    .line 4999
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2f
.end method

.method public searchUser(Ljava/util/List;II)Lcom/samsung/shareshot/User;
    .registers 11
    .parameter
    .parameter "userID"
    .parameter "selected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;II)",
            "Lcom/samsung/shareshot/User;"
        }
    .end annotation

    .prologue
    .line 4907
    .local p1, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    const/4 v3, 0x0

    .line 4908
    .local v3, user:Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 4909
    .local v2, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " this user list have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4910
    monitor-enter p1

    .line 4911
    :try_start_29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 4912
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 4913
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 4914
    if-eqz v2, :cond_2d

    .line 4915
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v4

    if-ne p2, v4, :cond_2d

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v4

    if-ne p3, v4, :cond_2d

    .line 4916
    monitor-exit p1

    move-object v4, v3

    .line 4920
    :goto_4f
    return-object v4

    .line 4919
    :cond_50
    monitor-exit p1

    .line 4920
    const/4 v4, 0x0

    goto :goto_4f

    .line 4919
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :catchall_53
    move-exception v4

    monitor-exit p1
    :try_end_55
    .catchall {:try_start_29 .. :try_end_55} :catchall_53

    throw v4
.end method

.method public setConnectingStateGPS(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 4195
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    if-eqz v0, :cond_9

    .line 4196
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraIndicators;->setConnectingStateGPS(I)V

    .line 4197
    :cond_9
    return-void
.end method

.method public setIsLaunchGallery(Z)V
    .registers 2
    .parameter "chkLaunchGallery"

    .prologue
    .line 1930
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 1931
    return-void
.end method

.method public setOnUserSelected(Lcom/sec/android/app/camera/Camera$OnUserSelected;I)V
    .registers 5
    .parameter "l"
    .parameter "position"

    .prologue
    .line 4972
    const-string v0, "Camera"

    const-string v1, "set on user selceted listen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4973
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4974
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4975
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4976
    return-void
.end method

.method public setResolutionAndShootingModeToDefault()V
    .registers 8

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2426
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2428
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 2430
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 2432
    .local v0, shootingMode:I
    if-ne v0, v6, :cond_4b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2433
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    .line 2438
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 2439
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2441
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5d

    .line 2442
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 2447
    :goto_3f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 2450
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2452
    :cond_4a
    return-void

    .line 2434
    :cond_4b
    if-eq v0, v6, :cond_2f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2435
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    goto :goto_2f

    .line 2444
    :cond_5d
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v4, v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto :goto_3f
.end method

.method public setShutterSoundToDefault()V
    .registers 1

    .prologue
    .line 2591
    return-void
.end method

.method public setTouchAutoFocusActive(Z)V
    .registers 2
    .parameter "active"

    .prologue
    .line 1939
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 1943
    return-void
.end method

.method public setWideViewBGVisibility()V
    .registers 2

    .prologue
    .line 4471
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_9

    .line 4472
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setWideViewBGVisibility()V

    .line 4473
    :cond_9
    return-void
.end method

.method public showFocusText()V
    .registers 5

    .prologue
    .line 4110
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    .line 4111
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4112
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    sget v2, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4115
    :cond_14
    return-void
.end method

.method public showReviewMenu()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 4018
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_6

    .line 4032
    :goto_5
    return-void

    .line 4022
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030010

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PostView;

    .line 4024
    .local v0, menu:Lcom/sec/android/app/camera/PostView;
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/PostView;->setImageUri(Landroid/net/Uri;)V

    .line 4025
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/PostView;->setImagePath(Ljava/lang/String;)V

    .line 4026
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 4027
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_31

    .line 4028
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/PostView;->setImagePath(Ljava/lang/String;)V

    .line 4030
    :cond_31
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 4031
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PostView;->showMenu()V

    goto :goto_5
.end method

.method public showSideMenu()V
    .registers 2

    .prologue
    .line 4416
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showSideMenu()V

    .line 4417
    return-void
.end method

.method public showSideMenuItems()V
    .registers 2

    .prologue
    .line 4407
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_9

    .line 4408
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showSideMenuItems()V

    .line 4409
    :cond_9
    return-void
.end method

.method public shutterButtonCancelAction()V
    .registers 2

    .prologue
    .line 4462
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4468
    :goto_8
    return-void

    .line 4464
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 4465
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 4466
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 4467
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    goto :goto_8
.end method

.method public declared-synchronized startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    .registers 11
    .parameter "data"

    .prologue
    .line 4280
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDetection:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_7} :catch_5c

    if-eqz v0, :cond_b

    .line 4367
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 4294
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_1e

    .line 4296
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 4300
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 4301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 4304
    :cond_1e
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 4307
    .local v8, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v8}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getTop()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v8}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v8}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewShutter;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFFLandroid/graphics/Bitmap;Z)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 4315
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/Camera$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$9;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setProgressListener(Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;)V

    .line 4355
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 4360
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->startCustomAnimation()V
    :try_end_5b
    .catchall {:try_start_b .. :try_end_5b} :catchall_5e
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_5b} :catch_5c

    goto :goto_9

    .line 4364
    .end local v8           #previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    :catch_5c
    move-exception v0

    goto :goto_9

    .line 4280
    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateRemainStorageIndicator()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 4144
    const/4 v0, 0x0

    .line 4145
    .local v0, nRemainCount:I
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eq v1, v4, :cond_2e

    .line 4146
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkStorageLow()V

    .line 4147
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-nez v1, :cond_2e

    .line 4148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getRemainCount(III)I

    move-result v0

    .line 4152
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    .line 4153
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 4157
    :cond_2e
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v1, :cond_33

    .line 4158
    const/4 v0, 0x0

    .line 4160
    :cond_33
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setRemainCount(I)V

    .line 4161
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRemainStorageIndicator("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4162
    return-void
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;I)V
    .registers 6
    .parameter "data"
    .parameter "orientation"

    .prologue
    .line 4267
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDetection:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 4276
    :cond_8
    :goto_8
    return-void

    .line 4271
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_8

    .line 4272
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4273
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    goto :goto_8
.end method

.method public wakeupToSnSMod()V
    .registers 5

    .prologue
    const/16 v3, 0xf

    .line 5007
    const-string v0, "ActivateConfirm"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "IntentExtraMessageType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 5008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mRespondNoti:Z

    .line 5009
    const-string v0, "Camera"

    const-string v1, " will wake up camera to deal with share with request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5010
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onRespondSharewithNotify()V

    .line 5015
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v3, :cond_3a

    .line 5016
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/sec/android/app/camera/Camera$19;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$19;-><init>(Lcom/sec/android/app/camera/Camera;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 5025
    :cond_3a
    return-void

    .line 5011
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isfromhistory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5012
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    goto :goto_21
.end method
