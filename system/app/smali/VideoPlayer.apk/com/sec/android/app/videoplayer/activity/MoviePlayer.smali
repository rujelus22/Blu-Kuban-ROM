.class public Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.super Landroid/app/Activity;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/sec/android/app/videoplayer/util/VideoUtil$OnVideoLockStateChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;
    }
.end annotation


# static fields
.field public static final ACTION_HDMI_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field private static final BACK_KEY_TIME_TO_EXPIRE:I = 0x640

.field public static final DEBUG:Z = false

.field private static final DELAYED_ACTION_AFTER_RESUME:I = 0x1

.field private static final FADE_OUT_TIME:I = 0xbb8

.field private static final HANDLE_BACK_KEY:I = 0x3

.field private static final HANDLE_USER_PRESENT:I = 0x4

.field private static final HDMI_CONNECT:I = 0x1

.field private static final INVALID_ERROR:I = 0xb

.field private static final MEDIA_ERROR_CURRUPT:I = 0xd

.field private static final MEDIA_ERROR_DIVX_NOTAUTHORIZED:I = 0xe

.field private static final MEDIA_ERROR_EXPIRED_RENTALCOUNT:I = 0xf

.field private static final MEDIA_ERROR_NOTSUPPORT:I = 0xc

.field private static final MENU_BRIGHTNESS:I = 0x1

.field private static final MENU_COLOR_TONE:I = 0x6

.field private static final MENU_DETAILS:I = 0x9

.field private static final MENU_GROUP_BRIGHTNESS:I = 0x1

.field private static final MENU_GROUP_COLOR_TONE:I = 0x5

.field private static final MENU_GROUP_DETAILS:I = 0x8

.field private static final MENU_GROUP_OUTDOOR_VISIBILITY:I = 0x6

.field private static final MENU_GROUP_SHARE:I = 0x0

.field private static final MENU_GROUP_SOUNDPATH:I = 0x3

.field private static final MENU_GROUP_SUBTITLE:I = 0x4

.field private static final MENU_GROUP_TRIMMING:I = 0x2

.field private static final MENU_GROUP_VIDEOMAKER:I = 0x7

.field private static final MENU_OUTDOOR_VISIBILITY:I = 0x7

.field private static final MENU_SHARE:I = 0x0

.field private static final MENU_SUBTITLE:I = 0x5

.field private static final MENU_TRANSFER_TO_HEADSET:I = 0x3

.field private static final MENU_TRANSFER_TO_PHONE:I = 0x4

.field private static final MENU_TRIMMING:I = 0x2

.field private static final MENU_VIDEOMAKER:I = 0x8

.field private static final MSG_FROM_HANDLER:I = 0x0

.field private static final MSG_FROM_USER:I = 0x1

.field private static final NO_DATA_CONNECTIVITY:I = 0x15

.field public static final PAUSE_VIDEO:I = 0xa

.field private static final PREFERENCE_BRIGHTNESS:Ljava/lang/String; = "VideoPlayer_Brightness"

.field private static final PREFERENCE_COLORTONE:Ljava/lang/String; = "VideoPlayer_Colortone"

.field private static final PREFERENCE_OUTDOOR:Ljava/lang/String; = "VideoPlayer_Outdoorvisibility"

.field private static final PREFERENCE_SCREENMODE:Ljava/lang/String; = "VideoPlayer_ScreenMode"

.field private static final PREFERENCE_VIDEO_AUTO_BRIGHTNESS:Ljava/lang/String; = "VideoPlayer_Auto_Brightness"

.field private static final PREFERENCE_VIDEO_AUTO_BRIGHTNESS_DEFAULT_FLAG:Ljava/lang/String; = "VideoPlayer_Auto_Brightness_Default_flag"

.field private static final QUIT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MoviePlayer"

.field private static final UNKNOWN_ERROR:I = 0xa

.field private static final VIDEO_DRM_LICENSE_ACQUISITION_FAILED:I = 0x12

.field private static final VIDEO_ERR_DRM_DEVCERT_REVOKED:I = 0x19

.field private static final VIDEO_ERR_DRM_DOMAIN_REQUIRED:I = 0x16

.field private static final VIDEO_ERR_DRM_LICENSE_EXPIRED:I = 0x14

.field private static final VIDEO_ERR_DRM_LICENSE_NOT_FOUND:I = 0x13

.field private static final VIDEO_ERR_DRM_SERVER_DEVICE_LIMIT_REACHED:I = 0x1c

.field private static final VIDEO_ERR_DRM_SERVER_INTERNAL_ERROR:I = 0x18

.field private static final VIDEO_ERR_DRM_SERVER_NOT_A_MEMBER:I = 0x17

.field private static final VIDEO_ERR_DRM_SERVER_PROTOCOL_VERSION_MISMATCH:I = 0x1b

.field private static final VIDEO_ERR_DRM_SERVER_UNKNOWN_ACCOUNT_ID:I = 0x1a

.field private static final VOL_CTRL_TIME_OUT:I = 0xbb8

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private DuringCallToast:Landroid/widget/Toast;

.field private MediaToast:Landroid/widget/Toast;

.field private error_count:I

.field private lastPos:I

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mBackKeyTimer:I

.field private mBackKeyToast:Landroid/widget/Toast;

.field private mBrightnessLevel:I

.field private mColortone:I

.field private mDivxExitPopup:Landroid/app/AlertDialog;

.field private mDivxExitShow:Z

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field private mDrmPopup:Landroid/app/AlertDialog;

.field private mDrmPopupType:I

.field private mErrorPopup:Landroid/app/AlertDialog;

.field private mErrorPopupShow:Z

.field private mExit:Z

.field private final mHandler:Landroid/os/Handler;

.field private mKeyType:I

.field private mLicErrorRelatedPopupShow:Z

.field private mLongKeyCnt:I

.field private mLowBtteryPopup:Landroid/app/AlertDialog;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMenu:Landroid/view/Menu;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mOutdoorvisibility:Z

.field private mPopupLowBattShow:Z

.field private mProgress:Landroid/app/ProgressDialog;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mSeekStatus:Z

.field private mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mSystemAutoBrightness:Z

.field private mSystemBrightnessLevel:I

.field private mThumbKicker:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

.field private mUnsupportedToast:Landroid/widget/Toast;

.field private mVideoActivityOnResume:Z

.field private mVideoAutoBrightness:Z

.field private mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWasIncomingCall:Z

.field private mbAutoBright:Z

.field private mbDrmPopupShow:Z

