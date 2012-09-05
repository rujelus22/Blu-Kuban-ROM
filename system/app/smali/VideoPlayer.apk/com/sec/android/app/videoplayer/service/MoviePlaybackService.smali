.class public Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;
.super Landroid/app/Service;
.source "MoviePlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
    }
.end annotation


# static fields
.field public static final ACTION_HDMI_START:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.ACTION_HDMI_START"

.field private static final CHECK_CNT:I = 0xa

.field private static final CHECK_DELAY:I = 0xc8

.field private static final CMD_NOACTION:I = 0x64

.field private static final CMD_PAUSE:I = 0x66

.field private static final CMD_PLAY:I = 0x65

.field private static final CMD_STOP:I = 0x67

.field private static final DEBUG:Z = true

.field private static final ErrDrmLicenseExpired:I = 0x7

.field private static final ErrDrmLicenseNotFound:I = 0x8

.field private static final ErrDrmRightsAcquisitionFailed:I = 0xa

.field private static final FADEIN:I = 0x3

.field private static final IDLE_DELAY:I = 0x3a98

.field private static final ISPAUSECHECK:I = 0x5

.field private static final ISPLAYCHECK:I = 0x4

.field private static final ISSTOPCHECK:I = 0x6

.field public static final MEDIA_ERROR_CURRUPT:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_CURRUPT"

.field public static final MEDIA_ERROR_DIVX_NOTAUTHORIZED:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_DIVX_NOTAUTHORIZED"

.field public static final MEDIA_ERROR_EXPIRED_RENTALCOUNT:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_EXPIRED_RENTALCOUNT"

.field public static final MEDIA_ERROR_INVALID:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_INVALID"

.field public static final MEDIA_ERROR_NOTSUPPORT:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_NOTSUPPORT"

.field public static final MEDIA_ERROR_UNKNOWN:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

.field public static final NO_DATA_CONNECTIVITY_POPUP:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.NO_DATA_CONNECTIVITY_POPUP"

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_COMPLETE"

.field public static final PLAYBACK_DRM_DEVCERT_REVOKED:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DEVCERT_REVOKED"

.field public static final PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DISMISS_ACQUIRING_POPUP"

.field public static final PLAYBACK_DRM_DOMAIN_REQUIRED:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_DOMAIN_REQUIRED"

.field public static final PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_ACQUISITION_FAILED"

.field public static final PLAYBACK_DRM_LICENSE_EXPIRED:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_EXPIRED"

.field public static final PLAYBACK_DRM_LICENSE_NOT_FOUND:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_NOT_FOUND"

.field public static final PLAYBACK_DRM_SERVER_DEVICE_LIMIT_REACHED:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_DEVICE_LIMIT_REACHED"

.field public static final PLAYBACK_DRM_SERVER_INTERNAL_ERROR:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_INTERNAL_ERROR"

.field public static final PLAYBACK_DRM_SERVER_NOT_A_MEMBER:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_NOT_A_MEMBER"

.field public static final PLAYBACK_DRM_SERVER_PROTOCOL_VERSION_MISMATCH:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_PROTOCOL_VERSION_MISMATCH"

.field public static final PLAYBACK_DRM_SERVER_UNKNOWN_ACCOUNT_ID:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SERVER_UNKNOWN_ACCOUNT_ID"

.field public static final PLAYBACK_DRM_SHOW_ACQUIRING_POPUP:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SHOW_ACQUIRING_POPUP"

.field public static final PLAYBACK_DRM_STRING_DIVX_NOT_AUTHORIZED:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_AUTHORIZED"

.field public static final PLAYBACK_DRM_STRING_DIVX_NOT_REGISTERED:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_REGISTERED"

.field public static final PLAYBACK_DRM_STRING_DIVX_RENTAL_EXPIRED:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_EXPIRED"

.field public static final PLAYBACK_DRM_STRING_DIVX_RENTAL_INFO:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_INFO"

.field public static final PLAYBACK_DRM_STRING_FIRST_INTERVAL_RENDER:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_FIRST_INTERVAL_RENDER"

.field public static final PLAYBACK_DRM_STRING_INVALID_CD:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_CD"

.field public static final PLAYBACK_DRM_STRING_INVALID_SD:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_SD"

.field public static final PLAYBACK_DRM_STRING_LICENSE_NOT_FOUND:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_LICENSE_NOT_FOUND"

.field public static final PLAYBACK_DRM_STRING_NULL:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_NULL"

