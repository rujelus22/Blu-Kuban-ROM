.class public Lcom/sec/android/app/music/CorePlayerService;
.super Landroid/app/Service;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/CorePlayerService$ServiceStub;,
        Lcom/sec/android/app/music/CorePlayerService$FindSong;,
        Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;,
        Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;,
        Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;
    }
.end annotation


# static fields
.field public static final SKIP_TIME:[I

.field private static mBTConnect:Z

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field static mNumberOfTryToPlay:I

.field private static sNotificationImageWidth:I


# instance fields
.field private IsWmdrmPlayreadyfile:Z

.field private final MEDIA_ERROR_CURRUPT:I

.field private final MEDIA_ERROR_NOTSUPPORT:I

.field private asyncHeadsetTask:Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;

.field private bLowBattery:Z

.field private ffRewRepeatTime:I

.field private isEjectSD:Z

.field private isMediaUnMounted:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

.field private final mBinder:Landroid/os/IBinder;

.field mCursorCols:[Ljava/lang/String;

.field private final mDelayedStopHandler:Landroid/os/Handler;

.field private mDestroy:Z

.field private mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

.field private mErrorCount:I

.field private mFileToPlay:Ljava/lang/String;

.field protected mHandler:Landroid/os/Handler;

.field private final mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mIB:Landroid/os/IBinder;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsShowNotification:Z

.field private mIsSupposedToBePlaying:Z

.field mIsUlpByPass:Z

.field private mIsUlpForceToPause:Z

.field private mMaxVolume:F

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaplayerHandler:Landroid/os/Handler;

.field private final mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

.field private mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

.field private final mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;

.field private mNotiImage:Landroid/graphics/Bitmap;

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mNotification:Landroid/app/Notification;

.field private mPausedByPalmDown:Z

.field private mPausedByRingtonePlayer:Z

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayDirection:Z

.field mPlayedTimeForUlp:J

.field private mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

.field private mReadyMediaControl:Z

.field mResetForUlp:Z

.field final mServiceHandler:Landroid/os/Handler;

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field protected final mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private final mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mToastHandler:Landroid/os/Handler;

.field private mToastServiceError:Landroid/widget/Toast;

.field private mUserAction:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWasPlaying:Z

.field private final mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

.field private mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 287
    sput v1, Lcom/sec/android/app/music/CorePlayerService;->mNumberOfTryToPlay:I

    .line 345
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/sec/android/app/music/CorePlayerService;->SKIP_TIME:[I

    .line 461
    sput-boolean v1, Lcom/sec/android/app/music/CorePlayerService;->mBTConnect:Z

    .line 507
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/music/CorePlayerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 3105
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/music/CorePlayerService;->sNotificationImageWidth:I

    return-void

    .line 345
    :array_14
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1374
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 293
    iput-boolean v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mReadyMediaControl:Z

    .line 297
    const/4 v0, -0x4

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService;->MEDIA_ERROR_NOTSUPPORT:I

    .line 299
    const/16 v0, -0xa

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService;->MEDIA_ERROR_CURRUPT:I

    .line 392
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    invoke-direct {v0, p0, v4}, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;-><init>(Lcom/sec/android/app/music/CorePlayerService;Lcom/sec/android/app/music/CorePlayerService$1;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    .line 400
    iput-object v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 402
    iput-object v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    .line 404
    iput-object v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    .line 406
    iput-object v4, p0, Lcom/sec/android/app/music/CorePlayerService;->asyncHeadsetTask:Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;

    .line 408
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$FindSong;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$FindSong;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;

    .line 410
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z

    .line 412
    iput-boolean v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayDirection:Z

    .line 414
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mWasPlaying:Z

    .line 416
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mDestroy:Z

    .line 424
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayedTimeForUlp:J

    .line 426
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    .line 428
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsUlpByPass:Z

    .line 433
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z

    .line 459
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I

    .line 466
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mPausedByRingtonePlayer:Z

    .line 470
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_podcast"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mCursorCols:[Ljava/lang/String;

    .line 490
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceStartId:I

    .line 492
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceInUse:Z

    .line 494
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 500
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    .line 509
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$1;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 546
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->bLowBattery:Z

    .line 548
    iput-object v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    .line 550
    iput v3, p0, Lcom/sec/android/app/music/CorePlayerService;->ffRewRepeatTime:I

    .line 552
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->isMediaUnMounted:Z

    .line 554
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->isEjectSD:Z

    .line 575
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMaxVolume:F

    .line 635
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$2;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 759
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$3;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mToastHandler:Landroid/os/Handler;

    .line 772
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$4;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 780
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$5;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 896
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$6;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 975
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$7;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 1282
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mPausedByPalmDown:Z

    .line 1284
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsUlpForceToPause:Z

    .line 1329
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$10;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1679
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$11;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 2882
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$12;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    .line 3050
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsShowNotification:Z

    .line 3588
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$13;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mHandler:Landroid/os/Handler;

    .line 4927
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$ServiceStub;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mBinder:Landroid/os/IBinder;

    .line 4930
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$14;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1375
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/framework/SecAudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/music/CorePlayerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/sec/android/app/music/CorePlayerService;->ffRewRepeatTime:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/music/CorePlayerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput p1, p0, Lcom/sec/android/app/music/CorePlayerService;->ffRewRepeatTime:I

    return p1
.end method

.method static synthetic access$1004(Lcom/sec/android/app/music/CorePlayerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/sec/android/app/music/CorePlayerService;->ffRewRepeatTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService;->ffRewRepeatTime:I

    return v0
.end method

.method static synthetic access$1008(Lcom/sec/android/app/music/CorePlayerService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/sec/android/app/music/CorePlayerService;->ffRewRepeatTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/music/CorePlayerService;->ffRewRepeatTime:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/music/CorePlayerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mReadyMediaControl:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/music/CorePlayerService;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/music/CorePlayerService;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mToastServiceError:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/music/CorePlayerService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/CorePlayerService;->procCommndIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/music/CorePlayerService;Lcom/sec/android/app/music/common/data/MusicAlbumInfo;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/music/CorePlayerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->isEjectSD:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/music/CorePlayerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/sec/android/app/music/CorePlayerService;->isEjectSD:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->asyncHeadsetTask:Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/music/CorePlayerService;Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;)Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService;->asyncHeadsetTask:Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->setEq()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/music/CorePlayerService;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService;->setUlpBypassInternal(ZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/music/CorePlayerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->bLowBattery:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/music/CorePlayerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/sec/android/app/music/CorePlayerService;->bLowBattery:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/music/CorePlayerService;)Landroid/app/ActivityManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/music/CorePlayerService;Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;)Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/music/CorePlayerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsShowNotification:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/music/CorePlayerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/music/CorePlayerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/music/CorePlayerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/music/CorePlayerService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/music/CorePlayerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/music/CorePlayerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/music/CorePlayerService;Ljava/lang/String;Z)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mToastHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/common/data/MusicDB;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/music/CorePlayerService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I

    return p1
.end method

.method static synthetic access$3110(Lcom/sec/android/app/music/CorePlayerService;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/music/CorePlayerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/sec/android/app/music/CorePlayerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/CorePlayerService$FindSong;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/music/CorePlayerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayDirection:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/sec/android/app/music/CorePlayerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayDirection:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->notifySettingChange()V

    return-void
.end method

.method static synthetic access$3800(Lcom/sec/android/app/music/CorePlayerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->openCurrent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/music/CorePlayerService;ZJ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/music/CorePlayerService;->openCurrentOrAnything(ZJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/music/CorePlayerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->isMediaUnMounted:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->updateTheme()V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/app/music/CorePlayerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/sec/android/app/music/CorePlayerService;->isMediaUnMounted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/music/CorePlayerService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/music/CorePlayerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/music/CorePlayerService;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/music/CorePlayerService;)Lcom/sec/android/app/music/MusicPlayerController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/music/CorePlayerService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/music/CorePlayerService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/music/CorePlayerService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method private acquireRights(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 3580
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    iget v1, v0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mWmDrmAcquistionCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mWmDrmAcquistionCnt:I

    .line 3581
    invoke-static {p1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3582
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 3584
    const-string v0, "drm_path"

    invoke-virtual {v1, v0, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3585
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->acquireRights(Landroid/drm/DrmInfoRequest;Landroid/os/Handler;)I

    .line 3586
    return-void
.end method

.method private checkDrmRight(Ljava/lang/String;Z)I
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/16 v2, -0xa

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3644
    .line 3646
    new-array v5, v3, [I

    .line 3647
    new-array v6, v3, [Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    .line 3649
    if-nez p1, :cond_16

    .line 3650
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mToastHandler:Landroid/os/Handler;

    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    .line 3743
    :cond_15
    :goto_15
    return v0

    .line 3655
    :cond_16
    invoke-static {}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isAnyDrmEnabled()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 3663
    :try_start_1c
    iget-object v7, p0, Lcom/sec/android/app/music/CorePlayerService;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v7, p1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmFile(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v1, :cond_15

    .line 3664
    const-string v7, "CorePlayerService"

    const-string v8, "IsDrmFile returned true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    if-nez p2, :cond_5f

    .line 3666
    const-string v4, "CorePlayerService"

    const-string v5, "ShowPopup false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v4}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isValidFile()Z

    move-result v4

    if-nez v4, :cond_15

    .line 3672
    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v4}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDrmType()I

    move-result v4

    if-ne v4, v3, :cond_5d

    .line 3674
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/music/CorePlayerService;->IsWmdrmPlayreadyfile:Z

    .line 3675
    const-string v1, "CorePlayerService"

    const-string v3, "checkDRMright showpopup is false inside else of isvaliddrmfile"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_4e} :catch_4f

    goto :goto_15

    .line 3737
    :catch_4f
    move-exception v0

    .line 3738
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 3739
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mToastHandler:Landroid/os/Handler;

    const v1, 0x7f09004d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    .line 3740
    goto :goto_15

    :cond_5d
    move v0, v1

    .line 3678
    goto :goto_15

    .line 3683
    :cond_5f
    :try_start_5f
    const-string v7, "CorePlayerService"

    const-string v8, "ShowPopup true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    iget-object v7, p0, Lcom/sec/android/app/music/CorePlayerService;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5, v6}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDrmPopup(Z[I[Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v7

    .line 3688
    const/16 v8, 0xa

    if-ne v7, v8, :cond_73

    move v0, v1

    .line 3689
    goto :goto_15

    .line 3690
    :cond_73
    if-eqz v7, :cond_15

    .line 3692
    const/16 v1, 0x16

    if-eq v7, v1, :cond_15

    .line 3696
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v8, Lcom/sec/android/app/music/common/util/DrmPopupActivity;

    invoke-direct {v1, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3698
    const-string v0, "popup.string"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3699
    const-string v0, "popup.type"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3700
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->checkIsNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 3701
    const/16 v0, 0xc

    if-eq v7, v0, :cond_a0

    const/16 v0, 0x15

    if-ne v7, v0, :cond_115

    .line 3703
    :cond_a0
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->setFilePath(Ljava/lang/String;)V

    .line 3704
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/CorePlayerService;->acquireRights(Ljava/lang/String;)V

    .line 3705
    const-string v0, "CorePlayerService"

    const-string v3, "Called DrmServicePopup Need AcquireRight"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3706
    const-string v0, "popup.string"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3708
    const-string v0, "popup.type"

    const/16 v3, 0x15

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move v0, v4

    .line 3712
    :goto_bc
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    iget v3, v3, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->mCompleteAction:I

    if-ne v3, v4, :cond_cd

    .line 3713
    const/4 v3, 0x0

    const v4, 0x7f0900eb

    aput v4, v5, v3

    .line 3714
    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;->DRM_OK_SOFTKEY_BUTTON:Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    aput-object v4, v6, v3

    .line 3721
    :cond_cd
    :goto_cd
    const-string v3, "popup.remain.counts"

    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v4}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3723
    const-string v3, "popup.filepath"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3724
    const-string v3, "popup.from"

    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v4}, Lcom/sec/android/app/music/MusicPlayerController;->getLaunchMode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3726
    const-string v3, "popup.list"

    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v4}, Lcom/sec/android/app/music/MusicPlayerController;->getQueue()[J

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 3728
    const-string v3, "popup.list.position"

    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v4}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentPosition()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3730
    const/high16 v3, 0x4000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3731
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3732
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/CorePlayerService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_15

    .line 3718
    :cond_10d
    const/4 v0, 0x0

    const v4, 0x7f0900db

    aput v4, v5, v0
    :try_end_113
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_113} :catch_4f

    move v0, v3

    .line 3719
    goto :goto_cd

    :cond_115
    move v0, v3

    goto :goto_bc
.end method

.method private getLastPlayedFile()Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 3463
    const-string v0, "CorePlayerService"

    const-string v1, "getLastPlayedFile()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    const/4 v7, -0x1

    .line 3469
    const/4 v0, 0x2

    :try_start_b
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 3472
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/external/audio/media?limit=1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "recently_played != 0 AND is_sound = 0"

    const/4 v4, 0x0

    const-string v5, "recently_played DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_b6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b .. :try_end_29} :catch_4f
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_b .. :try_end_29} :catch_82

    move-result-object v2

    .line 3475
    if-eqz v2, :cond_df

    :try_start_2c
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_df

    .line 3476
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3477
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_c7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2c .. :try_end_39} :catch_cf
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2c .. :try_end_39} :catch_ca

    move-result-object v1

    .line 3478
    const/4 v0, 0x1

    :try_start_3b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_c7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3b .. :try_end_3e} :catch_d4
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3b .. :try_end_3e} :catch_cc

    move-result v7

    move v0, v7

    .line 3491
    :goto_40
    if-eqz v2, :cond_45

    .line 3492
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3499
    :cond_45
    :goto_45
    if-nez v1, :cond_bd

    .line 3500
    const-string v0, "CorePlayerService"

    const-string v1, "getLastPlayedFile(): filepath==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    :cond_4e
    :goto_4e
    return v8

    .line 3480
    :catch_4f
    move-exception v0

    move-object v1, v6

    .line 3481
    :goto_51
    :try_start_51
    const-string v2, "CorePlayerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastPlayedFile, SQLiteFullException getLastPlayedFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3484
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_7b
    .catchall {:try_start_51 .. :try_end_7b} :catchall_b6

    .line 3491
    if-eqz v6, :cond_dc

    .line 3492
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_45

    .line 3485
    :catch_82
    move-exception v0

    move-object v2, v6

    .line 3486
    :goto_84
    :try_start_84
    const-string v1, "CorePlayerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastPlayedFile, SQLiteDiskIOException getLastPlayedFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 3489
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_ae
    .catchall {:try_start_84 .. :try_end_ae} :catchall_c7

    .line 3491
    if-eqz v2, :cond_d8

    .line 3492
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v7

    move-object v1, v6

    goto :goto_45

    .line 3491
    :catchall_b6
    move-exception v0

    :goto_b7
    if-eqz v6, :cond_bc

    .line 3492
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_bc
    throw v0

    .line 3505
    :cond_bd
    if-gez v0, :cond_4e

    .line 3506
    const-string v0, "CorePlayerService"

    const-string v1, "getLastPlayedFile() audioId < 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 3491
    :catchall_c7
    move-exception v0

    move-object v6, v2

    goto :goto_b7

    .line 3485
    :catch_ca
    move-exception v0

    goto :goto_84

    :catch_cc
    move-exception v0

    move-object v6, v1

    goto :goto_84

    .line 3480
    :catch_cf
    move-exception v0

    move-object v1, v6

    move-object v6, v2

    goto/16 :goto_51

    :catch_d4
    move-exception v0

    move-object v6, v2

    goto/16 :goto_51

    :cond_d8
    move v0, v7

    move-object v1, v6

    goto/16 :goto_45

    :cond_dc
    move v0, v7

    goto/16 :goto_45

    :cond_df
    move v0, v7

    move-object v1, v6

    goto/16 :goto_40
.end method

.method private getLastPlayedFileFromSP()Z
    .registers 15

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3370
    const-string v0, "CorePlayerService"

    const-string v1, "getLastPlayedFileFromSP()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3372
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getRecentFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3374
    if-nez v1, :cond_14

    .line 3453
    :goto_13
    return v6

    .line 3378
    :cond_14
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_27

    .line 3380
    const-string v0, "CorePlayerService"

    const-string v1, "getLastPlayedFileFromSP(), file does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 3388
    :cond_27
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/music/common/data/MusicDB;->getFileId(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v9, v1

    .line 3389
    if-gez v9, :cond_38

    .line 3390
    const-string v0, "CorePlayerService"

    const-string v1, "getLastPlayedFileFromSP(), audioId<0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 3397
    :cond_38
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getRecentListType(Landroid/content/Context;)I

    move-result v10

    .line 3398
    invoke-static {v0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getRecentFilterValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 3400
    const/4 v0, -0x1

    if-ge v10, v0, :cond_4b

    .line 3401
    const-string v0, "CorePlayerService"

    const-string v1, "getLastPlayedFileFromSP(), listType < -1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 3405
    :cond_4b
    sget-wide v0, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_5a

    .line 3406
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->makeQuickListItem(Landroid/content/Context;)V

    .line 3409
    :cond_5a
    invoke-static {v10, v11}, Lcom/sec/android/app/music/MusicUtils;->getTrackListArgsForQuery(ILjava/lang/String;)Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    move-result-object v5

    .line 3411
    if-ne v10, v7, :cond_ee

    .line 3412
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3413
    const-string v2, "CorePlayerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastPlayedFileFromSP(), listType PLAYLISTS plid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    const-wide/16 v2, -0xe

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e7

    const-wide/16 v2, -0xc

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e7

    const-wide/16 v2, -0xd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e7

    .line 3417
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "audio_id"

    aput-object v1, v0, v6

    :goto_98
    move-object v2, v0

    .line 3431
    :goto_99
    const/4 v8, 0x0

    .line 3434
    :try_start_9a
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v5, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, v5, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v5, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a9
    .catchall {:try_start_9a .. :try_end_a9} :catchall_fc

    move-result-object v1

    .line 3437
    const/4 v0, 0x0

    :try_start_ab
    invoke-static {v1, v0}, Lcom/sec/android/app/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;Z)[J
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_111

    move-result-object v2

    .line 3439
    if-eqz v1, :cond_b4

    .line 3440
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b4
    move v0, v6

    .line 3445
    :goto_b5
    array-length v1, v2

    if-ge v0, v1, :cond_104

    .line 3446
    const-string v1, "CorePlayerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastPlayedFileFromSP(), items ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v2, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    int-to-long v3, v9

    aget-wide v12, v2, v0

    cmp-long v1, v3, v12

    if-nez v1, :cond_e4

    move v6, v0

    .line 3445
    :cond_e4
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 3421
    :cond_e7
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    goto :goto_98

    .line 3426
    :cond_ee
    const-string v0, "CorePlayerService"

    const-string v1, "getLastPlayedFileFromSP(), listType etc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    goto :goto_99

    .line 3439
    :catchall_fc
    move-exception v0

    move-object v1, v8

    :goto_fe
    if-eqz v1, :cond_103

    .line 3440
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_103
    throw v0

    .line 3451
    :cond_104
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0, v2, v6}, Lcom/sec/android/app/music/MusicPlayerController;->setList([JI)V

    .line 3452
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/app/music/MusicPlayerController;->setListFrom(ILjava/lang/String;)V

    move v6, v7

    .line 3453
    goto/16 :goto_13

    .line 3439
    :catchall_111
    move-exception v0

    goto :goto_fe
.end method

.method private gotoIdleState()V
    .registers 5

    .prologue
    .line 2553
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2554
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2555
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2556
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->hideNotification()V

    .line 2557
    return-void
.end method

.method private loadPreferences()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1591
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getShuffle(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicPlayerController;->setShuffle(Z)V

    .line 1592
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getRepeat(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->setRepeatMode(I)V

    .line 1594
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    sget-object v1, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqValue:[I

    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getEqualizer(Landroid/content/Context;)I

    move-result v2

    aget v1, v1, v2

    aput v1, v0, v4

    .line 1596
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    sget-object v1, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEffectValue:[I

    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getEffect(Landroid/content/Context;)I

    move-result v2

    aget v1, v1, v2

    aput v1, v0, v3

    .line 1598
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v1, 0x2

    const/high16 v2, 0x40

    aput v2, v0, v1

    .line 1599
    sget-object v1, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v2, 0x3

    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_70

    const/high16 v0, 0x80

    :goto_3c
    aput v0, v1, v2

    .line 1602
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v3

    const/high16 v1, 0x2

    if-eq v0, v1, :cond_57

    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v3

    const v1, 0x8000

    if-eq v0, v1, :cond_57

    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v3

    const/high16 v1, 0x8

    if-ne v0, v1, :cond_6f

    .line 1609
    :cond_57
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 1610
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/16 v1, 0x1000

    aput v1, v0, v3

    .line 1611
    invoke-static {v4}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setEffect(I)V

    .line 1612
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 1615
    :cond_6f
    return-void

    .line 1599
    :cond_70
    const/high16 v0, 0x100

    goto :goto_3c
.end method

.method private makeMusicNotification()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 3097
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020161

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotification:Landroid/app/Notification;

    .line 3098
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    .line 3099
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3101
    return-void
.end method

.method private notifyChange(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 1747
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1748
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getAudioId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1749
    const-string v0, "artist"

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1750
    const-string v0, "album"

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1751
    const-string v0, "track"

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1752
    const-string v0, "playing"

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1754
    const-string v0, "playerState"

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget v2, v2, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1762
    const-string v0, "mediaCount"

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1763
    const-string v0, "listpos"

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getQueuePosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1768
    const-string v0, "trackLength"

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->duration()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1769
    const-string v0, "position"

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->position()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1770
    const-string v0, "repeat"

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicPlayerController;->getRepeatMode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1771
    const-string v2, "shuffle"

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getShuffle()Z

    move-result v0

    if-nez v0, :cond_84

    const/4 v0, 0x0

    :goto_7d
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1773
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/CorePlayerService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1782
    return-void

    .line 1771
    :cond_84
    const/4 v0, 0x1

    goto :goto_7d
.end method

.method private notifySeekChange(Ljava/lang/String;)V
    .registers 5
    .parameter "command"

    .prologue
    .line 629
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v0, i:Landroid/content/Intent;
    const-string v1, "from"

    const-string v2, "MusicPlayer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 633
    return-void
.end method

.method private notifySettingChange()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1803
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.android.music.settingchanged"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1804
    const-string v0, "from"

    const-string v2, "MusicPlayer"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1805
    const-string v0, "eq"

    sget-object v2, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v1

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1807
    const/4 v0, 0x2

    .line 1809
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    if-eqz v2, :cond_3b

    .line 1810
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getRepeatMode()I

    move-result v2

    .line 1811
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getShuffle()Z

    move-result v0

    .line 1813
    :goto_29
    const-string v4, "repeat"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1814
    const-string v2, "shuffle"

    if-nez v0, :cond_39

    :goto_32
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1816
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1817
    return-void

    .line 1814
    :cond_39
    const/4 v1, 0x1

    goto :goto_32

    :cond_3b
    move v2, v0

    move v0, v1

    goto :goto_29
.end method

.method private openCurrent()Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1916
    const-string v0, "CorePlayerService"

    const-string v2, "openCurrent()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v7

    .line 1920
    invoke-direct {p0, v1}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 1922
    if-eqz v7, :cond_37

    .line 1925
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->setWmDrmNextAct(ILjava/lang/String;ZJ)V

    .line 1926
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I

    move-result v0

    .line 1928
    if-nez v0, :cond_40

    .line 1929
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    move v1, v6

    .line 1944
    :cond_37
    :goto_37
    return v1

    .line 1934
    :cond_38
    const-string v0, "CorePlayerService"

    const-string v2, "openCurrent() open FAIL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 1936
    :cond_40
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4b

    .line 1937
    const-string v0, "CorePlayerService"

    const-string v2, "openCurrent() need AcquireRignts"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 1938
    :cond_4b
    if-eq v0, v6, :cond_51

    const/16 v2, -0xa

    if-ne v0, v2, :cond_37

    .line 1940
    :cond_51
    iget v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I

    .line 1941
    const-string v0, "CorePlayerService"

    const-string v2, "openCurrent() mErrorCount--"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method private openCurrentOrAnything(ZJ)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/16 v7, -0xa

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1950
    const-string v0, "CorePlayerService"

    const-string v1, "openCurrentOrAnything(%s)"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    if-nez v0, :cond_34

    .line 1956
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    if-nez v0, :cond_29

    .line 1957
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/music/common/data/MusicDB;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    .line 1959
    :cond_29
    new-instance v0, Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/MusicPlayerController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    .line 1963
    :cond_34
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v0

    .line 1964
    if-nez v0, :cond_a2

    .line 1965
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->doFindMediaToPlay()Landroid/net/Uri;

    move-result-object v0

    move-object v6, v0

    .line 1969
    :goto_41
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/sec/android/app/music/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v8

    .line 1971
    invoke-direct {p0, v10}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 1973
    if-eqz v6, :cond_a0

    .line 1974
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    const/4 v1, 0x2

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->setWmDrmNextAct(ILjava/lang/String;ZJ)V

    .line 1976
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1977
    invoke-direct {p0, v0, v8}, Lcom/sec/android/app/music/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I

    move-result v0

    .line 1980
    :goto_64
    iput-boolean p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mWasPlaying:Z

    .line 1981
    if-nez v0, :cond_7d

    .line 1982
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1983
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->seek(J)J

    .line 1984
    if-eqz p1, :cond_7c

    .line 1985
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    .line 1996
    :cond_7c
    :goto_7c
    return-void

    .line 1987
    :cond_7d
    const/4 v1, 0x3

    if-ne v0, v1, :cond_88

    .line 1988
    const-string v0, "CorePlayerService"

    const-string v1, "openCurrentOrAnything() need AcquireRignts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 1989
    :cond_88
    if-eq v0, v9, :cond_8c

    if-ne v0, v7, :cond_7c

    .line 1990
    :cond_8c
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1991
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;

    invoke-virtual {v0, v10, v9}, Lcom/sec/android/app/music/CorePlayerService$FindSong;->setFindSong(ZZ)V

    .line 1993
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7c

    :cond_a0
    move v0, v7

    goto :goto_64

    :cond_a2
    move-object v6, v0

    goto :goto_41
.end method

.method private procCommndIntent(Landroid/content/Intent;)V
    .registers 24
    .parameter "intent"

    .prologue
    .line 1026
    if-eqz p1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mDestroy:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 1279
    :cond_a
    :goto_a
    return-void

    .line 1029
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1030
    .local v4, action:Ljava/lang/String;
    const-string v18, "command"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1032
    .local v7, cmd:Ljava/lang/String;
    const-string v18, "CorePlayerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "procCommndIntent() cmd: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const-string v18, "CorePlayerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "procCommndIntent() action: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-string v18, "MusicPlayer"

    const-string v19, "from"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 1044
    const-string v18, "next"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7d

    const-string v18, "com.android.music.musicservicecommand.next"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7d

    const-string v18, "com.sec.android.app.music.musicservicecommand.next"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e9

    .line 1047
    :cond_7d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mReadyMediaControl:Z

    move/from16 v18, v0

    if-eqz v18, :cond_be

    .line 1048
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/music/CorePlayerService;->mReadyMediaControl:Z

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x44c

    const-wide/16 v20, 0x1f4

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1051
    const-string v18, "ignore_repeat_one"

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 1052
    .local v11, ignoreRepeat:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    move-object/from16 v18, v0

    if-eqz v18, :cond_db

    .line 1053
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/music/CorePlayerService;->next(Z)Z

    .line 1059
    :goto_b5
    const-string v18, "musicPlayer.service.updateSeekPlayedTime"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 1266
    .end local v11           #ignoreRepeat:Z
    :cond_be
    :goto_be
    const-string v18, "com.android.RingtonePickerActivity.start"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_556

    .line 1267
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->pause()V

    .line 1269
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/music/CorePlayerService;->mPausedByRingtonePlayer:Z

    goto/16 :goto_a

    .line 1055
    .restart local v11       #ignoreRepeat:Z
    :cond_db
    const/16 v18, 0x1

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/music/CorePlayerService;->openCurrentOrAnything(ZJ)V

    goto :goto_b5

    .line 1062
    .end local v11           #ignoreRepeat:Z
    :cond_e9
    const-string v18, "previous"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_107

    const-string v18, "com.android.music.musicservicecommand.previous"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_107

    const-string v18, "com.sec.android.app.music.musicservicecommand.previous"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_167

    .line 1066
    :cond_107
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mReadyMediaControl:Z

    move/from16 v18, v0

    if-eqz v18, :cond_be

    .line 1067
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/music/CorePlayerService;->mReadyMediaControl:Z

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x44c

    const-wide/16 v20, 0x1f4

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    move-object/from16 v18, v0

    if-eqz v18, :cond_159

    .line 1072
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->position()J

    move-result-wide v18

    const-wide/16 v20, 0xbb8

    cmp-long v18, v18, v20

    if-gez v18, :cond_144

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->prev()V

    .line 1084
    :cond_139
    :goto_139
    const-string v18, "musicPlayer.service.updateSeekPlayedTime"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_be

    .line 1075
    :cond_144
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/CorePlayerService;->seek(J)J

    .line 1076
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mWasPlaying:Z

    move/from16 v18, v0

    if-eqz v18, :cond_139

    .line 1077
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    goto :goto_139

    .line 1080
    :cond_159
    const/16 v18, 0x1

    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/music/CorePlayerService;->openCurrentOrAnything(ZJ)V

    goto :goto_139

    .line 1087
    :cond_167
    const-string v18, "togglepause"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_185

    const-string v18, "com.android.music.musicservicecommand.togglepause"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_185

    const-string v18, "com.sec.android.app.music.musicservicecommand.togglepause"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19d

    .line 1089
    :cond_185
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v18

    if-eqz v18, :cond_198

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->pause()V

    .line 1091
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_be

    .line 1093
    :cond_198
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    goto/16 :goto_be

    .line 1097
    :cond_19d
    const-string v18, "play"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b2

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v18

    if-nez v18, :cond_be

    .line 1099
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    goto/16 :goto_be

    .line 1101
    :cond_1b2
    const-string v18, "playprevious"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c1

    .line 1102
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->prev()V

    goto/16 :goto_be

    .line 1105
    :cond_1c1
    const-string v18, "pause"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1df

    const-string v18, "com.android.music.musicservicecommand.pause"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1df

    const-string v18, "com.sec.android.app.music.musicservicecommand.pause"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_208

    .line 1107
    :cond_1df
    const-string v18, "from"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1108
    .local v10, from:Ljava/lang/String;
    if-eqz v10, :cond_1fb

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 1110
    :cond_1fb
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->pause()V

    .line 1111
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    goto/16 :goto_be

    .line 1112
    .end local v10           #from:Ljava/lang/String;
    :cond_208
    const-string v18, "stop"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_21d

    .line 1117
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    goto/16 :goto_be

    .line 1118
    :cond_21d
    const-string v18, "volume_up"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_23a

    .line 1119
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/sec/android/app/music/CorePlayerService$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/CorePlayerService$8;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto/16 :goto_be

    .line 1125
    :cond_23a
    const-string v18, "volume_down"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_257

    .line 1126
    new-instance v18, Ljava/lang/Thread;

    new-instance v19, Lcom/sec/android/app/music/CorePlayerService$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/CorePlayerService$9;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    invoke-direct/range {v18 .. v19}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto/16 :goto_be

    .line 1141
    :cond_257
    const-string v18, "com.android.music.musicservicecommand.resume"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_266

    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    goto/16 :goto_be

    .line 1143
    :cond_266
    const-string v18, "com.android.alarmclock.ALARM_ALERT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_27b

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v18

    if-eqz v18, :cond_be

    .line 1145
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->pause()V

    goto/16 :goto_be

    .line 1147
    :cond_27b
    const-string v18, "com.android.music.musicservicecommand.checkplaystatus"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2ab

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-object/from16 v18, v0

    if-nez v18, :cond_298

    .line 1151
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->sendMediaPlayInfo(Z)V

    goto/16 :goto_be

    .line 1153
    :cond_298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isStop()Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->sendMediaPlayInfo(Z)V

    goto/16 :goto_be

    .line 1157
    :cond_2ab
    const-string v18, "fastforward_down"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2bf

    const-string v18, "com.android.music.musicservicecommand.ff.down"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2ee

    .line 1158
    :cond_2bf
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 1159
    .local v12, msg:Landroid/os/Message;
    const/16 v18, 0x320

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1160
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1162
    const-string v18, "fastforward_down"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->notifySeekChange(Ljava/lang/String;)V

    .line 1164
    const-string v18, "musicplayer.ffrew.down"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_be

    .line 1165
    .end local v12           #msg:Landroid/os/Message;
    :cond_2ee
    const-string v18, "fastforward_up"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_302

    const-string v18, "com.android.music.musicservicecommand.ff.up"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_337

    .line 1166
    :cond_302
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/music/CorePlayerService;->ffRewRepeatTime:I

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x320

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_323

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x320

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 1170
    :cond_323
    const-string v18, "fastforward_up"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->notifySeekChange(Ljava/lang/String;)V

    .line 1172
    const-string v18, "musicplayer.ffrew.up"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_be

    .line 1173
    :cond_337
    const-string v18, "rewind_down"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_34b

    const-string v18, "com.android.music.musicservicecommand.rew.down"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_37a

    .line 1174
    :cond_34b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 1175
    .restart local v12       #msg:Landroid/os/Message;
    const/16 v18, 0x320

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1176
    const/16 v18, -0x1

    move/from16 v0, v18

    iput v0, v12, Landroid/os/Message;->arg1:I

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1178
    const-string v18, "rewind_down"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->notifySeekChange(Ljava/lang/String;)V

    .line 1180
    const-string v18, "musicplayer.ffrew.down"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_be

    .line 1181
    .end local v12           #msg:Landroid/os/Message;
    :cond_37a
    const-string v18, "rewind_up"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_38e

    const-string v18, "com.android.music.musicservicecommand.rew.up"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3c3

    .line 1182
    :cond_38e
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/music/CorePlayerService;->ffRewRepeatTime:I

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x320

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v18

    if-eqz v18, :cond_3af

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x320

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 1186
    :cond_3af
    const-string v18, "rewind_up"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->notifySeekChange(Ljava/lang/String;)V

    .line 1188
    const-string v18, "musicplayer.ffrew.up"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    goto/16 :goto_be

    .line 1189
    :cond_3c3
    const-string v18, "com.android.music.musicservicecommand.prepare"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3fd

    .line 1190
    const-string v18, "uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1191
    .local v13, playUri:Ljava/lang/String;
    const-string v18, "bPlay"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 1192
    .local v6, bPlay:Z
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 1193
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/music/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_be

    if-eqz v6, :cond_be

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    goto/16 :goto_be

    .line 1195
    .end local v6           #bPlay:Z
    .end local v13           #playUri:Ljava/lang/String;
    :cond_3fd
    const-string v18, "com.android.music.musicservicecommand.set.eq"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_415

    .line 1196
    const-string v18, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 1197
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->setEq()V

    goto/16 :goto_be

    .line 1198
    :cond_415
    const-string v18, "com.android.music.musicservicecommand.hide.notification"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_424

    .line 1199
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->hideNotification()V

    goto/16 :goto_be

    .line 1202
    :cond_424
    const-string v18, "com.android.music.settingchanged"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_485

    .line 1203
    const-string v18, "repeat"

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1206
    .local v14, repeat:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v14, v0, :cond_44f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->getRepeatMode()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v14, :cond_44f

    .line 1207
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/app/music/CorePlayerService;->setRepeatMode(I)V

    .line 1211
    :cond_44f
    const-string v18, "shuffle"

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 1212
    .local v16, temp:I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_be

    .line 1213
    if-nez v16, :cond_483

    const/4 v15, 0x0

    .line 1214
    .local v15, shuffle:Z
    :goto_468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/music/MusicPlayerController;->getShuffle()Z

    move-result v18

    move/from16 v0, v18

    if-eq v0, v15, :cond_be

    .line 1215
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->setShuffleMode(Ljava/lang/Boolean;)V

    goto/16 :goto_be

    .line 1213
    .end local v15           #shuffle:Z
    :cond_483
    const/4 v15, 0x1

    goto :goto_468

    .line 1221
    .end local v14           #repeat:I
    .end local v16           #temp:I
    :cond_485
    const-string v18, "com.android.music.musicservicecommand.ULP_SET"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4d8

    .line 1222
    const-string v18, "ulp.state"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 1223
    .local v17, ulpOn:Z
    if-eqz v17, :cond_4c9

    .line 1225
    const-string v18, "ulp.pause"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 1226
    .local v9, forceToPause:Z
    if-eqz v9, :cond_4be

    .line 1227
    const-string v18, "CorePlayerService"

    const-string v19, "cancel auto resume"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    .line 1230
    :cond_4be
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v9}, Lcom/sec/android/app/music/CorePlayerService;->setUlpBypassInternal(ZZ)V

    goto/16 :goto_be

    .line 1233
    .end local v9           #forceToPause:Z
    :cond_4c9
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/music/CorePlayerService;->setUlpBypassInternal(ZZ)V

    goto/16 :goto_be

    .line 1237
    .end local v17           #ulpOn:Z
    :cond_4d8
    const-string v18, "android.intent.action.PALM_DOWN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4fd

    .line 1239
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v18

    if-eqz v18, :cond_be

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->pause()V

    .line 1241
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    .line 1242
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/music/CorePlayerService;->mPausedByPalmDown:Z

    goto/16 :goto_be

    .line 1244
    :cond_4fd
    const-string v18, "android.intent.action.PALM_UP"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_519

    .line 1246
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mPausedByPalmDown:Z

    move/from16 v18, v0

    if-eqz v18, :cond_be

    .line 1249
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/music/CorePlayerService;->mPausedByPalmDown:Z

    goto/16 :goto_be

    .line 1251
    :cond_519
    const-string v18, "com.sec.android.app.music.musicservicecommand.MUSIC_AUTO_OFF"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_be

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v18

    if-eqz v18, :cond_52c

    .line 1253
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->pause()V

    .line 1255
    :cond_52c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1257
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v18, "music_auto_off"

    const-string v19, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1258
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1259
    new-instance v5, Landroid/content/Intent;

    const-string v18, "com.sec.android.app.music.autooffcompleted"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1260
    .local v5, autoOff:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/music/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_be

    .line 1271
    .end local v5           #autoOff:Landroid/content/Intent;
    .end local v8           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_556
    const-string v18, "com.android.RingtonePickerActivity.stop"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1272
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v18

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/music/CorePlayerService;->mPausedByRingtonePlayer:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    .line 1274
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/music/CorePlayerService;->mPausedByRingtonePlayer:Z

    goto/16 :goto_a
.end method

.method private setEq()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 3295
    .line 3297
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    if-nez v0, :cond_f

    .line 3298
    const-string v0, "CorePlayerService"

    const-string v1, "setEq() mPlayer==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    :goto_e
    return-void

    .line 3301
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_27

    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 3303
    :cond_27
    invoke-static {}, Lcom/sec/android/app/music/common/util/R2vsUtil;->getR2vsBTSum()I

    move-result v0

    .line 3307
    :goto_2b
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->internalSetEq(I)V

    .line 3309
    sget-object v2, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v2, v2, v1

    const/16 v3, 0x800

    if-ne v2, v3, :cond_6d

    .line 3310
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getCustomEqualizer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3311
    new-array v3, v6, [I

    .line 3313
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v4, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    :goto_45
    if-ge v1, v6, :cond_67

    .line 3317
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 3318
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3319
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v3, v1

    .line 3316
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 3305
    :cond_5e
    invoke-static {}, Lcom/sec/android/app/music/common/util/R2vsUtil;->getR2vsSum()I

    move-result v0

    goto :goto_2b

    .line 3321
    :cond_63
    const/4 v2, 0x3

    aput v2, v3, v1

    goto :goto_5b

    .line 3324
    :cond_67
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->internalSetUserEQ(I[I)V

    goto :goto_e

    .line 3326
    :cond_6d
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->internalSetEq(I)V

    goto :goto_e
.end method

.method private setUlpBypassInternal(ZZ)V
    .registers 12
    .parameter "bUlpByPass"
    .parameter "forceToPause"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1293
    const-string v2, "CorePlayerService"

    const-string v3, "setUlpBypassInternal(%s -> %s) forceToPause : %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsUlpByPass:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-boolean v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsUlpByPass:Z

    if-eq p1, v2, :cond_7b

    .line 1297
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    .line 1298
    .local v1, curUri:Landroid/net/Uri;
    iput-boolean p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsUlpByPass:Z

    .line 1299
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1300
    const-string v2, "CorePlayerService"

    const-string v3, "setUlpBypassInternal : reset for ULP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    iput-boolean v7, p0, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    .line 1302
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->position()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayedTimeForUlp:J

    .line 1303
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isPlaying()Z

    move-result v0

    .line 1304
    .local v0, bPlaying:Z
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->stop()V

    .line 1305
    if-eqz v1, :cond_79

    .line 1306
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/CorePlayerService;->open(Ljava/lang/String;)Z

    .line 1307
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 1308
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-wide v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayedTimeForUlp:J

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->seek(J)J

    .line 1309
    if-nez p2, :cond_7c

    if-eqz v0, :cond_7c

    .line 1310
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->start()V

    .line 1311
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->setEq()V

    .line 1323
    :cond_79
    :goto_79
    iput-boolean v8, p0, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    .line 1327
    .end local v0           #bPlaying:Z
    .end local v1           #curUri:Landroid/net/Uri;
    :cond_7b
    return-void

    .line 1312
    .restart local v0       #bPlaying:Z
    .restart local v1       #curUri:Landroid/net/Uri;
    :cond_7c
    if-eqz p2, :cond_79

    .line 1314
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->start()V

    .line 1315
    iput-boolean v7, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsUlpForceToPause:Z

    .line 1316
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->pause()V

    .line 1317
    iget-boolean v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsShowNotification:Z

    if-eqz v2, :cond_79

    .line 1318
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->showNotification()V

    goto :goto_79
.end method

.method private setupMusicRemoteButtons(Landroid/widget/RemoteViews;)V
    .registers 16
    .parameter

    .prologue
    const v13, 0x7f0c00ec

    const v12, 0x7f0c00eb

    const v11, 0x7f0c00e9

    const v10, 0x7010002

    const/4 v9, 0x0

    .line 3109
    .line 3111
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_19

    .line 3112
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    .line 3117
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    if-eqz v0, :cond_f6

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    if-eqz v0, :cond_f6

    .line 3118
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget v1, v1, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbumID:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/common/data/MusicDB;->getAlbumArt(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 3119
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3120
    const/4 v2, 0x2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3121
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/sec/android/app/music/CorePlayerService;->sNotificationImageWidth:I

    .line 3123
    sget v2, Lcom/sec/android/app/music/CorePlayerService;->sNotificationImageWidth:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 3124
    sget v2, Lcom/sec/android/app/music/CorePlayerService;->sNotificationImageWidth:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 3125
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    .line 3126
    const-string v0, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupMusicRemoteButtons - mNotiImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_11e

    .line 3134
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v11, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 3140
    :goto_74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "sec.musicplayer.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3145
    const/4 v1, 0x1

    invoke-static {p0, v1, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3148
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.music.musicservicecommand.previous"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3150
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand.rew.down"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 3152
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3154
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.music.musicservicecommand.togglepause"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 3158
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_126

    .line 3159
    const v5, 0x7f020155

    invoke-virtual {p1, v12, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 3165
    :goto_b8
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.music.musicservicecommand.next"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 3167
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.music.musicservicecommand.ff.down"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v6, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 3169
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v10, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 3172
    invoke-virtual {p1, v11, v0}, Landroid/widget/RemoteViews;->setLaunchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3174
    invoke-virtual {p1, v13, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3176
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIB:Landroid/os/IBinder;

    invoke-virtual {p1, v0, v13, v2, v3}, Landroid/widget/RemoteViews;->setOnLongClickPendingIntent(Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 3179
    invoke-virtual {p1, v12, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3181
    const v0, 0x7f0c00ed

    invoke-virtual {p1, v0, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3183
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIB:Landroid/os/IBinder;

    const v1, 0x7f0c00ed

    invoke-virtual {p1, v0, v1, v6, v7}, Landroid/widget/RemoteViews;->setOnLongClickPendingIntent(Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 3186
    return-void

    .line 3129
    :cond_f6
    const-string v0, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupMusicRemoteButtons - mMusicDB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mediaAlbumInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 3136
    :cond_11e
    const v0, 0x7f020154

    invoke-virtual {p1, v11, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_74

    .line 3162
    :cond_126
    const v5, 0x7f020156

    invoke-virtual {p1, v12, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_b8
.end method

.method private startAndFadeIn()V
    .registers 5

    .prologue
    .line 624
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 625
    return-void
.end method

.method private stop(Z)V
    .registers 11
    .parameter

    .prologue
    const/16 v8, 0xe

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 2220
    const-string v0, "CorePlayerService"

    const-string v1, "stop(%s)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    if-nez v0, :cond_22

    .line 2225
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->stopSelf()V

    .line 2277
    :goto_21
    return-void

    .line 2229
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget v0, v0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->mCurrentState:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_30

    .line 2230
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->stop()V

    .line 2233
    :cond_30
    iput-boolean v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    .line 2234
    iput-boolean v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    .line 2235
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2236
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2237
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->setVolume(F)V

    .line 2239
    :cond_46
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2240
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2241
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->setVolume(F)V

    .line 2245
    :cond_58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mFileToPlay:Ljava/lang/String;

    .line 2250
    if-eqz p1, :cond_7d

    .line 2251
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->gotoIdleState()V

    .line 2253
    iput-boolean v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 2255
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2256
    const-string v0, "com.android.music.playbackcomplete"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2265
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 2266
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2267
    :cond_79
    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/CorePlayerService;->sendMediaPlayInfo(Z)V

    goto :goto_21

    .line 2270
    :cond_7d
    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/CorePlayerService;->stopForeground(Z)V

    .line 2271
    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/CorePlayerService;->sendMediaPlayInfo(Z)V

    goto :goto_21
.end method

.method private updateTheme()V
    .registers 3

    .prologue
    .line 4944
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-nez v0, :cond_7

    .line 4952
    :cond_6
    :goto_6
    return-void

    .line 4948
    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsShowNotification:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 4949
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->hideNotification()V

    .line 4950
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->showNotification()V

    goto :goto_6
.end method


# virtual methods
.method public doFindMediaToPlay()Landroid/net/Uri;
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3331
    .line 3332
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->getLastPlayedFileFromSP()Z

    move-result v0

    if-nez v0, :cond_71

    .line 3333
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->getLastPlayedFile()Z

    move-result v0

    if-nez v0, :cond_71

    .line 3336
    const-string v0, ""

    invoke-static {v7, v0}, Lcom/sec/android/app/music/MusicUtils;->getTrackListArgsForQuery(ILjava/lang/String;)Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    move-result-object v5

    .line 3341
    :try_start_14
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v5, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    iget-object v3, v5, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v5, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v5, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_6a

    move-result-object v1

    .line 3345
    const/4 v0, 0x0

    :try_start_2d
    invoke-static {v1, v0}, Lcom/sec/android/app/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;Z)[J
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_96

    move-result-object v0

    .line 3347
    if-eqz v1, :cond_36

    .line 3348
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3351
    :cond_36
    array-length v1, v0

    if-lez v1, :cond_99

    .line 3352
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v1, v0, v7}, Lcom/sec/android/app/music/MusicPlayerController;->setList([JI)V

    .line 3353
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    const-string v1, ""

    invoke-virtual {v0, v7, v1}, Lcom/sec/android/app/music/MusicPlayerController;->setListFrom(ILjava/lang/String;)V

    .line 3354
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v0

    .line 3356
    :goto_4b
    const-string v1, "CorePlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFindMediaToPlay() mediaUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    :goto_69
    return-object v0

    .line 3347
    :catchall_6a
    move-exception v0

    :goto_6b
    if-eqz v6, :cond_70

    .line 3348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_70
    throw v0

    .line 3362
    :cond_71
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v0

    .line 3363
    const-string v1, "CorePlayerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFindMediaToPlay() mediaUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_8a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 3347
    :catchall_96
    move-exception v0

    move-object v6, v1

    goto :goto_6b

    :cond_99
    move-object v0, v6

    goto :goto_4b
.end method

.method protected doSaveNowPlayingMediaInfo(Landroid/net/Uri;)V
    .registers 8
    .parameter

    .prologue
    .line 3523
    const-string v0, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSaveNowPlayingMediaInfo(mediaUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    if-nez v0, :cond_2a

    .line 3525
    const-string v0, "CorePlayerService"

    const-string v1, "doSaveNowPlayingMediaInfo():mMusicPlayerController == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    :cond_29
    :goto_29
    return-void

    .line 3528
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurAudioId()J

    move-result-wide v0

    .line 3529
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v3}, Lcom/sec/android/app/music/MusicPlayerController;->getTabFrom()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v4}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v5}, Lcom/sec/android/app/music/MusicPlayerController;->getKeyWord()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->savePlayFilterValue(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 3532
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_29

    .line 3533
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicPlayerController;->getTabFrom()I

    move-result v2

    .line 3534
    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v3}, Lcom/sec/android/app/music/MusicPlayerController;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    .line 3535
    const/4 v4, 0x1

    if-ne v2, v4, :cond_7d

    .line 3536
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3537
    const-wide/16 v4, -0xd

    cmp-long v4, v2, v4

    if-eqz v4, :cond_29

    const-wide/16 v4, -0xc

    cmp-long v2, v2, v4

    if-eqz v2, :cond_29

    .line 3539
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/music/common/data/MusicDB;->updatePlayedTime(J)Z

    .line 3540
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/music/common/data/MusicDB;->updatePlayedCount(J)Z

    goto :goto_29

    .line 3543
    :cond_7d
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/music/common/data/MusicDB;->updatePlayedTime(J)Z

    .line 3544
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/music/common/data/MusicDB;->updatePlayedCount(J)Z

    goto :goto_29
.end method

.method public duration()J
    .registers 3

    .prologue
    .line 2825
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2826
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->duration()J

    move-result-wide v0

    .line 2828
    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, -0x1

    goto :goto_e
.end method

.method public enqueue([JI)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1855
    monitor-enter p0

    .line 1856
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/MusicPlayerController;->enqueue([JI)V

    .line 1857
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1862
    monitor-exit p0

    .line 1863
    return-void

    .line 1862
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2795
    monitor-enter p0

    .line 2796
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    if-nez v0, :cond_8

    .line 2797
    const/4 v0, 0x0

    monitor-exit p0

    .line 2808
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    monitor-exit p0

    goto :goto_7

    .line 2809
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2776
    monitor-enter p0

    .line 2777
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    if-nez v0, :cond_8

    .line 2778
    const/4 v0, 0x0

    monitor-exit p0

    .line 2790
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    monitor-exit p0

    goto :goto_7

    .line 2791
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getAudioId()J
    .registers 3

    .prologue
    .line 2731
    monitor-enter p0

    .line 2735
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurAudioId()J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 2736
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 2876
    monitor-enter p0

    .line 2877
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2878
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1908
    const/4 v0, 0x0

    .line 1909
    .local v0, keyWord:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    if-eqz v1, :cond_b

    .line 1910
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    .line 1912
    :cond_b
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[J
    .registers 2

    .prologue
    .line 2752
    monitor-enter p0

    .line 2753
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getQueue()[J

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2754
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getQueuePosition()I
    .registers 2

    .prologue
    .line 2746
    monitor-enter p0

    .line 2747
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentPosition()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2748
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .registers 2

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getShuffle()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public getTabFrom()I
    .registers 3

    .prologue
    .line 1900
    const/4 v0, -0x1

    .line 1901
    .local v0, tabFrom:I
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    if-eqz v1, :cond_b

    .line 1902
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getTabFrom()I

    move-result v0

    .line 1904
    :cond_b
    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2813
    monitor-enter p0

    .line 2814
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    if-nez v0, :cond_8

    .line 2815
    const/4 v0, 0x0

    monitor-exit p0

    .line 2816
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    monitor-exit p0

    goto :goto_7

    .line 2817
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method protected hideNotification()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3191
    const-string v0, "CorePlayerService"

    const-string v1, "hideNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3193
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3194
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.hide.notification"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3196
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_31

    .line 3197
    const-string v0, "CorePlayerService"

    const-string v1, "CorePlayerService::hideNotification: mNotiManager==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    :cond_30
    :goto_30
    return-void

    .line 3200
    :cond_31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->stopForeground(Z)V

    .line 3201
    iput-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsShowNotification:Z

    .line 3204
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_30

    .line 3205
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    goto :goto_30
.end method

.method public isPausedByTransientLossOfFocus()Z
    .registers 2

    .prologue
    .line 3212
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 2348
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public next(Z)Z
    .registers 12
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2431
    const-string v0, "CorePlayerService"

    const-string v1, "next(%s)"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    monitor-enter p0

    .line 2439
    :try_start_16
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicPlayerController;->getNext(Z)Landroid/net/Uri;

    move-result-object v8

    .line 2440
    if-nez v8, :cond_32

    .line 2441
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWasPlaying:Z

    .line 2443
    const-string v0, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 2444
    const-string v0, "com.android.music.playstatechanged"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 2446
    monitor-exit p0

    move v0, v6

    .line 2502
    :goto_31
    return v0

    .line 2449
    :cond_32
    iput-boolean p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z

    .line 2450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayDirection:Z

    .line 2451
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v9

    .line 2455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2456
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    const/4 v1, 0x1

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mWasPlaying:Z

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->setWmDrmNextAct(ILjava/lang/String;ZJ)V

    .line 2458
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_8c

    if-eqz v9, :cond_8c

    move v0, v7

    :goto_5d
    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/music/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I

    move-result v0

    .line 2461
    if-nez v0, :cond_8e

    .line 2462
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 2463
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWasPlaying:Z

    if-eqz v0, :cond_74

    .line 2464
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    .line 2480
    :cond_74
    :goto_74
    if-eqz v6, :cond_89

    .line 2481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 2482
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z

    if-eqz v0, :cond_b9

    if-eqz v9, :cond_b9

    .line 2483
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2484
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2500
    :cond_89
    :goto_89
    monitor-exit p0

    move v0, v7

    .line 2502
    goto :goto_31

    :cond_8c
    move v0, v6

    .line 2458
    goto :goto_5d

    .line 2468
    :cond_8e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9a

    .line 2469
    const-string v0, "CorePlayerService"

    const-string v1, "next() need AcquireRignts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto :goto_74

    .line 2470
    :cond_9a
    if-eq v0, v7, :cond_a0

    const/16 v1, -0xa

    if-ne v0, v1, :cond_a8

    .line 2472
    :cond_a0
    iget v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I

    move v6, v7

    goto :goto_74

    .line 2474
    :cond_a8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 2475
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2476
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2477
    monitor-exit p0

    move v0, v6

    goto/16 :goto_31

    .line 2487
    :cond_b9
    const-string v0, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next().......result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z

    if-nez v0, :cond_ec

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getRepeatMode()I

    move-result v0

    if-ne v0, v7, :cond_ec

    .line 2491
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2492
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    goto :goto_89

    .line 2500
    :catchall_e9
    move-exception v0

    monitor-exit p0
    :try_end_eb
    .catchall {:try_start_16 .. :try_end_eb} :catchall_e9

    throw v0

    .line 2494
    :cond_ec
    :try_start_ec
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2495
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;

    iget-boolean v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z

    iget-boolean v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayDirection:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/CorePlayerService$FindSong;->setFindSong(ZZ)V

    .line 2496
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_103
    .catchall {:try_start_ec .. :try_end_103} :catchall_e9

    goto :goto_89

    :cond_104
    move v6, v7

    goto/16 :goto_74
.end method

.method protected notifyBroadcast(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 3218
    const-string v0, "CorePlayerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyBroadcast("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3222
    const-string v1, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 3223
    const-string v1, "position"

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->position()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3225
    :cond_34
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3226
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter

    .prologue
    .line 1621
    const-string v0, "CorePlayerService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceInUse:Z

    .line 1624
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1379
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1380
    const-string v0, "CorePlayerService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iput-boolean v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mDestroy:Z

    .line 1382
    iput-boolean v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    .line 1383
    new-instance v0, Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    .line 1384
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/music/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1395
    new-instance v0, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;-><init>(Lcom/sec/android/app/music/CorePlayerService;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    .line 1396
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 1398
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    if-nez v0, :cond_4a

    .line 1399
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/music/common/data/MusicDB;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    .line 1401
    :cond_4a
    new-instance v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    .line 1402
    new-instance v0, Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/MusicPlayerController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    .line 1403
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1408
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1409
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1410
    const-string v1, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1411
    const-string v1, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1412
    const-string v1, "com.android.music.musicservicecommand.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1413
    const-string v1, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1415
    const-string v1, "com.android.RingtonePickerActivity.start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1419
    const-string v1, "com.android.RingtonePickerActivity.stop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1425
    const-string v1, "com.sec.android.app.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1426
    const-string v1, "com.sec.android.app.music.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1427
    const-string v1, "com.sec.android.app.music.musicservicecommand.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1428
    const-string v1, "com.sec.android.app.music.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1429
    const-string v1, "com.android.music.musicservicecommand.resume"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1430
    const-string v1, "com.android.alarmclock.ALARM_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1431
    const-string v1, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1432
    const-string v1, "com.android.music.musicservicecommand.ff.down"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1433
    const-string v1, "com.android.music.musicservicecommand.ff.up"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1434
    const-string v1, "com.android.music.musicservicecommand.rew.down"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1435
    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1436
    const-string v1, "com.android.music.musicservicecommand.set.eq"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1437
    const-string v1, "com.android.music.musicservicecommand.hide.notification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1439
    const-string v1, "com.sec.android.app.music.musicservicecommand.MUSIC_AUTO_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1444
    const-string v1, "com.android.music.musicservicecommand.ULP_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1449
    const-string v1, "com.android.music.settingchanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1451
    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1452
    const-string v1, "android.intent.action.PALM_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1454
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/CorePlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1457
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1458
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1459
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1460
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1461
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/CorePlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1463
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1464
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1465
    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1467
    const-string v1, "Intent.ACTION_HDMI_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1469
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/CorePlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1471
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1472
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1473
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1475
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1476
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/CorePlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1478
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->loadPreferences()V

    .line 1479
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->makeMusicNotification()V

    .line 1482
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1483
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1484
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1489
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1490
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1491
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIB:Landroid/os/IBinder;

    .line 1495
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_183

    .line 1496
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    .line 1498
    :cond_183
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotification:Landroid/app/Notification;

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 1500
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    const v1, 0x7010002

    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1503
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "samsung.theme_package_changed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1520
    return-void
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1524
    const-string v0, "CorePlayerService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    iput-boolean v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mDestroy:Z

    .line 1526
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    .line 1529
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1530
    const-string v0, "CorePlayerService"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-direct {p0, v4}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 1535
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1536
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1537
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1538
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1539
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->release()V

    .line 1540
    iput-object v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    .line 1542
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1545
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1546
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1547
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1550
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mThemeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1552
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1554
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1555
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1556
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1561
    iput-object v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    .line 1562
    iput-object v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    .line 1568
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->asyncHeadsetTask:Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->asyncHeadsetTask:Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_87

    .line 1569
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->asyncHeadsetTask:Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/music/CorePlayerService$UnpluggedHeadsetTask;->cancel(Z)Z

    .line 1573
    :cond_87
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_92

    .line 1574
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1575
    iput-object v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiImage:Landroid/graphics/Bitmap;

    .line 1583
    :cond_92
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 1584
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1585
    :cond_9f
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1586
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 1629
    const-string v0, "CorePlayerService"

    const-string v1, "onRebind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceInUse:Z

    .line 1632
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 1636
    iput p3, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceStartId:I

    .line 1637
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1639
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/CorePlayerService;->procCommndIntent(Landroid/content/Intent;)V

    .line 1643
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1644
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1645
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1646
    const/4 v1, 0x1

    return v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    .line 1651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceInUse:Z

    .line 1656
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_f

    .line 1676
    :cond_e
    :goto_e
    return v1

    .line 1667
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isStop()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1675
    iget v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->stopSelf(I)V

    goto :goto_e
.end method

.method public open([JI)V
    .registers 4
    .parameter "list"
    .parameter "position"

    .prologue
    .line 1873
    monitor-enter p0

    .line 1874
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/MusicPlayerController;->setList([JI)V

    .line 1875
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->openCurrent()Z

    .line 1877
    monitor-exit p0

    .line 1878
    return-void

    .line 1877
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public open(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2008
    monitor-enter p0

    .line 2009
    if-nez p1, :cond_7

    .line 2010
    :try_start_5
    monitor-exit p0

    .line 2064
    :goto_6
    return v0

    .line 2014
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2016
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService;->mFileToPlay:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_3f

    .line 2020
    :try_start_10
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->setDataSource(Ljava/lang/String;)Z
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_3f
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_17} :catch_42

    .line 2025
    :goto_17
    :try_start_17
    iget-boolean v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    if-nez v2, :cond_24

    .line 2026
    const-string v2, "com.android.music.metachanged"

    invoke-direct {p0, v2}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2027
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/CorePlayerService;->sendMediaPlayInfo(Z)V

    .line 2045
    :cond_24
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v2}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 2046
    const-string v1, "CorePlayerService"

    const-string v2, "open() FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2048
    iget v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I

    .line 2049
    monitor-exit p0

    goto :goto_6

    .line 2066
    :catchall_3f
    move-exception v0

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_17 .. :try_end_41} :catchall_3f

    throw v0

    .line 2021
    :catch_42
    move-exception v2

    .line 2022
    :try_start_43
    const-string v2, "CorePlayerService"

    const-string v3, "mPlayer.setDataSource FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 2051
    :cond_4b
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    if-nez v0, :cond_61

    .line 2052
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sec/android/app/music/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_72

    sget-boolean v0, Lcom/sec/android/app/music/MusicUtils;->sIsMusicPlayerResume:Z

    if-nez v0, :cond_72

    .line 2054
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->showNotification()V

    .line 2059
    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCountFromDB()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I

    .line 2060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z

    .line 2063
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayDirection:Z

    .line 2064
    monitor-exit p0

    move v0, v1

    goto :goto_6

    .line 2056
    :cond_72
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->hideNotification()V
    :try_end_75
    .catchall {:try_start_43 .. :try_end_75} :catchall_3f

    goto :goto_61
.end method

.method public pause()V
    .registers 8

    .prologue
    .line 2290
    monitor-enter p0

    .line 2291
    :try_start_1
    const-string v0, "CorePlayerService"

    const-string v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    .line 2294
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2295
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2296
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->setVolume(F)V

    .line 2298
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2299
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2300
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->setVolume(F)V

    .line 2304
    :cond_39
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsUlpForceToPause:Z

    if-nez v0, :cond_43

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 2305
    :cond_43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsUlpForceToPause:Z

    .line 2306
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->pause()V

    .line 2311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 2313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWasPlaying:Z

    .line 2319
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2320
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2322
    :cond_5e
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_98

    .line 2323
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->showNotification()V

    .line 2324
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2325
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long/2addr v2, v4

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.music.musicservicecommand.hide.notification"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2334
    :goto_8d
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->sendMediaPlayInfo(Z)V

    .line 2338
    :cond_96
    monitor-exit p0

    .line 2339
    return-void

    .line 2329
    :cond_98
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->hideNotification()V

    goto :goto_8d

    .line 2338
    :catchall_9c
    move-exception v0

    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_1 .. :try_end_9e} :catchall_9c

    throw v0
.end method

.method public play()V
    .registers 8

    .prologue
    const v4, 0x7f090125

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v6, 0x3e8

    .line 2073
    const-string v0, "CorePlayerService"

    const-string v3, "play()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iput-boolean v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    .line 2077
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2216
    :goto_18
    return-void

    .line 2080
    :cond_19
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2081
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_39

    .line 2082
    const-string v0, "CorePlayerService"

    const-string v1, "startPlay Can\'t play during call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2084
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    goto :goto_18

    .line 2092
    :cond_39
    :try_start_39
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 2094
    if-eqz v0, :cond_65

    .line 2095
    invoke-interface {v0}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v3

    if-nez v3, :cond_51

    invoke-interface {v0}, Landroid/os/IVoIPInterface;->isVoIPRingOrDialing()Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_51
    move v0, v2

    .line 2096
    :goto_52
    if-eqz v0, :cond_65

    .line 2097
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mToastHandler:Landroid/os/Handler;

    const v3, 0x7f090125

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_5c} :catch_5d

    goto :goto_18

    .line 2102
    :catch_5d
    move-exception v0

    .line 2103
    const-string v0, "CorePlayerService"

    const-string v3, "remote exception happened, something was wrong in voip module."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    :cond_65
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->bLowBattery:Z

    if-eqz v0, :cond_76

    .line 2110
    const-string v0, "CorePlayerService"

    const-string v1, "play() but LowBattery~"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->hideNotification()V

    goto :goto_18

    :cond_74
    move v0, v1

    .line 2095
    goto :goto_52

    .line 2117
    :cond_76
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    iget-object v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4, v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_96

    .line 2120
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 2121
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2123
    :cond_8e
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_18

    .line 2127
    :cond_96
    sput v1, Lcom/sec/android/app/music/CorePlayerService;->mNumberOfTryToPlay:I

    .line 2130
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/music/MediaButtonIntentReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/music/framework/SecAudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 2133
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 2150
    sget-boolean v0, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_DELAYED_PLAY_AFTER_VOICE_RECORDING:Z

    if-eqz v0, :cond_d6

    .line 2151
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isRecordActive()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 2152
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 2153
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2155
    :cond_cd
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_18

    .line 2180
    :cond_d6
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->start()V

    .line 2183
    iput-boolean v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mWasPlaying:Z

    .line 2185
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 2186
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2189
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->setEq()V

    .line 2195
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_fa

    .line 2196
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2198
    :cond_fa
    iput-boolean v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mPausedByTransientLossOfFocus:Z

    .line 2200
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_11b

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/android/app/music/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_11b

    sget-boolean v0, Lcom/sec/android/app/music/MusicUtils;->sIsMusicPlayerResume:Z

    if-nez v0, :cond_11b

    .line 2203
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->showNotification()V

    .line 2208
    :goto_111
    const-string v0, "musicPlayer.service.startUpdateStatus"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 2209
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/CorePlayerService;->sendMediaPlayInfo(Z)V

    goto/16 :goto_18

    .line 2205
    :cond_11b
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->hideNotification()V

    goto :goto_111

    .line 2212
    :cond_11f
    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->openCurrentOrAnything(ZJ)V

    goto/16 :goto_18
.end method

.method public playAfterSeek(J)V
    .registers 9
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 2541
    const-string v0, "CorePlayerService"

    const-string v1, "playAfterSeek(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_21

    .line 2543
    invoke-direct {p0, v5, p1, p2}, Lcom/sec/android/app/music/CorePlayerService;->openCurrentOrAnything(ZJ)V

    .line 2548
    :goto_20
    return-void

    .line 2545
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->seek(J)J

    .line 2546
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    goto :goto_20
.end method

.method public playIt(Landroid/net/Uri;Z)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 2512
    .line 2513
    iput-boolean v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z

    .line 2514
    iput-boolean p2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayDirection:Z

    .line 2516
    invoke-direct {p0, v6}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2517
    if-eqz p1, :cond_38

    .line 2518
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mWasPlaying:Z

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->setWmDrmNextAct(ILjava/lang/String;ZJ)V

    .line 2520
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/music/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I

    move-result v0

    .line 2521
    if-nez v0, :cond_47

    .line 2522
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2524
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWasPlaying:Z

    if-eqz v0, :cond_52

    .line 2525
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    move v1, v6

    .line 2533
    :cond_38
    :goto_38
    if-eqz v1, :cond_46

    .line 2534
    iput-boolean v6, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 2535
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2536
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2538
    :cond_46
    return-void

    .line 2528
    :cond_47
    const/4 v2, 0x3

    if-ne v0, v2, :cond_38

    .line 2529
    const-string v0, "CorePlayerService"

    const-string v2, "playIt() need AcquireRignts"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_52
    move v1, v6

    goto :goto_38
.end method

.method public position()J
    .registers 3

    .prologue
    .line 2836
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mResetForUlp:Z

    if-eqz v0, :cond_e

    .line 2837
    const-string v0, "CorePlayerService"

    const-string v1, "position()[mResetForUlp]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    const-wide/16 v0, -0x3e7

    .line 2842
    :goto_d
    return-wide v0

    .line 2839
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2840
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->position()J

    move-result-wide v0

    goto :goto_d

    .line 2842
    :cond_1d
    const-wide/16 v0, -0x1

    goto :goto_d
.end method

.method public prev()V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2373
    const-string v0, "CorePlayerService"

    const-string v1, "prev()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    monitor-enter p0

    .line 2379
    :try_start_a
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getPrev()Landroid/net/Uri;

    move-result-object v8

    .line 2380
    if-nez v8, :cond_20

    .line 2381
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWasPlaying:Z

    .line 2383
    const-string v0, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyBroadcast(Ljava/lang/String;)V

    .line 2384
    monitor-exit p0

    .line 2426
    :goto_1f
    return-void

    .line 2387
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z

    .line 2388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayDirection:Z

    .line 2389
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWmDrmPlay:Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;

    const/4 v1, 0x1

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/music/CorePlayerService;->mWasPlaying:Z

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/music/CorePlayerService$WmDrmNextAct;->setWmDrmNextAct(ILjava/lang/String;ZJ)V

    .line 2391
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicUtils;->isMusicPlayerTopActivity(Landroid/content/Context;Z)Z

    move-result v1

    .line 2392
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->checkDrmRight(Ljava/lang/String;Z)I

    move-result v0

    .line 2393
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2395
    if-nez v0, :cond_75

    .line 2396
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 2397
    iget-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mWasPlaying:Z

    if-eqz v0, :cond_5e

    .line 2398
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    :cond_5e
    move v0, v6

    .line 2414
    :goto_5f
    if-eqz v0, :cond_70

    .line 2415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 2416
    if-eqz v1, :cond_9e

    .line 2417
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2418
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2425
    :cond_70
    :goto_70
    monitor-exit p0

    goto :goto_1f

    :catchall_72
    move-exception v0

    monitor-exit p0
    :try_end_74
    .catchall {:try_start_a .. :try_end_74} :catchall_72

    throw v0

    .line 2402
    :cond_75
    const/4 v2, 0x3

    if-ne v0, v2, :cond_81

    .line 2403
    :try_start_78
    const-string v0, "CorePlayerService"

    const-string v2, "prev() need AcquireRignts"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    goto :goto_5f

    .line 2404
    :cond_81
    if-eq v0, v7, :cond_87

    const/16 v2, -0xa

    if-ne v0, v2, :cond_8f

    .line 2406
    :cond_87
    iget v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mErrorCount:I

    move v0, v7

    goto :goto_5f

    .line 2408
    :cond_8f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsSupposedToBePlaying:Z

    .line 2409
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2410
    const-string v0, "com.android.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2411
    monitor-exit p0

    goto :goto_1f

    .line 2420
    :cond_9e
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2421
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;

    iget-boolean v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mUserAction:Z

    iget-boolean v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayDirection:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/CorePlayerService$FindSong;->setFindSong(ZZ)V

    .line 2422
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mNextPlay:Lcom/sec/android/app/music/CorePlayerService$FindSong;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b5
    .catchall {:try_start_78 .. :try_end_b5} :catchall_72

    goto :goto_70

    :cond_b6
    move v0, v7

    goto :goto_5f
.end method

.method registerMotionListener()V
    .registers 3

    .prologue
    .line 532
    const-string v0, "CorePlayerService"

    const-string v1, "registerMotionListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    sget-object v0, Lcom/sec/android/app/music/CorePlayerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_15

    .line 534
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/sec/android/app/music/CorePlayerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 535
    :cond_15
    sget-object v0, Lcom/sec/android/app/music/CorePlayerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    .line 536
    return-void
.end method

.method public removeTrack(J)I
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2644
    monitor-enter p0

    .line 2647
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getAudioId()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_41

    .line 2650
    :goto_b
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/music/MusicPlayerController;->removeTrack(J)I

    move-result v1

    .line 2651
    if-eqz v0, :cond_24

    .line 2652
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCount()I

    move-result v0

    .line 2653
    if-nez v0, :cond_2d

    .line 2654
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2663
    :cond_1f
    :goto_1f
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2665
    :cond_24
    if-lez v1, :cond_2b

    .line 2666
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2668
    :cond_2b
    monitor-exit p0

    return v1

    .line 2656
    :cond_2d
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v0

    .line 2657
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2658
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->openCurrent()Z

    .line 2659
    if-eqz v0, :cond_1f

    .line 2660
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    goto :goto_1f

    .line 2669
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v0

    :cond_41
    move v0, v1

    goto :goto_b
.end method

.method public removeTracks(II)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2569
    monitor-enter p0

    .line 2570
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentPosition()I

    move-result v2

    .line 2572
    if-gt p1, v2, :cond_43

    if-gt v2, p2, :cond_43

    .line 2575
    :goto_d
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/music/MusicPlayerController;->removeTracksInternal(II)I

    move-result v1

    .line 2576
    if-eqz v0, :cond_26

    .line 2577
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCount()I

    move-result v0

    .line 2578
    if-nez v0, :cond_2f

    .line 2579
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2588
    :cond_21
    :goto_21
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2590
    :cond_26
    if-lez v1, :cond_2d

    .line 2591
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2593
    :cond_2d
    monitor-exit p0

    return v1

    .line 2581
    :cond_2f
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v0

    .line 2582
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2583
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->openCurrent()Z

    .line 2584
    if-eqz v0, :cond_21

    .line 2585
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    goto :goto_21

    .line 2594
    :catchall_40
    move-exception v0

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v0

    :cond_43
    move v0, v1

    goto :goto_d
.end method

.method public removeTracks([I)I
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2607
    monitor-enter p0

    .line 2608
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentPosition()I

    move-result v3

    move v2, v0

    .line 2610
    :goto_a
    array-length v4, p1

    if-ge v2, v4, :cond_15

    .line 2611
    aget v4, p1, v2

    if-ne v4, v3, :cond_12

    move v0, v1

    .line 2610
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2615
    :cond_15
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/music/MusicPlayerController;->removeTracksInternal([I)I

    move-result v1

    .line 2616
    if-eqz v0, :cond_2e

    .line 2617
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCount()I

    move-result v0

    .line 2618
    if-nez v0, :cond_37

    .line 2619
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2628
    :cond_29
    :goto_29
    const-string v0, "com.android.music.metachanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2630
    :cond_2e
    if-lez v1, :cond_35

    .line 2631
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 2633
    :cond_35
    monitor-exit p0

    return v1

    .line 2621
    :cond_37
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v0

    .line 2622
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2623
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->openCurrent()Z

    .line 2624
    if-eqz v0, :cond_29

    .line 2625
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->play()V

    goto :goto_29

    .line 2634
    :catchall_48
    move-exception v0

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public reorderQueueItem([JI)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1887
    monitor-enter p0

    .line 1888
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/MusicPlayerController;->setList([JI)V

    .line 1889
    const-string v0, "com.android.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->notifyChange(Ljava/lang/String;)V

    .line 1890
    monitor-exit p0

    .line 1891
    return-void

    .line 1890
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public seek(J)J
    .registers 5
    .parameter "pos"

    .prologue
    .line 2851
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2852
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_10

    .line 2853
    const-wide/16 p1, 0x0

    .line 2854
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_20

    .line 2855
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->duration()J

    move-result-wide p1

    .line 2856
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 2858
    :goto_26
    return-wide v0

    :cond_27
    const-wide/16 v0, -0x1

    goto :goto_26
.end method

.method protected sendMediaPlayInfo(Z)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1822
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.android.music.musicservicecommand.mediainfo"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1823
    const-string v4, "mediauri"

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v0

    :goto_15
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1825
    const-string v0, "playing"

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1826
    const-string v0, "isStop"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1830
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    if-eqz v0, :cond_75

    .line 1832
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentPosition()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 1833
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayerController;->getItemCount()I

    move-result v0

    .line 1835
    :goto_38
    const-string v4, "currentNumber"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1836
    const-string v2, "totalNumber"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1839
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/CorePlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1840
    const-string v0, "CorePlayerService"

    const-string v2, "sendMediaPlayInfo() is Ended:mMediaUri=%s,%s,%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    if-eqz v5, :cond_57

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayerController;->getCurrentMediaUri()Landroid/net/Uri;

    move-result-object v1

    :cond_57
    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    return-void

    :cond_73
    move-object v0, v1

    .line 1823
    goto :goto_15

    :cond_75
    move v0, v2

    goto :goto_38
.end method

.method public setListFrom(ILjava/lang/String;)V
    .registers 4
    .parameter "tabFrom"
    .parameter "keyWord"

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    if-eqz v0, :cond_9

    .line 1895
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/MusicPlayerController;->setListFrom(ILjava/lang/String;)V

    .line 1897
    :cond_9
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3
    .parameter "repeatmode"

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicPlayerController;->setRepeatMode(I)V

    .line 2697
    invoke-static {p1}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setRepeat(I)V

    .line 2698
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 2700
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->notifySettingChange()V

    .line 2707
    return-void
.end method

.method public setShuffleMode(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "shufflemode"

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mMusicPlayerController:Lcom/sec/android/app/music/MusicPlayerController;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicPlayerController;->setShuffle(Z)V

    .line 2674
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setShuffle(Z)V

    .line 2675
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 2677
    invoke-direct {p0}, Lcom/sec/android/app/music/CorePlayerService;->notifySettingChange()V

    .line 2689
    return-void
.end method

.method setWmDrmPopUp(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 3015
    .line 3016
    new-array v0, v0, [I

    .line 3019
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 3020
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    .line 3026
    const/16 v1, 0xc

    .line 3027
    const-string v2, "CorePlayerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWmDrmPopUp popupType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/music/common/util/DrmPopupActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3029
    const/4 v3, 0x0

    aput p2, v0, v3

    .line 3030
    const-string v3, "CorePlayerService"

    const-string v4, "Called DrmServicePopup 4"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    const-string v3, "popup.string"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3032
    const-string v0, "popup.type"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3033
    const-string v0, "popup.filepath"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3034
    const/high16 v0, 0x4000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3035
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3036
    if-eqz p3, :cond_5f

    .line 3037
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3040
    :cond_5f
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_66} :catch_67

    .line 3046
    :cond_66
    :goto_66
    return-void

    .line 3042
    :catch_67
    move-exception v0

    .line 3043
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_66
.end method

.method protected showNotification()V
    .registers 9

    .prologue
    const v7, 0x7f090134

    const/4 v6, 0x1

    const v5, 0x7f0c00f0

    const/4 v3, 0x0

    .line 3053
    const-string v0, "CorePlayerService"

    const-string v1, "showNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3055
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.hide.notification"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3057
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_33

    .line 3058
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotiManager:Landroid/app/NotificationManager;

    .line 3060
    :cond_33
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f03002d

    invoke-direct {v2, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3062
    invoke-direct {p0, v2}, Lcom/sec/android/app/music/CorePlayerService;->setupMusicRemoteButtons(Landroid/widget/RemoteViews;)V

    .line 3064
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 3065
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotification:Landroid/app/Notification;

    const v1, 0x7f020161

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 3072
    :goto_4f
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotification:Landroid/app/Notification;

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3073
    const-string v0, ""

    .line 3075
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    if-eqz v0, :cond_ce

    .line 3076
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_c4

    invoke-virtual {p0, v7}, Lcom/sec/android/app/music/CorePlayerService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3078
    :goto_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_80

    const-string v1, "<unknown>"

    iget-object v4, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v4, v4, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    :cond_80
    invoke-virtual {p0, v7}, Lcom/sec/android/app/music/CorePlayerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_84
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3088
    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3089
    const/4 v0, -0x1

    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 3090
    const-string v0, "setSelected"

    invoke-virtual {v2, v5, v0, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3092
    const v0, 0x7010002

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/CorePlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 3093
    iput-boolean v6, p0, Lcom/sec/android/app/music/CorePlayerService;->mIsShowNotification:Z

    .line 3094
    :goto_a6
    return-void

    .line 3066
    :cond_a7
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isStop()Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mPlayer:Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/CorePlayerService$MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 3067
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotification:Landroid/app/Notification;

    iput v3, v0, Landroid/app/Notification;->icon:I

    goto :goto_4f

    .line 3069
    :cond_bc
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mNotification:Landroid/app/Notification;

    const v1, 0x7f020160

    iput v1, v0, Landroid/app/Notification;->icon:I

    goto :goto_4f

    .line 3076
    :cond_c4
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    goto :goto_63

    .line 3078
    :cond_c9
    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    goto :goto_84

    .line 3084
    :cond_ce
    const-string v0, "CorePlayerService"

    const-string v1, "showNotification(): mediaAlbumInfo==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    invoke-virtual {p0}, Lcom/sec/android/app/music/CorePlayerService;->hideNotification()V

    goto :goto_a6
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 2283
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/CorePlayerService;->stop(Z)V

    .line 2284
    return-void
.end method

.method unregisterMotionListener()V
    .registers 3

    .prologue
    .line 540
    const-string v0, "CorePlayerService"

    const-string v1, "unregisterMotionListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    sget-object v0, Lcom/sec/android/app/music/CorePlayerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_12

    .line 542
    sget-object v0, Lcom/sec/android/app/music/CorePlayerService;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/music/CorePlayerService;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 543
    :cond_12
    return-void
.end method