.field private paused:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 219
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 116
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    .line 117
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;

    .line 119
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    .line 121
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    .line 122
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;

    .line 123
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDivxExitPopup:Landroid/app/AlertDialog;

    .line 124
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    .line 127
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->DuringCallToast:Landroid/widget/Toast;

    .line 128
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->MediaToast:Landroid/widget/Toast;

    .line 129
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUnsupportedToast:Landroid/widget/Toast;

    .line 130
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyToast:Landroid/widget/Toast;

    .line 132
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 133
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z

    .line 134
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPopupLowBattShow:Z

    .line 135
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDivxExitShow:Z

    .line 136
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z

    .line 138
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSystemAutoBrightness:Z

    .line 139
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoAutoBrightness:Z

    .line 141
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbAutoBright:Z

    .line 144
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mExit:Z

    .line 145
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSeekStatus:Z

    .line 146
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorvisibility:Z

    .line 147
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mWasIncomingCall:Z

    .line 208
    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 209
    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I

    .line 210
    iput v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    .line 211
    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortone:I

    .line 212
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightnessLevel:I

    .line 213
    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->lastPos:I

    .line 214
    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyTimer:I

    .line 215
    iput v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I

    .line 216
    iput v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSystemBrightnessLevel:I

    .line 2003
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$3;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    .line 2058
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$4;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 2472
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$5;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 2850
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$13;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 2950
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$14;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 3077
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$15;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$15;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 3555
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mThumbKicker:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

    .line 3769
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$21;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$21;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 3785
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$22;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$22;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->refreshOrientationState()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/popup/VideoDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkLockScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/view/Menu;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mWasIncomingCall:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->batteryCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->popupLowBattery()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->activityFinish()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createErrorDialog(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopupType:I

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPopupLowBattShow:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDivxExitShow:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyTimer:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyTimer:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->resumePlayback()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->paused:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    return-object p1
.end method

.method private activityFinish()V
    .registers 4

    .prologue
    .line 1990
    const-string v0, "MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityFinish() - mExit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mExit:Z

    if-eqz v0, :cond_1f

    .line 2001
    :goto_1e
    return-void

    .line 1995
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mExit:Z

    .line 1996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z

    .line 1997
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->dismissDialogPopup()V

    .line 1998
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    .line 1999
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopBufferingChecker()V

    .line 2000
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->finish()V

    goto :goto_1e
.end method

.method private batteryCheck()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2976
    const-string v12, "MoviePlayer"

    const-string v13, "batteryCheck() is called"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    const/4 v11, 0x0

    .line 2979
    .local v11, voltage:I
    const/4 v4, 0x0

    .line 2980
    .local v4, charging_source:I
    const/4 v9, 0x0

    .line 2981
    .local v9, length:I
    const/16 v12, 0xa

    new-array v3, v12, [B

    .line 2983
    .local v3, buffer:[B
    const/4 v10, 0x0

    .line 2984
    .local v10, value:Ljava/lang/String;
    const-string v0, "/sys/class/power_supply/battery/charging_source"

    .line 2986
    .local v0, CHARGESOURCE_FILE:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2989
    .local v7, in:Ljava/io/InputStream;
    :try_start_12
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_72
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_17} :catch_45

    .line 2993
    .end local v7           #in:Ljava/io/InputStream;
    .local v8, in:Ljava/io/InputStream;
    if-eqz v8, :cond_20

    .line 2995
    :try_start_19
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_37
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_2f

    move-result v9

    .line 2999
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 3003
    :cond_20
    :goto_20
    if-eqz v9, :cond_3c

    .line 3004
    new-instance v10, Ljava/lang/String;

    .end local v10           #value:Ljava/lang/String;
    const/4 v12, 0x0

    add-int/lit8 v13, v9, -0x1

    invoke-direct {v10, v3, v12, v13}, Ljava/lang/String;-><init>([BII)V

    .restart local v10       #value:Ljava/lang/String;
    move-object v7, v8

    .line 3009
    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    :goto_2b
    if-nez v10, :cond_9c

    .line 3010
    const/4 v12, 0x1

    .line 3038
    :goto_2e
    return v12

    .line 2996
    .end local v7           #in:Ljava/io/InputStream;
    .restart local v8       #in:Ljava/io/InputStream;
    :catch_2f
    move-exception v5

    .line 2997
    .local v5, e:Ljava/io/IOException;
    :try_start_30
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_37

    .line 2999
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_20

    .end local v5           #e:Ljava/io/IOException;
    :catchall_37
    move-exception v12

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    throw v12

    .line 3006
    :cond_3c
    const-string v12, "MoviePlayer"

    const-string v13, "batteryCheck : read in length is 0.."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 3007
    .end local v8           #in:Ljava/io/InputStream;
    .restart local v7       #in:Ljava/io/InputStream;
    goto :goto_2b

    .line 2990
    :catch_45
    move-exception v5

    .line 2991
    .local v5, e:Ljava/io/FileNotFoundException;
    :try_start_46
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_72

    .line 2993
    if-eqz v7, :cond_52

    .line 2995
    :try_start_4b
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_65
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_5d

    move-result v9

    .line 2999
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 3003
    .end local v5           #e:Ljava/io/FileNotFoundException;
    :cond_52
    :goto_52
    if-eqz v9, :cond_6a

    .line 3004
    new-instance v10, Ljava/lang/String;

    .end local v10           #value:Ljava/lang/String;
    const/4 v12, 0x0

    add-int/lit8 v13, v9, -0x1

    invoke-direct {v10, v3, v12, v13}, Ljava/lang/String;-><init>([BII)V

    .restart local v10       #value:Ljava/lang/String;
    goto :goto_2b

    .line 2996
    .restart local v5       #e:Ljava/io/FileNotFoundException;
    :catch_5d
    move-exception v5

    .line 2997
    .local v5, e:Ljava/io/IOException;
    :try_start_5e
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_65

    .line 2999
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_52

    .end local v5           #e:Ljava/io/IOException;
    :catchall_65
    move-exception v12

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    throw v12

    .line 3006
    :cond_6a
    const-string v12, "MoviePlayer"

    const-string v13, "batteryCheck : read in length is 0.."

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 2993
    :catchall_72
    move-exception v12

    if-eqz v7, :cond_7c

    .line 2995
    :try_start_75
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_8f
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_87

    move-result v9

    .line 2999
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 3003
    :cond_7c
    :goto_7c
    if-eqz v9, :cond_94

    .line 3004
    new-instance v10, Ljava/lang/String;

    .end local v10           #value:Ljava/lang/String;
    const/4 v13, 0x0

    add-int/lit8 v14, v9, -0x1

    invoke-direct {v10, v3, v13, v14}, Ljava/lang/String;-><init>([BII)V

    .line 3006
    .restart local v10       #value:Ljava/lang/String;
    :goto_86
    throw v12

    .line 2996
    :catch_87
    move-exception v5

    .line 2997
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_88
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8f

    .line 2999
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_7c

    .end local v5           #e:Ljava/io/IOException;
    :catchall_8f
    move-exception v12

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    throw v12

    .line 3006
    :cond_94
    const-string v13, "MoviePlayer"

    const-string v14, "batteryCheck : read in length is 0.."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 3012
    :cond_9c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 3013
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3014
    const/4 v10, 0x0

    .line 3016
    if-nez v4, :cond_134

    .line 3018
    const/4 v6, 0x0

    .local v6, i:I
    :goto_ab
    const/4 v12, 0x5

    if-ge v6, v12, :cond_da

    .line 3019
    :try_start_ae
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getVoltage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b9} :catch_be

    move-result v12

    add-int/2addr v11, v12

    .line 3018
    add-int/lit8 v6, v6, 0x1

    goto :goto_ab

    .line 3021
    :catch_be
    move-exception v5

    .line 3022
    .restart local v5       #e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 3024
    const-string v12, "MoviePlayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "batteryCheck : IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    .end local v5           #e:Ljava/io/IOException;
    :cond_da
    div-int/lit8 v12, v11, 0x5

    int-to-long v1, v12

    .line 3028
    .local v1, avg:J
    div-int/lit8 v12, v11, 0x5

    const/4 v13, 0x1

    if-gt v12, v13, :cond_10b

    .line 3030
    const-string v12, "MoviePlayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "batteryCheck Low Battery.. : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Batterymanager : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getBatteryLevel()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    const/4 v12, 0x0

    goto/16 :goto_2e

    .line 3034
    :cond_10b
    const-string v12, "MoviePlayer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "batteryCheck  : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Batterymanager : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getBatteryLevel()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    const/4 v12, 0x1

    goto/16 :goto_2e

    .line 3038
    .end local v1           #avg:J
    .end local v6           #i:I
    :cond_134
    const/4 v12, 0x1

    goto/16 :goto_2e
.end method

.method private checkIsCalling(Landroid/content/Context;)Z
    .registers 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 3293
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3294
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    .line 3311
    :goto_10
    return v3

    .line 3299
    :cond_11
    :try_start_11
    const-string v4, "voip"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 3301
    .local v2, voipInterfaceService:Landroid/os/IVoIPInterface;
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3302
    :cond_27
    const-string v4, "MoviePlayer"

    const-string v5, "VOIP checkIsCalling"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_39

    goto :goto_10

    .line 3306
    .end local v2           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_2f
    move-exception v0

    .line 3307
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MoviePlayer"

    const-string v4, "RemoteException occured in VOIP checkIsCalling module"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_37
    :goto_37
    const/4 v3, 0x0

    goto :goto_10

    .line 3308
    :catch_39
    move-exception v0

    .line 3309
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MoviePlayer"

    const-string v4, "Exception occured in VOIP checkIsCalling module"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method private checkLCDOnOff()Z
    .registers 6

    .prologue
    .line 3645
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 3646
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 3648
    .local v0, isScreenOn:Z
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkLCDOnOff() isScreenOn :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    return v0
.end method

.method private checkLockScreenOn()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 3618
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 3620
    .local v1, mKeyguardManager:Landroid/app/KeyguardManager;
    if-eqz v1, :cond_3b

    .line 3621
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 3623
    const-string v3, "MoviePlayer"

    const-string v4, "checkLockScreenOn() - Lock screen on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v3, :cond_3a

    .line 3627
    :try_start_1c
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 3628
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 3629
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J

    move-result-wide v3

    sput-wide v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    .line 3630
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3a} :catch_3c

    .line 3637
    :cond_3a
    const/4 v2, 0x1

    .line 3641
    :cond_3b
    :goto_3b
    return v2

    .line 3632
    :catch_3c
    move-exception v0

    .line 3633
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkLockScreenOn() - Exception occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method private createErrorDialog(ILandroid/content/Intent;)V
    .registers 14
    .parameter "action"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    .line 2492
    iget-boolean v7, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z

    if-eqz v7, :cond_6

    .line 2760
    :goto_5
    return-void

    .line 2495
    :cond_6
    const-string v7, "MoviePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createErrorDialog, Action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 2498
    .local v4, powermanager:Landroid/os/PowerManager;
    const/16 v7, 0xa

    const-string v8, "MoviePlayer-Sleep"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    const-wide/16 v8, 0x1388

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2500
    iput-boolean v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z

    .line 2501
    iget v7, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I

    .line 2503
    move v0, p1

    .line 2504
    .local v0, action1:I
    move-object v3, p2

    .line 2506
    .local v3, intent1:Landroid/content/Intent;
    const/4 v5, 0x0

    .line 2507
    .local v5, resId:I
    packed-switch p1, :pswitch_data_166

    :pswitch_41
    goto :goto_5

    .line 2509
    :pswitch_42
    const v5, 0x7f080006

    .line 2587
    :goto_45
    :try_start_45
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v7, :cond_56

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v7}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_56

    .line 2588
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v7}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_56} :catch_146

    .line 2593
    :cond_56
    :goto_56
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v6

    .line 2594
    .local v6, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setEmptyTitleName()V

    .line 2596
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2597
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2599
    const v7, 0x104000a

    new-instance v8, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;

    invoke-direct {v8, p0, v0, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$6;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;ILandroid/content/Intent;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2713
    new-instance v7, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;

    invoke-direct {v7, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$7;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2758
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    .line 2759
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_5

    .line 2512
    .end local v1           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v6           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :pswitch_86
    const v5, 0x7f080005

    .line 2513
    goto :goto_45

    .line 2515
    :pswitch_8a
    iput-boolean v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2516
    const-string v7, "MoviePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In Service specific error, VIDEO_DRM_LICENSE_ACQUISITION_FAILED"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    const v5, 0x7f08005d

    .line 2518
    goto :goto_45

    .line 2520
    :pswitch_a8
    const-string v7, "MoviePlayer"

    const-string v8, "createErrorDialog DOMAIN_REQUIRED"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    iput-boolean v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2522
    const v5, 0x7f080061

    .line 2523
    goto :goto_45

    .line 2525
    :pswitch_b5
    const-string v7, "MoviePlayer"

    const-string v8, "createErrorDialog SERVER_NOT_A_MEMBER"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    iput-boolean v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2527
    const v5, 0x7f080062

    .line 2528
    goto :goto_45

    .line 2530
    :pswitch_c2
    const-string v7, "MoviePlayer"

    const-string v8, "createErrorDialog SERVER_INTERNAL_ERROR"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    iput-boolean v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2532
    const v5, 0x7f080063

    .line 2533
    goto/16 :goto_45

    .line 2535
    :pswitch_d0
    const-string v7, "MoviePlayer"

    const-string v8, "createErrorDialog DEVCERT_REVOKED"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    iput-boolean v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2537
    const v5, 0x7f080064

    .line 2538
    goto/16 :goto_45

    .line 2540
    :pswitch_de
    const-string v7, "MoviePlayer"

    const-string v8, "createErrorDialog UNKNOWN_ACCOUNT_ID"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    iput-boolean v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2542
    const v5, 0x7f080065

    .line 2543
    goto/16 :goto_45

    .line 2545
    :pswitch_ec
    const-string v7, "MoviePlayer"

    const-string v8, "createErrorDialog PROTOCOL_VERSION_MISMATCH"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    iput-boolean v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2547
    const v5, 0x7f080066

    .line 2548
    goto/16 :goto_45

    .line 2550
    :pswitch_fa
    const-string v7, "MoviePlayer"

    const-string v8, "createErrorDialog DEVICE_LIMIT_REACHED"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    iput-boolean v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2552
    const v5, 0x7f080067

    .line 2553
    goto/16 :goto_45

    .line 2555
    :pswitch_108
    const-string v7, "MoviePlayer"

    const-string v8, "Create License Not Found popup"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    iput-boolean v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2557
    const v5, 0x7f08005e

    .line 2558
    goto/16 :goto_45

    .line 2560
    :pswitch_116
    const-string v7, "MoviePlayer"

    const-string v8, "Create License Expired popup"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    iput-boolean v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2562
    const v5, 0x7f08005f

    .line 2563
    goto/16 :goto_45

    .line 2565
    :pswitch_124
    const-string v7, "MoviePlayer"

    const-string v8, "Create NO_DATA_CONNECTIVITY popup"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    iput-boolean v10, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLicErrorRelatedPopupShow:Z

    .line 2567
    const v5, 0x7f080060

    .line 2568
    goto/16 :goto_45

    .line 2570
    :pswitch_132
    const v5, 0x7f080008

    .line 2571
    goto/16 :goto_45

    .line 2573
    :pswitch_137
    const v5, 0x7f080009

    .line 2574
    goto/16 :goto_45

    .line 2576
    :pswitch_13c
    const v5, 0x7f08010f

    .line 2577
    goto/16 :goto_45

    .line 2579
    :pswitch_141
    const v5, 0x7f08010e

    .line 2580
    goto/16 :goto_45

    .line 2589
    :catch_146
    move-exception v2

    .line 2590
    .local v2, e:Landroid/os/RemoteException;
    const-string v7, "MoviePlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createSendViaPopup(): RemoteException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 2507
    nop

    :pswitch_data_166
    .packed-switch 0xa
        :pswitch_42
        :pswitch_86
        :pswitch_132
        :pswitch_137
        :pswitch_13c
        :pswitch_141
        :pswitch_41
        :pswitch_41
        :pswitch_8a
        :pswitch_108
        :pswitch_116
        :pswitch_124
        :pswitch_a8
        :pswitch_b5
        :pswitch_c2
        :pswitch_d0
        :pswitch_de
        :pswitch_ec
        :pswitch_fa
    .end packed-switch
.end method

.method private createToast()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3286
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080025

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->DuringCallToast:Landroid/widget/Toast;

    .line 3287
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08003f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->MediaToast:Landroid/widget/Toast;

    .line 3288
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080008

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUnsupportedToast:Landroid/widget/Toast;

    .line 3289
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080031

    const/16 v2, 0x5dc

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyToast:Landroid/widget/Toast;

    .line 3290
    return-void
.end method

.method private disableNotificationExpanded()V
    .registers 1

    .prologue
    .line 3658
    return-void
.end method

.method private dismissDialogPopup()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3450
    const-string v0, "MoviePlayer"

    const-string v1, "dismissDialogPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3451
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3452
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3454
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3455
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3457
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3458
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3460
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDivxExitPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDivxExitPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 3461
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDivxExitPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3463
    :cond_4d
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_60

    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3464
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3465
    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    .line 3468
    :cond_60
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mDetailPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_73

    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mDetailPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 3469
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mDetailPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3470
    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mDetailPopup:Landroid/app/AlertDialog;

    .line 3473
    :cond_73
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_86

    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 3475
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3476
    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 3479
    :cond_86
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_99

    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 3481
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3482
    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 3485
    :cond_99
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    if-eqz v0, :cond_a2

    .line 3486
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->dismissAllDialog()V

    .line 3488
    :cond_a2
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z

    .line 3489
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z

    .line 3490
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDivxExitShow:Z

    .line 3491
    return-void
.end method

.method private enableNotificationExpanded()V
    .registers 1

    .prologue
    .line 3666
    return-void
.end method

.method private getActivityPreferences()V
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 971
    invoke-virtual {p0, v10}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 973
    .local v6, settings:Landroid/content/SharedPreferences;
    const-string v8, "VideoPlayer_Brightness"

    const/4 v9, 0x4

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 974
    .local v1, createbright:I
    const-string v8, "VideoPlayer_Auto_Brightness"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 975
    .local v3, isAutoBrightness:Z
    const-string v8, "VideoPlayer_Auto_Brightness_Default_flag"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 976
    .local v2, hadBeenSetTheVideoAutoBrightnessValue:Z
    const-string v8, "VideoPlayer_Colortone"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 977
    .local v0, colortype:I
    const-string v8, "VideoPlayer_Outdoorvisibility"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 978
    .local v4, outtype:Z
    const-string v8, "VideoPlayer_ScreenMode"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 980
    .local v5, screenMode:I
    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortone:I

    .line 981
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorvisibility:Z

    .line 982
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setFitToScreenMode(I)V

    .line 983
    iput v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightnessLevel:I

    .line 986
    if-eqz v2, :cond_39

    .end local v3           #isAutoBrightness:Z
    :goto_36
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoAutoBrightness:Z

    .line 987
    return-void

    .restart local v3       #isAutoBrightness:Z
    :cond_39
    move v3, v7

    .line 986
    goto :goto_36
.end method

.method private getVoltage()Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 3044
    const-string v9, "MoviePlayer"

    const-string v10, "getVoltage() is called"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3045
    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 3046
    .local v0, BATT_FILE:Ljava/lang/String;
    const/4 v8, 0x0

    .line 3048
    .local v8, value:Ljava/lang/String;
    const/16 v1, 0x64

    .line 3049
    .local v1, MAX_BUFFER_SIZE:I
    const/4 v7, 0x0

    .line 3051
    .local v7, length:I
    const/4 v5, 0x0

    .line 3052
    .local v5, in:Ljava/io/InputStream;
    new-array v2, v1, [B

    .line 3054
    .local v2, buffer:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_12
    if-ge v4, v1, :cond_19

    .line 3055
    aput-byte v12, v2, v4

    .line 3054
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 3059
    :cond_19
    :try_start_19
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_61
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_1e} :catch_32

    .line 3065
    .end local v5           #in:Ljava/io/InputStream;
    .local v6, in:Ljava/io/InputStream;
    if-eqz v6, :cond_27

    .line 3066
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 3067
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 3070
    :cond_27
    if-eqz v7, :cond_75

    .line 3071
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {v8, v2, v12, v9}, Ljava/lang/String;-><init>([BII)V

    .restart local v8       #value:Ljava/lang/String;
    move-object v5, v6

    .line 3074
    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :cond_31
    :goto_31
    return-object v8

    .line 3060
    :catch_32
    move-exception v3

    .line 3061
    .local v3, e:Ljava/io/FileNotFoundException;
    :try_start_33
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3063
    const-string v9, "MoviePlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getVoltage : FileNotFoundException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_61

    .line 3065
    if-eqz v5, :cond_57

    .line 3066
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 3067
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 3070
    :cond_57
    if-eqz v7, :cond_31

    .line 3071
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {v8, v2, v12, v9}, Ljava/lang/String;-><init>([BII)V

    .restart local v8       #value:Ljava/lang/String;
    goto :goto_31

    .line 3065
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catchall_61
    move-exception v9

    if-eqz v5, :cond_6b

    .line 3066
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 3067
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 3070
    :cond_6b
    if-eqz v7, :cond_74

    .line 3071
    new-instance v8, Ljava/lang/String;

    .end local v8           #value:Ljava/lang/String;
    add-int/lit8 v10, v7, -0x1

    invoke-direct {v8, v2, v12, v10}, Ljava/lang/String;-><init>([BII)V

    .restart local v8       #value:Ljava/lang/String;
    :cond_74
    throw v9

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v6       #in:Ljava/io/InputStream;
    :cond_75
    move-object v5, v6

    .end local v6           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    goto :goto_31
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 3586
    const-string v5, "status"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3587
    .local v2, battStatus:I
    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3588
    .local v1, battScale:I
    const-string v5, "level"

    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3590
    .local v0, battLevel:I
    const-string v5, "MoviePlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleBatteryChanged : Level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    packed-switch v2, :pswitch_data_68

    .line 3599
    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBatteryChargingStatus:Z

    .line 3600
    mul-int/lit8 v5, v0, 0x64

    div-int/2addr v5, v1

    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setBatteryLevel(I)V

    .line 3604
    :goto_4d
    const/4 v4, 0x0

    .line 3607
    .local v4, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_start_4e
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_53} :catch_63

    move-result-object v4

    .line 3613
    if-eqz v4, :cond_5f

    iget-object v5, v4, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    if-eqz v5, :cond_5f

    .line 3614
    iget-object v5, v4, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateBatteryImg()V

    .line 3615
    :cond_5f
    :goto_5f
    return-void

    .line 3595
    .end local v4           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :pswitch_60
    sput-boolean v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBatteryChargingStatus:Z

    goto :goto_4d

    .line 3608
    .restart local v4       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :catch_63
    move-exception v3

    .line 3609
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5f

    .line 3592
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_60
        :pswitch_60
    .end packed-switch
.end method

.method private init(Landroid/content/Intent;)Z
    .registers 27
    .parameter "intent"

    .prologue
    .line 744
    const-string v2, "MoviePlayer"

    const-string v4, "init() start"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/4 v3, 0x0

    .line 746
    .local v3, uri:Landroid/net/Uri;
    const-wide/16 v23, -0x1

    .line 747
    .local v23, videoId:J
    const-string v13, ""

    .line 748
    .local v13, filename:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 750
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->setActivityContext(Landroid/content/Context;)V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->clearAllDialog()V

    .line 754
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v2

    const-string v4, "autoPlay"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->loadBooleanKey(Ljava/lang/String;Z)Z

    move-result v17

    .line 755
    .local v17, isAutoPlayNext:Z
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setAutoPlayNext(Z)V

    .line 756
    if-eqz v3, :cond_3a4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3a4

    .line 757
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    .line 758
    .local v19, scheme:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    .line 759
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v20

    .line 764
    .local v20, sdpPath:Ljava/lang/String;
    const-string v2, "http"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "sshttp"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d5

    .line 765
    :cond_62
    const-string v2, "sdp"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_76

    const-string v2, "SDP"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1cd

    .line 767
    :cond_76
    const/16 v2, 0x21

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 845
    :cond_7c
    :goto_7c
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 847
    const-string v2, "/.samsungmediahub"

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_90

    const-string v2, "/mnt/sdcard/movie/inception.pyv"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_384

    .line 849
    :cond_90
    const-string v2, "MoviePlayer"

    const-string v4, "Init() - MovieStore file"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    .line 851
    const-string v2, "title_of_movie"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFileTitle:Ljava/lang/String;

    .line 854
    const-string v2, "user_guid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->USER_GUID:Ljava/lang/String;

    .line 855
    const-string v2, "appId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->APP_ID:Ljava/lang/String;

    .line 856
    const-string v2, "deviceUid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->IMEI:Ljava/lang/String;

    .line 857
    const-string v2, "order_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->ORDER_ID:Ljava/lang/String;

    .line 860
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v4, 0x10

    and-int/2addr v2, v4

    if-nez v2, :cond_e1

    .line 862
    const-string v2, "paused_position"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    .line 865
    :cond_e1
    sget-wide v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_37e

    .line 866
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 875
    :goto_ed
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPlayerState(I)V

    .line 877
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v4, 0x18

    if-eq v2, v4, :cond_111

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_111

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v4, 0x17

    if-eq v2, v4, :cond_111

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v4, 0x19

    if-ne v2, v4, :cond_391

    .line 881
    :cond_111
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v0, v23

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;J)V

    .line 937
    .end local v19           #scheme:Ljava/lang/String;
    .end local v20           #sdpPath:Ljava/lang/String;
    :cond_11a
    :goto_11a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSchemeType(I)V

    .line 939
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-wide/from16 v0, v23

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->checkExistSubTitle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b4

    .line 940
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->isHDMIEnabled()Z

    move-result v2

    if-eqz v2, :cond_4a6

    .line 941
    const-string v2, "MoviePlayer"

    const-string v4, "VIVEK_HDMI_SUBTITLE_DEBUG HDMI CABLE CONNECTED "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    .line 948
    :goto_143
    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    if-eqz v2, :cond_152

    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    if-eqz v2, :cond_152

    .line 949
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    invoke-virtual {v2, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->EnableHDMISubtitleOnTV(Z)V

    .line 953
    :cond_152
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->initSubTitle()Z

    move-result v2

    if-eqz v2, :cond_4af

    .line 954
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    .line 962
    :goto_15f
    const-string v2, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init() - videoId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v23

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const-string v2, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init() - WasPlayingWhenPaused : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getWasPlayingWhenPaused()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const-string v2, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init() - PositionWhenPaused : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const-string v2, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init() - mKeyType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v2, 0x1

    :goto_1cc
    return v2

    .line 770
    .restart local v19       #scheme:Ljava/lang/String;
    .restart local v20       #sdpPath:Ljava/lang/String;
    :cond_1cd
    const/16 v2, 0x1d

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    goto/16 :goto_7c

    .line 772
    :cond_1d5
    const-string v2, "rtsp"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e7

    .line 773
    const/16 v2, 0x1e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    goto/16 :goto_7c

    .line 774
    :cond_1e7
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_226

    .line 775
    const/16 v2, 0x16

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 776
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFileIdbyUri(Landroid/net/Uri;)J

    move-result-wide v23

    .line 778
    const-wide/16 v4, 0x0

    cmp-long v2, v23, v4

    if-gez v2, :cond_218

    .line 779
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/videoplayer/activity/MainTab;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivity(Landroid/content/Intent;)V

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 781
    const/4 v2, 0x0

    goto :goto_1cc

    .line 784
    :cond_218
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v23

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 785
    :cond_226
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24c

    .line 786
    const/16 v2, 0x15

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 787
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFileIdbyUri(Landroid/net/Uri;)J

    move-result-wide v23

    .line 788
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v23

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_7c

    .line 789
    :cond_24c
    const-string v2, "file://"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f3

    .line 791
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setCurPlayingPath(Ljava/lang/String;)V

    .line 793
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPreviewMode(Z)V

    .line 795
    const-string v2, "sort_order"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 796
    .local v8, SortOrder:I
    invoke-static {v8}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPreviewSortType(I)V

    .line 798
    const-string v2, "key_filename"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 799
    .local v12, filePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPreviewFilePath(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 803
    .local v21, tmp:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 804
    .local v18, rootPath:Ljava/lang/String;
    const-string v2, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init() - rootPath :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2cd

    .line 807
    const/16 v2, 0x18

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 808
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFileIdbyPath_External(Ljava/lang/String;)J

    move-result-wide v23

    .line 817
    :goto_2b1
    const-wide/16 v4, 0x0

    cmp-long v2, v23, v4

    if-gtz v2, :cond_2bd

    .line 818
    const/16 v2, 0x1b

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 820
    :cond_2bd
    const-string v2, ".sdp"

    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 821
    const/16 v2, 0x1e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    goto/16 :goto_7c

    .line 809
    :cond_2cd
    const-string v2, "/system/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    .line 810
    const/16 v2, 0x17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 811
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFileIdbyPath_Internal(Ljava/lang/String;)J

    move-result-wide v23

    goto :goto_2b1

    .line 813
    :cond_2e6
    const/16 v2, 0x1b

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 814
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFileIdbyUri(Landroid/net/Uri;)J

    move-result-wide v23

    goto :goto_2b1

    .line 822
    .end local v8           #SortOrder:I
    .end local v12           #filePath:Ljava/lang/String;
    .end local v18           #rootPath:Ljava/lang/String;
    .end local v21           #tmp:Ljava/lang/String;
    :cond_2f3
    const-string v2, "content://mms"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_303

    const-string v2, "content://com.android.email.attachmentprovider"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30b

    .line 824
    :cond_303
    const/16 v2, 0x1f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    goto/16 :goto_7c

    .line 825
    :cond_30b
    const-string v2, "content://com.sec.pcw/"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_376

    .line 826
    const/16 v2, 0x20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "data"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 828
    .local v9, c:Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 829
    .local v22, uriPath:Ljava/lang/String;
    if-eqz v9, :cond_350

    .line 830
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 831
    sput-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    .line 833
    :try_start_33a
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFileTitle:Ljava/lang/String;

    .line 834
    const-string v2, "data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_34f
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_33a .. :try_end_34f} :catch_355

    move-result-object v22

    .line 841
    :cond_350
    :goto_350
    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;)V

    goto/16 :goto_7c

    .line 835
    :catch_355
    move-exception v11

    .line 836
    .local v11, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v2, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pCloud CursorIndexOutOfBoundsException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/database/CursorIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_350

    .line 843
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .end local v22           #uriPath:Ljava/lang/String;
    :cond_376
    const/16 v2, 0x1c

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    goto/16 :goto_7c

    .line 868
    :cond_37e
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    goto/16 :goto_ed

    .line 870
    :cond_384
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    .line 871
    const-wide/16 v4, -0x1

    sput-wide v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    .line 872
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    goto/16 :goto_ed

    .line 883
    :cond_391
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v4, 0x20

    if-eq v2, v4, :cond_11a

    .line 884
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v0, v23

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;J)V

    goto/16 :goto_11a

    .line 887
    .end local v19           #scheme:Ljava/lang/String;
    .end local v20           #sdpPath:Ljava/lang/String;
    :cond_3a4
    const/16 v2, 0x14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    .line 888
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSchemeType(I)V

    .line 890
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3bd

    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_431

    .line 891
    :cond_3bd
    const-string v2, "MoviePlayer"

    const-string v4, "init() - VideoUtil.SCHEME_VIDEO_LIST. Array List is null or size 0"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    if-nez v2, :cond_3cf

    .line 894
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    .line 896
    :cond_3cf
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3dc

    .line 897
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 900
    :cond_3dc
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v10

    .line 901
    .local v10, db:Lcom/sec/android/app/videoplayer/db/VideoDB;
    const/4 v2, 0x0

    const-string v4, "title"

    const/4 v5, 0x1

    invoke-virtual {v10, v2, v4, v5}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursor(ILjava/lang/String;I)Landroid/database/Cursor;

    move-result-object v9

    .line 903
    .restart local v9       #c:Landroid/database/Cursor;
    if-eqz v9, :cond_470

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_470

    .line 904
    const-string v2, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Init() - cursor count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 906
    const/4 v14, 0x0

    .local v14, i:I
    :goto_414
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v14, v2, :cond_42e

    .line 907
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 908
    .local v15, id:J
    sget-object v2, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 906
    add-int/lit8 v14, v14, 0x1

    goto :goto_414

    .line 911
    .end local v15           #id:J
    :cond_42e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 921
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #db:Lcom/sec/android/app/videoplayer/db/VideoDB;
    .end local v14           #i:I
    :cond_431
    const-string v2, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VideoListView.mListInfoArrayList.size()2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setCurrentPlayInfo()Z

    move-result v2

    if-nez v2, :cond_48b

    .line 924
    const-string v2, "MoviePlayer"

    const-string v4, "init() - set cur id and filepath fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/videoplayer/activity/MainTab;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivity(Landroid/content/Intent;)V

    .line 926
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 927
    const/4 v2, 0x0

    goto/16 :goto_1cc

    .line 913
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v10       #db:Lcom/sec/android/app/videoplayer/db/VideoDB;
    :cond_470
    const-string v2, "MoviePlayer"

    const-string v4, "Init() - cursor is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/videoplayer/activity/MainTab;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivity(Landroid/content/Intent;)V

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 917
    const/4 v2, 0x0

    goto/16 :goto_1cc

    .line 929
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #db:Lcom/sec/android/app/videoplayer/db/VideoDB;
    :cond_48b
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v23

    .line 930
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-wide/from16 v0, v23

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getResumePosition(J)J

    move-result-wide v4

    sput-wide v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    .line 931
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 932
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPlayerState(I)V

    .line 934
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    goto/16 :goto_11a

    .line 945
    :cond_4a6
    const-string v2, "MoviePlayer"

    const-string v4, "VIVEK_HDMI_SUBTITLE_DEBUG hdmi CABLE IS NOT CONNECTED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_143

    .line 956
    :cond_4af
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    goto/16 :goto_15f

    .line 958
    :cond_4b4
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    .line 959
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    goto/16 :goto_15f
.end method

.method private initMainView()V
    .registers 13

    .prologue
    const/16 v11, 0xd

    const/16 v10, 0x8

    const/4 v9, -0x1

    .line 1031
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getMainView()Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 1032
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getMainView()Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->removeAllViews()V

    .line 1034
    :cond_16
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v8

    if-eqz v8, :cond_27

    .line 1035
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->removeAllInController()V

    .line 1037
    :cond_27
    new-instance v7, Lcom/sec/android/app/videoplayer/view/VideoSurface;

    invoke-direct {v7, p0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;-><init>(Landroid/content/Context;)V

    .line 1038
    .local v7, videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1039
    .local v5, surfacelp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1040
    invoke-virtual {v7, v5}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8, v7}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->setVideoSurface(Lcom/sec/android/app/videoplayer/view/VideoSurface;)V

    .line 1043
    new-instance v3, Lcom/sec/android/app/videoplayer/view/VideoStateView;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;-><init>(Landroid/content/Context;)V

    .line 1044
    .local v3, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1045
    .local v2, pstate:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v2}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1046
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1047
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->setStateView(Lcom/sec/android/app/videoplayer/view/VideoStateView;)V

    .line 1048
    invoke-virtual {v3, v10}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1050
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;-><init>(Landroid/content/Context;)V

    .line 1051
    .local v0, lockLayout:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8, v0}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->setLockCtrlView(Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;)V

    .line 1054
    new-instance v4, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;-><init>(Landroid/content/Context;)V

    .line 1055
    .local v4, subTitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8, v4}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->setSubTitleView(Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;)V

    .line 1056
    const-string v8, ""

    invoke-virtual {v4, v8}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitle(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v4, v10}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->setVisibility(I)V

    .line 1060
    new-instance v6, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;-><init>(Landroid/content/Context;)V

    .line 1061
    .local v6, syncCtrl:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8, v6}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->setSubTitleSyncView(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V

    .line 1062
    invoke-virtual {v6, v10}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->setVisibility(I)V

    .line 1064
    new-instance v1, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;-><init>(Landroid/content/Context;)V

    .line 1065
    .local v1, mainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    invoke-virtual {v1, v7}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->addView(Landroid/view/View;)V

    .line 1067
    invoke-virtual {v1, v3}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->addView(Landroid/view/View;)V

    .line 1068
    invoke-virtual {v1, v0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->addView(Landroid/view/View;)V

    .line 1069
    invoke-virtual {v1, v4}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->addView(Landroid/view/View;)V

    .line 1070
    invoke-virtual {v1, v6}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->addView(Landroid/view/View;)V

    .line 1071
    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v8, v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->setMainView(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)V

    .line 1073
    new-instance v8, Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {v8, p0}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-direct {v9, p0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setVideoController(Lcom/sec/android/app/videoplayer/view/VideoBtnController;Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V

    .line 1074
    iget-object v8, v7, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->requestFocus()Z

    .line 1075
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1076
    return-void
.end method

.method private initMoviePlayer()V
    .registers 7

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->initMainView()V

    .line 722
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v1

    .line 724
    .local v1, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    if-eqz v1, :cond_26

    .line 725
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->requestLayout()V

    .line 727
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 728
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 729
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setDrawableMode(Ljava/lang/String;)V

    .line 732
    .end local v2           #uri:Landroid/net/Uri;
    :cond_23
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->doRefreshIcon()V

    .line 735
    :cond_26
    :try_start_26
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->batteryCheck()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 736
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->popupLowBattery()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2f} :catch_30

    .line 741
    :cond_2f
    :goto_2f
    return-void

    .line 737
    :catch_30
    move-exception v0

    .line 738
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 739
    const-string v3, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BatteryChecker IOException occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public static isEditingSupportedFormat(Ljava/lang/String;)Z
    .registers 7
    .parameter "filename"

    .prologue
    const/4 v3, 0x0

    .line 3743
    const-string v4, "MoviePlayer"

    const-string v5, "isSupportedFormat"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    if-nez p0, :cond_c

    move v1, v3

    .line 3765
    :cond_b
    return v1

    .line 3748
    :cond_c
    const/4 v1, 0x0

    .line 3751
    .local v1, supported:Z
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    .line 3752
    .local v2, supportedExtensions:[Ljava/lang/String;
    const-string v4, ".3gp"

    aput-object v4, v2, v3

    .line 3753
    const/4 v3, 0x1

    const-string v4, ".3gpp"

    aput-object v4, v2, v3

    .line 3754
    const/4 v3, 0x2

    const-string v4, ".mp4"

    aput-object v4, v2, v3

    .line 3756
    if-eqz v2, :cond_b

    .line 3757
    const/4 v0, 0x0

    .line 3759
    .local v0, extension:I
    const/4 v0, 0x0

    :goto_22
    if-nez v1, :cond_b

    array-length v3, v2

    if-ge v0, v3, :cond_b

    .line 3760
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 3761
    const/4 v1, 0x1

    .line 3759
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method private isSystemKeyEventRequested(I)Z
    .registers 5
    .parameter "keyCode"

    .prologue
    .line 3685
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 3688
    .local v1, windowmanager:Landroid/view/IWindowManager;
    :try_start_a
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_13

    move-result v2

    .line 3693
    :goto_12
    return v2

    .line 3689
    :catch_13
    move-exception v0

    .line 3690
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3693
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private popupDivxExit()V
    .registers 7

    .prologue
    .line 2802
    const/4 v2, 0x0

    .line 2804
    .local v2, popupStr:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDivxExitShow:Z

    if-nez v3, :cond_4f

    .line 2806
    :try_start_5
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v3, :cond_e

    .line 2807
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_50

    .line 2813
    :cond_e
    :goto_e
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDivxExitShow:Z

    .line 2815
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getPopupString(I)Ljava/lang/String;

    move-result-object v2

    .line 2817
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2818
    .local v1, popup:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2820
    const v3, 0x104000a

    new-instance v4, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$10;

    invoke-direct {v4, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$10;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2828
    const/high16 v3, 0x104

    new-instance v4, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$11;

    invoke-direct {v4, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$11;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2835
    new-instance v3, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$12;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2843
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDivxExitPopup:Landroid/app/AlertDialog;

    .line 2845
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDivxExitPopup:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2846
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDivxExitPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 2848
    .end local v1           #popup:Landroid/app/AlertDialog$Builder;
    :cond_4f
    return-void

    .line 2808
    :catch_50
    move-exception v0

    .line 2810
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private popupLowBattery()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2763
    const-string v2, "MoviePlayer"

    const-string v3, "popupLowBattery"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mLowBatteryFinishVideoPlayer:Z

    .line 2766
    iget-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPopupLowBattShow:Z

    if-nez v2, :cond_42

    .line 2768
    :try_start_e
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v2, :cond_17

    .line 2769
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_43

    .line 2774
    :cond_17
    :goto_17
    iput-boolean v5, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mPopupLowBattShow:Z

    .line 2776
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2777
    .local v1, popup:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2779
    const v2, 0x104000a

    new-instance v3, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$8;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2787
    new-instance v2, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$9;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2795
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;

    .line 2796
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLowBtteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2798
    .end local v1           #popup:Landroid/app/AlertDialog$Builder;
    :cond_42
    return-void

    .line 2770
    :catch_43
    move-exception v0

    .line 2771
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "popupLowBattery() - RemoteException occured :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private refreshOrientationState()V
    .registers 5

    .prologue
    .line 3697
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_40

    .line 3699
    :try_start_4
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3700
    const-string v1, "MoviePlayer"

    const-string v2, "refreshOrientationState was playing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3701
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setOrientationSensorLandScape()V

    .line 3712
    :goto_16
    return-void

    .line 3703
    :cond_17
    const-string v1, "MoviePlayer"

    const-string v2, "refreshOrientationState was paused"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3704
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setOrientationLandScape()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_22

    goto :goto_16

    .line 3706
    :catch_22
    move-exception v0

    .line 3707
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshOrientationState Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 3710
    .end local v0           #e:Ljava/lang/Exception;
    :cond_40
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setOrientationSensorLandScape()V

    goto :goto_16
.end method

.method private registerBroadcastReciever()V
    .registers 7

    .prologue
    .line 1451
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1452
    .local v0, intentFilter1:Landroid/content/IntentFilter;
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_UPDATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1453
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_COMPLETE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1454
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_INCOMINGCALL"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1455
    const-string v4, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1456
    const-string v4, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_INVALID"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1457
    const-string v4, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_NOTSUPPORT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1458
    const-string v4, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_CURRUPT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1459
    const-string v4, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_DIVX_NOTAUTHORIZED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1460
    const-string v4, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_EXPIRED_RENTALCOUNT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1461
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_NULL"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1462
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_VALID_COUNT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1463
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_CD"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1464
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_SD"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1465
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_FIRST_INTERVAL_RENDER"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1467
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SHOW_ACQUIRING_POPUP"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1468
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1469
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1470
    const-string v4, "videoplayer.service.MoviePlaybackService.NO_DATA_CONNECTIVITY_POPUP"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1471
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_EXPIRED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1472
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_NOT_FOUND"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1473
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DOMAIN_REQUIRED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1474
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_NOT_A_MEMBER"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1475
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_INTERNAL_ERROR"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1476
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DEVCERT_REVOKED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1477
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_UNKNOWN_ACCOUNT_ID"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1478
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_PROTOCOL_VERSION_MISMATCH"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1479
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_DEVICE_LIMIT_REACHED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1480
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_LICENSE_NOT_FOUND"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1482
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_WMDRM_INVALID"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1483
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_AUTHORIZED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1484
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_REGISTERED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1485
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_EXPIRED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1486
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_INFO"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1488
    const-string v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1489
    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1490
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1491
    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1492
    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1494
    const-string v4, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1495
    const-string v4, "videoplayer.service.MoviePlaybackService.ACTION_HDMI_START"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1499
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1500
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1501
    const-string v4, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1502
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1504
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_ERR_MEDIA_NULL"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1506
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1507
    const-string v4, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1508
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1510
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 1511
    .local v2, intentFilterDock:Landroid/content/IntentFilter;
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1512
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1513
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1524
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1526
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1527
    .local v3, intentFilterVolume:Landroid/content/IntentFilter;
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1528
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1531
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1532
    .local v1, intentFilter3:Landroid/content/IntentFilter;
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1533
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DOMAIN_REQUIRED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1534
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_NOT_A_MEMBER"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1535
    const-string v4, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_DEVICE_LIMIT_REACHED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1536
    const-string v4, "http"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1537
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1538
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .registers 6
    .parameter "keyCode"
    .parameter "request"

    .prologue
    .line 3673
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 3676
    .local v1, windowmanager:Landroid/view/IWindowManager;
    :try_start_a
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_13

    move-result v2

    .line 3681
    :goto_12
    return v2

    .line 3677
    :catch_13
    move-exception v0

    .line 3678
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3681
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private resumePlayback()V
    .registers 5

    .prologue
    .line 2486
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->resumePlayback()V

    .line 2487
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2488
    return-void
.end method

.method private setPowerSaveMode(Z)V
    .registers 6
    .parameter "mode"

    .prologue
    .line 3443
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerSaveMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3445
    .local v0, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 3446
    return-void
.end method

.method private setSystemAutoBrightness()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 3416
    iget-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSystemAutoBrightness:Z

    if-ne v3, v5, :cond_f

    .line 3417
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3439
    :cond_e
    :goto_e
    return-void

    .line 3419
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3420
    const-string v3, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSystemAutoBrightness() - mSystemBrightnessLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSystemBrightnessLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " BatteryLevel():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getBatteryLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3422
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 3425
    .local v2, screenBrightnessDim:I
    :try_start_50
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 3427
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_e

    .line 3428
    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBatteryChargingStatus:Z

    if-nez v3, :cond_67

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getBatteryLevel()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_72

    .line 3429
    :cond_67
    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSystemBrightnessLevel:I

    invoke-interface {v1, v3}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_6c} :catch_6d
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_6c} :catch_76

    goto :goto_e

    .line 3433
    .end local v1           #power:Landroid/os/IPowerManager;
    :catch_6d
    move-exception v0

    .line 3434
    .local v0, doe:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e

    .line 3431
    .end local v0           #doe:Landroid/os/RemoteException;
    .restart local v1       #power:Landroid/os/IPowerManager;
    :cond_72
    :try_start_72
    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_75} :catch_6d
    .catch Ljava/lang/SecurityException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_e

    .line 3435
    .end local v1           #power:Landroid/os/IPowerManager;
    :catch_76
    move-exception v0

    .line 3436
    .local v0, doe:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_e
.end method

.method private startPlayback()V
    .registers 5

    .prologue
    .line 2481
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayback()V

    .line 2482
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2483
    return-void
.end method


# virtual methods
.method public OnVideoLockStateChanged(II)V
    .registers 14
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3495
    const-string v5, "MoviePlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnVideoLockStateChanged. value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v4

    .line 3498
    .local v4, videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v3

    .line 3499
    .local v3, subTitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getLockCtrlView()Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    move-result-object v2

    .line 3500
    .local v2, lockLayout:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    const/4 v1, 0x0

    .line 3501
    .local v1, isCtrlBtnEnable:Z
    iput-boolean v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mErrorPopupShow:Z

    .line 3502
    iput-boolean v8, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z

    .line 3504
    if-nez p1, :cond_6e

    .line 3505
    if-nez p2, :cond_61

    .line 3506
    const/4 v1, 0x0

    .line 3507
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setLockState(Z)V

    .line 3508
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->showLockIcon()V

    .line 3509
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->forceBtnRelease()V

    .line 3510
    invoke-direct {p0, v10, v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->requestSystemKeyEvent(IZ)Z

    .line 3512
    iget-object v5, v4, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 3513
    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideControls()V

    .line 3521
    :cond_4e
    :goto_4e
    iget-object v5, v4, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->updateLockIcon()V

    .line 3523
    iget-object v5, v4, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v5, v1}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setEnabled(Z)V

    .line 3524
    iget-object v5, v4, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v5, v1}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->setEnabled(Z)V

    .line 3525
    invoke-virtual {v3, v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->setEnabled(Z)V

    .line 3553
    :cond_60
    :goto_60
    return-void

    .line 3514
    :cond_61
    if-ne p2, v9, :cond_4e

    .line 3515
    invoke-static {v8}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setLockState(Z)V

    .line 3516
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->hideLockIcon()V

    .line 3517
    const/4 v1, 0x1

    .line 3518
    invoke-direct {p0, v10, v8}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->requestSystemKeyEvent(IZ)Z

    goto :goto_4e

    .line 3526
    :cond_6e
    if-ne p1, v9, :cond_60

    .line 3527
    const-string v5, "MoviePlayer"

    const-string v6, "OnVideoLockStateChanged. VIDEO_DESTROY"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    const/4 v5, 0x2

    if-ne p2, v5, :cond_60

    .line 3530
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3531
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f080007

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3532
    const v5, 0x104000a

    new-instance v6, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$19;

    invoke-direct {v6, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$19;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3540
    new-instance v5, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$20;

    invoke-direct {v5, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$20;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 3549
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 3550
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_60
.end method

.method public checkAutoBrighteness()Z
    .registers 2

    .prologue
    .line 3354
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkVideoAutoBrighteness()Z

    move-result v0

    return v0
.end method

.method public checkSystemAutoBrighteness()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3392
    const/4 v0, -0x1

    .line 3395
    .local v0, autobright:I
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_c} :catch_12

    move-result v0

    .line 3400
    :goto_d
    if-ne v0, v3, :cond_17

    .line 3401
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSystemAutoBrightness:Z

    .line 3411
    :goto_11
    return v3

    .line 3396
    :catch_12
    move-exception v1

    .line 3397
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_d

    .line 3404
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_17
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSystemAutoBrightness:Z

    .line 3406
    :try_start_19
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "screen_brightness"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSystemBrightnessLevel:I
    :try_end_25
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_19 .. :try_end_25} :catch_41

    .line 3410
    :goto_25
    const-string v3, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSystemAutoBrighteness() - mSystemBrightnessLevel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSystemBrightnessLevel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 3411
    goto :goto_11

    .line 3407
    :catch_41
    move-exception v2

    .line 3408
    .local v2, snfe:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_25
.end method

.method public checkVideoAutoBrighteness()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3375
    const/4 v0, -0x1

    .line 3377
    .local v0, autobright:I
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_10} :catch_16

    move-result v0

    .line 3382
    :goto_11
    if-ne v0, v2, :cond_1b

    .line 3383
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoAutoBrightness:Z

    .line 3387
    :goto_15
    return v2

    .line 3378
    :catch_16
    move-exception v1

    .line 3379
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_11

    .line 3386
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1b
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoAutoBrightness:Z

    move v2, v3

    .line 3387
    goto :goto_15
.end method

.method public createDrmPopup(I)V
    .registers 11
    .parameter "type"

    .prologue
    .line 3093
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mbDrmPopupShow:Z

    .line 3095
    const/4 v1, 0x0

    .line 3096
    .local v1, leftBtn:I
    const/4 v4, 0x0

    .line 3097
    .local v4, rightBtn:I
    const/4 v0, 0x1

    .line 3098
    .local v0, btnEnable:Z
    const/4 v3, 0x0

    .line 3100
    .local v3, popupStr:Ljava/lang/String;
    const/16 v6, 0x1f

    if-eq p1, v6, :cond_17

    const/16 v6, 0x22

    if-eq p1, v6, :cond_17

    const/16 v6, 0x21

    if-eq p1, v6, :cond_17

    const/16 v6, 0x27

    if-ne p1, v6, :cond_85

    .line 3104
    :cond_17
    const v1, 0x1040013

    .line 3105
    const v4, 0x1040009

    .line 3106
    const/4 v0, 0x1

    .line 3120
    :cond_1e
    :goto_1e
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v6}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v5

    .line 3121
    .local v5, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setEmptyTitleName()V

    .line 3123
    sget-object v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v6, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getPopupString(I)Ljava/lang/String;

    move-result-object v3

    .line 3124
    const-string v6, "MoviePlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createPopup() - pop up String :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3127
    .local v2, popup:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3129
    new-instance v6, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;

    invoke-direct {v6, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$16;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v2, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3210
    if-eqz v0, :cond_5f

    .line 3211
    new-instance v6, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;

    invoke-direct {v6, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$17;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v2, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3234
    :cond_5f
    new-instance v6, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;

    invoke-direct {v6, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$18;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 3271
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_73

    .line 3272
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 3273
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    .line 3276
    :cond_73
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    .line 3278
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3279
    iget-object v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDrmPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 3280
    return-void

    .line 3107
    .end local v2           #popup:Landroid/app/AlertDialog$Builder;
    .end local v5           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_85
    const/16 v6, 0x20

    if-eq p1, v6, :cond_8d

    const/16 v6, 0x23

    if-ne p1, v6, :cond_98

    .line 3109
    :cond_8d
    iget v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I

    .line 3110
    const v1, 0x104000a

    .line 3111
    const/4 v0, 0x0

    goto :goto_1e

    .line 3112
    :cond_98
    const/16 v6, 0x24

    if-eq p1, v6, :cond_a4

    const/16 v6, 0x25

    if-eq p1, v6, :cond_a4

    const/16 v6, 0x26

    if-ne p1, v6, :cond_1e

    .line 3115
    :cond_a4
    iget v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->error_count:I

    .line 3116
    const v1, 0x104000a

    .line 3117
    const/4 v0, 0x0

    goto/16 :goto_1e
.end method

.method public exitMovieplayer()V
    .registers 3

    .prologue
    .line 1546
    const-string v0, "MoviePlayer"

    const-string v1, "exitMovieplayer() - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->paused:Z

    .line 1550
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    .line 1551
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 1553
    :cond_13
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->activityFinish()V

    .line 1554
    return-void
.end method

.method public getAutoBrightness()Z
    .registers 2

    .prologue
    .line 1025
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoAutoBrightness:Z

    return v0
.end method

.method public getBrightnessLevel()I
    .registers 2

    .prologue
    .line 1020
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightnessLevel:I

    return v0
.end method

.method public getColorTone()I
    .registers 2

    .prologue
    .line 1013
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortone:I

    return v0
.end method

.method public getOutdoorVisibility()Z
    .registers 2

    .prologue
    .line 1006
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorvisibility:Z

    return v0
.end method

.method public isBtHeadSetSeekStatus()Z
    .registers 2

    .prologue
    .line 3669
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSeekStatus:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9
    .parameter "newConfig"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 691
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 693
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 696
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 698
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerWidth:I

    .line 699
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerHeight:I

    .line 701
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_67

    .line 702
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setMovieplayerOrientation(I)V

    .line 703
    const-string v2, "MoviePlayer"

    const-string v3, "onConfigurationChanged Portrait"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :goto_45
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v1

    .line 710
    .local v1, videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v1, :cond_66

    .line 711
    iget-object v2, v1, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setAnchorView()V

    .line 712
    iget-object v2, v1, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setUpdate()V

    .line 713
    iget-object v2, v1, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setButtonArrange()V

    .line 714
    iget-object v2, v1, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSeekBtn()V

    .line 715
    iget-object v2, v1, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 717
    :cond_66
    return-void

    .line 705
    .end local v1           #videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_67
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setMovieplayerOrientation(I)V

    .line 706
    const-string v2, "MoviePlayer"

    const-string v3, "onConfigurationChanged Landscape"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 224
    const-string v3, "MoviePlayer"

    const-string v4, "@@ onCreate() @@"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 226
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setDensityScreen(Landroid/content/Context;)V

    .line 228
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->createToast()V

    .line 231
    invoke-direct {p0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkIsCalling(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 232
    const-string v3, "MoviePlayer"

    const-string v4, "onCreate() - call connect. Do not play video."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->DuringCallToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 296
    :cond_26
    :goto_26
    return-void

    .line 239
    :cond_27
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setOrientationSensorLandScape()V

    .line 249
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkLCDOnOff()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 250
    const-string v3, "MoviePlayer"

    const-string v4, "onCreate() - LCD off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_26

    .line 255
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    .line 257
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    .line 260
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    .line 262
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 263
    .local v1, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 267
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerWidth:I

    .line 268
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerHeight:I

    .line 270
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 271
    .local v0, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setContentView(Landroid/view/View;)V

    .line 274
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z

    .line 275
    iput-boolean v5, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->paused:Z

    .line 276
    iput-boolean v5, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mExit:Z

    .line 278
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v3}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 279
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 283
    :cond_aa
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkSystemAutoBrighteness()Z

    .line 289
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setOnVideoLockStateChangedObserver(Lcom/sec/android/app/videoplayer/util/VideoUtil$OnVideoLockStateChangedObserver;)V

    .line 290
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 292
    .local v2, intent:Landroid/content/Intent;
    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->init(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 293
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->initMoviePlayer()V

    goto/16 :goto_26
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 1080
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMenu:Landroid/view/Menu;

    .line 1082
    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f08000d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1084
    const/4 v0, 0x2

    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v4, v4, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1090
    const v0, 0x7f080016

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v5, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1091
    const v0, 0x7f080017

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v5, v5, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1092
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v3, v6, v6, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1094
    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v6, v7, v7, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1095
    const/4 v0, 0x7

    const/4 v1, 0x7

    const v2, 0x7f080015

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v7, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1098
    const/16 v0, 0x8

    const/16 v1, 0x9

    const/16 v2, 0x9

    const v3, 0x7f08000b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 627
    const-string v1, "MoviePlayer"

    const-string v2, "@@ onDestroy():"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->paused:Z

    .line 630
    iput-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z

    .line 632
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->DuringCallToast:Landroid/widget/Toast;

    .line 633
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->MediaToast:Landroid/widget/Toast;

    .line 634
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyToast:Landroid/widget/Toast;

    .line 635
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->dismissDialogPopup()V

    .line 637
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    if-eqz v1, :cond_20

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->clearAllDialog()V

    .line 640
    :cond_20
    iput-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    .line 642
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlaybackComplete:Z

    if-eqz v1, :cond_2f

    .line 643
    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlaybackComplete:Z

    .line 644
    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    .line 645
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 649
    :cond_2f
    invoke-direct {p0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkIsCalling(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 651
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 652
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 659
    :cond_3b
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->clearObserver()V

    .line 660
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSRSeffect(I)V

    .line 661
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setCurPlayingPath(Ljava/lang/String;)V

    .line 663
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    if-eqz v1, :cond_4d

    .line 664
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->resumeTvOut()V

    .line 666
    :cond_4d
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    if-eqz v1, :cond_56

    .line 667
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    .line 670
    :cond_56
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSubtitleFileName(Ljava/lang/String;)V

    .line 672
    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    .line 675
    :try_start_5b
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_69

    .line 676
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V

    .line 677
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->reset()V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_69} :catch_70

    .line 683
    :cond_69
    :goto_69
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->unbindFromService(Landroid/content/Context;)V

    .line 685
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 686
    return-void

    .line 679
    :catch_70
    move-exception v0

    .line 680
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy - RemoteException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 24
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1650
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v13

    .line 1655
    .local v13, path:Ljava/lang/String;
    const/16 v17, 0x54

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 1656
    const/16 v17, 0x1

    .line 1985
    :goto_e
    return v17

    .line 1658
    :cond_f
    const/16 v17, 0x1a

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_7b

    const/16 v17, 0x18

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_7b

    const/16 v17, 0x19

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_7b

    const/16 v17, 0x55

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_7b

    const/16 v17, 0x7e

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_7b

    const/16 v17, 0x7f

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_7b

    const/16 v17, 0x56

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_7b

    const/16 v17, 0x59

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_7b

    const/16 v17, 0x5a

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_7b

    const/16 v17, 0x57

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_7b

    const/16 v17, 0x58

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_7b

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getLockState()Z

    move-result v17

    if-eqz v17, :cond_7b

    .line 1669
    sget-object v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getLockCtrlView()Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;

    move-result-object v11

    .line 1671
    .local v11, lockLayout:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    if-eqz v11, :cond_78

    .line 1672
    invoke-virtual {v11}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->showLockIcon()V

    .line 1674
    :cond_78
    const/16 v17, 0x1

    goto :goto_e

    .line 1677
    .end local v11           #lockLayout:Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
    :cond_7b
    const/4 v15, 0x0

    .line 1680
    .local v15, videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_start_7c
    sget-object v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_81} :catch_8a

    move-result-object v15

    .line 1686
    sparse-switch p1, :sswitch_data_5d4

    .line 1985
    invoke-super/range {p0 .. p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v17

    goto :goto_e

    .line 1681
    :catch_8a
    move-exception v7

    .line 1682
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1683
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1688
    .end local v7           #e:Ljava/lang/Exception;
    :sswitch_92
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getIsOnPalm()Z

    move-result v17

    if-nez v17, :cond_ca

    .line 1689
    if-eqz v13, :cond_ab

    .line 1690
    sget-object v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkOnBackKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_ab

    .line 1691
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->popupDivxExit()V

    .line 1692
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1696
    :cond_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    .line 1697
    .local v12, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1703
    .end local v12           #msg:Landroid/os/Message;
    :goto_c6
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1699
    :cond_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 1700
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyTimer:I

    goto :goto_c6

    .line 1710
    :sswitch_de
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v17

    if-nez v17, :cond_1a5

    .line 1711
    const/4 v4, 0x0

    .line 1714
    .local v4, bPause:Z
    :try_start_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ee} :catch_127

    move-result v4

    .line 1721
    if-nez v4, :cond_18d

    .line 1722
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    .line 1725
    const/16 v17, 0x3

    :try_start_f6
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isCurrentPlayerState(I)Z

    move-result v17

    if-eqz v17, :cond_14b

    .line 1726
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayback()V

    .line 1732
    :goto_ff
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setOrientationSensorLandScape()V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_102} :catch_15a

    .line 1739
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v8

    .line 1741
    .local v8, id:J
    sget-object v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget-object v18, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->checkExistSubTitle(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_183

    .line 1742
    sget-object v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->initSubTitle()Z

    move-result v17

    if-eqz v17, :cond_17e

    .line 1743
    sget-object v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    .line 1751
    :goto_123
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1715
    .end local v8           #id:J
    :catch_127
    move-exception v7

    .line 1716
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1717
    const-string v17, "MoviePlayer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KEYCODE_MEDIA_PLAY_PAUSE - isPlaying - RemoteException occured :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1728
    .end local v7           #e:Ljava/lang/Exception;
    :cond_14b
    const/16 v17, 0x1

    :try_start_14d
    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_159} :catch_15a

    goto :goto_ff

    .line 1733
    :catch_15a
    move-exception v7

    .line 1734
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1735
    const-string v17, "MoviePlayer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KEYCODE_MEDIA_PLAY_PAUSE - play - RemoteException occured :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1745
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #id:J
    :cond_17e
    const/16 v17, 0x0

    sput-boolean v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    goto :goto_123

    .line 1747
    :cond_183
    const/16 v17, 0x0

    sput-boolean v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    .line 1748
    sget-object v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    goto :goto_123

    .line 1753
    .end local v8           #id:J
    :cond_18d
    sget-boolean v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPauseEnable:Z

    if-eqz v17, :cond_19f

    .line 1754
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 1755
    if-eqz v15, :cond_19b

    .line 1756
    invoke-virtual {v15}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->pause()V

    .line 1762
    :cond_19b
    :goto_19b
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1758
    :cond_19f
    if-eqz v15, :cond_19b

    .line 1759
    invoke-virtual {v15}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->stop()V

    goto :goto_19b

    .line 1765
    .end local v4           #bPause:Z
    :cond_1a5
    const/16 v17, 0x0

    goto/16 :goto_e

    .line 1769
    :sswitch_1a9
    const-string v17, "MoviePlayer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onKeyDown() - MEDIA_NEXT ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v17

    if-nez v17, :cond_1da

    .line 1771
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->next(Z)Z

    move-result v17

    if-nez v17, :cond_1d6

    .line 1772
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 1773
    :cond_1d6
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1775
    :cond_1da
    const/16 v17, 0x0

    goto/16 :goto_e

    .line 1779
    :sswitch_1de
    const-string v17, "MoviePlayer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onKeyDown() - MEDIA_PREVIOUS ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v17

    if-nez v17, :cond_282

    .line 1781
    const/4 v6, 0x0

    .line 1784
    .local v6, cpos:I
    :try_start_201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_20a} :catch_230

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v6, v0

    .line 1791
    const/16 v17, 0xbb8

    move/from16 v0, v17

    if-le v6, v0, :cond_278

    .line 1792
    sget-object v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;

    move-result-object v16

    .line 1794
    .local v16, view:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    if-eqz v16, :cond_221

    .line 1795
    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitle(Ljava/lang/String;)V

    .line 1798
    :cond_221
    :try_start_221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->seek(J)J
    :try_end_22c
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_22c} :catch_254

    .line 1809
    .end local v16           #view:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    :cond_22c
    :goto_22c
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1785
    :catch_230
    move-exception v7

    .line 1786
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1787
    const-string v17, "MoviePlayer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KEYCODE_MEDIA_PREVIOUS - position() - RemoteException occured :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1799
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v16       #view:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    :catch_254
    move-exception v7

    .line 1800
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1801
    const-string v17, "MoviePlayer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KEYCODE_MEDIA_PREVIOUS - seek() - RemoteException occured :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1805
    .end local v7           #e:Ljava/lang/Exception;
    .end local v16           #view:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    :cond_278
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->prev()Z

    move-result v17

    if-nez v17, :cond_22c

    .line 1806
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_22c

    .line 1811
    .end local v6           #cpos:I
    :cond_282
    const/16 v17, 0x0

    goto/16 :goto_e

    .line 1816
    :sswitch_286
    if-eqz v15, :cond_29d

    .line 1817
    iget-object v5, v15, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    .line 1819
    .local v5, btnCtrl:Lcom/sec/android/app/videoplayer/view/VideoBtnController;
    if-eqz v5, :cond_29d

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->isBtnSeekStatus()Z

    move-result v17

    if-eqz v17, :cond_29d

    .line 1821
    const-string v17, "MoviePlayer"

    const-string v18, "KEYCODE_MEDIA_FAST_FORWARD - ctrl is working"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1826
    .end local v5           #btnCtrl:Lcom/sec/android/app/videoplayer/view/VideoBtnController;
    :cond_29d
    const/4 v6, 0x0

    .line 1827
    .restart local v6       #cpos:I
    const/16 v10, 0x3e8

    .line 1828
    .local v10, init_seek_pos:I
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSeekStatus:Z

    .line 1830
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    move/from16 v17, v0

    const/16 v18, 0x28

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_36e

    .line 1831
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    .line 1836
    :goto_2be
    :try_start_2be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J
    :try_end_2c7
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_2c7} :catch_37e

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v6, v0

    .line 1843
    sget-boolean v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    if-eqz v17, :cond_3a2

    .line 1844
    const/16 v10, 0x3a98

    .line 1848
    :goto_2d1
    const-wide/high16 v17, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    mul-int v17, v17, v10

    add-int v6, v6, v17

    .line 1849
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->lastPos:I

    .line 1851
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    move/from16 v17, v0

    rem-int/lit8 v17, v17, 0xa

    if-nez v17, :cond_353

    .line 1853
    :try_start_2f9
    const-string v17, "MoviePlayer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pos : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Lastpost : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->lastPos:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mLongKeyCnt : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    sget v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v18, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_347

    sget v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v18, 0x1d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3a6

    .line 1856
    :cond_347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-object/from16 v17, v0

    int-to-long v0, v6

    move-wide/from16 v18, v0

    invoke-interface/range {v17 .. v19}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->seek(J)J
    :try_end_353
    .catch Ljava/lang/Exception; {:try_start_2f9 .. :try_end_353} :catch_3cd

    .line 1873
    :cond_353
    :goto_353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    .line 1874
    if-eqz v15, :cond_36a

    .line 1875
    const/16 v17, 0xbb8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1877
    :cond_36a
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1833
    :cond_36e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0xa

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    goto/16 :goto_2be

    .line 1837
    :catch_37e
    move-exception v7

    .line 1838
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1839
    const-string v17, "MoviePlayer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KEYCODE_MEDIA_FAST_FORWARD - position() - RemoteException occured :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1846
    .end local v7           #e:Ljava/lang/Exception;
    :cond_3a2
    const/16 v10, 0x3e8

    goto/16 :goto_2d1

    .line 1858
    :cond_3a6
    :try_start_3a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->duration()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_3f1

    int-to-long v0, v6

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->duration()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-ltz v17, :cond_3f1

    .line 1859
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->next(Z)Z
    :try_end_3cc
    .catch Ljava/lang/Exception; {:try_start_3a6 .. :try_end_3cc} :catch_3cd

    goto :goto_353

    .line 1866
    :catch_3cd
    move-exception v7

    .line 1867
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1868
    const-string v17, "MoviePlayer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KEYCODE_MEDIA_FAST_FORWARD - seek - RemoteException occured :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1861
    .end local v7           #e:Ljava/lang/Exception;
    :cond_3f1
    :try_start_3f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    cmp-long v17, v17, v19

    if-lez v17, :cond_353

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v6, v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->seekTo(II)J
    :try_end_410
    .catch Ljava/lang/Exception; {:try_start_3f1 .. :try_end_410} :catch_3cd

    goto/16 :goto_353

    .line 1882
    .end local v6           #cpos:I
    .end local v10           #init_seek_pos:I
    :sswitch_412
    if-eqz v15, :cond_429

    .line 1883
    iget-object v5, v15, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    .line 1885
    .restart local v5       #btnCtrl:Lcom/sec/android/app/videoplayer/view/VideoBtnController;
    if-eqz v5, :cond_429

    invoke-virtual {v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->isBtnSeekStatus()Z

    move-result v17

    if-eqz v17, :cond_429

    .line 1886
    const-string v17, "MoviePlayer"

    const-string v18, "KEYCODE_MEDIA_REWIND - ctrl is working"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1891
    .end local v5           #btnCtrl:Lcom/sec/android/app/videoplayer/view/VideoBtnController;
    :cond_429
    const/4 v6, 0x0

    .line 1892
    .restart local v6       #cpos:I
    const/16 v10, 0x3e8

    .line 1894
    .restart local v10       #init_seek_pos:I
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSeekStatus:Z

    .line 1896
    const-string v17, "MoviePlayer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KEYCODE_MEDIA_REWIND. mLongKeyCnt = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    move/from16 v17, v0

    const/16 v18, 0x28

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4de

    .line 1899
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    .line 1904
    :goto_468
    :try_start_468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J
    :try_end_471
    .catch Ljava/lang/Exception; {:try_start_468 .. :try_end_471} :catch_4ee

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v6, v0

    .line 1911
    sget-boolean v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    if-eqz v17, :cond_512

    .line 1912
    const/16 v10, 0x2710

    .line 1916
    :goto_47b
    const-wide/high16 v17, 0x4000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    mul-int v17, v17, v10

    sub-int v6, v6, v17

    .line 1918
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->lastPos:I

    .line 1920
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    move/from16 v17, v0

    rem-int/lit8 v17, v17, 0xa

    if-nez v17, :cond_4c3

    .line 1923
    :try_start_4a3
    sget v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v18, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4b7

    sget v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v18, 0x1d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_516

    .line 1925
    :cond_4b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-object/from16 v17, v0

    int-to-long v0, v6

    move-wide/from16 v18, v0

    invoke-interface/range {v17 .. v19}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->seek(J)J
    :try_end_4c3
    .catch Ljava/lang/Exception; {:try_start_4a3 .. :try_end_4c3} :catch_526

    .line 1936
    :cond_4c3
    :goto_4c3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    .line 1937
    if-eqz v15, :cond_4da

    .line 1938
    const/16 v17, 0xbb8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1940
    :cond_4da
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1901
    :cond_4de
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0xa

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    goto/16 :goto_468

    .line 1905
    :catch_4ee
    move-exception v7

    .line 1906
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1907
    const-string v17, "MoviePlayer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KEYCODE_MEDIA_REWIND - position() - RemoteException occured :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1914
    .end local v7           #e:Ljava/lang/Exception;
    :cond_512
    const/16 v10, 0x3e8

    goto/16 :goto_47b

    .line 1927
    :cond_516
    :try_start_516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v6, v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->seekTo(II)J
    :try_end_525
    .catch Ljava/lang/Exception; {:try_start_516 .. :try_end_525} :catch_526

    goto :goto_4c3

    .line 1929
    :catch_526
    move-exception v7

    .line 1930
    .restart local v7       #e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 1931
    const-string v17, "MoviePlayer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KEYCODE_MEDIA_REWIND - seek - RemoteException occured :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1944
    .end local v6           #cpos:I
    .end local v7           #e:Ljava/lang/Exception;
    .end local v10           #init_seek_pos:I
    :sswitch_54a
    sget-object v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleSyncView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    move-result-object v14

    .line 1945
    .local v14, syncCtrl:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    const-string v17, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 1947
    .local v3, audioManager:Landroid/media/AudioManager;
    if-eqz v14, :cond_561

    .line 1948
    invoke-virtual {v14}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->hideSyncBtn()V

    .line 1950
    :cond_561
    const/16 v17, 0x3

    const/16 v18, -0x1

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1952
    if-eqz v15, :cond_583

    .line 1953
    iget-object v0, v15, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->showVolumeWarinigToastFromKey()V

    .line 1954
    invoke-virtual {v15}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->updateVolumeBar()V

    .line 1955
    const/16 v17, 0xbb8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1957
    :cond_583
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1961
    .end local v3           #audioManager:Landroid/media/AudioManager;
    .end local v14           #syncCtrl:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    :sswitch_587
    sget-object v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleSyncView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    move-result-object v14

    .line 1962
    .restart local v14       #syncCtrl:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    const-string v17, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 1964
    .restart local v3       #audioManager:Landroid/media/AudioManager;
    if-eqz v14, :cond_59e

    .line 1965
    invoke-virtual {v14}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->hideSyncBtn()V

    .line 1967
    :cond_59e
    const/16 v17, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 1969
    if-eqz v15, :cond_5c0

    .line 1970
    iget-object v0, v15, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->showVolumeWarinigToastFromKey()V

    .line 1971
    invoke-virtual {v15}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->updateVolumeBar()V

    .line 1972
    const/16 v17, 0xbb8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1974
    :cond_5c0
    const/16 v17, 0x1

    goto/16 :goto_e

    .line 1978
    .end local v3           #audioManager:Landroid/media/AudioManager;
    .end local v14           #syncCtrl:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    :sswitch_5c4
    sget-object v17, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleSyncView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    move-result-object v14

    .line 1979
    .restart local v14       #syncCtrl:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
    if-eqz v14, :cond_5cf

    .line 1980
    invoke-virtual {v14}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->hideSyncBtn()V

    .line 1981
    :cond_5cf
    const/16 v17, 0x0

    goto/16 :goto_e

    .line 1686
    nop

    :sswitch_data_5d4
    .sparse-switch
        0x4 -> :sswitch_92
        0x18 -> :sswitch_587
        0x19 -> :sswitch_54a
        0x1a -> :sswitch_5c4
        0x3e -> :sswitch_de
        0x4f -> :sswitch_de
        0x55 -> :sswitch_de
        0x57 -> :sswitch_1a9
        0x58 -> :sswitch_1de
        0x59 -> :sswitch_412
        0x5a -> :sswitch_286
        0x7e -> :sswitch_de
        0x7f -> :sswitch_de
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v6, 0xbb8

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1558
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v1

    .line 1562
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 1563
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDivx(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/16 v4, 0x54

    if-ne p1, v4, :cond_17

    .line 1644
    :cond_16
    :goto_16
    :sswitch_16
    return v3

    .line 1566
    :cond_17
    const/16 v4, 0x1a

    if-eq p1, v4, :cond_49

    const/16 v4, 0x18

    if-eq p1, v4, :cond_49

    const/16 v4, 0x19

    if-eq p1, v4, :cond_49

    const/16 v4, 0x55

    if-eq p1, v4, :cond_49

    const/16 v4, 0x7e

    if-eq p1, v4, :cond_49

    const/16 v4, 0x7f

    if-eq p1, v4, :cond_49

    const/16 v4, 0x56

    if-eq p1, v4, :cond_49

    const/16 v4, 0x59

    if-eq p1, v4, :cond_49

    const/16 v4, 0x5a

    if-eq p1, v4, :cond_49

    const/16 v4, 0x57

    if-eq p1, v4, :cond_49

    const/16 v4, 0x58

    if-eq p1, v4, :cond_49

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getLockState()Z

    move-result v4

    if-nez v4, :cond_16

    .line 1579
    :cond_49
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v4}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 1581
    .local v2, videoSurfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    sparse-switch p1, :sswitch_data_c0

    .line 1644
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_16

    .line 1587
    :sswitch_57
    if-eqz v2, :cond_16

    .line 1588
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->stop()V

    goto :goto_16

    .line 1594
    :sswitch_5d
    iput v5, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mLongKeyCnt:I

    .line 1595
    iput-boolean v5, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mSeekStatus:Z

    .line 1598
    iget v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->lastPos:I

    if-eqz v4, :cond_16

    .line 1600
    :try_start_65
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    iget v5, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->lastPos:I

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->seekTo(II)J

    .line 1601
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->lastPos:I

    .line 1602
    const/16 v4, 0xbb8

    invoke-virtual {v2, v4}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showTitleControls(I)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_75} :catch_76

    goto :goto_16

    .line 1603
    :catch_76
    move-exception v0

    .line 1604
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1605
    const-string v4, "MoviePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEYCODE_MEDIA_REWIND/KEYCODE_MEDIA_FAST_FORWARD - RemoteException occured :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1614
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_97
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_ad

    .line 1616
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getLockState()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 1617
    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->OnVideoLockStateChanged(II)V

    goto/16 :goto_16

    .line 1619
    :cond_a8
    invoke-virtual {p0, v5, v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->OnVideoLockStateChanged(II)V

    goto/16 :goto_16

    .line 1630
    :cond_ad
    :sswitch_ad
    if-eqz v2, :cond_16

    .line 1632
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->isControlsShowing()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 1634
    invoke-virtual {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    goto/16 :goto_16

    .line 1638
    :cond_ba
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->toggleControlsVisiblity()V

    goto/16 :goto_16

    .line 1581
    nop

    :sswitch_data_c0
    .sparse-switch
        0x13 -> :sswitch_ad
        0x14 -> :sswitch_ad
        0x15 -> :sswitch_ad
        0x16 -> :sswitch_ad
        0x17 -> :sswitch_ad
        0x18 -> :sswitch_16
        0x19 -> :sswitch_16
        0x1a -> :sswitch_97
        0x56 -> :sswitch_57
        0x59 -> :sswitch_5d
        0x5a -> :sswitch_5d
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 301
    const-string v1, "MoviePlayer"

    const-string v2, "@@ onNewIntent()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkIsCalling(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 303
    const-string v1, "MoviePlayer"

    const-string v2, "onNewIntent() - call connect. Do not play video."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->DuringCallToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 306
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 336
    :cond_1f
    :goto_1f
    return-void

    .line 318
    :cond_20
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkLCDOnOff()Z

    move-result v1

    if-nez v1, :cond_31

    .line 319
    const-string v1, "MoviePlayer"

    const-string v2, "onNewIntent() - LCD off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_1f

    .line 324
    :cond_31
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getMainView()Lcom/sec/android/app/videoplayer/view/MainVideoWindow;

    move-result-object v0

    .line 326
    .local v0, mainView:Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
    if-eqz v0, :cond_42

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_42

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 329
    :cond_42
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->clearObserver()V

    .line 330
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setOnVideoLockStateChangedObserver(Lcom/sec/android/app/videoplayer/util/VideoUtil$OnVideoLockStateChangedObserver;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->init(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 333
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->initMoviePlayer()V

    goto :goto_1f
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 15
    .parameter "item"

    .prologue
    .line 1106
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    packed-switch v9, :pswitch_data_136

    .line 1300
    const/4 v9, 0x1

    .line 1303
    :goto_b
    return v9

    .line 1110
    :pswitch_c
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_1c

    .line 1111
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->show(I)V

    .line 1303
    :cond_1c
    :goto_1c
    const/4 v9, 0x1

    goto :goto_b

    .line 1116
    :pswitch_1e
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gtz v9, :cond_35

    sget-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    if-nez v9, :cond_35

    .line 1117
    const-string v9, "MoviePlayer"

    const-string v10, "onOptionsItemSelected() - video ID is null."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v9, 0x1

    goto :goto_b

    .line 1121
    :cond_35
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->show(I)V

    goto :goto_1c

    .line 1129
    :pswitch_3c
    sget-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    if-eqz v9, :cond_46

    .line 1130
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v9, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSubTitleSettingPopup(Landroid/content/Context;)V

    goto :goto_1c

    .line 1132
    :cond_46
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    if-nez v9, :cond_1c

    .line 1133
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v9, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSelectSubtitlesPopup(Landroid/content/Context;)V

    goto :goto_1c

    .line 1139
    :pswitch_50
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1141
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 1143
    .local v6, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;

    invoke-direct {v10, p0, v6}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/media/AudioManager;)V

    const/4 v11, 0x2

    invoke-virtual {v0, v9, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_1c

    .line 1234
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v6           #mAudioManager:Landroid/media/AudioManager;
    :pswitch_6a
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1235
    .local v1, audiomg:Landroid/media/AudioManager;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/media/AudioManager;->setBluetoothA2dpForceOn(Z)V

    .line 1239
    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 1240
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSRSeffect(I)V

    .line 1241
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v7

    .line 1243
    .local v7, surface:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v7, :cond_1c

    iget-object v9, v7, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    if-eqz v9, :cond_1c

    .line 1244
    iget-object v9, v7, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    goto :goto_1c

    .line 1249
    .end local v1           #audiomg:Landroid/media/AudioManager;
    .end local v7           #surface:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :pswitch_92
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v4

    .line 1250
    .local v4, filePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->isEditingSupportedFormat(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d6

    .line 1251
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 1252
    .local v8, uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.TRIM"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1253
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "uri"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1257
    const/4 v9, -0x1

    :try_start_b2
    invoke-virtual {p0, v5, v9}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b7

    goto/16 :goto_1c

    .line 1258
    :catch_b7
    move-exception v3

    .line 1259
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "MoviePlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent trimming : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1263
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_d6
    const-string v9, "MoviePlayer"

    const-string v10, "Trimming is not supportted"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUnsupportedToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1c

    .line 1269
    .end local v4           #filePath:Ljava/lang/String;
    :pswitch_e4
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->show(I)V

    goto/16 :goto_1c

    .line 1273
    :pswitch_ec
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->show(I)V

    goto/16 :goto_1c

    .line 1277
    :pswitch_f4
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->show(I)V

    goto/16 :goto_1c

    .line 1281
    :pswitch_fc
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v2

    .line 1282
    .local v2, currentPath:Ljava/lang/String;
    if-nez v2, :cond_10c

    .line 1283
    const-string v9, "MoviePlayer"

    const-string v10, "current Path is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/4 v9, 0x1

    goto/16 :goto_b

    .line 1286
    :cond_10c
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->isEditingSupportedFormat(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_127

    .line 1287
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 1288
    .restart local v8       #uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1289
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "video/mp4"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1291
    invoke-virtual {p0, v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1c

    .line 1293
    .end local v5           #intent:Landroid/content/Intent;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_127
    const-string v9, "MoviePlayer"

    const-string v10, "Video maker is not supportted"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mUnsupportedToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1c

    .line 1108
    nop

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_c
        :pswitch_e4
        :pswitch_92
        :pswitch_50
        :pswitch_6a
        :pswitch_3c
        :pswitch_ec
        :pswitch_f4
        :pswitch_fc
        :pswitch_1e
    .end packed-switch
.end method

.method protected onPause()V
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 531
    const-string v2, "MoviePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ onPause() - start : mWasPlayingWhenPaused : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getWasPlayingWhenPaused()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 535
    invoke-virtual {p0, v7, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->overridePendingTransition(II)V

    .line 538
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->saveActivityPreferences()V

    .line 540
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mThumbKicker:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->stopKickThumbSuspend()V

    .line 541
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 542
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->removeHandler()V

    .line 544
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-eqz v2, :cond_4d

    .line 545
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleSyncView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 546
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleSyncView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->clearHandlerMessages()V

    .line 548
    :cond_4d
    const/16 v2, 0x1a

    invoke-direct {p0, v2, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->requestSystemKeyEvent(IZ)Z

    .line 550
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 551
    const-string v0, "MoviePlayer"

    const-string v1, "onPause() - mVideoCtrlUtil is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 553
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->enableNotificationExpanded()V

    .line 554
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 623
    :goto_70
    return-void

    .line 558
    :cond_71
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-nez v2, :cond_80

    .line 559
    const-string v0, "MoviePlayer"

    const-string v1, "onPause() - mVideoCtrlUtil is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_70

    .line 564
    :cond_80
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->pauseSubTitleProcessor()V

    .line 565
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->EnableHDMISubtitleOnTV(Z)V

    .line 567
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v8

    .line 569
    .local v8, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v8, :cond_f7

    .line 570
    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->onPause()V

    .line 571
    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->hideControls()V

    .line 573
    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceExists()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 574
    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->ALL_SHARE:Z

    if-eqz v2, :cond_ed

    .line 575
    const-string v2, "MoviePlayer"

    const-string v3, "onPause Allshare pause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->pause()V

    .line 577
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->updateResumePos(Z)V

    .line 590
    :cond_af
    :goto_af
    iput-boolean v7, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z

    move-wide v2, v0

    move v6, v5

    .line 592
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 593
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->dismissDialogPopup()V

    .line 594
    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->forceBtnRelease()V

    .line 595
    iget-object v0, v8, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->requestFocus()Z

    .line 596
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->enableNotificationExpanded()V

    .line 599
    invoke-direct {p0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkIsCalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 603
    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 604
    invoke-static {v7}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 612
    :cond_d4
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->resetBrightness()V

    .line 615
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setSystemAutoBrightness()V

    .line 617
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    if-eqz v0, :cond_e3

    .line 618
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->resumeTvOut()V

    .line 619
    :cond_e3
    invoke-direct {p0, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setPowerSaveMode(Z)V

    .line 621
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    .line 622
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopBufferingChecker()V

    goto :goto_70

    .line 579
    :cond_ed
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->broadcastPausedPosition(Landroid/content/Context;)V

    .line 580
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->updateResumePos(Z)V

    .line 581
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->suspendPlayback()V

    goto :goto_af

    .line 585
    :cond_f7
    const-string v0, "MoviePlayer"

    const-string v1, "onPause() - does not load VideoSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto/16 :goto_70
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 19
    .parameter "menu"

    .prologue
    .line 1308
    const/4 v4, 0x0

    .line 1309
    .local v4, bShare:Z
    const/4 v3, 0x1

    .line 1311
    .local v3, bDetails:Z
    const/4 v6, 0x1

    .line 1312
    .local v6, bSubTitle:Z
    const/4 v7, 0x0

    .line 1313
    .local v7, bTrim:Z
    const/4 v5, 0x1

    .line 1314
    .local v5, bSoundPath:Z
    const/4 v8, 0x1

    .line 1316
    .local v8, bVideoMaker:Z
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v12

    .line 1319
    .local v12, path:Ljava/lang/String;
    :try_start_a
    sget-object v14, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v14}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v14

    iget-object v14, v14, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_109

    .line 1325
    :goto_16
    if-eqz v12, :cond_1e

    .line 1326
    sget-object v14, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v14, v12}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsShare(Ljava/lang/String;)Z

    move-result v4

    .line 1334
    :cond_1e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v15, 0x14

    if-ne v14, v15, :cond_116

    .line 1335
    const/4 v3, 0x1

    .line 1337
    const/4 v7, 0x1

    .line 1362
    :cond_28
    :goto_28
    sget-boolean v14, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    if-eqz v14, :cond_2d

    .line 1363
    const/4 v3, 0x1

    .line 1365
    :cond_2d
    const-string v14, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    .line 1368
    .local v11, mAudioManager:Landroid/media/AudioManager;
    const-string v14, "audioParam;curDevice"

    invoke-virtual {v11, v14}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1369
    .local v10, isMusicHPH:Ljava/lang/String;
    const-string v14, "HPH"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17a

    const-string v14, "HS"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17a

    .line 1370
    const/4 v5, 0x1

    .line 1377
    :goto_4e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1379
    .local v13, pm:Landroid/content/pm/PackageManager;
    :try_start_52
    const-string v14, "com.sec.android.app.ve"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_58
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_58} :catch_17d
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_19d

    .line 1389
    :goto_58
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1390
    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1392
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1393
    const/4 v14, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1394
    const/4 v14, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v8}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1395
    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1397
    if-eqz v5, :cond_9b

    .line 1398
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 1399
    .local v2, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    new-instance v15, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$2;-><init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/view/Menu;)V

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v2, v14, v15, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1432
    .end local v2           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_9b
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v15, 0x7f02004d

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1433
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v15, 0x7f020043

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1437
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v15, 0x7f020050

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1438
    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v15, 0x7f02004f

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1439
    const/4 v14, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v15, 0x7f02004e

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1441
    const/4 v14, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v15, 0x7f020044

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1442
    const/4 v14, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v15, 0x7f020049

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1445
    const/16 v14, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    const v15, 0x7f020046

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1447
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v14

    return v14

    .line 1320
    .end local v10           #isMusicHPH:Ljava/lang/String;
    .end local v11           #mAudioManager:Landroid/media/AudioManager;
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    :catch_109
    move-exception v9

    .line 1321
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1322
    const-string v14, "MoviePlayer"

    const-string v15, "onPrepareOptionsMenun - failed to close volumebar"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1338
    .end local v9           #e:Ljava/lang/Exception;
    :cond_116
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v15, 0x19

    if-eq v14, v15, :cond_136

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v15, 0x1a

    if-eq v14, v15, :cond_136

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v15, 0x16

    if-eq v14, v15, :cond_136

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v15, 0x15

    if-ne v14, v15, :cond_13a

    .line 1342
    :cond_136
    const/4 v3, 0x1

    .line 1344
    const/4 v7, 0x1

    goto/16 :goto_28

    .line 1345
    :cond_13a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v15, 0x17

    if-eq v14, v15, :cond_14a

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v15, 0x18

    if-ne v14, v15, :cond_14d

    .line 1347
    :cond_14a
    const/4 v3, 0x1

    goto/16 :goto_28

    .line 1349
    :cond_14d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v15, 0x1c

    if-eq v14, v15, :cond_175

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v15, 0x1e

    if-eq v14, v15, :cond_175

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v15, 0x1d

    if-eq v14, v15, :cond_175

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v15, 0x1b

    if-eq v14, v15, :cond_175

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mKeyType:I

    const/16 v15, 0x1f

    if-ne v14, v15, :cond_28

    .line 1356
    :cond_175
    const/4 v4, 0x0

    .line 1357
    const/4 v3, 0x0

    .line 1358
    const/4 v8, 0x0

    goto/16 :goto_28

    .line 1372
    .restart local v10       #isMusicHPH:Ljava/lang/String;
    .restart local v11       #mAudioManager:Landroid/media/AudioManager;
    :cond_17a
    const/4 v5, 0x0

    goto/16 :goto_4e

    .line 1380
    .restart local v13       #pm:Landroid/content/pm/PackageManager;
    :catch_17d
    move-exception v9

    .line 1381
    .local v9, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "MoviePlayer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "no video maker"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    const/4 v8, 0x0

    .line 1386
    goto/16 :goto_58

    .line 1383
    .end local v9           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_19d
    move-exception v9

    .line 1384
    .local v9, e:Ljava/lang/Exception;
    const-string v14, "MoviePlayer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "no video maker"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const/4 v8, 0x0

    goto/16 :goto_58
.end method

.method protected onResume()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 411
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 412
    const-string v3, "MoviePlayer"

    const-string v4, "@@ onResume() - start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0, v6, v6}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->overridePendingTransition(II)V

    .line 416
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getActivityPreferences()V

    .line 426
    invoke-direct {p0, p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkIsCalling(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 427
    const-string v3, "MoviePlayer"

    const-string v4, "onResume() - call connect. Do not play video."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->DuringCallToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 430
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    .line 527
    :cond_28
    :goto_28
    return-void

    .line 437
    :cond_29
    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortone:I

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 438
    iget-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorvisibility:Z

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 445
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-nez v3, :cond_42

    .line 446
    const-string v3, "MoviePlayer"

    const-string v4, "onResume() - mVideoCtrlUtil is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_28

    .line 451
    :cond_42
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 453
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-nez v2, :cond_55

    .line 454
    const-string v3, "MoviePlayer"

    const-string v4, "onResume() - does not load VideoSurface"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->exitMovieplayer()V

    goto :goto_28

    .line 458
    :cond_55
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBackKeyTimer:I

    .line 460
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mThumbKicker:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$ThumbKicker;->suspendThumbWork()V

    .line 461
    const/16 v3, 0x1a

    invoke-direct {p0, v3, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->requestSystemKeyEvent(IZ)Z

    .line 463
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setOrientationSensorLandScape()V

    .line 464
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->disableNotificationExpanded()V

    .line 465
    iput-boolean v7, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoActivityOnResume:Z

    .line 468
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkSystemAutoBrighteness()Z

    .line 472
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setVideoPlayerBrightness()V

    .line 473
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->keepScreen()V

    .line 475
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    if-eqz v3, :cond_84

    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDivXTvOutEnable()Z

    move-result v3

    if-nez v3, :cond_84

    .line 476
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->suspendTvOut()V

    .line 479
    :cond_84
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 481
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    if-nez v3, :cond_95

    .line 482
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSRSeffect(I)V

    .line 485
    :cond_95
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v3, v8, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 486
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/videoplayer/receiver/VideoBTReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 488
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->registerMotionListener()V

    .line 489
    iget-object v3, v2, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->updateSRSBtn()V

    .line 491
    invoke-direct {p0, v8}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->isSystemKeyEventRequested(I)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 492
    const-string v3, "MoviePlayer"

    const-string v4, "onResume() - lock state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setLockState(Z)V

    .line 494
    invoke-virtual {p0, v6, v6}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->OnVideoLockStateChanged(II)V

    .line 502
    :goto_c7
    :try_start_c7
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->batteryCheck()Z

    move-result v3

    if-nez v3, :cond_f4

    .line 503
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->popupLowBattery()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_d0} :catch_105

    .line 521
    :cond_d0
    :goto_d0
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->onResume()V

    .line 522
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setControllerUpdate()V

    .line 523
    invoke-direct {p0, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->setPowerSaveMode(Z)V

    .line 524
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    .line 525
    iget-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mWasIncomingCall:Z

    if-eqz v3, :cond_28

    .line 526
    iput-boolean v6, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mWasIncomingCall:Z

    goto/16 :goto_28

    .line 496
    :cond_e6
    const-string v3, "MoviePlayer"

    const-string v4, "onResume() - unlock state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {v6}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setLockState(Z)V

    .line 498
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->OnVideoLockStateChanged(II)V

    goto :goto_c7

    .line 504
    :cond_f4
    :try_start_f4
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->checkLockScreenOn()Z

    move-result v3

    if-nez v3, :cond_d0

    .line 505
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isCurrentPlayerState(I)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 506
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startPlayback()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_104} :catch_105

    goto :goto_d0

    .line 516
    :catch_105
    move-exception v1

    .line 517
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 518
    const-string v3, "MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BatteryChecker IOException occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 507
    .end local v1           #e:Ljava/io/IOException;
    :cond_126
    :try_start_126
    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->ALL_SHARE:Z

    if-eqz v3, :cond_13e

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getWasPlayingWhenPaused()Z

    move-result v3

    if-eqz v3, :cond_13e

    .line 508
    const-string v3, "MoviePlayer"

    const-string v4, "onResume ALLShare startplay"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v3, 0x0

    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->ALL_SHARE:Z

    .line 510
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->startPlayback()V

    goto :goto_d0

    .line 512
    :cond_13e
    const-string v3, "MoviePlayer"

    const-string v4, "onResume resumePlayback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->resumePlayback()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_148} :catch_105

    goto :goto_d0
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 340
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 341
    const-string v0, "MoviePlayer"

    const-string v1, "@@ onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->registerBroadcastReciever()V

    .line 360
    return-void
.end method

.method protected onStop()V
    .registers 6

    .prologue
    .line 364
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 365
    const-string v2, "MoviePlayer"

    const-string v3, "@@ onStop() - start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_13

    .line 368
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 370
    :cond_13
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1c

    .line 371
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 373
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_25

    .line 374
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 376
    :cond_25
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDockReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_2e

    .line 377
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 379
    :cond_2e
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    if-eqz v2, :cond_37

    .line 380
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoDialog:Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->dismissAllDialog()V

    .line 385
    :cond_37
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->unregisterMotionListener()V

    .line 387
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 388
    .local v1, audioManager:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 389
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/videoplayer/receiver/VideoBTReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 393
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 394
    .local v0, MediaHubStatusintent:Landroid/content/Intent;
    const-string v2, "com.sec.android.app.videoplayer.ACTION_MEDIA_HUB_STATUS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v2, "PLAY_STATUS"

    const-string v3, "STOP"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->sendBroadcast(Landroid/content/Intent;)V

    .line 400
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    if-eqz v2, :cond_77

    .line 401
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->setVideoScaleType(I)V

    .line 404
    :cond_77
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_80

    .line 405
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_80
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->ALL_SHARE:Z

    .line 408
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1542
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onViewChange(I)V
    .registers 2
    .parameter "orientation"

    .prologue
    .line 3283
    return-void
.end method

.method registerMotionListener()V
    .registers 3

    .prologue
    .line 3809
    const-string v0, "MoviePlayer"

    const-string v1, "@@ registerMotionListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    sget-object v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_15

    .line 3811
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 3813
    :cond_15
    sget-object v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    .line 3814
    return-void
.end method

.method public resetBrightness()V
    .registers 3

    .prologue
    .line 3346
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3347
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, -0x4080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3349
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3350
    return-void
.end method

.method protected saveActivityPreferences()V
    .registers 5

    .prologue
    .line 990
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 991
    .local v1, myPref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 993
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "VideoPlayer_Colortone"

    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortone:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 994
    const-string v2, "VideoPlayer_Outdoorvisibility"

    iget-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorvisibility:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 995
    const-string v2, "VideoPlayer_ScreenMode"

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getFitToScreenMode()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 996
    const-string v2, "VideoPlayer_Brightness"

    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightnessLevel:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 997
    const-string v2, "VideoPlayer_Auto_Brightness"

    iget-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoAutoBrightness:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 998
    const-string v2, "VideoPlayer_Auto_Brightness_Default_flag"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 999
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1000
    return-void
.end method

.method public setBrightnessLevel(I)V
    .registers 2
    .parameter "level"

    .prologue
    .line 1017
    iput p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightnessLevel:I

    .line 1018
    return-void
.end method

.method public setColorTone(I)V
    .registers 2
    .parameter "colorTone"

    .prologue
    .line 1010
    iput p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mColortone:I

    .line 1011
    return-void
.end method

.method public setOrientationLandScape()V
    .registers 3

    .prologue
    .line 3715
    const-string v0, "MoviePlayer"

    const-string v1, "setOrientationLandScape"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    return-void
.end method

.method public setOrientationSensorLandScape()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3729
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 3731
    .local v0, type:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    if-ne v0, v3, :cond_25

    .line 3732
    :cond_12
    const-string v1, "MoviePlayer"

    const-string v2, "setOrientationSensorLandScape Landscape"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setMovieplayerOrientation(I)V

    .line 3739
    :goto_1d
    const-string v1, "MoviePlayer"

    const-string v2, "setOrientationSensorLandScape End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    return-void

    .line 3735
    :cond_25
    const-string v1, "MoviePlayer"

    const-string v2, "setOrientationSensorLandScape Portrait"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3736
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setMovieplayerOrientation(I)V

    goto :goto_1d
.end method

.method public setOutdoorVisibility(Z)V
    .registers 2
    .parameter "hasSet"

    .prologue
    .line 1003
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mOutdoorvisibility:Z

    .line 1004
    return-void
.end method

.method public setVideoPlayerBrightness()V
    .registers 5

    .prologue
    .line 3315
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3318
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoPlayerBrightness. mVideoAutoBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoAutoBrightness:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    iget-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mVideoAutoBrightness:Z

    if-eqz v1, :cond_35

    .line 3321
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3343
    :goto_34
    return-void

    .line 3324
    :cond_35
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3335
    const-string v1, "MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoPlayerBrightness. mBrightnessLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightnessLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    iget v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightnessLevel:I

    if-nez v1, :cond_6e

    .line 3338
    const v1, 0x3df5c28f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3342
    :goto_66
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_34

    .line 3340
    :cond_6e
    iget v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mBrightnessLevel:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_66
.end method

.method unregisterMotionListener()V
    .registers 3

    .prologue
    .line 3817
    const-string v0, "MoviePlayer"

    const-string v1, "@@ unregisterMotionListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3818
    sget-object v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_12

    .line 3819
    sget-object v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 3820
    :cond_12
    return-void
.end method