.field public static final PLAYBACK_DRM_STRING_VALID_COUNT:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_VALID_COUNT"

.field public static final PLAYBACK_DRM_STRING_WMDRM_INVALID:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_WMDRM_INVALID"

.field public static final PLAYBACK_ERR_MEDIA_NULL:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_ERR_MEDIA_NULL"

.field public static final PLAYBACK_INCOMINGCALL:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_INCOMINGCALL"

.field public static final PLAYBACK_LOWBATTERY:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_LOWBATTERY"

.field public static final PLAYBACK_UPDATE:Ljava/lang/String; = "videoplayer.service.MoviePlaybackService.PLAYBACK_UPDATE"

.field private static final PLAY_ENDED:I = 0x1

.field private static final RELEASE_WAKELOCK:I = 0x2

.field private static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final TAG:Ljava/lang/String; = "MoviePlaybackService"

.field private static final VIDEOPLAYER:Ljava/lang/String; = "com.sec.android.app.videoplayer"

.field private static final dla_Success_start_playback:I = 0xb

.field public static mDrmPopupType:I


# instance fields
.field private drm_uri:Ljava/lang/String;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBinder:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;

.field private final mBroadcastListener:Landroid/content/BroadcastReceiver;

.field private mBufferPercentage:I

.field private mCMDAction:I

.field private mCMDCheckCnt:I

.field private mCallState:I

.field mCurrentVolume:F

.field private final mDelayedStopHandler:Landroid/os/Handler;

