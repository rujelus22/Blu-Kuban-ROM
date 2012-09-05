.class public Lcom/samsung/dmp/layout/DMPVideoActivity;
.super Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.source "DMPVideoActivity.java"

# interfaces
.implements Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;
.implements Lcom/sec/android/app/dlna/ui/IActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;
    }
.end annotation


# static fields
.field public static fitToSCR:I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field HighBitrateWarningToast:Landroid/widget/Toast;

.field public final MREVENT_FLIP_TOP_TO_BOTTOM:I

.field private final TAG:Ljava/lang/String;

.field private currItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

.field private currentPosition:I

.field private is51channelOn:Z

.field private isDestroying:Z

.field private isShowVolume:Z

.field private isSuspended:Z

.field private mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioShockToast:Landroid/widget/Toast;

.field private mBackKeyTimer:I

.field private mBackKeyToast:Landroid/widget/Toast;

.field private final mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryChargingStatus:Z

.field private mBatteryIcon:Landroid/widget/ImageView;

.field private mBatteryLevel:I

.field private mBufferingMessage:Landroid/widget/TextView;

.field private mBufferingMessageOnScreen:Landroid/widget/TextView;

.field private mBufferingStatus:I

.field private mBufferingView:Landroid/widget/ProgressBar;

.field private mButtonSRS:Landroid/widget/ImageButton;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mCurrentDuration:Landroid/widget/TextView;

.field private mCurrentPosition:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDRMFlag:Z

.field private mExtension:Ljava/lang/String;

.field private mFitToScrID:I

.field private mForceStopped:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHdmiReceiver:Landroid/content/BroadcastReceiver;

.field private final mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHDMIPlugged:Z

.field private mIsHeadsetPlugged:Z

.field private mIsPalmAvailable:Z

.field private mIsRealDrmError:I

.field private mIsStopped:Z

.field private mIsVolumeBubbleRunable:Z

.field private mMediaDuration:Landroid/widget/TextView;

.field private mMediaName:Landroid/widget/TextView;

.field private mMediaNameStr:Ljava/lang/String;

.field private mMenu:Landroid/view/Menu;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMusicPlayerControls:Landroid/view/ViewGroup;

.field private mMusicPlayerControlsHidden:Z

.field private mNext:Landroid/widget/ImageButton;

.field private mNotSupported:Z

.field private mOldBufferingGauge:I

.field private mOldBufferingStatus:I

.field private mOldPosition:I

.field private final mPalmTouchReceiver:Landroid/content/BroadcastReceiver;

.field private mPause:Landroid/widget/ImageButton;

.field private mPaused:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPlayListButtonView:Landroid/view/ViewGroup;

.field private mPowerManager:Landroid/os/PowerManager;

.field mPrevOccurence:Z

.field private mPrevious:Landroid/widget/ImageButton;

.field private mScreenLock:Landroid/widget/ImageView;

.field private mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mStop:Landroid/widget/ImageButton;

.field private mStopClicked:Z

.field private mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

.field private mSubTitleView:Landroid/widget/TextView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTimezoneChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

.field private mViewHolder:Landroid/widget/LinearLayout;

.field private mViewInflated:Z

.field private mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field private mVolumeButton:Landroid/widget/ImageView;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mimeType:Ljava/lang/String;

.field private mplayerThread:Ljava/lang/Thread;

.field musicPlayerToast:Landroid/widget/Toast;

.field private mutex:Ljava/lang/Object;

.field final onChangeRunnable:Ljava/lang/Runnable;

.field private selectedItemUri:Ljava/lang/String;

.field private showThePopup:Z

.field private toRestart:Z

.field tvoutService:Landroid/os/ITvoutService;

.field private type:Ljava/lang/String;

.field private videoResize:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 347
    const/4 v0, -0x1

    sput v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->fitToSCR:I

    .line 2958
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;-><init>()V

    .line 116
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->TAG:Ljava/lang/String;

    .line 117
    const-string v0, "DMPVideoActivity."

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->CLASS_NAME:Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mutex:Ljava/lang/Object;

    .line 229
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->toRestart:Z

    .line 233
    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mViewHolder:Landroid/widget/LinearLayout;

    .line 245
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mForceStopped:Z

    .line 273
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->showThePopup:Z

    .line 309
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->isShowVolume:Z

    .line 317
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryChargingStatus:Z

    .line 319
    iput v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryLevel:I

    .line 321
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->is51channelOn:Z

    .line 323
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHeadsetPlugged:Z

    .line 325
    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->musicPlayerToast:Landroid/widget/Toast;

    .line 327
    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->HighBitrateWarningToast:Landroid/widget/Toast;

    .line 329
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mViewInflated:Z

    .line 332
    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    .line 334
    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubTitleView:Landroid/widget/TextView;

    .line 344
    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    .line 348
    const/16 v0, -0x64

    iput v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mFitToScrID:I

    .line 350
    iput v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyTimer:I

    .line 352
    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyToast:Landroid/widget/Toast;

    .line 354
    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMenu:Landroid/view/Menu;

    .line 356
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$1;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    .line 1733
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$16;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$16;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->onChangeRunnable:Ljava/lang/Runnable;

    .line 1814
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$17;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$17;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 2291
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$30;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$30;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 2462
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$31;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$31;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPalmTouchReceiver:Landroid/content/BroadcastReceiver;

    .line 2484
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$32;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$32;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 2490
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$33;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$33;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mTimezoneChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 2500
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$34;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$34;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 2525
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$35;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$35;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 2544
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$36;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$36;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    .line 2959
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->MREVENT_FLIP_TOP_TO_BOTTOM:I

    .line 2961
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$37;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$37;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 3001
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHDMIPlugged:Z

    .line 3003
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$38;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$38;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHdmiReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->initializeUIForLandscape()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->constructUI()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/dmp/layout/DMPVideoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mOldBufferingStatus:I

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mOldBufferingStatus:I

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/dmp/layout/DMPVideoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingStatus:I

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingStatus:I

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->selectedItemUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->videoResize:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->playAnimation()V

    return-void
.end method

