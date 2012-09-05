.class public Lcom/samsung/dmp/layout/DMPAudioActivity;
.super Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.source "DMPAudioActivity.java"

# interfaces
.implements Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;
.implements Lcom/sec/android/app/dlna/ui/IActivityListener;


# static fields
.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field public final MREVENT_FLIP_TOP_TO_BOTTOM:I

.field private POSITON_TIMEOUT_TIME:I

.field private final TAG:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private currItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

.field private is51channelOn:Z

.field private isDestroying:Z

.field private isShowVolume:Z

.field private isSuspended:Z

.field private mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioShockToast:Landroid/widget/Toast;

.field private mBackKeyTimer:I

.field private mBackKeyToast:Landroid/widget/Toast;

.field private mBufferingStatus:I

.field private mBufferingView:Landroid/widget/ProgressBar;

.field private mButtonSRS:Landroid/widget/ImageView;

.field private mCurrentPosition:I

.field private mDRMFlag:Z

.field private mExtension:Ljava/lang/String;

.field private mForceStopped:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsHeadsetPlugged:Z

.field private mIsPalmAvailable:Z

.field private mIsRealDrmError:I

.field private mIsStopped:Z

.field private mIsVolumeBubbleRunable:Z

.field private mMediaArtist:Landroid/widget/TextView;

.field private mMediaArtistStr:Ljava/lang/String;

.field private mMediaName:Landroid/widget/TextView;

.field private mMediaNameStr:Ljava/lang/String;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mNoContentImage:Landroid/widget/ImageView;

.field private mNotSupported:Z

.field private mOldBufferingGauge:I

.field private mOldBufferingStatus:I

.field private mOldPosition:I

.field private final mPalmTouchReceiver:Landroid/content/BroadcastReceiver;

.field private mPaused:Z

.field private mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mStopClicked:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

.field private mViewHolder:Landroid/widget/LinearLayout;

.field private mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field private mVolumeButton:Landroid/widget/ImageView;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

.field private mimeType:Ljava/lang/String;

.field private mplayerThread:Ljava/lang/Thread;

.field musicPlayerToast:Landroid/widget/Toast;

.field musicStopToast:Landroid/widget/Toast;

.field private readyPlayback:Ljava/lang/Thread;

.field private selectedItemUri:Ljava/lang/String;

.field private showThePopup:Z