.field private final mDrmErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private final mDrmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field mDrmStringType:[Ljava/lang/String;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mUri:Landroid/net/Uri;

.field private mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

.field private mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

.field private mVideoHeight:I

.field private final mVideoPlayerHandler:Landroid/os/Handler;

.field private mVideoWidth:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 117
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 118
    iput v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceStartId:I

    .line 123
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    .line 124
    iput v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 125
    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceInUse:Z

    .line 126
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 127
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    .line 128
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    .line 129
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    .line 132
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 133
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 134
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCurrentVolume:F

    .line 136
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_NULL"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_VALID_COUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_CD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_INVALID_SD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_FIRST_INTERVAL_RENDER"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_WMDRM_INVALID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_AUTHORIZED"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_NOT_REGISTERED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_EXPIRED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_STRING_DIVX_RENTAL_INFO"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    .line 206
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$1;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    .line 289
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$2;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 306
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$3;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBroadcastListener:Landroid/content/BroadcastReceiver;

    .line 440
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$4;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 451
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$5;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 482
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$6;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 1060
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$7;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1904
    new-instance v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$8;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBinder:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBufferPercentage:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    return p1
.end method

.method static synthetic access$2302(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlayCheck()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPauseCheck()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isStopCheck()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->drm_uri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCallState:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private gotoIdleState()V
    .registers 5

    .prologue
    .line 1028
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1030
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1031
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1032
    return-void
.end method

.method private isBrowser(Ljava/lang/String;)Z
    .registers 3
    .parameter "scheme"

    .prologue
    .line 495
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "rtsp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 496
    :cond_10
    const/4 v0, 0x1

    .line 498
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isPauseCheck()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 169
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->pause()V

    .line 177
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_33

    .line 178
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 185
    :goto_2a
    return-void

    .line 172
    :cond_2b
    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2a

    .line 181
    :cond_33
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    .line 182
    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2a
.end method

.method private isPlayCheck()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 150
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->play()V

    .line 158
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_33

    .line 159
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 166
    :goto_2a
    return-void

    .line 153
    :cond_2b
    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2a

    .line 162
    :cond_33
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    .line 163
    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2a
.end method

.method private isStopCheck()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x6

    .line 188
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_2b

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->stop()V

    .line 196
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_33

    .line 197
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 204
    :goto_2a
    return-void

    .line 191
    :cond_2b
    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2a

    .line 200
    :cond_33
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    .line 201
    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2a
.end method

.method private notifyChange(Ljava/lang/String;)V
    .registers 6
    .parameter "what"

    .prologue
    .line 502
    const-string v1, "MoviePlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChange() - string :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 505
    return-void
.end method

.method private notifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "what"
    .parameter "errorUrl"

    .prologue
    .line 508
    const-string v1, "MoviePlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChange() - string :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 512
    return-void
.end method

.method private stop(Z)V
    .registers 4
    .parameter "remove_status_icon"

    .prologue
    .line 989
    const-string v0, "MoviePlaybackService"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 992
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->stop()V

    .line 993
    const-string v0, "videoplayer.service.MoviePlaybackService.PLAYBACK_UPDATE"

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 999
    :goto_19
    if-eqz p1, :cond_1e

    .line 1000
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->gotoIdleState()V

    .line 1001
    :cond_1e
    return-void

    .line 995
    :cond_1f
    const-string v0, "MoviePlaybackService"

    const-string v1, "stop() - not initialized. only just set player state to stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPlayerState(I)V

    goto :goto_19
.end method


# virtual methods
.method public addRecently(Ljava/lang/String;)V
    .registers 19
    .parameter "video_uri"

    .prologue
    .line 687
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v1

    const-wide/16 v15, 0x1

    cmp-long v1, v1, v15

    if-gez v1, :cond_b

    .line 773
    :cond_a
    :goto_a
    return-void

    .line 691
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-eqz v1, :cond_a

    .line 692
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 694
    .local v10, uri:Landroid/net/Uri;
    const-string v13, ""

    .line 695
    .local v13, videoData:Ljava/lang/String;
    const-string v14, ""

    .line 696
    .local v14, videoSize:Ljava/lang/String;
    const-string v12, ""

    .line 698
    .local v12, videoBucketId:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 700
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 701
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "video_uri"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v1, "_id"

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 703
    const-string v1, "PlayedWhen"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v15, 0x3e8

    div-long/2addr v2, v15

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 706
    const-string v4, ""

    .line 707
    .local v4, data:Ljava/lang/String;
    const-string v5, ""

    .line 708
    .local v5, size:Ljava/lang/String;
    const-string v6, ""

    .line 710
    .local v6, bucket_id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoDetails(J)Landroid/database/Cursor;

    move-result-object v8

    .line 712
    .local v8, cursorVideo:Landroid/database/Cursor;
    if-eqz v8, :cond_8e

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8e

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 713
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 714
    const-string v1, "_size"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 715
    const-string v1, "bucket_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 718
    :cond_8e
    if-eqz v8, :cond_94

    .line 719
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 720
    const/4 v8, 0x0

    .line 723
    :cond_94
    const/4 v7, 0x0

    .line 726
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_95
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v2

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->getList(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a5} :catch_135

    move-result-object v7

    .line 734
    :cond_a6
    :goto_a6
    if-eqz v7, :cond_af

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_15d

    .line 735
    :cond_af
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->deleteByVideoId(J)I

    .line 736
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v1

    invoke-interface {v1, v4, v5, v6}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->deleteByKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v1

    invoke-interface {v1, v11}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->add(Landroid/content/ContentValues;)V

    .line 739
    if-eqz v7, :cond_dd

    .line 740
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 741
    const/4 v7, 0x0

    .line 745
    :cond_dd
    :try_start_dd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoDetails(J)Landroid/database/Cursor;
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e8} :catch_13e

    move-result-object v7

    .line 752
    :goto_e9
    if-eqz v7, :cond_12e

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 754
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 755
    const-string v1, "_size"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 756
    const-string v1, "bucket_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 758
    const-string v1, "_data"

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v1, "_size"

    invoke-virtual {v11, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v1, "bucket_id"

    invoke-virtual {v11, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v11}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->update(JLandroid/content/ContentValues;)I

    .line 768
    :cond_12e
    :goto_12e
    if-eqz v7, :cond_a

    .line 769
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a

    .line 727
    :catch_135
    move-exception v9

    .line 728
    .local v9, e:Ljava/lang/Exception;
    if-eqz v7, :cond_a6

    .line 729
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 730
    const/4 v7, 0x0

    goto/16 :goto_a6

    .line 746
    .end local v9           #e:Ljava/lang/Exception;
    :catch_13e
    move-exception v9

    .line 747
    .restart local v9       #e:Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 748
    const-string v1, "MoviePlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e9

    .line 765
    .end local v9           #e:Ljava/lang/Exception;
    :cond_15d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v11}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->update(JLandroid/content/ContentValues;)I

    goto :goto_12e
.end method

.method public checkIsDRM(Ljava/lang/String;)Z
    .registers 19
    .parameter "uri"

    .prologue
    .line 517
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v13

    if-nez v13, :cond_20

    .line 518
    const-string v13, "MoviePlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkDRMFile E. uri = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_20
    if-nez p1, :cond_24

    .line 521
    const/4 v13, 0x1

    .line 637
    :goto_23
    return v13

    .line 522
    :cond_24
    sget-object v13, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getID()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v11

    .line 523
    .local v11, path:Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setCurPlayingPath(Ljava/lang/String;)V

    .line 524
    if-eqz v11, :cond_39

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4c

    .line 525
    :cond_39
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getVideoUri()Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, filePath:Ljava/lang/String;
    if-eqz v4, :cond_62

    const-string v13, "file://"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_62

    .line 528
    const/4 v13, 0x7

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 543
    .end local v4           #filePath:Ljava/lang/String;
    :cond_4c
    :goto_4c
    sget-object v13, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v13}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->reset()V

    .line 544
    sget-object v13, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v13, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDrm(Ljava/lang/String;)I

    move-result v3

    .line 545
    .local v3, DrmType:I
    sget-object v13, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v13, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkRightsStatus(Ljava/lang/String;)I

    move-result v2

    .line 546
    .local v2, DrmRigthsStatus:I
    packed-switch v3, :pswitch_data_22c

    .line 637
    :cond_60
    const/4 v13, 0x1

    goto :goto_23

    .line 529
    .end local v2           #DrmRigthsStatus:I
    .end local v3           #DrmType:I
    .restart local v4       #filePath:Ljava/lang/String;
    :cond_62
    sget-boolean v13, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_96

    .line 531
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "sphttp://["

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_94

    .line 532
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    .line 533
    .local v12, path_sp:Ljava/lang/String;
    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 534
    .local v5, indexofbracket1:I
    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 535
    .local v6, indexofbracket2:I
    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v12, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 536
    .local v7, length:Ljava/lang/String;
    add-int/lit8 v13, v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 538
    .end local v5           #indexofbracket1:I
    .end local v6           #indexofbracket2:I
    .end local v7           #length:Ljava/lang/String;
    .end local v12           #path_sp:Ljava/lang/String;
    :cond_94
    move-object v11, v4

    goto :goto_4c

    .line 540
    :cond_96
    const/4 v13, 0x1

    goto :goto_23

    .line 548
    .end local v4           #filePath:Ljava/lang/String;
    .restart local v2       #DrmRigthsStatus:I
    .restart local v3       #DrmType:I
    :pswitch_98
    sget-object v13, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v13, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initOMADrmDeliveryType(Ljava/lang/String;)V

    .line 549
    const/4 v13, 0x3

    if-ne v2, v13, :cond_115

    .line 551
    sget-object v13, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v13, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->initOMADrmConstraintsInfo(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b9

    .line 552
    const-string v13, "MoviePlaybackService"

    const-string v14, "checkDRMFile - get DRM information error"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v13, "videoplayer.service.MoviePlaybackService.MEDIA_ERROR_UNKNOWN"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 554
    const/4 v13, 0x0

    goto/16 :goto_23

    .line 556
    :cond_b9
    sget-object v13, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v13, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->setValidOMADrmMsg(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    .line 558
    const-string v13, "MoviePlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkDRMFile - mDrmPopupType : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/16 v13, 0x1e

    sget v14, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    if-eq v13, v14, :cond_60

    .line 560
    const-string v13, "MoviePlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkDRMFile : pop up type = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v16, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    add-int/lit8 v16, v16, -0x1e

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v14, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    add-int/lit8 v14, v14, -0x1e

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 562
    const/4 v13, 0x0

    goto/16 :goto_23

    .line 567
    :cond_115
    sget-object v13, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v13}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->setInvalidOMADrmMsg()I

    move-result v13

    sput v13, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    .line 568
    const-string v13, "MoviePlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkDRMFile - Invalid rights. mDrmPopupType : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/16 v13, 0x1e

    sget v14, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    if-eq v13, v14, :cond_60

    .line 570
    const-string v13, "MoviePlaybackService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkDRMFile : pop up type = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v16, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    add-int/lit8 v16, v16, -0x1e

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v14, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    add-int/lit8 v14, v14, -0x1e

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 572
    const/4 v13, 0x0

    goto/16 :goto_23

    .line 578
    :pswitch_171
    const-string v13, "MoviePlaybackService"

    const-string v14, "checkDRMFile. VIDEO_DRM_PRDRM type."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v13, 0x2

    if-eq v2, v13, :cond_17e

    const/4 v13, 0x1

    if-ne v2, v13, :cond_1d9

    .line 580
    :cond_17e
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->drm_uri:Ljava/lang/String;

    .line 582
    sget-object v13, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v13}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsNetworkConnected()Z

    move-result v13

    if-eqz v13, :cond_1c8

    .line 583
    new-instance v8, Landroid/drm/DrmManagerClient;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 584
    .local v8, mDrmClient:Landroid/drm/DrmManagerClient;
    sget-object v13, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v13, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 586
    .local v10, mimeType:Ljava/lang/String;
    new-instance v9, Landroid/drm/DrmInfoRequest;

    const/4 v13, 0x3

    invoke-direct {v9, v13, v10}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 588
    .local v9, mDrminfoRequest_DLA:Landroid/drm/DrmInfoRequest;
    const-string v13, "drm_path"

    invoke-virtual {v9, v13, v11}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    invoke-virtual {v8, v13}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    invoke-virtual {v8, v13}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    .line 601
    invoke-virtual {v8, v9}, Landroid/drm/DrmManagerClient;->acquireRights(Landroid/drm/DrmInfoRequest;)I

    .line 602
    const-string v13, "MoviePlaybackService"

    const-string v14, "License Acquisitin has started"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v13, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_SHOW_ACQUIRING_POPUP"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 604
    const/4 v13, 0x0

    goto/16 :goto_23

    .line 607
    .end local v8           #mDrmClient:Landroid/drm/DrmManagerClient;
    .end local v9           #mDrminfoRequest_DLA:Landroid/drm/DrmInfoRequest;
    .end local v10           #mimeType:Ljava/lang/String;
    :cond_1c8
    const-string v13, "MoviePlaybackService"

    const-string v14, "No Network Connection"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v13, "videoplayer.service.MoviePlaybackService.NO_DATA_CONNECTIVITY_POPUP"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 609
    const/4 v13, 0x0

    goto/16 :goto_23

    .line 612
    :cond_1d9
    if-nez v2, :cond_60

    .line 613
    const-string v13, "MoviePlaybackService"

    const-string v14, "License rights invalid"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v13, "videoplayer.service.MoviePlaybackService.PLAYBACK_DRM_LICENSE_NOT_FOUND"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 615
    const/4 v13, 0x0

    goto/16 :goto_23

    .line 621
    :pswitch_1ec
    const-string v13, "MoviePlaybackService"

    const-string v14, "checkDRMFile Divx type."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    sget-object v13, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v13, v2, v11}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->divxPopupType(ILjava/lang/String;)I

    move-result v13

    sput v13, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    .line 623
    sget v13, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    const/16 v14, 0x1e

    if-eq v13, v14, :cond_60

    .line 624
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmStringType:[Ljava/lang/String;

    sget v14, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    add-int/lit8 v14, v14, -0x1e

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 625
    sget v13, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    const/16 v14, 0x24

    if-eq v13, v14, :cond_222

    sget v13, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    const/16 v14, 0x26

    if-eq v13, v14, :cond_222

    sget v13, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDrmPopupType:I

    const/16 v14, 0x27

    if-ne v13, v14, :cond_60

    .line 628
    :cond_222
    const-string v13, "MoviePlaybackService"

    const-string v14, "checkDRMFile Divx return false"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v13, 0x0

    goto/16 :goto_23

    .line 546
    :pswitch_data_22c
    .packed-switch 0x1
        :pswitch_98
        :pswitch_171
        :pswitch_1ec
    .end packed-switch
.end method

.method public duration()J
    .registers 3

    .prologue
    .line 897
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->getDuration()J

    move-result-wide v0

    .line 901
    :goto_e
    return-wide v0

    .line 900
    :cond_f
    const-string v0, "MoviePlaybackService"

    const-string v1, "duration() - not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-wide/16 v0, -0x1

    goto :goto_e
.end method

.method public getBufferPercentage()I
    .registers 3

    .prologue
    .line 663
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 664
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBufferPercentage:I

    .line 665
    const-string v0, "MoviePlaybackService"

    const-string v1, "getBufferPercentage() - not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_12
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBufferPercentage:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 19

    .prologue
    .line 777
    const-string v1, "MoviePlaybackService"

    const-string v3, "getDisplayName"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v9, ""

    .line 779
    .local v9, displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    .line 781
    .local v2, video_uri:Landroid/net/Uri;
    if-eqz v2, :cond_1d2

    .line 782
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isBrowser(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 783
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 787
    .local v12, filePath:Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 788
    .local v14, lastIndex1:I
    const/16 v1, 0x2e

    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 791
    .local v15, lastIndex2:I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v14, v1, :cond_78

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v15, v1, :cond_78

    if-ge v14, v15, :cond_78

    .line 793
    :try_start_41
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v3, 0x20

    if-ne v1, v3, :cond_6d

    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFileTitle:Ljava/lang/String;

    if-eqz v1, :cond_6d

    .line 794
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFileTitle:Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_41 .. :try_end_4d} :catch_74

    .line 878
    .end local v12           #filePath:Ljava/lang/String;
    .end local v14           #lastIndex1:I
    .end local v15           #lastIndex2:I
    :cond_4d
    :goto_4d
    const-string v1, "<unknown>"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d2

    .line 879
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content://mms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d2

    .line 880
    const-string v1, "MoviePlaybackService"

    const-string v3, "getDispalyName(): unknown and startsWidth content://mms."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 886
    :goto_6c
    return-object v1

    .line 796
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v14       #lastIndex1:I
    .restart local v15       #lastIndex2:I
    :cond_6d
    add-int/lit8 v1, v14, 0x1

    :try_start_6f
    invoke-virtual {v12, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_6f .. :try_end_72} :catch_74

    move-result-object v9

    goto :goto_4d

    .line 798
    :catch_74
    move-exception v11

    .line 799
    .local v11, e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v9, ""

    .line 800
    goto :goto_4d

    .line 801
    .end local v11           #e:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_78
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v14, v1, :cond_8b

    .line 803
    add-int/lit8 v1, v14, 0x1

    :try_start_82
    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_85
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_82 .. :try_end_85} :catch_87

    move-result-object v9

    goto :goto_4d

    .line 804
    :catch_87
    move-exception v11

    .line 805
    .restart local v11       #e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v9, ""

    .line 806
    goto :goto_4d

    .line 808
    .end local v11           #e:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_8b
    const-string v9, ""

    goto :goto_4d

    .line 809
    .end local v12           #filePath:Ljava/lang/String;
    .end local v14           #lastIndex1:I
    .end local v15           #lastIndex2:I
    :cond_8e
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v3, 0x1c

    if-eq v1, v3, :cond_114

    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v3, 0x1b

    if-eq v1, v3, :cond_114

    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v3, 0x1f

    if-eq v1, v3, :cond_114

    .line 810
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v3, 0x18

    if-eq v1, v3, :cond_ac

    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_f8

    .line 811
    :cond_ac
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 817
    :cond_b6
    :goto_b6
    :try_start_b6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b6 .. :try_end_c1} :catch_d9

    move-result-object v8

    .line 819
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4d

    .line 821
    :try_start_c4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 822
    const-string v1, "title"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 823
    .local v13, idx:I
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_d3
    .catchall {:try_start_c4 .. :try_end_d3} :catchall_10f

    move-result-object v9

    .line 827
    .end local v13           #idx:I
    :cond_d4
    :try_start_d4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_d7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d4 .. :try_end_d7} :catch_d9

    goto/16 :goto_4d

    .line 830
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_d9
    move-exception v11

    .line 831
    .local v11, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "MoviePlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException occured  2 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4d

    .line 812
    .end local v11           #e:Landroid/database/sqlite/SQLiteException;
    :cond_f8
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v3, 0x17

    if-eq v1, v3, :cond_104

    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v3, 0x19

    if-ne v1, v3, :cond_b6

    .line 813
    :cond_104
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_b6

    .line 827
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_10f
    move-exception v1

    :try_start_110
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_114
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_110 .. :try_end_114} :catch_d9

    .line 833
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_114
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    if-eqz v1, :cond_120

    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFileTitle:Ljava/lang/String;

    if-eqz v1, :cond_120

    .line 834
    sget-object v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFileTitle:Ljava/lang/String;

    goto/16 :goto_4d

    .line 836
    :cond_120
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content://mms/part"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_176

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 839
    .local v16, metadataCursor:Landroid/database/Cursor;
    if-eqz v16, :cond_4d

    .line 841
    :try_start_13a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 842
    const-string v1, "cl"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 843
    new-instance v10, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-virtual {v9, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_159
    .catchall {:try_start_13a .. :try_end_159} :catchall_171
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13a .. :try_end_159} :catch_15f
    .catch Ljava/lang/NullPointerException; {:try_start_13a .. :try_end_159} :catch_168

    .end local v9           #displayName:Ljava/lang/String;
    .local v10, displayName:Ljava/lang/String;
    move-object v9, v10

    .line 850
    .end local v10           #displayName:Ljava/lang/String;
    .restart local v9       #displayName:Ljava/lang/String;
    :cond_15a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4d

    .line 845
    :catch_15f
    move-exception v11

    .line 846
    .local v11, e:Ljava/io/UnsupportedEncodingException;
    :try_start_160
    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_163
    .catchall {:try_start_160 .. :try_end_163} :catchall_171

    .line 850
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4d

    .line 847
    .end local v11           #e:Ljava/io/UnsupportedEncodingException;
    :catch_168
    move-exception v11

    .line 848
    .local v11, e:Ljava/lang/NullPointerException;
    :try_start_169
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_16c
    .catchall {:try_start_169 .. :try_end_16c} :catchall_171

    .line 850
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4d

    .end local v11           #e:Ljava/lang/NullPointerException;
    :catchall_171
    move-exception v1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v1

    .line 853
    .end local v16           #metadataCursor:Landroid/database/Cursor;
    :cond_176
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content://com.android.email.attachmentprovider"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 856
    .restart local v16       #metadataCursor:Landroid/database/Cursor;
    if-eqz v16, :cond_4d

    .line 858
    :try_start_190
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1a6

    .line 859
    const-string v1, "_display_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 861
    .local v7, columnIdx:I
    if-lez v7, :cond_1a6

    .line 862
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1a5
    .catchall {:try_start_190 .. :try_end_1a5} :catchall_1ab

    move-result-object v9

    .line 865
    .end local v7           #columnIdx:I
    :cond_1a6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4d

    :catchall_1ab
    move-exception v1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v1

    .line 868
    .end local v16           #metadataCursor:Landroid/database/Cursor;
    :cond_1b0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 869
    new-instance v17, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 871
    .local v17, temp:Ljava/io/File;
    if-eqz v17, :cond_4d

    .line 872
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 873
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    goto/16 :goto_4d

    .end local v17           #temp:Ljava/io/File;
    :cond_1d2
    move-object v1, v9

    .line 886
    goto/16 :goto_6c