.method static synthetic access$202(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mViewInflated:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleButtonState(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleSeekBarState(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPlayListButtonView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->isShowVolume:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->isShowVolume:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mForceStopped:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mForceStopped:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->currItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/dmp/layout/DMPVideoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/dmp/layout/DMPVideoActivity;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getTimeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mStopClicked:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mStopClicked:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->isSuspended:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->isSuspended:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->showThePopup:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->showThePopup:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->startSubtitle()V

    return-void
.end method

.method static synthetic access$3500(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->stopSubtitle()V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/dmp/layout/DMPVideoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyTimer:I

    return v0
.end method

.method static synthetic access$3602(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyTimer:I

    return p1
.end method

.method static synthetic access$3700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/samsung/dmp/layout/DMPVideoActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->removeSubtitle()V

    return-void
.end method

.method static synthetic access$3900(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->releaseMediaplayer()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaDuration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/dmp/layout/DMPVideoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mFitToScrID:I

    return v0
.end method

.method static synthetic access$4002(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mFitToScrID:I

    return p1
.end method

.method static synthetic access$4100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControlsHidden:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControlsHidden:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->is51channelOn:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->is51channelOn:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mButtonSRS:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNotSupported:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/samsung/dmp/layout/DMPVideoActivity;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isSupportedType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mDRMFlag:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isDRMFile(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isBitRateSupported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/samsung/dmp/layout/DMPVideoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsRealDrmError:I

    return v0
.end method

.method static synthetic access$5200(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mScreenLock:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControls:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessageOnScreen:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->spawnSubtitle()V

    return-void
.end method

.method static synthetic access$5900(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->isDestroying:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/dmp/layout/DMPVideoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->currentPosition:I

    return v0
.end method

.method static synthetic access$6000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->currentPosition:I

    return p1
.end method

.method static synthetic access$6100(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsVolumeBubbleRunable:Z

    return v0
.end method

.method static synthetic access$6102(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsVolumeBubbleRunable:Z

    return p1
.end method

.method static synthetic access$6200(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->wifiDisconnected()V

    return-void
.end method

.method static synthetic access$6300(Lcom/samsung/dmp/layout/DMPVideoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->forceStop()V

    return-void
.end method

.method static synthetic access$6400(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsPalmAvailable:Z

    return v0
.end method

.method static synthetic access$6402(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsPalmAvailable:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/samsung/dmp/layout/DMPVideoActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/samsung/dmp/layout/DMPVideoActivity;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/samsung/dmp/layout/DMPVideoActivity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$6700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mAudioShockToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCurrentDuration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/samsung/dmp/layout/DMPVideoActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/samsung/dmp/layout/DMPVideoActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHDMIPlugged:Z

    return v0
.end method

.method static synthetic access$7302(Lcom/samsung/dmp/layout/DMPVideoActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHDMIPlugged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/dmp/layout/DMPVideoActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/dmp/layout/DMPVideoActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mOldPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/dmp/layout/DMPVideoActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mOldPosition:I

    return p1
.end method

.method private constructUI()V
    .registers 10

    .prologue
    const/16 v8, 0x457

    const/4 v7, -0x1

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1018
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mTimezoneChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1019
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1020
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.dlna.player_started"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1021
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1023
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1024
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v5}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setBufferingOn(Z)V

    .line 1026
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNotSupported:Z

    .line 1027
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->isDestroying:Z

    .line 1028
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessageOnScreen:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1031
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->updateClock()V

    .line 1032
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControls:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPlayListButtonView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1034
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControlsHidden:Z

    .line 1035
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1037
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    iget-boolean v0, v0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mIsR2VS:Z

    if-eqz v0, :cond_197

    .line 1038
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->is51channelOn:Z

    .line 1039
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v5}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setR2VSMode(Z)V

    .line 1040
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mButtonSRS:Landroid/widget/ImageButton;

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1047
    :goto_7e
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->toRestart:Z

    if-eqz v0, :cond_2c1

    .line 1048
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_1a8

    .line 1049
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->selectedItemUri:Ljava/lang/String;

    .line 1051
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaNameStr:Ljava/lang/String;

    .line 1053
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getContentTypeStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->type:Ljava/lang/String;

    .line 1055
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;

    .line 1057
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentResource;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mimeType:Ljava/lang/String;

    .line 1076
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaNameStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11d

    .line 1077
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaNameStr:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->shortenName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    :cond_11d
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 1080
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRM()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mDRMFlag:Z

    .line 1083
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->selectedItemUri:Ljava/lang/String;

    if-eqz v1, :cond_187

    .line 1084
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->resetSeekFlag()V

    .line 1086
    const-string v1, "DLNA"

    const-string v2, "*****NOT DRM********"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->isLastFileInPlaylist()Z

    move-result v1

    if-nez v1, :cond_2bc

    .line 1088
    iget-boolean v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mForceStopped:Z

    if-eqz v1, :cond_241

    .line 1089
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x76c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1090
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x772

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1091
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mimeType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isSupportedType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ee

    iget-boolean v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mDRMFlag:Z

    invoke-direct {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isDRMFile(Z)I

    move-result v1

    if-nez v1, :cond_1ee

    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isBitRateSupported()Z

    move-result v1

    if-eqz v1, :cond_1ee

    .line 1093
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->selectedItemUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1145
    :cond_187
    :goto_187
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setFocusable(Z)V

    .line 1146
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setFocusableInTouchMode(Z)V

    .line 1148
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v5}, Lcom/samsung/dmp/layout/DMPVideoActivity;->requestSystemKeyEvent(IZ)Z

    .line 1149
    :goto_196
    return-void

    .line 1042
    :cond_197
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->is51channelOn:Z

    .line 1043
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v4}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setR2VSMode(Z)V

    .line 1044
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mButtonSRS:Landroid/widget/ImageButton;

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_7e

    .line 1062
    :cond_1a8
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1063
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->stop()V

    .line 1064
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1065
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCurrentDuration:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaDuration:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1068
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaNameStr:Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaNameStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1071
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessageOnScreen:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1072
    const-string v0, "DLNA"

    const-string v1, "==== File is alredy deleted. Don\'t try to play. =="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const/16 v0, 0x5dd

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->showDialog(I)V

    goto :goto_196

    .line 1096
    :cond_1ee
    iget v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsRealDrmError:I

    if-eq v1, v7, :cond_23a

    .line 1097
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDRM(Z)V

    .line 1098
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4 DRM setted TRUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRM()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const-string v0, "DLNA"

    const-string v1, "*****DRM file********"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleStop()V

    .line 1102
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNotSupported:Z

    .line 1103
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1104
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x771

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1105
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->showDialog(I)V

    goto/16 :goto_187

    .line 1107
    :cond_23a
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_187

    .line 1111
    :cond_241
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mimeType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isSupportedType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_269

    iget-boolean v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mDRMFlag:Z

    invoke-direct {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isDRMFile(Z)I

    move-result v1

    if-nez v1, :cond_269

    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isBitRateSupported()Z

    move-result v1

    if-eqz v1, :cond_269

    .line 1113
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->selectedItemUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x471

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_187

    .line 1118
    :cond_269
    iget v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsRealDrmError:I

    if-eq v1, v7, :cond_2b5

    .line 1119
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDRM(Z)V

    .line 1120
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5 DRM setted TRUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRM()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const-string v0, "DLNA"

    const-string v1, "*****DRM file********"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleStop()V

    .line 1124
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNotSupported:Z

    .line 1125
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1126
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x771

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1127
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->showDialog(I)V

    goto/16 :goto_187

    .line 1129
    :cond_2b5
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_187

    .line 1134
    :cond_2bc
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleStop()V

    goto/16 :goto_187

    .line 1138
    :cond_2c1
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->selectedItemUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->toRestart:Z

    .line 1140
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->start()V

    .line 1141
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z

    .line 1142
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->onChange()V

    goto/16 :goto_187
.end method

.method private forceStop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1619
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->isDestroying:Z

    .line 1620
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->stopSubtitle()V

    .line 1621
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1622
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1623
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x473

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1624
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1625
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->currItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 1626
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    if-eqz v0, :cond_5a

    .line 1627
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v3}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setBufferingOn(Z)V

    .line 1628
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v3}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setInitializationNeeded(Z)V

    .line 1629
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z

    if-eqz v0, :cond_5a

    .line 1630
    :cond_4b
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCurrentPosition:I

    .line 1631
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->stop()V

    .line 1632
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mForceStopped:Z

    .line 1635
    :cond_5a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mplayerThread:Ljava/lang/Thread;

    .line 1636
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z

    .line 1637
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1638
    return-void
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .registers 10

    .prologue
    const v8, 0xef01

    const v7, 0xef00

    const/4 v1, 0x0

    .line 1957
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 1960
    if-eqz v0, :cond_53

    .line 1961
    const v0, 0x7f090076

    .line 1969
    :goto_14
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1971
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 1972
    const/4 v4, -0x1

    move v0, v1

    move v2, v1

    .line 1975
    :goto_27
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_d1

    .line 1976
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1978
    const/16 v6, 0x27

    if-ne v5, v6, :cond_38

    .line 1979
    if-nez v2, :cond_57

    const/4 v2, 0x1

    .line 1981
    :cond_38
    :goto_38
    if-nez v2, :cond_59

    const/16 v6, 0x61

    if-ne v5, v6, :cond_59

    move v2, v0

    .line 1986
    :goto_3f
    if-ltz v2, :cond_cf

    move v0, v2

    .line 1990
    :goto_42
    if-lez v0, :cond_5c

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1991
    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    .line 1963
    :cond_53
    const v0, 0x7f090077

    goto :goto_14

    :cond_57
    move v2, v1

    .line 1979
    goto :goto_38

    .line 1975
    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1993
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1996
    :goto_8d
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 1997
    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mClockFormatString:Ljava/lang/String;

    move-object v0, v1

    .line 2001
    :goto_97
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2002
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 2003
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2005
    if-ltz v2, :cond_cd

    if-le v3, v2, :cond_cd

    .line 2006
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2007
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f333333

    invoke-direct {v1, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v4, 0x22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2009
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 2010
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 2013
    :goto_c9
    return-object v0

    .line 1999
    :cond_ca
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mClockFormat:Ljava/text/SimpleDateFormat;

    goto :goto_97

    :cond_cd
    move-object v0, v1

    .line 2013
    goto :goto_c9

    :cond_cf
    move-object v0, v3

    goto :goto_8d

    :cond_d1
    move v2, v4

    goto/16 :goto_3f
.end method

.method private getSubTitleFileName()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2790
    const-string v2, "DLNA"

    const-string v3, "Entering get title name"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v2

    .line 2794
    const-string v3, "DMPVideoSubtitle"

    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 2795
    new-instance v4, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v4, v2}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 2796
    const-string v2, "getCaptionInfo.sec"

    const-string v5, "1"

    invoke-virtual {v4, v2, v5}, Lorg/apache/http/client/methods/HttpHead;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    const-string v2, "getcontentFeatures.dlna.org"

    const-string v5, "1"

    invoke-virtual {v4, v2, v5}, Lorg/apache/http/client/methods/HttpHead;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2800
    :try_start_3a
    invoke-virtual {v3, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 2801
    if-eqz v2, :cond_5e

    .line 2802
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    .line 2803
    array-length v5, v4
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_45} :catch_68

    move v2, v0

    move-object v0, v1

    :goto_47
    if-ge v2, v5, :cond_5f

    :try_start_49
    aget-object v6, v4, v2

    .line 2804
    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CaptionInfo.sec"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 2805
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_5a} :catch_197

    move-result-object v0

    .line 2803
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_5e
    move-object v0, v1

    :cond_5f
    move-object v2, v3

    .line 2815
    :goto_60
    if-nez v0, :cond_73

    .line 2816
    if-eqz v2, :cond_67

    .line 2817
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2871
    :cond_67
    :goto_67
    return-object v1

    .line 2809
    :catch_68
    move-exception v0

    move-object v2, v1

    .line 2810
    :goto_6a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2811
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    move-object v0, v2

    move-object v2, v1

    .line 2812
    goto :goto_60

    .line 2822
    :cond_73
    const/4 v3, 0x0

    .line 2824
    const/4 v4, 0x0

    .line 2825
    const/4 v5, 0x0

    .line 2827
    :try_start_76
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_124
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7b} :catch_de
    .catch Ljava/net/URISyntaxException; {:try_start_76 .. :try_end_7b} :catch_105

    .line 2828
    if-nez v6, :cond_97

    .line 2859
    if-eqz v1, :cond_82

    .line 2860
    :try_start_7f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_162

    .line 2861
    :cond_82
    if-eqz v1, :cond_87

    .line 2862
    :try_start_84
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_165

    .line 2863
    :cond_87
    if-eqz v2, :cond_8c

    .line 2864
    :try_start_89
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_168

    .line 2865
    :cond_8c
    if-eqz v1, :cond_67

    .line 2866
    :try_start_8e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_67

    .line 2867
    :catch_92
    move-exception v0

    .line 2868
    :goto_93
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 2830
    :cond_97
    if-nez v2, :cond_19d

    .line 2831
    :try_start_99
    const-string v0, "DMPVideoSubtitle"

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_124
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9e} :catch_de
    .catch Ljava/net/URISyntaxException; {:try_start_99 .. :try_end_9e} :catch_105

    move-result-object v5

    .line 2833
    :goto_9f
    :try_start_9f
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v6}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 2834
    invoke-virtual {v5, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 2835
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_af
    .catchall {:try_start_9f .. :try_end_af} :catchall_16d
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_af} :catch_185
    .catch Ljava/net/URISyntaxException; {:try_start_9f .. :try_end_af} :catch_179

    move-result-object v3

    .line 2836
    :try_start_b0
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_171
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_18b
    .catch Ljava/net/URISyntaxException; {:try_start_b0 .. :try_end_b3} :catch_17d

    move-result-object v2

    .line 2838
    :try_start_b4
    new-instance v0, Ljava/io/File;

    const-string v4, "/sdcard/smitemp.smi"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 2840
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2842
    :cond_c4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c9
    .catchall {:try_start_b4 .. :try_end_c9} :catchall_174
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_c9} :catch_190
    .catch Ljava/net/URISyntaxException; {:try_start_b4 .. :try_end_c9} :catch_180

    .line 2843
    const v0, 0x258000

    :try_start_cc
    new-array v6, v0, [B

    .line 2844
    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 2846
    :goto_d2
    const/4 v7, -0x1

    if-eq v0, v7, :cond_147

    .line 2847
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2848
    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I
    :try_end_dc
    .catchall {:try_start_cc .. :try_end_dc} :catchall_176
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_dc} :catch_194
    .catch Ljava/net/URISyntaxException; {:try_start_cc .. :try_end_dc} :catch_182

    move-result v0

    goto :goto_d2

    .line 2851
    :catch_de
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v2

    move-object v2, v1

    .line 2852
    :goto_e3
    :try_start_e3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "read from input smi - EXCEPTION"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2853
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ed
    .catchall {:try_start_e3 .. :try_end_ed} :catchall_176

    .line 2859
    if-eqz v4, :cond_f2

    .line 2860
    :try_start_ef
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 2861
    :cond_f2
    if-eqz v3, :cond_f7

    .line 2862
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 2863
    :cond_f7
    if-eqz v5, :cond_fc

    .line 2864
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2865
    :cond_fc
    if-eqz v2, :cond_67

    .line 2866
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_101} :catch_103

    goto/16 :goto_67

    .line 2867
    :catch_103
    move-exception v0

    goto :goto_93

    .line 2855
    :catch_105
    move-exception v0

    move-object v3, v1

    move-object v5, v2

    move-object v2, v1

    .line 2856
    :goto_109
    :try_start_109
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_174

    .line 2859
    if-eqz v1, :cond_111

    .line 2860
    :try_start_10e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2861
    :cond_111
    if-eqz v3, :cond_116

    .line 2862
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 2863
    :cond_116
    if-eqz v5, :cond_11b

    .line 2864
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2865
    :cond_11b
    if-eqz v2, :cond_120

    .line 2866
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_120} :catch_16b

    .line 2871
    :cond_120
    :goto_120
    const-string v1, "/sdcard/smitemp.smi"

    goto/16 :goto_67

    .line 2858
    :catchall_124
    move-exception v0

    move-object v3, v1

    move-object v5, v2

    move-object v2, v1

    .line 2859
    :goto_128
    if-eqz v1, :cond_12d

    .line 2860
    :try_start_12a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2861
    :cond_12d
    if-eqz v3, :cond_132

    .line 2862
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 2863
    :cond_132
    if-eqz v5, :cond_137

    .line 2864
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2865
    :cond_137
    if-eqz v2, :cond_13c

    .line 2866
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_13c} :catch_13d

    .line 2858
    :cond_13c
    :goto_13c
    throw v0

    .line 2867
    :catch_13d
    move-exception v1

    .line 2868
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13c

    .line 2867
    :catch_142
    move-exception v0

    .line 2868
    :goto_143
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_120

    .line 2859
    :cond_147
    if-eqz v4, :cond_14c

    .line 2860
    :try_start_149
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14c} :catch_142

    .line 2861
    :cond_14c
    if-eqz v3, :cond_151

    .line 2862
    :try_start_14e
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_151} :catch_15e

    .line 2863
    :cond_151
    if-eqz v5, :cond_156

    .line 2864
    :try_start_153
    invoke-virtual {v5}, Landroid/net/http/AndroidHttpClient;->close()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_160

    .line 2865
    :cond_156
    if-eqz v2, :cond_120

    .line 2866
    :try_start_158
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_15b} :catch_15c

    goto :goto_120

    .line 2867
    :catch_15c
    move-exception v0

    goto :goto_143

    :catch_15e
    move-exception v0

    goto :goto_143

    :catch_160
    move-exception v0

    goto :goto_143

    :catch_162
    move-exception v0

    goto/16 :goto_93

    :catch_165
    move-exception v0

    goto/16 :goto_93

    :catch_168
    move-exception v0

    goto/16 :goto_93

    :catch_16b
    move-exception v0

    goto :goto_143

    .line 2858
    :catchall_16d
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_128

    :catchall_171
    move-exception v0

    move-object v2, v1

    goto :goto_128

    :catchall_174
    move-exception v0

    goto :goto_128

    :catchall_176
    move-exception v0

    move-object v1, v4

    goto :goto_128

    .line 2855
    :catch_179
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_109

    :catch_17d
    move-exception v0

    move-object v2, v1

    goto :goto_109

    :catch_180
    move-exception v0

    goto :goto_109

    :catch_182
    move-exception v0

    move-object v1, v4

    goto :goto_109

    .line 2851
    :catch_185
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_e3

    :catch_18b
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    goto/16 :goto_e3

    :catch_190
    move-exception v0

    move-object v4, v1

    goto/16 :goto_e3

    :catch_194
    move-exception v0

    goto/16 :goto_e3

    .line 2809
    :catch_197
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto/16 :goto_6a

    :cond_19d
    move-object v5, v2

    goto/16 :goto_9f
.end method

.method private getTimeString(I)Ljava/lang/String;
    .registers 11
    .parameter "millisecond"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 657
    if-lez p1, :cond_4d

    .line 660
    if-nez p1, :cond_21

    .line 661
    const/4 v2, 0x0

    .line 662
    .local v2, sec:I
    const/4 v1, 0x0

    .line 663
    .local v1, min:I
    const/4 v0, 0x0

    .line 677
    .local v0, hr:I
    :goto_a
    if-nez v0, :cond_31

    .line 678
    const-string v3, "%02d:%02d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 683
    .end local v0           #hr:I
    .end local v1           #min:I
    .end local v2           #sec:I
    :goto_20
    return-object v3

    .line 665
    :cond_21
    div-int/lit16 v2, p1, 0x3e8

    .line 666
    .restart local v2       #sec:I
    if-nez v2, :cond_2e

    .line 667
    const/4 v1, 0x0

    .line 668
    .restart local v1       #min:I
    const/4 v0, 0x0

    .line 672
    :goto_27
    rem-int/lit8 v2, v2, 0x3c

    .line 673
    div-int/lit8 v0, v1, 0x3c

    .line 674
    .restart local v0       #hr:I
    rem-int/lit8 v1, v1, 0x3c

    goto :goto_a

    .line 670
    .end local v0           #hr:I
    .end local v1           #min:I
    :cond_2e
    div-int/lit8 v1, v2, 0x3c

    .restart local v1       #min:I
    goto :goto_27

    .line 680
    .restart local v0       #hr:I
    :cond_31
    const-string v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_20

    .line 683
    .end local v0           #hr:I
    .end local v1           #min:I
    .end local v2           #sec:I
    :cond_4d
    const-string v3, "00:00"

    goto :goto_20
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 2439
    const-string v0, "status"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2441
    const-string v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2442
    const-string v2, "level"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2444
    const-string v3, "DLNA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleBatteryChanged : Level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    packed-switch v0, :pswitch_data_54

    .line 2454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryChargingStatus:Z

    .line 2455
    mul-int/lit8 v0, v2, 0x64

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryLevel:I

    .line 2459
    :goto_4c
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->updateBatteryImg()V

    .line 2460
    return-void

    .line 2450
    :pswitch_50
    iput-boolean v6, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryChargingStatus:Z

    goto :goto_4c

    .line 2447
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_50
        :pswitch_50
    .end packed-switch
.end method

.method private initializeUIForLandscape()V
    .registers 7

    .prologue
    const/16 v1, 0x400

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 737
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 741
    const v0, 0x7f070043

    :try_start_f
    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 742
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_245

    .line 747
    :goto_18
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControls:Landroid/view/ViewGroup;

    .line 748
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mStop:Landroid/widget/ImageButton;

    .line 749
    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;

    .line 750
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPrevious:Landroid/widget/ImageButton;

    .line 751
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNext:Landroid/widget/ImageButton;

    .line 752
    const v0, 0x7f070051

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mButtonSRS:Landroid/widget/ImageButton;

    .line 753
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->videoResize:Landroid/widget/ImageView;

    .line 754
    const v0, 0x7f07004f

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaDuration:Landroid/widget/TextView;

    .line 755
    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCurrentDuration:Landroid/widget/TextView;

    .line 756
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaName:Landroid/widget/TextView;

    .line 757
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPlayListButtonView:Landroid/view/ViewGroup;

    .line 758
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 759
    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryIcon:Landroid/widget/ImageView;

    .line 760
    const v0, 0x7f070053

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeButton:Landroid/widget/ImageView;

    .line 761
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingView:Landroid/widget/ProgressBar;

    .line 762
    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessage:Landroid/widget/TextView;

    .line 763
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessageOnScreen:Landroid/widget/TextView;

    .line 764
    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mScreenLock:Landroid/widget/ImageView;

    .line 766
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 767
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 768
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 770
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontEnable(Z)V

    .line 771
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v1, 0x2050095

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontColor(I)V

    .line 772
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 773
    iput-boolean v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->isShowVolume:Z

    .line 775
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->videoResize:Landroid/widget/ImageView;

    if-eqz v0, :cond_154

    .line 776
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->videoResize:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 777
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->videoResize:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 778
    sget v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->fitToSCR:I

    if-ltz v0, :cond_135

    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mFitToScrID:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_13c

    .line 779
    :cond_135
    const v0, 0x7f020125

    iput v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mFitToScrID:I

    .line 780
    sput v4, Lcom/samsung/dmp/layout/DMPVideoActivity;->fitToSCR:I

    .line 783
    :cond_13c
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->videoResize:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mFitToScrID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 784
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->videoResize:Landroid/widget/ImageView;

    iget v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mFitToScrID:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 786
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->videoResize:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$2;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    :cond_154
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-nez v0, :cond_220

    .line 816
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontSize(I)V

    .line 827
    :goto_163
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 829
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_17b

    .line 830
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeButton:Landroid/widget/ImageView;

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 832
    :cond_17b
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->updateBatteryImg()V

    .line 834
    const v0, 0x7f070054

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubTitleView:Landroid/widget/TextView;

    .line 836
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mViewHolder:Landroid/widget/LinearLayout;

    .line 837
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mViewHolder:Landroid/widget/LinearLayout;

    const/high16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1aa

    .line 838
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mViewHolder:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    :cond_1aa
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControls:Landroid/view/ViewGroup;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$3;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 849
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mStop:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$4;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPrevious:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$5;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 869
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNext:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$6;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mButtonSRS:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$7;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 906
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 907
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$8;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 927
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$9;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$9;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 956
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, p0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setOnChangeListener(Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;)V

    .line 958
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$10;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$10;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 997
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$11;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$11;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1013
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1014
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mViewInflated:Z

    .line 1015
    return-void

    .line 818
    :cond_220
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-ne v0, v4, :cond_23c

    .line 819
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 821
    const/16 v1, 0x6e

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 822
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 824
    :cond_23c
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontSize(I)V

    goto/16 :goto_163

    .line 743
    :catch_245
    move-exception v0

    goto/16 :goto_18
.end method

.method private isBitRateSupported()Z
    .registers 14

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v11, 0x4000

    const/4 v0, 0x1

    .line 2368
    :try_start_4
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    .line 2370
    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v3

    .line 2371
    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResourceDuration()Ljava/lang/String;

    move-result-object v4

    .line 2372
    if-eqz v3, :cond_26

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    :cond_26
    const-string v3, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    if-eqz v4, :cond_38

    const-string v3, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2374
    :cond_38
    const-string v2, "DLNA"

    const-string v3, " this file size is zero==0"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2409
    :cond_40
    :goto_40
    return v0

    .line 2376
    :cond_41
    if-eqz v4, :cond_40

    const-string v3, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 2377
    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 2378
    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResourceDuration()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(Ljava/lang/String;)I

    move-result v2

    int-to-double v5, v2

    .line 2379
    const-wide/16 v7, 0x0

    cmpl-double v2, v5, v7

    if-eqz v2, :cond_40

    .line 2382
    const-wide/high16 v7, 0x4090

    const-wide/high16 v9, 0x4000

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double v2, v3, v7

    .line 2383
    div-double/2addr v2, v5

    const-wide/high16 v4, 0x4020

    mul-double/2addr v2, v4

    .line 2384
    const-string v4, "DLNA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==== This file bitrate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    const-wide/high16 v4, 0x4027

    cmpg-double v4, v2, v4

    if-gez v4, :cond_cb

    .line 2386
    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v4}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isLowLevelDMP()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2390
    const-string v4, "video/avi"

    iget-object v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c4

    const-string v4, "video/x-ms-avi"

    iget-object v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c4

    const-string v4, "video/x-msvideo"

    iget-object v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c4

    const-string v4, "video/x-divx"

    iget-object v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    :cond_c4
    cmpl-double v2, v2, v11

    if-lez v2, :cond_40

    move v0, v1

    .line 2393
    goto/16 :goto_40

    .line 2399
    :cond_cb
    const-string v1, "DLNA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==== This file is High-BitRate :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x458

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f0} :catch_f2

    goto/16 :goto_40

    .line 2407
    :catch_f2
    move-exception v1

    .line 2408
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_40
.end method