.field private toRestart:Z

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1970
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;-><init>()V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->toRestart:Z

    .line 223
    iput v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mCurrentPosition:I

    .line 227
    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z

    .line 229
    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->is51channelOn:Z

    .line 231
    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsHeadsetPlugged:Z

    .line 239
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->TAG:Ljava/lang/String;

    .line 240
    const-string v0, "DMPAudioActivity."

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->CLASS_NAME:Ljava/lang/String;

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyTimer:I

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyToast:Landroid/widget/Toast;

    .line 246
    new-instance v0, Lcom/samsung/dmp/layout/DMPAudioActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$1;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    .line 466
    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->isShowVolume:Z

    .line 468
    const v0, 0x493e0

    iput v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->POSITON_TIMEOUT_TIME:I

    .line 1415
    new-instance v0, Lcom/samsung/dmp/layout/DMPAudioActivity$13;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$13;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 1770
    new-instance v0, Lcom/samsung/dmp/layout/DMPAudioActivity$28;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$28;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    .line 1836
    new-instance v0, Lcom/samsung/dmp/layout/DMPAudioActivity$29;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$29;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPalmTouchReceiver:Landroid/content/BroadcastReceiver;

    .line 1859
    new-instance v0, Lcom/samsung/dmp/layout/DMPAudioActivity$30;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$30;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 1884
    new-instance v0, Lcom/samsung/dmp/layout/DMPAudioActivity$31;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$31;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1909
    new-instance v0, Lcom/samsung/dmp/layout/DMPAudioActivity$32;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$32;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    .line 1971
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->MREVENT_FLIP_TOP_TO_BOTTOM:I

    .line 1973
    new-instance v0, Lcom/samsung/dmp/layout/DMPAudioActivity$33;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$33;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->isShowVolume:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/dmp/layout/DMPAudioActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->POSITON_TIMEOUT_TIME:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->isShowVolume:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/samsung/dmp/layout/VideoSurfaceView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBufferingView:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->toggleButtonState(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mForceStopped:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mForceStopped:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mNoContentImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/samsung/dmp/layout/DMPAudioActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->currItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mStopClicked:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mStopClicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/dmp/layout/DMPAudioActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->selectedItemUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/dmp/layout/DMPAudioActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$2100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->toRestart:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/dmp/layout/DMPAudioActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyTimer:I

    return v0
.end method

.method static synthetic access$2302(Lcom/samsung/dmp/layout/DMPAudioActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyTimer:I

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/samsung/dmp/layout/DMPAudioActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mNotSupported:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/dmp/layout/DMPAudioActivity;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->isSupportedType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mDRMFlag:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/samsung/dmp/layout/DMPAudioActivity;Ljava/lang/String;Z)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->isDRMFile(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/app/dlna/view/MediaControlViewDMP;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/dmp/layout/DMPAudioActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsRealDrmError:I

    return v0
.end method

.method static synthetic access$3100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/dmp/layout/DMPAudioActivity;)Lcom/sec/android/touchwiz/widget/TwSeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->is51channelOn:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->is51channelOn:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mButtonSRS:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->isSuspended:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->isSuspended:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsVolumeBubbleRunable:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsVolumeBubbleRunable:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->wifiDisconnected()V

    return-void
.end method

.method static synthetic access$3900(Lcom/samsung/dmp/layout/DMPAudioActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->forceStop()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsPalmAvailable:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsPalmAvailable:Z

    return p1
.end method

.method static synthetic access$402(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioShockToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/dmp/layout/DMPAudioActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mOldPosition:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/dmp/layout/DMPAudioActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mOldPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/dmp/layout/DMPAudioActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/dmp/layout/DMPAudioActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/dmp/layout/DMPAudioActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mOldBufferingStatus:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/dmp/layout/DMPAudioActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mOldBufferingStatus:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/dmp/layout/DMPAudioActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBufferingStatus:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/dmp/layout/DMPAudioActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkMediaType()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 893
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setSeekbarVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 895
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 896
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mViewHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 897
    return-void
.end method

.method private forceStop()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1219
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    if-eqz v0, :cond_64

    .line 1220
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setBufferingOn(Z)V

    .line 1221
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setInitializationNeeded(Z)V

    .line 1222
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->currItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 1223
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z

    if-eqz v0, :cond_64

    .line 1224
    :cond_2b
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getCurrentPosition()I

    move-result v0

    .line 1225
    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getDuration()I

    move-result v1

    if-gt v0, v1, :cond_43

    .line 1226
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mCurrentPosition:I

    .line 1227
    :cond_43
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved mCurrentPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iput-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->readyPlayback:Ljava/lang/Thread;

    .line 1229
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->stop()V

    .line 1232
    :cond_64
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mForceStopped:Z

    .line 1233
    iput-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mplayerThread:Ljava/lang/Thread;

    .line 1234
    iput-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->readyPlayback:Ljava/lang/Thread;

    .line 1235
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z

    .line 1236
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1237
    return-void
.end method

.method private initializeUIForPortrait()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 711
    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaName:Landroid/widget/TextView;

    .line 712
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaArtist:Landroid/widget/TextView;

    .line 713
    const v0, 0x7f070030

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeButton:Landroid/widget/ImageView;

    .line 714
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mButtonSRS:Landroid/widget/ImageView;

    .line 716
    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBufferingView:Landroid/widget/ProgressBar;

    .line 718
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mImageView:Landroid/widget/ImageView;

    .line 719
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    .line 720
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mNoContentImage:Landroid/widget/ImageView;

    .line 722
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 723
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 724
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 726
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 727
    iput-boolean v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->isShowVolume:Z

    .line 728
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontEnable(Z)V

    .line 729
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v1, 0x2050095

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontColor(I)V

    .line 730
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 731
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->mDeviceResolution:I

    if-nez v0, :cond_16a

    .line 732
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontSize(I)V

    .line 736
    :goto_b0
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_c1

    .line 737
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeButton:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 739
    :cond_c1
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mViewHolder:Landroid/widget/LinearLayout;

    .line 740
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mViewHolder:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->setThumbnail()V

    .line 744
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mNoContentImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$2;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setPrevClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$3;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setPlayClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$4;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setNextClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$5;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setStopClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->isShuffle()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setShuffleEnable(Z)V

    .line 800
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$6;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setOnShuffleClicked(Landroid/view/View$OnClickListener;)V

    .line 807
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getCurrentRepeatState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setRepeatMode(I)V

    .line 809
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$7;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setOnRepeatClicked(Landroid/view/View$OnClickListener;)V

    .line 824
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$8;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 840
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mButtonSRS:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$9;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$9;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->initProgressBar(II)V

    .line 864
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$10;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$10;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 887
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, p0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setOnChangeListener(Lcom/samsung/dmp/layout/VideoSurfaceView$MediaChangeListener;)V

    .line 889
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->checkMediaType()V

    .line 890
    return-void

    .line 734
    :cond_16a
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontSize(I)V

    goto/16 :goto_b0
.end method

.method private isDRMFile(Ljava/lang/String;Z)I
    .registers 6
    .parameter "mimeType"
    .parameter "flag"

    .prologue
    .line 1520
    new-instance v0, Lcom/samsung/dmp/layout/DmpDrmUtil;

    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/dmp/layout/DmpDrmUtil;-><init>(Landroid/content/Context;)V

    .line 1521
    .local v0, dmpDrmUtil:Lcom/samsung/dmp/layout/DmpDrmUtil;
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->selectedItemUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mExtension:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2, p1}, Lcom/samsung/dmp/layout/DmpDrmUtil;->isDrmFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsRealDrmError:I

    .line 1522
    iget v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsRealDrmError:I

    return v1
.end method

.method private isSupportedType(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1527
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    .line 1529
    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getDefaultResourceSize()Ljava/lang/String;

    move-result-object v2

    .line 1530
    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getDefaultResourceDuration()Ljava/lang/String;

    move-result-object v1

    .line 1531
    if-eqz v2, :cond_2d

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    if-eqz p1, :cond_2d

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1532
    :cond_2d
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    if-eqz v1, :cond_3f

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1533
    :cond_3f
    const-string v1, "DLNA"

    const-string v2, " this file size is zero==0"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :goto_46
    return v0

    .line 1537
    :cond_47
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMPAudioActivity.isSupportedType() : mimeType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const-string v1, "audio/mpeg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "audio/x-ms-wma"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "audio/x-MS-wma"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "audio/mp4"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "audio/aac"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "audio/wav"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "audio/x-acc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "audio/vnd.dlna.adts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "audio/amr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "audio/3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "audio/L16"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "audio/x-wav"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "image/jpeg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "image/png"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "image/bmp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "image/x-MS-bmp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "image/x-ms-bmp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "video/mp4"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "video/MP4V-ES"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "video/x-msvideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "video/divx"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "video/avi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "video/x-ms-avi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "video/x-divx"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "video/3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    const-string v1, "video/x-ms-wmv"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_132

    .line 1552
    :cond_12f
    const/4 v0, 0x1

    goto/16 :goto_46

    .line 1554
    :cond_132
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

    goto/16 :goto_46
.end method

.method private registerTelephonyListener()V
    .registers 6

    .prologue
    .line 1786
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1788
    .local v0, id:J
    :try_start_4
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 1790
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1792
    return-void

    .line 1790
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setMediaName()V
    .registers 3

    .prologue
    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaNameStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaArtist:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaArtistStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 1016
    :goto_e
    return-void

    .line 1014
    :catch_f
    move-exception v0

    goto :goto_e

    .line 1013
    :catch_11
    move-exception v0

    goto :goto_e
.end method

.method private setThumbnail()V
    .registers 3

    .prologue
    .line 1287
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$11;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$11;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1357
    return-void
.end method

.method private toggleButtonState(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    if-eqz v0, :cond_11

    .line 1510
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v1

    iget-boolean v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->setControlButtonsEnabled(ZZZ)V

    .line 1511
    :cond_11
    return-void
.end method

.method private unRegisterTelephonyListener()V
    .registers 6

    .prologue
    .line 1795
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1797
    .local v0, id:J
    :try_start_4
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 1799
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1801
    return-void

    .line 1799
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private wifiDisconnected()V
    .registers 3

    .prologue
    .line 1827
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 1829
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->resetServer()V

    .line 1830
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->resetPlayer()V

    .line 1831
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 1832
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->startActivity(Landroid/content/Intent;)V

    .line 1834
    return-void
.end method


# virtual methods
.method public bufferUpdate(I)V
    .registers 4
    .parameter "percent"

    .prologue
    .line 1490
    iget v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mOldBufferingGauge:I

    if-eq v0, p1, :cond_b

    .line 1491
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x474

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1493
    :cond_b
    iput p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mOldBufferingGauge:I

    .line 1494
    iput p1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBufferingStatus:I

    .line 1506
    return-void
.end method

.method protected handleNext()V
    .registers 8

    .prologue
    const/16 v6, 0x76d

    const/4 v5, 0x1

    .line 531
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    .line 532
    .local v1, playlist:Lcom/sec/android/app/dlna/model/Playlist;
    if-eqz v1, :cond_3a

    .line 533
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 534
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v2

    if-lez v2, :cond_33

    .line 535
    const-string v2, "DLNA"

    const-string v3, "No next file"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1b58

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 537
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 538
    invoke-direct {p0, v5}, Lcom/samsung/dmp/layout/DMPAudioActivity;->toggleButtonState(Z)V

    .line 540
    :cond_33
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 596
    :cond_3a
    :goto_3a
    return-void

    .line 545
    :cond_3b
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 549
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z

    .line 550
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleStop()V

    .line 552
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->selectedItemUri:Ljava/lang/String;

    .line 554
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaNameStr:Ljava/lang/String;

    .line 555
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaNameStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaArtistStr:Ljava/lang/String;

    .line 557
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaArtist:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaArtistStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getContentTypeStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->type:Ljava/lang/String;

    .line 560
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mExtension:Ljava/lang/String;

    .line 562
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getMimeType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;

    .line 564
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRM()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mDRMFlag:Z

    .line 566
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->isSupportedType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f3

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mDRMFlag:Z

    invoke-direct {p0, v2, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->isDRMFile(Ljava/lang/String;Z)I

    move-result v2

    if-nez v2, :cond_f3

    .line 567
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->selectedItemUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :try_start_d3
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->setThumbnail()V

    .line 570
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setMediaOptions()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_db} :catch_ee

    .line 574
    :goto_db
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 575
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 576
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->playback()V

    goto/16 :goto_3a

    .line 571
    :catch_ee
    move-exception v0

    .line 572
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_db

    .line 578
    .end local v0           #e:Ljava/io/IOException;
    :cond_f3
    iget v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsRealDrmError:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_142

    .line 579
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDRM(Z)V

    .line 580
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2 DRM setted TRUE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRM()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleStop()V

    .line 582
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mNotSupported:Z

    .line 583
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 584
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 586
    const/16 v2, 0x5dc

    :try_start_132
    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->removeDialog(I)V

    .line 587
    const/16 v2, 0x5dc

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->showDialog(I)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_13a} :catch_13c

    goto/16 :goto_3a

    .line 588
    :catch_13c
    move-exception v0

    .line 589
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3a

    .line 592
    .end local v0           #e:Ljava/lang/Exception;
    :cond_142
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x457

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3a
.end method

.method protected handlePlayOrPause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 503
    iget-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z

    if-eqz v1, :cond_14

    .line 504
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->start()V

    .line 505
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z

    .line 526
    :cond_c
    :goto_c
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    iget-boolean v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->SetPlayPauseButtonImage(Z)V

    .line 527
    return-void

    .line 507
    :cond_14
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 508
    iget-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z

    if-eqz v1, :cond_2b

    .line 510
    :try_start_24
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setMediaOptions()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_3a

    .line 514
    :goto_29
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z

    .line 516
    :cond_2b
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->selectedItemUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z

    .line 518
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->play()V

    goto :goto_c

    .line 511
    :catch_3a
    move-exception v0

    .line 512
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 519
    .end local v0           #e:Ljava/io/IOException;
    :cond_3f
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_4f

    iget-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z

    if-eqz v1, :cond_c

    .line 520
    :cond_4f
    iget-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z

    if-nez v1, :cond_c

    .line 521
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->pause()V

    .line 522
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z

    goto :goto_c
.end method

.method protected handlePrevious()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 605
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v1

    .line 606
    .local v1, playlist:Lcom/sec/android/app/dlna/model/Playlist;
    if-eqz v1, :cond_18

    .line 607
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->moveToPrev()Z

    move-result v2

    if-nez v2, :cond_19

    .line 608
    invoke-direct {p0, v5}, Lcom/samsung/dmp/layout/DMPAudioActivity;->toggleButtonState(Z)V

    .line 658
    :cond_18
    :goto_18
    return-void

    .line 611
    :cond_19
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 615
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z

    .line 616
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleStop()V

    .line 618
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getResourceUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->selectedItemUri:Ljava/lang/String;

    .line 620
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaNameStr:Ljava/lang/String;

    .line 621
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaNameStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaArtistStr:Ljava/lang/String;

    .line 623
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaArtist:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaArtistStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getContentTypeStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->type:Ljava/lang/String;

    .line 626
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mExtension:Ljava/lang/String;

    .line 628
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentItem;->getDefaultResouce()Lcom/samsung/api/ContentResource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/ContentResource;->getMimeType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;

    .line 630
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRM()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mDRMFlag:Z

    .line 632
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->isSupportedType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d1

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mDRMFlag:Z

    invoke-direct {p0, v2, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->isDRMFile(Ljava/lang/String;Z)I

    move-result v2

    if-nez v2, :cond_d1

    .line 633
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->selectedItemUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :try_start_b1
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->setThumbnail()V

    .line 636
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setMediaOptions()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b9} :catch_cc

    .line 641
    :goto_b9
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 642
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 643
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->playback()V

    goto/16 :goto_18

    .line 637
    :catch_cc
    move-exception v0

    .line 639
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b9

    .line 645
    .end local v0           #e:Ljava/io/IOException;
    :cond_d1
    iget v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsRealDrmError:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_117

    .line 646
    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDRM(Z)V

    .line 647
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3 DRM setted TRUE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRM()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleStop()V

    .line 649
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mNotSupported:Z

    .line 650
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 651
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x76d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 652
    const/16 v2, 0x5dc

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->showDialog(I)V

    goto/16 :goto_18

    .line 654
    :cond_117
    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x457

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_18
.end method

.method protected handleStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 689
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z

    if-eqz v0, :cond_34

    .line 690
    :cond_11
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z

    .line 692
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBufferingView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->stop()V

    .line 694
    iput v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mCurrentPosition:I

    .line 695
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->initProgressBar(II)V

    .line 696
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->SetPlayPauseButtonImage(Z)V

    .line 699
    :cond_34
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mNotSupported:Z

    if-eqz v0, :cond_3a

    .line 700
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mNotSupported:Z

    .line 703
    :cond_3a
    return-void
.end method

.method public mediaCompleted()V
    .registers 3

    .prologue
    .line 684
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x46d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 686
    return-void
.end method

.method public mediaPlayFailed()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 662
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 670
    :goto_7
    return-void

    .line 664
    :cond_8
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b58

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 665
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setErrorFlag(Z)V

    .line 666
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x474

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const/16 v0, 0x5dd

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->showDialog(I)V

    goto :goto_7
.end method

.method public notifyActivityEvent(I)V
    .registers 4
    .parameter "code"

    .prologue
    const/16 v1, 0x457

    .line 1804
    packed-switch p1, :pswitch_data_26

    .line 1824
    :goto_5
    :pswitch_5
    return-void

    .line 1806
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1807
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 1811
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->finish()V

    goto :goto_5

    .line 1816
    :pswitch_16
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1817
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 1821
    :cond_22
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->finish()V

    goto :goto_5

    .line 1804
    :pswitch_data_26
    .packed-switch 0x2f2
        :pswitch_6
        :pswitch_5
        :pswitch_16
    .end packed-switch
.end method

.method public onChange()V
    .registers 6

    .prologue
    const/16 v4, 0x474

    const/4 v3, 0x0

    .line 1360
    const-string v0, "DLNA"

    const-string v1, "DMPAudioActivity.onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1363
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1364
    const-string v1, "from"

    const-string v2, "com.sec.android.app.dlna"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1365
    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1367
    new-instance v0, Lcom/samsung/dmp/layout/DMPAudioActivity$12;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$12;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mplayerThread:Ljava/lang/Thread;

    .line 1395
    iput-boolean v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z

    .line 1396
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mplayerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1397
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1398
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1399
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1400
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1401
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1402
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 1403
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDimed(Z)V

    .line 1405
    :cond_70
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1406
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->POSITON_TIMEOUT_TIME:I

    mul-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1408
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_88

    .line 1410
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->forceStop()V

    .line 1412
    :cond_88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 474
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 476
    invoke-virtual {p0, v4}, Lcom/samsung/dmp/layout/DMPAudioActivity;->requestWindowFeature(I)Z

    .line 477
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->setVolumeControlStream(I)V

    .line 478
    const-string v0, "DLNA"

    const-string v1, "***DMPAudioActivity::onCreate***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 480
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 481
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 482
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->registerTelephonyListener()V

    .line 483
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 485
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 486
    new-instance v0, Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-direct {v0, p0}, Lcom/samsung/dmp/layout/VideoSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    .line 488
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->setContentView(I)V

    .line 489
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->initializeUIForPortrait()V

    .line 490
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v4}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setInitializationNeeded(Z)V

    .line 491
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 493
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090007

    const/16 v2, 0x5dc

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBackKeyToast:Landroid/widget/Toast;

    .line 496
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090075

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioShockToast:Landroid/widget/Toast;

    .line 497
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f090013

    const v4, 0x7f09000a

    const/16 v3, 0x76f

    const/16 v2, 0x474

    const/4 v1, 0x1

    .line 1561
    const/16 v0, 0x5dc

    if-ne p1, v0, :cond_bb

    .line 1562
    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z

    .line 1563
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1564
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1565
    iget v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsRealDrmError:I

    if-ne v0, v1, :cond_6b

    .line 1566
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsRealDrmError:I

    .line 1567
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1568
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDimed(Z)V

    .line 1570
    :cond_3f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$17;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$17;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$16;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$16;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$15;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1767
    :goto_6a
    return-object v0

    .line 1612
    :cond_6b
    iget v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsRealDrmError:I

    if-nez v0, :cond_191

    .line 1613
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsRealDrmError:I

    .line 1614
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 1615
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDimed(Z)V

    .line 1617
    :cond_8f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$20;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$20;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$19;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$19;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$18;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$18;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_6a

    .line 1660
    :cond_bb
    const/16 v0, 0x472

    if-ne p1, v0, :cond_f2

    .line 1661
    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z

    .line 1662
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1663
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1664
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09003f

    new-instance v2, Lcom/samsung/dmp/layout/DMPAudioActivity$22;

    invoke-direct {v2, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$22;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$21;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$21;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_6a

    .line 1677
    :cond_f2
    const/16 v0, 0x5dd

    if-ne p1, v0, :cond_15a

    .line 1678
    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z

    .line 1679
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1680
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1681
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_11f

    .line 1682
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDimed(Z)V

    .line 1684
    :cond_11f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$25;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$25;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$24;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$24;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$23;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$23;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_6a

    .line 1727
    :cond_15a
    const/16 v0, 0x5de

    if-ne p1, v0, :cond_191

    .line 1728
    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z

    .line 1729
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1730
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1732
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09003f

    new-instance v2, Lcom/samsung/dmp/layout/DMPAudioActivity$27;

    invoke-direct {v2, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$27;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$26;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$26;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_6a

    .line 1767
    :cond_191
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_6a
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 931
    const/16 v0, 0xc8

    const v1, 0x7f090011

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 933
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 935
    const/16 v0, 0xca

    const/4 v1, 0x2

    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 937
    const/16 v0, 0xcb

    const/4 v1, 0x3

    const v2, 0x7f09001b

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020020

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 938
    const/16 v0, 0xcc

    const/4 v1, 0x4

    const v2, 0x7f09005b

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 939
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 1269
    const-string v0, "DLNA"

    const-string v1, "***DMPAudioActivity::onDestroy***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    .line 1272
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1274
    :cond_10
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_19

    .line 1275
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1277
    :cond_19
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onDestroy()V

    .line 1278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->readyPlayback:Ljava/lang/Thread;

    .line 1279
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->unRegisterTelephonyListener()V

    .line 1280
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1281
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->stop()V

    .line 1283
    :cond_33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z

    .line 1284
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x19

    const/16 v7, 0x18

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 900
    if-eq p1, v7, :cond_b

    if-ne p1, v8, :cond_5e

    .line 902
    :cond_b
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 903
    iput-boolean v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->isShowVolume:Z

    .line 904
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x578

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x578

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 908
    if-ne p1, v7, :cond_46

    .line 909
    :try_start_24
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 915
    :cond_34
    :goto_34
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v4, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 917
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->invalidate()V

    .line 927
    :goto_45
    return v2

    .line 911
    :cond_46
    if-ne p1, v8, :cond_34

    .line 912
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_58} :catch_59

    goto :goto_34

    .line 918
    :catch_59
    move-exception v0

    .line 919
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45

    .line 922
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5e
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6d

    .line 923
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 924
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_45

    .line 927
    .end local v1           #msg:Landroid/os/Message;
    :cond_6d
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_45
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/high16 v4, 0x2

    const/4 v0, 0x1

    .line 950
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 951
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    if-nez v1, :cond_21

    .line 1006
    :cond_20
    :goto_20
    return v0

    .line 953
    :cond_21
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->forceStop()V

    .line 954
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/view/PopupDialogView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_20

    .line 958
    :cond_39
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f09000c

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 959
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v1

    if-ne v1, v5, :cond_20

    .line 960
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->forceStop()V

    .line 961
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->refreshServerList()V

    .line 962
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

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_20

    .line 968
    :cond_79
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f09000b

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 969
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v1

    if-ne v1, v5, :cond_20

    .line 970
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->forceStop()V

    .line 971
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->refreshPlayerList()V

    .line 972
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "MODE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_20

    .line 977
    :cond_b4
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    .line 978
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    .line 979
    if-eqz v2, :cond_f1

    .line 980
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->forceStop()V

    .line 981
    new-instance v1, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;

    invoke-direct {v1, v2}, Lcom/sec/android/app/dlna/model/SerializablePlaylistItem;-><init>(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 982
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/dlna/ui/MediaInfo;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "detail"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_20

    .line 986
    :cond_f1
    const v2, 0x7f090037

    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_20

    .line 990
    :cond_101
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f09005b

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 991
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v2

    if-nez v2, :cond_12a

    .line 992
    const v1, 0x7f090059

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto/16 :goto_20

    .line 995
    :cond_12a
    :try_start_12a
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isServerStarted()Z
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_12a .. :try_end_135} :catch_13b

    move-result v2

    if-nez v2, :cond_13f

    move v0, v1

    .line 996
    goto/16 :goto_20

    .line 997
    :catch_13b
    move-exception v1

    .line 998
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1000
    :cond_13f
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->forceStop()V

    .line 1001
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/DLNASettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_20

    .line 1006
    :cond_152
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_20
.end method

.method public onPause()V
    .registers 5

    .prologue
    const v3, 0x7f09004c

    const/4 v2, 0x0

    .line 1181
    const-string v0, "DLNA"

    const-string v1, "DMPAudioActivity.onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-virtual {p0, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->setEnableTextScroll(Z)V

    .line 1185
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->unregisterMotionListener()V

    .line 1187
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPalmTouchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1188
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1190
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->musicPlayerToast:Landroid/widget/Toast;

    if-eqz v0, :cond_24

    .line 1191
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1194
    :cond_24
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1195
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x474

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1197
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mForceStopped:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->toRestart:Z

    if-eqz v0, :cond_5a

    .line 1198
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->musicStopToast:Landroid/widget/Toast;

    if-nez v0, :cond_6e

    .line 1199
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->musicStopToast:Landroid/widget/Toast;

    .line 1204
    :goto_52
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->musicStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1206
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->forceStop()V

    .line 1209
    :cond_5a
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1210
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1213
    :cond_67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->isDestroying:Z

    .line 1215
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPause()V

    .line 1216
    return-void

    .line 1202
    :cond_6e
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->musicStopToast:Landroid/widget/Toast;

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_52
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 943
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_12

    .line 944
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 946
    :cond_12
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 9

    .prologue
    const/16 v7, 0x5dc

    const/16 v6, 0x457

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1019
    invoke-super {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->onResume()V

    .line 1021
    invoke-virtual {p0, v5}, Lcom/samsung/dmp/layout/DMPAudioActivity;->setEnableTextScroll(Z)V

    .line 1023
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-nez v0, :cond_22

    .line 1024
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->SaveConnection(Ljava/lang/String;)V

    .line 1025
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 1028
    :cond_22
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->musicStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2b

    .line 1029
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->musicStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1032
    :cond_2b
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1033
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1035
    :cond_38
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1037
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1038
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.app.dlna.player_started"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1040
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1041
    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1042
    const-string v1, "android.intent.action.PALM_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1043
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPalmTouchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1045
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->registerMotionListener()V

    .line 1047
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1048
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v5}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setBufferingOn(Z)V

    .line 1050
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mNotSupported:Z

    .line 1051
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->isDestroying:Z

    .line 1053
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    iget-boolean v0, v0, Lcom/samsung/dmp/layout/VideoSurfaceView;->mIsR2VS:Z

    if-eqz v0, :cond_18e

    .line 1054
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->is51channelOn:Z

    .line 1055
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v5}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setR2VSMode(Z)V

    .line 1056
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mButtonSRS:Landroid/widget/ImageView;

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1063
    :goto_91
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->toRestart:Z

    if-eqz v0, :cond_28a

    .line 1065
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-eqz v0, :cond_19f

    .line 1066
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

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->selectedItemUri:Ljava/lang/String;

    .line 1068
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

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaNameStr:Ljava/lang/String;

    .line 1070
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/ContentItem;->getArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaArtistStr:Ljava/lang/String;

    .line 1072
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

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->type:Ljava/lang/String;

    .line 1074
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

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mExtension:Ljava/lang/String;

    .line 1076
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

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;

    .line 1095
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->setMediaName()V

    .line 1101
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylistDMP()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 1102
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDRM()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mDRMFlag:Z

    .line 1103
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->selectedItemUri:Ljava/lang/String;

    if-eqz v1, :cond_183

    .line 1104
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->setThumbnail()V

    .line 1105
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->isLastFileInPlaylist()Z

    move-result v1

    if-nez v1, :cond_285

    .line 1106
    iget-boolean v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mForceStopped:Z

    if-eqz v1, :cond_217

    .line 1118
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->isSupportedType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1cd

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mDRMFlag:Z

    invoke-direct {p0, v1, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->isDRMFile(Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_1cd

    .line 1119
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->selectedItemUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x473

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1176
    :cond_183
    :goto_183
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setFocusable(Z)V

    .line 1177
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setFocusableInTouchMode(Z)V

    .line 1178
    :goto_18d
    return-void

    .line 1058
    :cond_18e
    iput-boolean v4, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->is51channelOn:Z

    .line 1059
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0, v4}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setR2VSMode(Z)V

    .line 1060
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mButtonSRS:Landroid/widget/ImageView;

    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_91

    .line 1080
    :cond_19f
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBufferingView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1081
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->readyPlayback:Ljava/lang/Thread;

    .line 1082
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->stop()V

    .line 1083
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaNameStr:Ljava/lang/String;

    .line 1084
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaArtistStr:Ljava/lang/String;

    .line 1085
    invoke-direct {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->setMediaName()V

    .line 1086
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlViewDMP;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/app/dlna/view/MediaControlViewDMP;->initProgressBar(II)V

    .line 1087
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1090
    const/16 v0, 0x5dd

    :try_start_1c7
    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->showDialog(I)V
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1ca} :catch_1cb

    goto :goto_18d

    .line 1091
    :catch_1cb
    move-exception v0

    goto :goto_18d

    .line 1122
    :cond_1cd
    iget v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsRealDrmError:I

    if-eq v1, v3, :cond_210

    .line 1123
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDRM(Z)V

    .line 1124
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

    .line 1126
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleStop()V

    .line 1127
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mNotSupported:Z

    .line 1128
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1129
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1130
    invoke-virtual {p0, v7}, Lcom/samsung/dmp/layout/DMPAudioActivity;->showDialog(I)V

    goto/16 :goto_183

    .line 1132
    :cond_210
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_183

    .line 1137
    :cond_217
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/dmp/layout/DMPAudioActivity;->isSupportedType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23b

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mimeType:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mDRMFlag:Z

    invoke-direct {p0, v1, v2}, Lcom/samsung/dmp/layout/DMPAudioActivity;->isDRMFile(Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_23b

    .line 1138
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->selectedItemUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setParameters(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x471

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_183

    .line 1153
    :cond_23b
    iget v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsRealDrmError:I

    if-eq v1, v3, :cond_27e

    .line 1154
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDRM(Z)V

    .line 1155
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "6 DRM setted TRUE : "

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

    .line 1157
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleStop()V

    .line 1158
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mNotSupported:Z

    .line 1159
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1160
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1161
    invoke-virtual {p0, v7}, Lcom/samsung/dmp/layout/DMPAudioActivity;->showDialog(I)V

    goto/16 :goto_183

    .line 1163
    :cond_27e
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_183

    .line 1168
    :cond_285
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->handleStop()V

    goto/16 :goto_183

    .line 1172
    :cond_28a
    iput-boolean v5, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->toRestart:Z

    goto/16 :goto_183
.end method

.method public play()V
    .registers 3

    .prologue
    .line 1258
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->setLastFileInPlaylistFlag(Z)V

    .line 1261
    const-string v0, "DLNA"

    const-string v1, "Setting VideoView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-virtual {p0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->playback()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 1266
    :goto_12
    return-void

    .line 1263
    :catch_13
    move-exception v0

    .line 1264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method playback()V
    .registers 6

    .prologue
    const/16 v4, 0x76f

    const/4 v3, 0x0

    .line 1240
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1241
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/dmp/layout/VideoSurfaceView;->setBufferingOn(Z)V

    .line 1242
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1243
    iput v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mBufferingStatus:I

    .line 1244
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->isDestroying:Z

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z

    if-nez v0, :cond_27

    .line 1245
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1247
    :cond_27
    iput-boolean v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mIsStopped:Z

    .line 1248
    iput-boolean v3, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z

    .line 1249
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1251
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mPaused:Z

    if-eqz v0, :cond_3b

    .line 1252
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/dmp/layout/VideoSurfaceView;->pause()V

    .line 1254
    :cond_3b
    return-void
.end method

.method registerMotionListener()V
    .registers 4

    .prologue
    .line 1997
    const-string v0, "DLNA"

    const-string v1, "DMPAudioActivity.registerMotionListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    sget-object v0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_15

    .line 2000
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/samsung/dmp/layout/DMPAudioActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 2002
    :cond_15
    sget-object v0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 2003
    return-void
.end method

.method public seekComplete()V
    .registers 3

    .prologue
    .line 1476
    iget-boolean v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->showThePopup:Z

    if-eqz v0, :cond_18

    .line 1477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->readyPlayback:Ljava/lang/Thread;

    .line 1478
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mVideoView:Lcom/samsung/dmp/layout/VideoSurfaceView;

    if-eqz v0, :cond_18

    .line 1479
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/dmp/layout/DMPAudioActivity$14;

    invoke-direct {v1, p0}, Lcom/samsung/dmp/layout/DMPAudioActivity$14;-><init>(Lcom/samsung/dmp/layout/DMPAudioActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1486
    :cond_18
    return-void
.end method

.method protected setEnableTextScroll(Z)V
    .registers 3
    .parameter "bEnable"

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaName:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 2015
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2018
    :cond_9
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaArtist:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 2019
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMediaArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2021
    :cond_12
    return-void
.end method

.method unregisterMotionListener()V
    .registers 3

    .prologue
    .line 2006
    const-string v0, "DLNA"

    const-string v1, "DMPAudioActivity.unregisterMotionListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    sget-object v0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_12

    .line 2009
    sget-object v0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPAudioActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 2010
    :cond_12
    return-void
.end method