.end method

.method public getFullPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 891
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 893
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getVideoHeight()I
    .registers 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 680
    const-string v0, "MoviePlaybackService"

    const-string v1, "getVideoHeight() - not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/4 v0, 0x0

    .line 683
    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoHeight:I

    goto :goto_10
.end method

.method public getVideoWidth()I
    .registers 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_11

    .line 672
    const-string v0, "MoviePlaybackService"

    const-string v1, "getVideoWidth() - not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    .line 675
    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoWidth:I

    goto :goto_10
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 3

    .prologue
    .line 943
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isPlaying()Z

    move-result v0

    .line 947
    :goto_e
    return v0

    .line 946
    :cond_f
    const-string v0, "MoviePlaybackService"

    const-string v1, "isPlaying() - not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceInUse:Z

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBinder:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 362
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 363
    const-string v3, "MoviePlaybackService"

    const-string v4, "onCreate() : start!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v3, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;-><init>(Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;)V

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    .line 366
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setHandler(Landroid/os/Handler;)V

    .line 367
    const/16 v3, 0x64

    iput v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    .line 368
    iput v5, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 370
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 371
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    .line 372
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 374
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 375
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 377
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 378
    .local v1, powermanager:Landroid/os/PowerManager;
    const v3, 0x1000000a

    const-string v4, "MoviePlayer-Sleep"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 379
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 381
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 382
    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v3, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBroadcastListener:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 388
    const-string v1, "MoviePlaybackService"

    const-string v2, "onDestroy() : start!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 391
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 393
    :cond_15
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mBroadcastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 395
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 396
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 399
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 401
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 402
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceInUse:Z

    .line 413
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 416
    iput p2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceStartId:I

    .line 417
    iget v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceStartId:I

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 420
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 421
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    .line 424
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceInUse:Z

    .line 426
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 437
    :goto_a
    return v1

    .line 429
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoPlayerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 430
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 431
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    .line 435
    .end local v0           #msg:Landroid/os/Message;
    :cond_21
    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->stopForeground(Z)V

    .line 436
    iget v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->stopSelf(I)V

    .line 437
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_a
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 1008
    const-string v0, "MoviePlaybackService"

    const-string v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1010
    const-string v0, "MoviePlaybackService"

    const-string v1, "puase() - current is not playing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :goto_14
    return-void

    .line 1014
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1015
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->pause()V

    .line 1016
    const-string v0, "videoplayer.service.MoviePlaybackService.PLAYBACK_UPDATE"

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1019
    :cond_27
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->gotoIdleState()V

    goto :goto_14