.method private isDRMFile(Z)I
    .registers 6
    .parameter "flag"

    .prologue
    .line 2065
    new-instance v0, Lcom/samsung/dmp/layout/DmpDrmUtil;

    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/dmp/layout/DmpDrmUtil;-><init>(Landroid/content/Context;)V

    .line 2066
    .local v0, dmpDrmUtil:Lcom/samsung/dmp/layout/DmpDrmUtil;
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->selectedItemUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsRealDrmError:I

    .line 2067
    iget v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsRealDrmError:I

    return v1
.end method

.method private isSupportedType(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2072
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==== Playing file (MIME TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    if-eqz p1, :cond_29

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2093
    :cond_29
    :goto_29
    return v0

    .line 2076
    :cond_2a
    const-string v1, "audio/mpeg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "audio/x-ms-wma"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "audio/x-MS-wma"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "audio/mp4"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "audio/aac"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "audio/x-acc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "audio/vnd.dlna.adts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "audio/amr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "audio/3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "audio/L16"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "audio/x-wav"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "image/jpeg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "image/png"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "image/bmp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "image/x-MS-bmp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "image/x-ms-bmp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "video/mp4"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "video/MP4V-ES"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "video/x-msvideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "video/divx"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "video/x-divx"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "video/avi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "video/x-ms-avi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "video/3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    const-string v1, "video/x-ms-wmv"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 2090
    :cond_f2
    const/4 v0, 0x1

    goto/16 :goto_29

    .line 2092
    :cond_f5
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==== Not support (MIME TYPE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29
.end method

.method private playAnimation()V
    .registers 3

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1539
    const v0, 0x7f040001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1541
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControls:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControlsHidden:Z

    .line 1543
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControls:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1544
    return-void
.end method

.method private registerTelephonyListener()V
    .registers 6

    .prologue
    .line 2307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2309
    .local v0, id:J
    :try_start_4
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 2311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2313
    return-void

    .line 2311
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private releaseMediaplayer()V
    .registers 3

    .prologue
    .line 1678
    const-string v0, "DLNA"

    const-string v1, "DMPVideoActivity.releaseMediaplayer()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    if-eqz v0, :cond_18

    .line 1681
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$15;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1691
    :cond_18
    const-wide/16 v0, 0x32

    :try_start_1a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_27

    .line 1696
    :goto_1d
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mViewHolder:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_26

    .line 1697
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mViewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 1698
    :cond_26
    return-void

    .line 1692
    :catch_27
    move-exception v0

    .line 1693
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1d
.end method

.method private removeSubtitle()V
    .registers 3

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    if-eqz v0, :cond_17

    .line 2783
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->finished:Z

    .line 2784
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitleProcesser:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->access$5800(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    .line 2787
    :cond_17
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1361
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1365
    :try_start_a
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_13

    move-result v0

    .line 1370
    :goto_12
    return v0

    .line 1366
    :catch_13
    move-exception v0

    .line 1367
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1370
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private spawnSubtitle()V
    .registers 9

    .prologue
    const/16 v7, 0x2711

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2693
    const-string v0, ""

    .line 2694
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getSubTitleFileName()Ljava/lang/String;

    move-result-object v0

    .line 2695
    if-eqz v0, :cond_9f

    .line 2696
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2697
    new-instance v2, Lcom/samsung/dmp/layout/SAMIReader;

    invoke-direct {v2, v0}, Lcom/samsung/dmp/layout/SAMIReader;-><init>(Ljava/lang/String;)V

    .line 2699
    if-eqz v2, :cond_84

    iget-object v3, v2, Lcom/samsung/dmp/layout/SAMIReader;->mSAMIFileName:Ljava/lang/String;

    const-string v4, "NO_FILE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_84

    const-string v3, "subtitles"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 2701
    const-string v1, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spawnSubtitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2739
    :goto_4b
    return-void

    .line 2706
    :cond_4c
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    if-eqz v0, :cond_66

    .line 2707
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    iput-boolean v5, v0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->finished:Z

    .line 2708
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitleProcesser:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->access$5800(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2711
    :try_start_5f
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->join()V
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_64} :catch_7f

    .line 2716
    :goto_64
    iput-object v6, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    .line 2718
    :cond_66
    new-instance v0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    invoke-direct {v0, p0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;Lcom/samsung/dmp/layout/SAMIReader;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    .line 2719
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->finished:Z

    .line 2720
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->start()V

    .line 2721
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4b

    .line 2712
    :catch_7f
    move-exception v0

    .line 2713
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_64

    .line 2723
    :cond_84
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    if-eqz v0, :cond_99

    .line 2724
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    iput-boolean v5, v0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->finished:Z

    .line 2725
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitleProcesser:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->access$5800(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2726
    iput-object v6, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    .line 2728
    :cond_99
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4b

    .line 2731
    :cond_9f
    const-string v0, "DLNA"

    const-string v1, "don\'t get the Subtitlefilename"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    if-eqz v0, :cond_bb

    .line 2733
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    iput-boolean v5, v0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->finished:Z

    .line 2734
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitleProcesser:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->access$5800(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2735
    iput-object v6, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    .line 2737
    :cond_bb
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4b
.end method

.method private startSubtitle()V
    .registers 3

    .prologue
    .line 2742
    const-string v0, "DLNA"

    const-string v1, "startSubtitle()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 2745
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2746
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubTitleView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2749
    :cond_18
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHDMIPlugged:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 2750
    const-string v0, ""

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvOutPostHDMISubtitle(Ljava/lang/String;I)V

    .line 2753
    :try_start_28
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    iget-boolean v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHDMIPlugged:Z

    invoke-interface {v0, v1}, Landroid/os/ITvoutService;->TvoutSetSubtitleStatus(Z)Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_30

    .line 2760
    :cond_2f
    :goto_2f
    return-void

    .line 2754
    :catch_30
    move-exception v0

    .line 2755
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2f
.end method

.method private stopSubtitle()V
    .registers 3

    .prologue
    .line 2763
    const-string v0, "DLNA"

    const-string v1, "DMPVideoActivity.stopSubtitle()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 2766
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubTitleView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2767
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubTitleView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2770
    :cond_18
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHDMIPlugged:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 2771
    const-string v0, ""

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvOutPostHDMISubtitle(Ljava/lang/String;I)V

    .line 2774
    :try_start_28
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/ITvoutService;->TvoutSetSubtitleStatus(Z)Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_2f

    .line 2779
    :cond_2e
    :goto_2e
    return-void

    .line 2775
    :catch_2f
    move-exception v0

    .line 2776
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2e
.end method

.method private toggleButtonState(Z)V
    .registers 5
    .parameter

    .prologue
    .line 2018
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMPVideoActivity.toggleButtonState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    if-nez p1, :cond_33

    .line 2021
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNext:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 2022
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mStop:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 2023
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 2024
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPrevious:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 2025
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 2028
    :cond_33
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNext:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2029
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mStop:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2030
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2031
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPrevious:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2032
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2034
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z

    if-nez v0, :cond_85

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z

    if-nez v0, :cond_85

    .line 2035
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->videoResize:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2041
    :goto_5a
    if-eqz p1, :cond_9c

    .line 2042
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNext:Landroid/widget/ImageButton;

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2043
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mStop:Landroid/widget/ImageButton;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2044
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z

    if-nez v0, :cond_93

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z

    if-nez v0, :cond_93

    .line 2045
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2048
    :goto_7c
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPrevious:Landroid/widget/ImageButton;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2058
    :goto_84
    return-void

    .line 2037
    :cond_85
    const-string v0, "DLNA"

    const-string v1, "DMPVideoActivity.mPaused is true"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->videoResize:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_5a

    .line 2047
    :cond_93
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_7c

    .line 2050
    :cond_9c
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNext:Landroid/widget/ImageButton;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2051
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mStop:Landroid/widget/ImageButton;

    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2052
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z

    if-nez v0, :cond_c5

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z

    if-nez v0, :cond_c5

    .line 2053
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;

    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 2056
    :goto_bc
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPrevious:Landroid/widget/ImageButton;

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_84

    .line 2055
    :cond_c5
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_bc
.end method

.method private toggleLock(Z)V
    .registers 6
    .parameter "lock"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1721
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPlayListButtonView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_13

    .line 1722
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ef

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1724
    :cond_13
    if-nez p1, :cond_33

    move v0, v1

    :goto_16
    invoke-direct {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleButtonState(Z)V

    .line 1725
    if-nez p1, :cond_35

    move v0, v1

    :goto_1c
    invoke-direct {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleSeekBarState(Z)V

    .line 1727
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    if-nez p1, :cond_37

    move v0, v1

    :goto_24
    invoke-virtual {v3, v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setClickable(Z)V

    .line 1728
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    if-nez p1, :cond_39

    :goto_2b
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    .line 1730
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->requestSystemKeyEvent(IZ)Z

    .line 1731
    return-void

    :cond_33
    move v0, v2

    .line 1724
    goto :goto_16

    :cond_35
    move v0, v2

    .line 1725
    goto :goto_1c

    :cond_37
    move v0, v2

    .line 1727
    goto :goto_24

    :cond_39
    move v1, v2

    .line 1728
    goto :goto_2b
.end method

.method private toggleSeekBarState(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setEnabled(Z)V

    .line 2062
    return-void
.end method

.method private unRegisterTelephonyListener()V
    .registers 6

    .prologue
    .line 2316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2318
    .local v0, id:J
    :try_start_4
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 2320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2322
    return-void

    .line 2320
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private updateBatteryImg()V
    .registers 7

    .prologue
    const/16 v5, 0x40

    const/16 v4, 0x31

    const/16 v3, 0x22

    const/16 v2, 0x13

    const/4 v1, 0x4

    .line 2415
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryChargingStatus:Z

    if-eqz v0, :cond_16

    .line 2416
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2436
    :goto_15
    return-void

    .line 2418
    :cond_16
    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryLevel:I

    .line 2420
    if-gt v0, v1, :cond_23

    .line 2421
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15

    .line 2422
    :cond_23
    if-le v0, v1, :cond_30

    if-gt v0, v2, :cond_30

    .line 2423
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15

    .line 2424
    :cond_30
    if-le v0, v2, :cond_3d

    if-gt v0, v3, :cond_3d

    .line 2425
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15

    .line 2426
    :cond_3d
    if-le v0, v3, :cond_4a

    if-gt v0, v4, :cond_4a

    .line 2427
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15

    .line 2428
    :cond_4a
    if-le v0, v4, :cond_57

    if-gt v0, v5, :cond_57

    .line 2429
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15

    .line 2430
    :cond_57
    if-le v0, v5, :cond_66

    const/16 v1, 0x4f

    if-gt v0, v1, :cond_66

    .line 2431
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15

    .line 2433
    :cond_66
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15
.end method

.method private wifiDisconnected()V
    .registers 4

    .prologue
    .line 2352
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->removeSubtitle()V

    .line 2353
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z

    .line 2355
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2356
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2357
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 2358
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 2360
    .local v0, currentPlaylist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 2362
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->releaseMediaplayer()V

    .line 2363
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->finish()V

    .line 2364
    return-void
.end method


# virtual methods
.method public bufferUpdate(I)V
    .registers 11
    .parameter

    .prologue
    const/16 v8, 0x64

    const/16 v7, 0x76f

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1892
    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mOldBufferingGauge:I

    if-eq v0, p1, :cond_13

    .line 1893
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x473

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1895
    :cond_13
    iput p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mOldBufferingGauge:I

    .line 1896
    iput p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingStatus:I

    .line 1897
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessage:Landroid/widget/TextView;

    const v1, 0x7f090009

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1898
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessageOnScreen:Landroid/widget/TextView;

    const v1, 0x7f090009

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1899
    if-ge p1, v8, :cond_47

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNotSupported:Z

    if-nez v0, :cond_47

    if-nez p1, :cond_a7

    .line 1901
    :cond_47
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1902
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessageOnScreen:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1903
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1917
    :goto_56
    const/16 v0, 0x5a

    if-ge p1, v0, :cond_5e

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNotSupported:Z

    if-eqz v0, :cond_63

    .line 1918
    :cond_5e
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1922
    :cond_63
    if-ne p1, v8, :cond_a6

    .line 1923
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->startAutoPlay()V

    .line 1924
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_a1

    .line 1926
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1927
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1928
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1929
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1930
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMenu:Landroid/view/Menu;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1931
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMenu:Landroid/view/Menu;

    .line 1933
    :cond_a1
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1935
    :cond_a6
    return-void

    .line 1906
    :cond_a7
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1907
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMusicPlayerControlsHidden:Z

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingView:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_be

    .line 1908
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessageOnScreen:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_56

    .line 1910
    :cond_be
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessageOnScreen:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_56
.end method

.method public getCurrentMediaDuration()I
    .registers 2

    .prologue
    .line 2554
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 2555
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getDefaultResourceDuration()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(Ljava/lang/String;)I

    move-result v0

    .line 2558
    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method protected handleNext()V
    .registers 6

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    .line 1152
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->stopSubtitle()V

    .line 1153
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x473

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1154
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1156
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 1157
    if-eqz v0, :cond_4a

    .line 1158
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1159
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v0

    if-lez v0, :cond_3b

    .line 1160
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1162
    invoke-direct {p0, v4}, Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleButtonState(Z)V

    .line 1163
    invoke-direct {p0, v4}, Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleSeekBarState(Z)V

    .line 1165
    :cond_3b
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1166
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 1229
    :cond_4a
    :goto_4a
    return-void

    .line 1171
    :cond_4b
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 1174
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1175
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessageOnScreen:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1176
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x462

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1178
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z

    .line 1179
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleStop()V

    .line 1181
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->selectedItemUri:Ljava/lang/String;

    .line 1183
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaNameStr:Ljava/lang/String;

    .line 1184
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaNameStr:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->shortenName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;

    .line 1187
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentResource;->getMimeType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mimeType:Ljava/lang/String;

    .line 1189
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRM()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mDRMFlag:Z

    .line 1190
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getContentTypeStr()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->type:Ljava/lang/String;

    .line 1192
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mimeType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isSupportedType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_107

    iget-boolean v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mDRMFlag:Z

    invoke-direct {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isDRMFile(Z)I

    move-result v1

    if-nez v1, :cond_107

    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isBitRateSupported()Z

    move-result v1

    if-eqz v1, :cond_107

    .line 1193
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->selectedItemUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    :try_start_eb
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setMediaOptions()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_f0} :catch_102

    .line 1201
    :goto_f0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$12;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$12;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1209
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->playback()V

    goto/16 :goto_4a

    .line 1196
    :catch_102
    move-exception v0

    .line 1197
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f0

    .line 1211
    :cond_107
    iget v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsRealDrmError:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_158

    .line 1212
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDRM(Z)V

    .line 1213
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2 DRM setted TRUE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRM()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleStop()V

    .line 1215
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNotSupported:Z

    .line 1216
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1217
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x771

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1219
    const/16 v0, 0x5dc

    :try_start_148
    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->removeDialog(I)V

    .line 1220
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->showDialog(I)V
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_150} :catch_152

    goto/16 :goto_4a

    .line 1221
    :catch_152
    move-exception v0

    .line 1222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4a

    .line 1225
    :cond_158
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x457

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4a
.end method

.method protected handlePrevious()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 1232
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->stopSubtitle()V

    .line 1233
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x473

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1234
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x76f

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1235
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    .line 1236
    .local v1, playlist:Lcom/sec/android/app/dlna/model/Playlist;
    if-eqz v1, :cond_2e

    .line 1237
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->moveToPrev()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 1238
    invoke-direct {p0, v4}, Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleButtonState(Z)V

    .line 1239
    invoke-direct {p0, v4}, Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleSeekBarState(Z)V

    .line 1300
    :cond_2e
    :goto_2e
    return-void

    .line 1242
    :cond_2f
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 1245
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1246
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingMessageOnScreen:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1247
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x462

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1249
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z

    .line 1250
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleStop()V

    .line 1252
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->selectedItemUri:Ljava/lang/String;

    .line 1254
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaNameStr:Ljava/lang/String;

    .line 1255
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMediaNameStr:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->shortenName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getContentTypeStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->type:Ljava/lang/String;

    .line 1258
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;

    .line 1260
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getMimeType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mimeType:Ljava/lang/String;

    .line 1262
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRM()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mDRMFlag:Z

    .line 1264
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mimeType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isSupportedType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_eb

    iget-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mDRMFlag:Z

    invoke-direct {p0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isDRMFile(Z)I

    move-result v2

    if-nez v2, :cond_eb

    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isBitRateSupported()Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 1265
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->selectedItemUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :try_start_cf
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setMediaOptions()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d4} :catch_e6

    .line 1273
    :goto_d4
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/dmp/layout/DMPVideoActivity$13;

    invoke-direct {v3, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$13;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1282
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->playback()V

    goto/16 :goto_2e

    .line 1268
    :catch_e6
    move-exception v0

    .line 1269
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d4

    .line 1284
    .end local v0           #e:Ljava/io/IOException;
    :cond_eb
    iget v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsRealDrmError:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_117

    .line 1285
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDRM(Z)V

    .line 1286
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->handleStop()V

    .line 1287
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNotSupported:Z

    .line 1288
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x76d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1289
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x771

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1291
    const/16 v2, 0x5dc

    :try_start_10c
    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->showDialog(I)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10f} :catch_111

    goto/16 :goto_2e

    .line 1292
    :catch_111
    move-exception v0

    .line 1293
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2e

    .line 1296
    .end local v0           #e:Ljava/lang/Exception;
    :cond_117
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x457

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2e
.end method

.method protected handleStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1331
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->stopSubtitle()V

    .line 1332
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setBufferingOn(Z)V

    .line 1333
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x473

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1334
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1336
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_23
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z

    if-eqz v0, :cond_64

    .line 1338
    :cond_27
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    if-eqz v0, :cond_3e

    .line 1339
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->finished:Z

    .line 1340
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    #getter for: Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->mSubtitleProcesser:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;->access$5800(Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSubThread:Lcom/samsung/dmp/layout/DMPVideoActivity$subtitleThread;

    .line 1345
    :cond_3e
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPaused:Z

    .line 1346
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1347
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    if-eqz v0, :cond_50

    .line 1348
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->stop()V

    .line 1350
    :cond_50
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1351
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCurrentDuration:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPause:Landroid/widget/ImageButton;

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 1354
    :cond_64
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNotSupported:Z

    if-eqz v0, :cond_6a

    .line 1355
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mNotSupported:Z

    .line 1358
    :cond_6a
    return-void
.end method

.method public mediaCompleted()V
    .registers 3

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x46d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1328
    return-void
.end method

.method public mediaPlayFailed()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1304
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1312
    :goto_7
    return-void

    .line 1306
    :cond_8
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setErrorFlag(Z)V

    .line 1307
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b58

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1308
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1309
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x473

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1310
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const/16 v0, 0x5dd

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->showDialog(I)V

    goto :goto_7
.end method

.method public notifyActivityEvent(I)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x457

    .line 2325
    packed-switch p1, :pswitch_data_3a

    .line 2349
    :goto_5
    :pswitch_5
    return-void

    .line 2327
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2328
    const-string v0, "DLNA"

    const-string v1, " notifyActivityEvent 1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 2333
    :cond_19
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->releaseMediaplayer()V

    .line 2334
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->finish()V

    goto :goto_5

    .line 2339
    :pswitch_20
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2340
    const-string v0, "DLNA"

    const-string v1, " notifyActivityEvent 2"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 2345
    :cond_33
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->releaseMediaplayer()V

    .line 2346
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->finish()V

    goto :goto_5

    .line 2325
    :pswitch_data_3a
    .packed-switch 0x2f2
        :pswitch_6
        :pswitch_5
        :pswitch_20
    .end packed-switch
.end method

.method public onChange()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x473

    .line 1774
    const-string v0, "DLNA"

    const-string v1, "***inside onchange***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1776
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1777
    const-string v1, "from"

    const-string v2, "com.sec.android.app.dlna"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1778
    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1779
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mplayerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mplayerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 1780
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPrevOccurence:Z

    .line 1785
    :goto_31
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z

    .line 1787
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1788
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1789
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1791
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x771

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1792
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1793
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1795
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 1796
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDimed(Z)V

    .line 1798
    :cond_7a
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1800
    const-string v0, ".avi"

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    const-string v0, ".AVI"

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 1801
    :cond_93
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1806
    :goto_9b
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 1808
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->forceStop()V

    .line 1809
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->toRestart:Z

    .line 1811
    :cond_a6
    return-void

    .line 1782
    :cond_a7
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->onChangeRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mplayerThread:Ljava/lang/Thread;

    .line 1783
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mplayerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_31

    .line 1803
    :cond_b7
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 692
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 694
    invoke-virtual {p0, v4}, Lcom/samsung/dmp/layout/DMPVideoActivity;->requestWindowFeature(I)Z

    .line 695
    const-string v0, "DLNA"

    const-string v1, "***DMPVideoActivity::onCreate***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 697
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 698
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 699
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->registerTelephonyListener()V

    .line 701
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 703
    new-instance v0, Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/VideoSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    .line 704
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    const/high16 v1, 0x102

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setId(I)V

    .line 705
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v4}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setInitializationNeeded(Z)V

    .line 706
    iput v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCurrentPosition:I

    .line 708
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCalendar:Ljava/util/Calendar;

    .line 710
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->setContentView(I)V

    .line 712
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->initializeUIForLandscape()V

    .line 713
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 715
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090007

    const/16 v2, 0x5dc

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBackKeyToast:Landroid/widget/Toast;

    .line 718
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090075

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mAudioShockToast:Landroid/widget/Toast;

    .line 720
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    if-nez v0, :cond_97

    .line 721
    const-string v0, "tvoutservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ITvoutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvoutService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    .line 723
    :cond_97
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHdmiReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 724
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f090013

    const v3, 0x7f09000a

    const/4 v2, 0x1

    .line 2098
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x473

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2099
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2101
    const/16 v0, 0x5dc

    if-ne p1, v0, :cond_ba

    .line 2102
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->showThePopup:Z

    .line 2103
    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsRealDrmError:I

    if-ne v0, v2, :cond_6b

    .line 2104
    iput v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsRealDrmError:I

    .line 2105
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 2106
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDimed(Z)V

    .line 2108
    :cond_3f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$21;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$21;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$20;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$20;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$19;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$19;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2288
    :goto_6a
    return-object v0

    .line 2159
    :cond_6b
    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsRealDrmError:I

    if-nez v0, :cond_144

    .line 2160
    iput v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsRealDrmError:I

    .line 2161
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_8e

    .line 2162
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDimed(Z)V

    .line 2164
    :cond_8e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$24;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$24;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$23;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$23;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$22;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$22;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_6a

    .line 2216
    :cond_ba
    const/16 v0, 0x472

    if-ne p1, v0, :cond_e6

    .line 2217
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->showThePopup:Z

    .line 2218
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09003f

    new-instance v2, Lcom/samsung/dmp/layout/DMPVideoActivity$26;

    invoke-direct {v2, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$26;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$25;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$25;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_6a

    .line 2231
    :cond_e6
    const/16 v0, 0x5dd

    if-ne p1, v0, :cond_144

    .line 2232
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->showThePopup:Z

    .line 2233
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_109

    .line 2234
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDimed(Z)V

    .line 2236
    :cond_109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$29;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$29;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$28;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$28;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$27;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$27;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_6a

    .line 2288
    :cond_144
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_6a
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1432
    const/16 v0, 0x12c

    const v1, 0x7f090011

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1433
    const/16 v0, 0x12d

    const/4 v1, 0x1

    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1434
    const/16 v0, 0x12e

    const/4 v1, 0x2

    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1435
    const/16 v0, 0x12f

    const/4 v1, 0x3

    const v2, 0x7f09001b

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1436
    const/16 v0, 0x130

    const/4 v1, 0x4

    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1437
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1701
    const-string v0, "DLNA"

    const-string v1, "DMPVideoActivity.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->stopSubtitle()V

    .line 1703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsStopped:Z

    .line 1704
    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mplayerThread:Ljava/lang/Thread;

    .line 1705
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->removeSubtitle()V

    .line 1707
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1c

    .line 1708
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1710
    :cond_1c
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->unRegisterTelephonyListener()V

    .line 1712
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHdmiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1714
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    if-eqz v0, :cond_2a

    .line 1715
    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    .line 1717
    :cond_2a
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onDestroy()V

    .line 1718
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x19

    const/16 v7, 0x18

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x3

    .line 1377
    if-eq p1, v7, :cond_b

    if-ne p1, v8, :cond_5e

    .line 1378
    :cond_b
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v3, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 1379
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->isShowVolume:Z

    .line 1380
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x578

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1381
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x578

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1383
    if-ne p1, v7, :cond_46

    .line 1384
    :try_start_24
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1390
    :cond_34
    :goto_34
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 1391
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->invalidate()V

    .line 1407
    :cond_45
    :goto_45
    return v2

    .line 1386
    :cond_46
    if-ne p1, v8, :cond_34

    .line 1387
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_58} :catch_59

    goto :goto_34

    .line 1392
    :catch_59
    move-exception v0

    .line 1393
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45

    .line 1396
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5e
    const/4 v3, 0x4

    if-ne p1, v3, :cond_77

    .line 1397
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mScreenLock:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_45

    .line 1398
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1399
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_45

    .line 1404
    .end local v1           #msg:Landroid/os/Message;
    :cond_77
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mScreenLock:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_45

    .line 1407
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_45
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1413
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_30

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_30

    .line 1414
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mScreenLock:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_1f

    .line 1415
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mScreenLock:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1416
    invoke-direct {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleLock(Z)V

    .line 1427
    :cond_1e
    :goto_1e
    return v0

    .line 1417
    :cond_1f
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mScreenLock:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1e

    .line 1418
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mScreenLock:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1419
    invoke-direct {p0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->toggleLock(Z)V

    goto :goto_1e

    .line 1424
    :cond_30
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mScreenLock:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 1427
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1e
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/high16 v4, 0x2

    const/4 v0, 0x1

    .line 1474
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1475
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->forceStop()V

    .line 1476
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-nez v1, :cond_24

    .line 1534
    :cond_23
    :goto_23
    return v0

    .line 1479
    :cond_24
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_23

    .line 1483
    :cond_39
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 1484
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v1

    if-ne v1, v5, :cond_23

    .line 1485
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->forceStop()V

    .line 1486
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->refreshServerList()V

    .line 1487
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_23

    .line 1493
    :cond_79
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f09000b

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 1494
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v1

    if-ne v1, v5, :cond_23

    .line 1495
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->forceStop()V

    .line 1496
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->refreshPlayerList()V

    .line 1497
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MODE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_23

    .line 1502
    :cond_b4
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 1503
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    .line 1504
    if-eqz v2, :cond_ff

    .line 1505
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->forceStop()V

    .line 1506
    new-instance v1, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;

    invoke-direct {v1, v2}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;-><init>(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 1507
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x76f

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1508
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x473

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1510
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/dlna/ui/MediaInfo;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "detail"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_23

    .line 1514
    :cond_ff
    const v2, 0x7f090037

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_23

    .line 1518
    :cond_10f
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f09005b

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 1519
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v2

    if-nez v2, :cond_13c

    .line 1520
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1534
    :cond_136
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_23

    .line 1523
    :cond_13c
    :try_start_13c
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isServerStarted()Z
    :try_end_147
    .catch Landroid/os/RemoteException; {:try_start_13c .. :try_end_147} :catch_14d

    move-result v2

    if-nez v2, :cond_151

    move v0, v1

    .line 1524
    goto/16 :goto_23

    .line 1525
    :catch_14d
    move-exception v1

    .line 1526
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1528
    :cond_151
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->forceStop()V

    .line 1529
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_23
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 1584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->isDestroying:Z

    .line 1586
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->unregisterMotionListener()V

    .line 1588
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPalmTouchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1590
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1592
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_19

    .line 1593
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1594
    :cond_19
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mTimezoneChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_22

    .line 1595
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mTimezoneChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1596
    :cond_22
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2b

    .line 1597
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBatteryChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1599
    :cond_2b
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->musicPlayerToast:Landroid/widget/Toast;

    if-eqz v0, :cond_34

    .line 1600
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1603
    :cond_34
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1604
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x473

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1606
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_53

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mForceStopped:Z

    if-nez v0, :cond_53

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->toRestart:Z

    if-eqz v0, :cond_53

    .line 1607
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->forceStop()V

    .line 1609
    :cond_53
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1610
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1613
    :cond_60
    const/16 v0, 0x1a

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->requestSystemKeyEvent(IZ)Z

    .line 1615
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPause()V

    .line 1616
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1442
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090011

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1443
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1444
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1445
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1446
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f09005b

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1448
    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingStatus:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_99

    iget v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5e

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_99

    .line 1449
    :cond_5e
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1450
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1451
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1452
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1453
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1455
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMenu:Landroid/view/Menu;

    .line 1466
    :goto_83
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_94

    .line 1467
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1470
    :cond_94
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1457
    :cond_99
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1458
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1459
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1460
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1461
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMenu:Landroid/view/Menu;

    goto :goto_83
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 1547
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onResume()V

    .line 1549
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-nez v0, :cond_19

    .line 1550
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->SaveConnection(Ljava/lang/String;)V

    .line 1551
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1554
    :cond_19
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1555
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1557
    :cond_26
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1560
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mViewInflated:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 1561
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->constructUI()V

    .line 1566
    :cond_33
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    if-nez v0, :cond_6e

    .line 1567
    const-string v0, "DLNA"

    const-string v1, "tvoutService is not working. try to recover..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    const-string v0, "tvoutservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ITvoutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvoutService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    .line 1573
    :goto_4a
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/dmp/layout/DMPVideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1575
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1576
    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1577
    const-string v1, "android.intent.action.PALM_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1578
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mPalmTouchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1580
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->registerMotionListener()V

    .line 1581
    return-void

    .line 1570
    :cond_6e
    const-string v0, "DLNA"

    const-string v1, "tvoutService is working"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasFocus"

    .prologue
    .line 728
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onWindowFocusChanged(Z)V

    .line 729
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 730
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mViewInflated:Z

    if-nez v0, :cond_11

    .line 731
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x22b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 734
    :cond_11
    return-void
.end method

.method public play()V
    .registers 4

    .prologue
    .line 1659
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 1662
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/dmp/layout/DMPVideoActivity$14;

    invoke-direct {v2, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$14;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1671
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->playback()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 1675
    :goto_18
    return-void

    .line 1672
    :catch_19
    move-exception v0

    .line 1673
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public playback()V
    .registers 5

    .prologue
    const/16 v3, 0x76f

    .line 1641
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setBufferingOn(Z)V

    .line 1642
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mBufferingStatus:I

    .line 1643
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->isDestroying:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->showThePopup:Z

    if-nez v0, :cond_30

    .line 1646
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mExtension:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1647
    const-string v0, "DLNA"

    const-string v1, "***mHandler.sendEmptyMessageDelayed(CHECK_BUFFERING, BUFFERING_TIMEOUT_AVI)***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1654
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1655
    return-void

    .line 1651
    :cond_38
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_30
.end method

.method registerMotionListener()V
    .registers 4

    .prologue
    .line 2985
    const-string v0, "DLNA"

    const-string v1, "DMPVideoActivity.registerMotionListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    sget-object v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_15

    .line 2988
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 2990
    :cond_15
    sget-object v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 2991
    return-void
.end method

.method public seekComplete()V
    .registers 3

    .prologue
    .line 1880
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->showThePopup:Z

    if-eqz v0, :cond_15

    .line 1881
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    if-eqz v0, :cond_15

    .line 1882
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/dmp/layout/DMPVideoActivity$18;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPVideoActivity$18;-><init>(Lcom/samsung/dmp/layout/DMPVideoActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1889
    :cond_15
    return-void
.end method

.method public setTimeZone(Ljava/util/Calendar;)V
    .registers 4
    .parameter "cal"

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mClockFormat:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_d

    .line 1945
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mClockFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1947
    :cond_d
    return-void
.end method

.method public shortenName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 1938
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_22

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x1b

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1940
    :cond_22
    return-object p1
.end method

.method public tvOutPostHDMISubtitle(Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    if-nez v0, :cond_c

    .line 2877
    const-string v0, "DLNA"

    const-string v1, "tvOutPostHDMISubtitle() - TvOutService Not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    :cond_b
    :goto_b
    return-void

    .line 2881
    :cond_c
    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mIsHDMIPlugged:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 2883
    :try_start_13
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    invoke-interface {v0}, Landroid/os/ITvoutService;->TvoutGetSubtitleStatus()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2884
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->tvoutService:Landroid/os/ITvoutService;

    invoke-interface {v0, p1, p2}, Landroid/os/ITvoutService;->TvoutPostSubtitle(Ljava/lang/String;I)Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_20} :catch_21

    goto :goto_b

    .line 2886
    :catch_21
    move-exception v0

    .line 2887
    const-string v1, "DLNA"

    const-string v2, "tvOutPostHDMISubtitle() - Tv OUT subtitle fail !!! "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method unregisterMotionListener()V
    .registers 3

    .prologue
    .line 2994
    const-string v0, "DLNA"

    const-string v1, "DMPVideoActivity.unregisterMotionListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    sget-object v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_12

    .line 2997
    sget-object v0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 2998
    :cond_12
    return-void
.end method

.method public updateClock()V
    .registers 4

    .prologue
    .line 1950
    const-string v0, "DLNA"

    const-string v1, "updateClock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1952
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPVideoActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPVideoActivity;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1954
    return-void
.end method