.end method

.method public play()V
    .registers 7

    .prologue
    .line 956
    const-string v3, "MoviePlaybackService"

    const-string v4, "play()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 960
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceExists()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 961
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->resetPlayer()V

    .line 986
    :cond_1a
    :goto_1a
    return-void

    .line 965
    :cond_1b
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 968
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v1

    .line 969
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setCurPlayingPath(Ljava/lang/String;)V

    .line 972
    if-eqz v1, :cond_37

    .line 973
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkTvOutEnable(Ljava/lang/String;)V

    .line 975
    :cond_37
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 976
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 978
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->start()V

    .line 979
    const-string v3, "videoplayer.service.MoviePlaybackService.PLAYBACK_UPDATE"

    invoke-direct {p0, v3}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 981
    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoFeatures;->FLAG_SUPPORT_GATE_MESSAGE:Z

    if-eqz v3, :cond_1a

    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M> VIDEO_PLAYING: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " </GATE-M>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 984
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #path:Ljava/lang/String;
    :cond_73
    const-string v3, "MoviePlaybackService"

    const-string v4, "play() - not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public position()J
    .registers 3

    .prologue
    .line 906
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->position()J

    move-result-wide v0

    .line 910
    :goto_e
    return-wide v0

    .line 909
    :cond_f
    const-string v0, "MoviePlaybackService"

    const-string v1, "position() - not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const-wide/16 v0, -0x1

    goto :goto_e
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 1023
    const-string v0, "MoviePlaybackService"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->reset()V

    .line 1025
    return-void
.end method

.method public resume()V
    .registers 3

    .prologue
    .line 1056
    const-string v0, "MoviePlaybackService"

    const-string v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->resume()V

    .line 1058
    return-void
.end method

.method public seek(II)J
    .registers 6
    .parameter "pos"
    .parameter "seekMode"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 927
    const-string v0, "MoviePlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seekMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->seek(II)J

    move-result-wide v0

    .line 931
    :goto_30
    return-wide v0

    .line 930
    :cond_31
    const-string v0, "MoviePlaybackService"

    const-string v1, "seek(pose, seekMode) - not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const-wide/16 v0, -0x1

    goto :goto_30
.end method

.method public seek(J)J
    .registers 6
    .parameter "pos"

    .prologue
    .line 915
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 916
    const-string v0, "MoviePlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->seek(J)J

    move-result-wide v0

    .line 920
    :goto_26
    return-wide v0

    .line 919
    :cond_27
    const-string v0, "MoviePlaybackService"

    const-string v1, "seek(pos) - not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-wide/16 v0, -0x1

    goto :goto_26
.end method

.method public setDisplay()V
    .registers 3

    .prologue
    .line 1046
    const-string v0, "MoviePlaybackService"

    const-string v1, "setDisplay()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setDisplay()V

    .line 1048
    return-void
.end method

.method public setInternalEq(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 937
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setInternalEq(I)V

    .line 940
    :goto_d
    return-void

    .line 939
    :cond_e
    const-string v0, "MoviePlaybackService"

    const-string v1, "setInternalEq() - not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public setWakeMode(Z)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 1035
    if-eqz p1, :cond_10

    .line 1036
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1042
    :cond_f
    :goto_f
    return-void

    .line 1039
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1040
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_f
.end method

.method public startPlay(Ljava/lang/String;)Z
    .registers 7
    .parameter "video_uri"

    .prologue
    const/4 v1, 0x0

    .line 641
    const-string v2, "MoviePlaybackService"

    const-string v3, "startPlay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    if-eqz p1, :cond_19

    .line 644
    const/16 v2, 0x64

    iput v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDAction:I

    .line 645
    iput v1, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mCMDCheckCnt:I

    .line 648
    :try_start_10
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->setDataSourcePrepare(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_1a

    .line 655
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->addRecently(Ljava/lang/String;)V

    .line 656
    const/4 v1, 0x1

    .line 659
    :cond_19
    :goto_19
    return v1

    .line 649
    :catch_1a
    move-exception v0

    .line 650
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 651
    const-string v2, "MoviePlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPlay - IOException occured:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1004
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->stop(Z)V

    .line 1005
    return-void
.end method

.method public suspend()V
    .registers 3

    .prologue
    .line 1051
    const-string v0, "MoviePlaybackService"

    const-string v1, "suspend()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;->mPlayer:Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService$TouchPlayer;->suspend()V

    .line 1053
    return-void
.end method
