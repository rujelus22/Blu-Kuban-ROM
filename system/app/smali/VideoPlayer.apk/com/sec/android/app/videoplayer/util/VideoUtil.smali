.class public Lcom/sec/android/app/videoplayer/util/VideoUtil;
.super Ljava/lang/Object;
.source "VideoUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/util/VideoUtil$NotificationHandler;,
        Lcom/sec/android/app/videoplayer/util/VideoUtil$OnVideoLockStateChangedObserver;,
        Lcom/sec/android/app/videoplayer/util/VideoUtil$ServiceBinder;
    }
.end annotation


# static fields
.field public static ALL_SHARE:Z = false

.field public static APP_ID:Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field public static final DNIe_UI_MODE:I = 0x0

.field public static final DNIe_VIDEO_COLD_MODE:I = 0x3

.field public static final DNIe_VIDEO_MODE:I = 0x1

.field public static final DNIe_VIDEO_WARM_MODE:I = 0x2

.field private static final FADE_OUT_TIME:I = 0xbb8

.field public static IMEI:Ljava/lang/String; = null

.field public static final KEEP_ASPECT_RATIO:I = 0x1

.field private static final MAXPLAYINGCHECKTIME:I = 0x1388

.field public static final NORMAL_RATIO:I = 0x0

.field public static ORDER_ID:Ljava/lang/String; = null

.field public static final OVERLOOK_ASPECT_RATIO:I = 0x2

.field public static final PLAYER_PAUSE:I = 0x1

.field public static final PLAYER_PLAY:I = 0x0

.field public static final PLAYER_PREPARING:I = 0x4

.field public static final PLAYER_STOP:I = 0x3

.field public static final PLAYER_SUSPEND:I = 0x2

.field private static final RESUMEPLAYBACK:I = 0x3

.field public static final SCHEME_BROWSER_RTSP_TYPE:I = 0x1e

.field public static final SCHEME_BROWSER_SDP_TYPE:I = 0x21

.field public static final SCHEME_BROWSER_TYPE:I = 0x1d

.field public static final SCHEME_CONTENT_EXTERNAL_TYPE:I = 0x16

.field public static final SCHEME_CONTENT_INTERNAL_TYPE:I = 0x15

.field public static final SCHEME_FILE_EXTERNAL_PREVIEW_TYPE:I = 0x18

.field public static final SCHEME_FILE_EXTERNAL_TYPE:I = 0x1a

.field public static final SCHEME_FILE_INTERNAL_PREVIEW_TYPE:I = 0x17

.field public static final SCHEME_FILE_INTERNAL_TYPE:I = 0x19

.field public static final SCHEME_FILE_UNKNOWN_TYPE:I = 0x1b

.field public static final SCHEME_MSG_PREVIEW:I = 0x1f

.field public static final SCHEME_PCLOUD:I = 0x20

.field public static final SCHEME_UNKNOWN_TYPE:I = 0x1c

.field public static final SCHEME_VIDEO_LIST:I = 0x14

.field private static final SETFILENAME:I = 0x2

.field public static final SRS_CS_HEADPHONE_ENABLE:I = 0x200000

.field public static final SRS_CS_HEADPHONE_OFF:I = 0x400000

.field public static final SRS_OFF:I = 0x0

.field public static final SRS_ON:I = 0x1

.field private static final STARTPLAYBACK:I = 0x1

.field public static final SUBTITLE_COLOR_BLACK:I = 0x1

.field public static final SUBTITLE_COLOR_BLUE:I = 0x2

.field public static final SUBTITLE_COLOR_GREEN:I = 0x4

.field public static final SUBTITLE_COLOR_RED:I = 0x3

.field public static final SUBTITLE_COLOR_WHITE:I = 0x0

.field public static final SUBTITLE_SIZE_LARGE:I = 0x0

.field public static final SUBTITLE_SIZE_MEDIUM:I = 0x1

.field public static final SUBTITLE_SIZE_SMALL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoUtil"

.field public static final THEME_BROWN_NAME:Ljava/lang/String; = "com.theme.samsung.Brown"

.field public static final THEME_DEFAULT_NAME:Ljava/lang/String; = "."

.field public static final THEME_EVERGREEN_NAME:Ljava/lang/String; = "com.theme.samsung.Evergreen"

.field public static final THEME_GOOGLE_NAME:Ljava/lang/String; = "com.theme.samsung.Google"

.field public static final THEME_JOYPOP_NAME:Ljava/lang/String; = "com.theme.samsung.Joypop"

.field public static USER_GUID:Ljava/lang/String; = null

.field public static final VIDEO_DESTROY:I = 0x1

.field public static final VIDEO_ERROR_STATE:I = 0x2

.field private static final VIDEO_LOCK_NOTIFICATION:I = 0x0

.field public static final VIDEO_LOCK_STATE:I = 0x0

.field public static final VIDEO_LOCK_STATE_CHANGED:I = 0x0

.field public static final VIDEO_UNLOCK_STATE:I = 0x1

.field public static mActivityOrientation:I = 0x0

.field public static mBatteryChargingStatus:Z = false

.field private static mBatteryLevel:I = 0x0

.field private static final mBufferingCheckDelay:I = 0x12c

.field public static mBufferingChecker:Ljava/lang/Runnable; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mCurIdx:I = 0x0

.field private static mCurPlayingId:J = 0x0L

.field private static mCurPlayingPath:Ljava/lang/String; = null

.field private static mCurPlayingUri:Ljava/lang/String; = null

.field public static mDetailPopup:Landroid/app/AlertDialog; = null

.field public static mFileTitle:Ljava/lang/String; = null

.field private static mFitToScnMode:I = 0x0

.field private static mHandler:Landroid/os/Handler; = null

.field public static mHasSubtitle:Z = false

.field public static mHdmiOn:Z = false

.field private static mIsAutoPlayNext:Z = false

.field private static mIsHDPI:Z = false

.field public static mIsMovieStore:Z = false

.field private static mIsOnPalm:Z = false

.field private static mListType:I = 0x0

.field public static mLowBatteryFinishVideoPlayer:Z = false

.field private static mNotificationHandler:Lcom/sec/android/app/videoplayer/util/VideoUtil$NotificationHandler; = null

.field private static mObservers:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/videoplayer/util/VideoUtil$OnVideoLockStateChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field public static mPauseEnable:Z = false

.field public static mPcloudCursor:Landroid/database/Cursor; = null

.field public static mPlaybackComplete:Z = false

.field public static mPlayerHeight:I = 0x0

.field private static mPlayerState:I = 0x0

.field public static mPlayerWidth:I = 0x0

.field private static final mPlayingCheckDelay:I = 0xfa

.field private static mPlayingCheckTime:I

.field public static mPlayingChecker:Ljava/lang/Runnable;

.field public static mPositionWhenPaused:J

.field private static mPreviewMode:Z

.field private static mPreviewModeSortType:I

.field public static mReadPosition:Z

.field public static mSDPDownloader:Ljava/lang/Runnable;

.field private static mSRS:Z

.field public static mSchemeType:I

.field private static mSelectFileIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mSendviaPopup:Landroid/app/AlertDialog;

.field private static mSortType:I

.field private static mSubTitleActivation:Z

.field private static mSubTitleColor:I

.field public static mSubTitleDialog:Landroid/app/AlertDialog;

.field private static mSubTitleLanguage:J

.field private static mSubTitleSize:I

.field public static mSubTitleSubDialog:Landroid/app/AlertDialog;

.field public static mSubTitleSyncInterval:J

.field public static mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

.field private static mSubtitleFileName:Ljava/lang/String;

.field public static mSubtitleOn:Z

.field private static mTotal:I

.field public static mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

.field public static mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

.field public static mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

.field private static mWasPlayingWhenPaused:Z

.field private static m_IsPlayReadyFile:Z

.field public static m_IsPyvFileInComplete:Z

.field private static m_PyvFilePath:Ljava/lang/String;

.field private static m_pyv_total_length:J

.field private static mbLockMode:Z

.field private static mfilepath:Ljava/lang/String;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/videoplayer/util/VideoUtil$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    .line 55
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 56
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    .line 57
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    .line 58
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    .line 60
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    .line 61
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mDetailPopup:Landroid/app/AlertDialog;

    .line 64
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 65
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 128
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->ALL_SHARE:Z

    .line 130
    sput v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    .line 133
    sput v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerWidth:I

    .line 134
    sput v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerHeight:I

    .line 136
    sput-wide v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    .line 137
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    .line 138
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mReadPosition:Z

    .line 139
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlaybackComplete:Z

    .line 140
    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPauseEnable:Z

    .line 141
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mLowBatteryFinishVideoPlayer:Z

    .line 142
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBatteryChargingStatus:Z

    .line 143
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    .line 144
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    .line 145
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    .line 146
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    .line 147
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPyvFileInComplete:Z

    .line 148
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFileTitle:Ljava/lang/String;

    .line 150
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSRS:Z

    .line 151
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mbLockMode:Z

    .line 152
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPreviewMode:Z

    .line 153
    sput-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleActivation:Z

    .line 154
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mWasPlayingWhenPaused:Z

    .line 155
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPlayReadyFile:Z

    .line 156
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsOnPalm:Z

    .line 157
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsAutoPlayNext:Z

    .line 159
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsHDPI:Z

    .line 160
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerState:I

    .line 161
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFitToScnMode:I

    .line 162
    sput v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mListType:I

    .line 163
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSortType:I

    .line 164
    sput v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBatteryLevel:I

    .line 165
    sput v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSize:I

    .line 166
    sput v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleColor:I

    .line 167
    const/16 v0, 0x1388

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingCheckTime:I

    .line 169
    sput v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    .line 170
    sput v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mTotal:I

    .line 173
    sput-wide v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    .line 174
    const-wide/16 v0, 0x15c7

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleLanguage:J

    .line 176
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    .line 177
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingUri:Ljava/lang/String;

    .line 178
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingPath:Ljava/lang/String;

    .line 179
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mfilepath:Ljava/lang/String;

    .line 180
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->USER_GUID:Ljava/lang/String;

    .line 181
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->APP_ID:Ljava/lang/String;

    .line 182
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->IMEI:Ljava/lang/String;

    .line 183
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->ORDER_ID:Ljava/lang/String;

    .line 184
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleFileName:Ljava/lang/String;

    .line 187
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sConnectionMap:Ljava/util/HashMap;

    .line 191
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    .line 192
    sput v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mActivityOrientation:I

    .line 194
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mContext:Landroid/content/Context;

    .line 1104
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoUtil$1;

    invoke-direct {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingChecker:Ljava/lang/Runnable;

    .line 1229
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoUtil$2;

    invoke-direct {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    .line 1283
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoUtil$3;

    invoke-direct {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil$3;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBufferingChecker:Ljava/lang/Runnable;

    .line 1510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mObservers:Ljava/util/List;

    .line 1539
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoUtil$NotificationHandler;

    invoke-direct {v0, v3}, Lcom/sec/android/app/videoplayer/util/VideoUtil$NotificationHandler;-><init>(Lcom/sec/android/app/videoplayer/util/VideoUtil$1;)V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mNotificationHandler:Lcom/sec/android/app/videoplayer/util/VideoUtil$NotificationHandler;

    .line 1561
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoUtil$4;

    invoke-direct {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil$4;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSDPDownloader:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1531
    return-void
.end method

.method private static IsFileIncomplete(Ljava/lang/String;)Z
    .registers 14
    .parameter "path"

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x7

    .line 429
    new-array v8, v12, [I

    .line 432
    .local v8, temp_byte:[I
    const-wide/16 v1, 0x0

    .line 433
    .local v1, actual_length:J
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, PYVFile:Ljava/io/File;
    :try_start_c
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 436
    .local v7, is:Ljava/io/FileInputStream;
    if-eqz v7, :cond_1a

    .line 437
    const-string v9, "VideoUtil"

    const-string v10, "FileTest Success!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_1a
    const-wide/16 v9, 0x46

    invoke-virtual {v7, v9, v10}, Ljava/io/FileInputStream;->skip(J)J

    .line 439
    const/4 v6, 0x7

    .local v6, index:I
    :goto_20
    if-ltz v6, :cond_2b

    .line 441
    invoke-virtual {v7}, Ljava/io/FileInputStream;->read()I

    move-result v9

    aput v9, v8, v6

    .line 439
    add-int/lit8 v6, v6, -0x1

    goto :goto_20

    .line 443
    :cond_2b
    const/4 v6, 0x0

    :goto_2c
    if-ge v6, v11, :cond_36

    .line 445
    aget v9, v8, v6

    int-to-long v9, v9

    add-long/2addr v1, v9

    .line 446
    shl-long/2addr v1, v12

    .line 443
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 448
    :cond_36
    const/4 v9, 0x7

    aget v9, v8, v9

    int-to-long v9, v9

    add-long/2addr v1, v9

    .line 449
    const-string v9, "VideoUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IsFileIncomplete: Value at 0x46th byte:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_56} :catch_6d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_56} :catch_72

    .line 457
    .end local v6           #index:I
    .end local v7           #is:Ljava/io/FileInputStream;
    :goto_56
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    sub-long v4, v1, v9

    .line 458
    .local v4, i:J
    sput-wide v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_pyv_total_length:J

    .line 459
    const-wide/16 v9, 0x0

    cmp-long v9, v4, v9

    if-gtz v9, :cond_77

    .line 460
    const-string v9, "VideoUtil"

    const-string v10, "IsFileIncomplete: File is complete"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v9, 0x0

    .line 465
    :goto_6c
    return v9

    .line 452
    .end local v4           #i:J
    :catch_6d
    move-exception v3

    .line 453
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_56

    .line 454
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_72
    move-exception v3

    .line 455
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    .line 464
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #i:J
    :cond_77
    const-string v9, "VideoUtil"

    const-string v10, "IsFileIncomplete: File is incomplete"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v9, 0x1

    goto :goto_6c
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(II)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->handleNotification(II)V

    return-void
.end method

.method static synthetic access$300()Landroid/content/Context;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bindToService(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 1249
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 5
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 1253
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1254
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoUtil$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/sec/android/app/videoplayer/util/VideoUtil$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 1255
    .local v0, sb:Lcom/sec/android/app/videoplayer/util/VideoUtil$ServiceBinder;
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/sec/android/app/videoplayer/service/MoviePlaybackService;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public static broadcastPausedPosition(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 1452
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-nez v3, :cond_5

    .line 1493
    :cond_4
    :goto_4
    return-void

    .line 1454
    :cond_5
    if-eqz p0, :cond_4

    .line 1456
    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsMovieStore:Z

    if-eqz v3, :cond_4

    .line 1459
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sdgtl.stamhubb.PAUSED_POSITION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1460
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1463
    .local v2, serviceIsInitialized:Z
    :try_start_13
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isInitialized()Z

    move-result v2

    .line 1464
    if-eqz v2, :cond_37

    .line 1466
    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlaybackComplete:Z

    if-eqz v3, :cond_23

    sget-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPyvFileInComplete:Z

    if-eqz v3, :cond_62

    .line 1467
    :cond_23
    const-string v3, "paused_position"

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v4}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1471
    :goto_2e
    const-string v3, "filepath"

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getVideoUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_37} :catch_6a

    .line 1480
    :cond_37
    :goto_37
    if-eqz v2, :cond_4

    .line 1484
    :try_start_39
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1485
    const-string v3, "VideoUtil"

    const-string v4, "broadcastPausedPosition() : sendBroadcast"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/content/ActivityNotFoundException; {:try_start_39 .. :try_end_43} :catch_44

    goto :goto_4

    .line 1487
    :catch_44
    move-exception v0

    .line 1489
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "VideoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastPausedPosition - ActivityNotFoundException occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1469
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_62
    :try_start_62
    const-string v3, "paused_position"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_69} :catch_6a

    goto :goto_2e

    .line 1475
    :catch_6a
    move-exception v0

    .line 1476
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1477
    const-string v3, "VideoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastPausedPosition - RemoteException occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public static bufferstate()V
    .registers 7

    .prologue
    .line 1324
    const-string v3, "VideoUtil"

    const-string v4, "bufferstate()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    .line 1327
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingUri:Ljava/lang/String;

    if-eqz v3, :cond_50

    .line 1328
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v0

    .line 1329
    .local v0, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 1330
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1332
    .local v1, uri:Landroid/net/Uri;
    if-eqz v0, :cond_50

    .line 1333
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setDrawableMode(Ljava/lang/String;)V

    .line 1334
    if-eqz v2, :cond_35

    .line 1335
    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1336
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestLayout()V

    .line 1338
    :cond_35
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPlayerState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_40

    .line 1339
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1347
    :cond_40
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBufferingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1348
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBufferingChecker:Ljava/lang/Runnable;

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1349
    :cond_50
    return-void
.end method

.method public static checkIdExist_SelectedIdList(J)Z
    .registers 5
    .parameter "id"

    .prologue
    .line 1203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1204
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_1b

    .line 1205
    const/4 v1, 0x1

    .line 1208
    :goto_1a
    return v1

    .line 1203
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1208
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public static declared-synchronized checkMediaScannerRunning(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 1371
    const-class v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-nez v0, :cond_d

    .line 1372
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    .line 1374
    :cond_d
    sput-object p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mContext:Landroid/content/Context;

    .line 1375
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1b

    move-result v0

    monitor-exit v1

    return v0

    .line 1371
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static clearObserver()V
    .registers 1

    .prologue
    .line 1503
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1504
    return-void
.end method

.method public static createSelectedFileIdList()V
    .registers 1

    .prologue
    .line 1175
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1176
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1178
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    .line 1179
    return-void
.end method

.method public static deleteId_SelectedIdList(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 1194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1195
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_1f

    .line 1196
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1200
    :cond_1e
    return-void

    .line 1194
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static destroySelectedFileIdList()V
    .registers 1

    .prologue
    .line 1182
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1183
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1184
    :cond_9
    return-void
.end method

.method public static getBatteryLevel()I
    .registers 1

    .prologue
    .line 520
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBatteryLevel:I

    return v0
.end method

.method public static getCurIndex()I
    .registers 1

    .prologue
    .line 378
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    return v0
.end method

.method public static getCurPlayingId()J
    .registers 2

    .prologue
    .line 370
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    return-wide v0
.end method

.method public static getCurPlayingPath()Ljava/lang/String;
    .registers 1

    .prologue
    .line 564
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurPlayingUri()Ljava/lang/String;
    .registers 1

    .prologue
    .line 366
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingUri:Ljava/lang/String;

    return-object v0
.end method

.method public static getFitToScreenMode()I
    .registers 1

    .prologue
    .line 362
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFitToScnMode:I

    return v0
.end method

.method public static getID()J
    .registers 2

    .prologue
    .line 1171
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    return-wide v0
.end method

.method public static getIsOnPalm()Z
    .registers 3

    .prologue
    .line 1225
    const-string v0, "VideoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsOnPalm() - mIsOnPalm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsOnPalm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsOnPalm:Z

    return v0
.end method

.method public static getListType()I
    .registers 1

    .prologue
    .line 504
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mListType:I

    return v0
.end method

.method public static getLockState()Z
    .registers 1

    .prologue
    .line 348
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mbLockMode:Z

    return v0
.end method

.method public static getMovieplayerOrientation()I
    .registers 1

    .prologue
    .line 203
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mActivityOrientation:I

    return v0
.end method

.method public static getPlayerState()I
    .registers 3

    .prologue
    .line 779
    const-string v0, "VideoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayerState - current player state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerState:I

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerState:I

    return v0
.end method

.method public static getPreviewFilePath()Ljava/lang/String;
    .registers 1

    .prologue
    .line 555
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mfilepath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreviewModeFlag()Z
    .registers 1

    .prologue
    .line 512
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPreviewMode:Z

    return v0
.end method

.method public static getPreviewSortType()I
    .registers 1

    .prologue
    .line 546
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPreviewModeSortType:I

    return v0
.end method

.method public static getPyvFilePath()Ljava/lang/String;
    .registers 1

    .prologue
    .line 470
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public static getPyvFileTotalLength()J
    .registers 2

    .prologue
    .line 474
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_pyv_total_length:J

    return-wide v0
.end method

.method public static getSRS()Z
    .registers 1

    .prologue
    .line 207
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSRS:Z

    return v0
.end method

.method public static getSchemeType()I
    .registers 1

    .prologue
    .line 1216
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    return v0
.end method

.method public static getSelectedIdList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1187
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    .line 1190
    :cond_b
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSelectFileIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getSortType()I
    .registers 1

    .prologue
    .line 496
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSortType:I

    return v0
.end method

.method private static getStateString(I)Ljava/lang/String;
    .registers 2
    .parameter "state"

    .prologue
    .line 792
    packed-switch p0, :pswitch_data_16

    .line 804
    const-string v0, "default"

    :goto_5
    return-object v0

    .line 794
    :pswitch_6
    const-string v0, "play"

    goto :goto_5

    .line 796
    :pswitch_9
    const-string v0, "pause"

    goto :goto_5

    .line 798
    :pswitch_c
    const-string v0, "suspend"

    goto :goto_5

    .line 800
    :pswitch_f
    const-string v0, "stop"

    goto :goto_5

    .line 802
    :pswitch_12
    const-string v0, "preparing"

    goto :goto_5

    .line 792
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public static getSubTitleActivationFlag()Z
    .registers 1

    .prologue
    .line 284
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleActivation:Z

    return v0
.end method

.method public static getSubTitleColor()I
    .registers 2

    .prologue
    .line 308
    const/4 v0, -0x1

    .line 310
    .local v0, color:I
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleColor:I

    packed-switch v1, :pswitch_data_18

    .line 335
    :goto_6
    return v0

    .line 312
    :pswitch_7
    const/4 v0, -0x1

    .line 313
    goto :goto_6

    .line 316
    :pswitch_9
    const/high16 v0, -0x100

    .line 317
    goto :goto_6

    .line 320
    :pswitch_c
    const v0, -0xffff01

    .line 321
    goto :goto_6

    .line 324
    :pswitch_10
    const/high16 v0, -0x1

    .line 325
    goto :goto_6

    .line 328
    :pswitch_13
    const v0, -0xff8000

    .line 329
    goto :goto_6

    .line 310
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_c
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method public static getSubTitleColorType()I
    .registers 1

    .prologue
    .line 304
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleColor:I

    return v0
.end method

.method public static getSubTitleDefaultLanguage()J
    .registers 2

    .prologue
    .line 296
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleLanguage:J

    return-wide v0
.end method

.method public static getSubTitleSize()I
    .registers 2

    .prologue
    .line 221
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isHDPI()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 223
    const/16 v0, 0x11

    .line 225
    .local v0, size:I
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSize:I

    packed-switch v1, :pswitch_data_28

    .line 267
    :goto_d
    return v0

    .line 228
    :pswitch_e
    const/16 v0, 0x16

    .line 229
    goto :goto_d

    .line 232
    :pswitch_11
    const/16 v0, 0x11

    .line 233
    goto :goto_d

    .line 236
    :pswitch_14
    const/16 v0, 0xe

    .line 237
    goto :goto_d

    .line 245
    .end local v0           #size:I
    :cond_17
    const/16 v0, 0x18

    .line 247
    .restart local v0       #size:I
    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSize:I

    packed-switch v1, :pswitch_data_32

    goto :goto_d

    .line 250
    :pswitch_1f
    const/16 v0, 0x1e

    .line 251
    goto :goto_d

    .line 254
    :pswitch_22
    const/16 v0, 0x18

    .line 255
    goto :goto_d

    .line 258
    :pswitch_25
    const/16 v0, 0x13

    .line 259
    goto :goto_d

    .line 225
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch

    .line 247
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public static getSubTitleSizeType()I
    .registers 1

    .prologue
    .line 215
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSize:I

    return v0
.end method

.method public static getSubtitleFileName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 276
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleFileName:Ljava/lang/String;

    return-object v0
.end method

.method public static getVideoUri()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1166
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingUri:Ljava/lang/String;

    return-object v0
.end method

.method public static getWasPlayingWhenPaused()Z
    .registers 3

    .prologue
    .line 573
    const-string v0, "VideoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWasPlayingWhenPaused - mWasPlayingWhenPaused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mWasPlayingWhenPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mWasPlayingWhenPaused:Z

    return v0
.end method

.method private static handleNotification(II)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1521
    const-string v1, "VideoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNotification key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1524
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/videoplayer/util/VideoUtil$OnVideoLockStateChangedObserver;>;"
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1525
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/videoplayer/util/VideoUtil$OnVideoLockStateChangedObserver;

    invoke-interface {v1, p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoUtil$OnVideoLockStateChangedObserver;->OnVideoLockStateChanged(II)V

    goto :goto_28

    .line 1527
    :cond_38
    return-void
.end method

.method public static isAutoPlayNext()Z
    .registers 1

    .prologue
    .line 813
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsAutoPlayNext:Z

    return v0
.end method

.method public static isCurrentPlayerState(I)Z
    .registers 4
    .parameter "state"

    .prologue
    .line 784
    const-string v0, "VideoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCurrentPlayerState - mPlayerState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerState:I

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerState:I

    if-ne v0, p0, :cond_32

    .line 786
    const/4 v0, 0x1

    .line 788
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public static isHDPI()Z
    .registers 1

    .prologue
    .line 1549
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsHDPI:Z

    return v0
.end method

.method public static isPlayReadyFile()Z
    .registers 1

    .prologue
    .line 478
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPlayReadyFile:Z

    return v0
.end method

.method public static next(Z)Z
    .registers 16
    .parameter "fromUser"

    .prologue
    const/16 v14, 0x1a

    const/16 v13, 0x19

    const/16 v12, 0x14

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 817
    const-string v7, "VideoUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "next() - fromUser : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, filePath:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setCurPlayingPath(Ljava/lang/String;)V

    .line 820
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    .line 821
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->resumeTvOut()V

    .line 823
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-eq v7, v12, :cond_4d

    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-eq v7, v13, :cond_4d

    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-eq v7, v14, :cond_4d

    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v10, 0x20

    if-eq v7, v10, :cond_4d

    .line 824
    const-string v7, "VideoUtil"

    const-string v9, "next() - not support launch mode"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 931
    :goto_4c
    return v7

    .line 828
    :cond_4d
    const-wide/16 v4, 0x0

    .line 831
    .local v4, video_Id:J
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-ne v7, v12, :cond_156

    .line 832
    const-string v7, "VideoUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "next()- SCHEME_VIDEO_LIST. mID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v11, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-static {v8, v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->updateResumePos(ZLjava/lang/String;)V

    .line 835
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mTotal:I

    if-gtz v7, :cond_7d

    .line 836
    const-string v7, "VideoUtil"

    const-string v9, "next() - mTotal <= 0"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 837
    goto :goto_4c

    .line 840
    :cond_7d
    if-nez p0, :cond_85

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isAutoPlayNext()Z

    move-result v7

    if-eqz v7, :cond_af

    .line 841
    :cond_85
    const-wide/16 v10, -0x1

    sput-wide v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    .line 842
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    .line 844
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    sget v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mTotal:I

    add-int/lit8 v10, v10, -0x1

    if-le v7, v10, :cond_99

    .line 845
    sput v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    .line 849
    :cond_99
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v3

    .line 850
    .local v3, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setControllerPlayerStop()V

    .line 852
    sget-object v7, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    if-nez v7, :cond_b1

    .line 854
    const-string v7, "VideoUtil"

    const-string v9, "next() - VideoListView.mListInfoArrayList is null "

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 855
    goto :goto_4c

    .end local v3           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_af
    move v7, v8

    .line 847
    goto :goto_4c

    .line 859
    .restart local v3       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_b1
    :try_start_b1
    sget-object v7, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    sget v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_be
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b1 .. :try_end_be} :catch_10b
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_be} :catch_12b

    move-result-wide v4

    .line 868
    :goto_bf
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 869
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 870
    .local v6, video_uri:Ljava/lang/String;
    invoke-static {v6, v4, v5}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;J)V

    .line 873
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v7, v4, v5}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getResumePosition(J)J

    move-result-wide v7

    sput-wide v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    .line 874
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 875
    const/4 v7, 0x3

    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPlayerState(I)V

    .line 876
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayback()V

    .line 922
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    .end local v6           #video_uri:Ljava/lang/String;
    :cond_de
    :goto_de
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSubtitleFileName(Ljava/lang/String;)V

    .line 923
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v8, v4, v5}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->checkExistSubTitle(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25b

    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->initSubTitle()Z

    move-result v7

    if-eqz v7, :cond_25b

    .line 924
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    .line 929
    :goto_fd
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->requestFocus()Z

    move v7, v9

    .line 931
    goto/16 :goto_4c

    .line 860
    .restart local v3       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :catch_10b
    move-exception v0

    .line 861
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "VideoUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "next() IndexOutOfBoundsException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 862
    goto/16 :goto_4c

    .line 863
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_12b
    move-exception v0

    .line 864
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "VideoUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "next() Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    sget-object v7, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_bf

    .line 877
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_156
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v10, 0x20

    if-ne v7, v10, :cond_203

    .line 881
    :try_start_15c
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 882
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    const-string v10, "title"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFileTitle:Ljava/lang/String;

    .line 883
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    const-string v10, "data"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;)V
    :try_end_182
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_15c .. :try_end_182} :catch_187
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_182} :catch_1e5

    .line 893
    :goto_182
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayback()V

    goto/16 :goto_de

    .line 884
    :catch_187
    move-exception v0

    .line 885
    .local v0, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v7, "VideoUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "next mPcloud"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 887
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    const-string v10, "title"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFileTitle:Ljava/lang/String;

    .line 888
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    const-string v10, "data"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;)V

    .line 889
    const-string v7, "VideoUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CursorIndexOutOfBoundsException : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_182

    .line 890
    .end local v0           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1e5
    move-exception v0

    .line 891
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "VideoUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "next pCloud exception : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_182

    .line 896
    .end local v0           #e:Ljava/lang/Exception;
    :cond_203
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-eq v7, v14, :cond_20b

    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-ne v7, v13, :cond_de

    .line 897
    :cond_20b
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    sget-wide v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    invoke-virtual {v7, v9, v10, v11}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoIdByBucketId(ZJ)J

    move-result-wide v4

    .line 898
    const-string v7, "VideoUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "next()- My files. nextId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-gez v7, :cond_234

    move v7, v8

    .line 902
    goto/16 :goto_4c

    .line 904
    :cond_234
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v3

    .line 905
    .restart local v3       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setControllerPlayerStop()V

    .line 907
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 909
    .restart local v2       #uri:Landroid/net/Uri;
    if-eqz v2, :cond_251

    .line 910
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 913
    .restart local v6       #video_uri:Ljava/lang/String;
    invoke-static {v6, v4, v5}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;J)V

    .line 914
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayback()V

    goto/16 :goto_de

    .line 916
    .end local v6           #video_uri:Ljava/lang/String;
    :cond_251
    const-string v7, "VideoUtil"

    const-string v9, "next() - uri is null. cannot play next."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 917
    goto/16 :goto_4c

    .line 926
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_25b
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    goto/16 :goto_fd
.end method

.method public static notifySettingChanged(II)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1517
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mNotificationHandler:Lcom/sec/android/app/videoplayer/util/VideoUtil$NotificationHandler;

    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mNotificationHandler:Lcom/sec/android/app/videoplayer/util/VideoUtil$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1518
    return-void
.end method

.method public static prev()Z
    .registers 14

    .prologue
    const/16 v13, 0x1a

    const/16 v12, 0x19

    const/16 v11, 0x14

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 935
    const-string v7, "VideoUtil"

    const-string v10, "prev()"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object v1

    .line 937
    .local v1, filePath:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setCurPlayingPath(Ljava/lang/String;)V

    .line 938
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    .line 939
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->resumeTvOut()V

    .line 941
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-eq v7, v11, :cond_3c

    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-eq v7, v12, :cond_3c

    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-eq v7, v13, :cond_3c

    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v10, 0x20

    if-eq v7, v10, :cond_3c

    .line 942
    const-string v7, "VideoUtil"

    const-string v9, "prev() -  return"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 1032
    :goto_3b
    return v7

    .line 946
    :cond_3c
    const-wide/16 v4, 0x0

    .line 948
    .local v4, video_Id:J
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-ne v7, v11, :cond_12e

    .line 949
    const-string v7, "VideoUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prev()- SCHEME_VIDEO_LIST. mID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v11, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-static {v8, v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->updateResumePos(ZLjava/lang/String;)V

    .line 952
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mTotal:I

    if-gtz v7, :cond_6c

    .line 953
    const-string v7, "VideoUtil"

    const-string v9, "prev() - mTotal <= 0"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 954
    goto :goto_3b

    .line 957
    :cond_6c
    const-wide/16 v10, -0x1

    sput-wide v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    .line 958
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    .line 960
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    if-gez v7, :cond_80

    .line 961
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mTotal:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    .line 963
    :cond_80
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v3

    .line 964
    .local v3, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setControllerPlayerStop()V

    .line 967
    :try_start_89
    sget-object v7, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    sget v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_96
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_89 .. :try_end_96} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_96} :catch_103

    move-result-wide v4

    .line 976
    :goto_97
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 977
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 978
    .local v6, video_uri:Ljava/lang/String;
    invoke-static {v6, v4, v5}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;J)V

    .line 981
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v7, v4, v5}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getResumePosition(J)J

    move-result-wide v7

    sput-wide v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    .line 982
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 983
    const/4 v7, 0x3

    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPlayerState(I)V

    .line 984
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayback()V

    .line 1023
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    .end local v6           #video_uri:Ljava/lang/String;
    :cond_b6
    :goto_b6
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSubtitleFileName(Ljava/lang/String;)V

    .line 1024
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v8, v4, v5}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->checkExistSubTitle(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20d

    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->initSubTitle()Z

    move-result v7

    if-eqz v7, :cond_20d

    .line 1025
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->startSubTitleProccessor()V

    .line 1030
    :goto_d5
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v7

    iget-object v7, v7, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mTitleController:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->requestFocus()Z

    move v7, v9

    .line 1032
    goto/16 :goto_3b

    .line 968
    .restart local v3       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :catch_e3
    move-exception v0

    .line 969
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "VideoUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "prev() IndexOutOfBoundsException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 970
    goto/16 :goto_3b

    .line 971
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_103
    move-exception v0

    .line 972
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "VideoUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prev() Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    sget-object v7, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_97

    .line 985
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_12e
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v10, 0x20

    if-ne v7, v10, :cond_1c1

    .line 989
    :try_start_134
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 990
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    const-string v10, "title"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFileTitle:Ljava/lang/String;

    .line 991
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    const-string v10, "data"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;)V
    :try_end_15a
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_134 .. :try_end_15a} :catch_15f
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_15a} :catch_1a3

    .line 1000
    :goto_15a
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayback()V

    goto/16 :goto_b6

    .line 992
    :catch_15f
    move-exception v0

    .line 993
    .local v0, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v7, "VideoUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CursorIndexOutOfBoundsException : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    .line 995
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    const-string v10, "title"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFileTitle:Ljava/lang/String;

    .line 996
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPcloudCursor:Landroid/database/Cursor;

    const-string v10, "data"

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;)V

    goto :goto_15a

    .line 997
    .end local v0           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1a3
    move-exception v0

    .line 998
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "VideoUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "next pCloud exception : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15a

    .line 1003
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1c1
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-eq v7, v13, :cond_1c9

    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    if-ne v7, v12, :cond_b6

    .line 1004
    :cond_1c9
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    sget-wide v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    invoke-virtual {v7, v8, v10, v11}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoIdByBucketId(ZJ)J

    move-result-wide v4

    .line 1005
    const-string v7, "VideoUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "prev()- prev Id : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-gez v7, :cond_1f2

    move v7, v8

    .line 1009
    goto/16 :goto_3b

    .line 1011
    :cond_1f2
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v3

    .line 1012
    .restart local v3       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setControllerPlayerStop()V

    .line 1014
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1015
    .restart local v2       #uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1018
    .restart local v6       #video_uri:Ljava/lang/String;
    invoke-static {v6, v4, v5}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;J)V

    .line 1019
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayback()V

    goto/16 :goto_b6

    .line 1027
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    .end local v6           #video_uri:Ljava/lang/String;
    :cond_20d
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v7}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->stopSubTitleProcessor()V

    goto/16 :goto_d5
.end method

.method public static removeHandler()V
    .registers 2

    .prologue
    .line 579
    const-string v0, "VideoUtil"

    const-string v1, "removeHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 581
    return-void
.end method

.method public static resumePlayback()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x3

    .line 700
    const-string v2, "VideoUtil"

    const-string v3, "resumePlayback()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isCurrentPlayerState(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 703
    const-string v2, "VideoUtil"

    const-string v3, "resumePlayback() - player is on preparing state"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .local v1, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :goto_16
    return-void

    .line 707
    .end local v1           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :cond_17
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v1

    .line 709
    .restart local v1       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayingChecker()V

    .line 711
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v2, :cond_a4

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceExists()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 713
    :try_start_2a
    const-string v2, "VideoUtil"

    const-string v3, "resumePlayback() start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlaybackComplete:Z

    .line 717
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingUri:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->checkIsDRM(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 723
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isCurrentPlayerState(I)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 724
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayback()V

    .line 725
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPlayerState(I)V

    .line 732
    :goto_4c
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    .line 733
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setUpdate()V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_5a} :catch_5b

    goto :goto_16

    .line 734
    :catch_5b
    move-exception v0

    .line 735
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "VideoUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumePlayback() - RemoteException occured  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 727
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_79
    :try_start_79
    const-string v2, "VideoUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumePlayback() current play state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPlayerState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". do nothing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 730
    :cond_9c
    const-string v2, "VideoUtil"

    const-string v3, "resumePlayback() - DRM file."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_a3} :catch_5b

    goto :goto_4c

    .line 739
    :cond_a4
    sget v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingCheckTime:I

    if-gez v2, :cond_bc

    .line 740
    const-string v2, "VideoUtil"

    const-string v3, "resumePlayback() mPlayingCheckTime is expired. quit video"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    .line 743
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopBufferingChecker()V

    .line 744
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->notifySettingChanged(II)V

    goto/16 :goto_16

    .line 748
    :cond_bc
    sget v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingCheckTime:I

    add-int/lit16 v2, v2, -0xfa

    sput v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingCheckTime:I

    .line 750
    const-string v2, "VideoUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumePlayback() player is not ready. mPlayingCheckTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingCheckTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SurfaceView ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceExists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_16
.end method

.method public static setAutoPlayNext(Z)V
    .registers 1
    .parameter "isAutoPlayNext"

    .prologue
    .line 809
    sput-boolean p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsAutoPlayNext:Z

    .line 810
    return-void
.end method

.method public static setBatteryLevel(I)V
    .registers 1
    .parameter "level"

    .prologue
    .line 516
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBatteryLevel:I

    .line 517
    return-void
.end method

.method public static setBtnEnableFlag(ZZZ)V
    .registers 5
    .parameter "pause"
    .parameter "rew"
    .parameter "ff"

    .prologue
    .line 524
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v0

    .line 526
    .local v0, surfaceView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    if-eqz v0, :cond_f

    .line 527
    sput-boolean p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPauseEnable:Z

    .line 528
    iget-object v1, v0, Lcom/sec/android/app/videoplayer/view/VideoSurface;->mBtnController:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v1, p0, p1, p2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setBtnState(ZZZ)V

    .line 530
    :cond_f
    return-void
.end method

.method public static setCurPlayingId(J)V
    .registers 2
    .parameter "id"

    .prologue
    .line 374
    sput-wide p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    .line 375
    return-void
.end method

.method public static setCurPlayingPath(Ljava/lang/String;)V
    .registers 1
    .parameter "path"

    .prologue
    .line 560
    sput-object p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingPath:Ljava/lang/String;

    .line 561
    return-void
.end method

.method public static setCurrentPlayInfo()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1036
    sget v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v5, 0x14

    if-eq v4, v5, :cond_f

    .line 1037
    const-string v4, "VideoUtil"

    const-string v5, "setCurrentPlayId() - mKeyType != SCHEME_VIDEO_LIST"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    .local v0, uri:Landroid/net/Uri;
    .local v1, videoId:J
    :goto_e
    return v3

    .line 1041
    .end local v0           #uri:Landroid/net/Uri;
    .end local v1           #videoId:J
    :cond_f
    sget-object v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sput v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mTotal:I

    .line 1043
    sget v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mTotal:I

    if-lez v4, :cond_1f

    sget v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    if-gez v4, :cond_46

    .line 1044
    :cond_1f
    const-string v4, "VideoUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCurrentPlayId() - total size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mTotal:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or current index is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1048
    :cond_46
    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    sget v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mTotal:I

    if-lt v3, v4, :cond_6c

    .line 1049
    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mTotal:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    .line 1050
    const-string v3, "VideoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cur() - mCurIndex >= mTotal. get new mCurIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_6c
    const-wide/16 v3, -0x1

    sput-wide v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    .line 1054
    sget-object v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    sget v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1055
    .restart local v1       #videoId:J
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1056
    .restart local v0       #uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setVideoPath(Ljava/lang/String;J)V

    .line 1057
    const/4 v3, 0x1

    goto :goto_e
.end method

.method public static setDensityScreen(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 1542
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1543
    .local v0, metrics:Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1544
    const-string v1, "VideoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "density : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_39

    const/4 v1, 0x1

    :goto_36
    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsHDPI:Z

    .line 1546
    return-void

    .line 1545
    :cond_39
    const/4 v1, 0x0

    goto :goto_36
.end method

.method public static setFitToScreenMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 352
    const/4 v0, 0x2

    if-le p0, v0, :cond_4

    .line 353
    const/4 p0, 0x0

    .line 355
    :cond_4
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFitToScnMode:I

    .line 356
    const-string v0, "VideoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFitToScreenMode() - mFitToScnMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFitToScnMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    sget v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mFitToScnMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->setVideoScaleType(I)V

    .line 359
    return-void
.end method

.method public static setIsOnPalm(Z)V
    .registers 4
    .parameter "isOnPalm"

    .prologue
    .line 1220
    const-string v0, "VideoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsOnPalm() - isOnPalm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    sput-boolean p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mIsOnPalm:Z

    .line 1222
    return-void
.end method

.method public static setListType(I)V
    .registers 1
    .parameter "listType"

    .prologue
    .line 500
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mListType:I

    .line 501
    return-void
.end method

.method public static setLockState(Z)V
    .registers 1
    .parameter "mode"

    .prologue
    .line 344
    sput-boolean p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mbLockMode:Z

    .line 345
    return-void
.end method

.method public static setMediaVideoList(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 482
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurIdx:I

    .line 485
    :try_start_2
    sget-object v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sput v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mTotal:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    .line 489
    :goto_a
    return-void

    .line 486
    :catch_b
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public static setMovieplayerOrientation(I)V
    .registers 4
    .parameter "orientation"

    .prologue
    .line 198
    const-string v0, "VideoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMovieplayerOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mActivityOrientation:I

    .line 200
    return-void
.end method

.method public static setOnVideoLockStateChangedObserver(Lcom/sec/android/app/videoplayer/util/VideoUtil$OnVideoLockStateChangedObserver;)V
    .registers 2
    .parameter "o"

    .prologue
    .line 1513
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mObservers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    return-void
.end method

.method public static setPlayerState(I)V
    .registers 4
    .parameter "stateToBeSet"

    .prologue
    .line 774
    const-string v0, "VideoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayerState - stateToBeSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayerState:I

    .line 776
    return-void
.end method

.method public static setPreviewFilePath(Ljava/lang/String;)V
    .registers 1
    .parameter "path"

    .prologue
    .line 551
    sput-object p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mfilepath:Ljava/lang/String;

    .line 552
    return-void
.end method

.method public static setPreviewMode(Z)V
    .registers 1
    .parameter "enable"

    .prologue
    .line 508
    sput-boolean p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPreviewMode:Z

    .line 509
    return-void
.end method

.method public static setPreviewSortType(I)V
    .registers 4
    .parameter "type"

    .prologue
    .line 533
    const-string v0, "VideoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSortType() - type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    if-nez p0, :cond_1f

    .line 536
    const/16 v0, 0xe

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPreviewModeSortType:I

    .line 543
    :cond_1e
    :goto_1e
    return-void

    .line 537
    :cond_1f
    const/4 v0, 0x1

    if-ne p0, v0, :cond_27

    .line 538
    const/16 v0, 0xb

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPreviewModeSortType:I

    goto :goto_1e

    .line 539
    :cond_27
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2f

    .line 540
    const/16 v0, 0xc

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPreviewModeSortType:I

    goto :goto_1e

    .line 541
    :cond_2f
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1e

    .line 542
    const/16 v0, 0xd

    sput v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPreviewModeSortType:I

    goto :goto_1e
.end method

.method private static setPyvFilePath(Ljava/lang/String;J)V
    .registers 7
    .parameter "uri"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 401
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_47

    .line 402
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    .line 406
    :goto_10
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 408
    sput-object p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    .line 411
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 412
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    .line 416
    :cond_2d
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsThisWMDRM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 417
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPlayReadyFile:Z

    .line 418
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->IsFileIncomplete(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPyvFileInComplete:Z

    .line 426
    :goto_46
    return-void

    .line 404
    :cond_47
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    goto :goto_10

    .line 420
    :cond_4a
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPlayReadyFile:Z

    .line 421
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_IsPyvFileInComplete:Z

    .line 422
    sput-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->m_PyvFilePath:Ljava/lang/String;

    goto :goto_46
.end method

.method public static setSRSeffect(I)V
    .registers 5
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 584
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_69

    .line 585
    packed-switch p0, :pswitch_data_6c

    .line 619
    :cond_8
    :goto_8
    return-void

    .line 587
    :pswitch_9
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSRS:Z

    if-nez v1, :cond_8

    .line 591
    :try_start_d
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    const/high16 v2, 0x20

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->setInternalEq(I)V

    .line 592
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSRS:Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_8

    .line 593
    :catch_18
    move-exception v0

    .line 594
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 595
    const-string v1, "VideoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSRSeffect - SRS_ON - RemoteException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 601
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_39
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSRS:Z

    if-eqz v1, :cond_8

    .line 605
    :try_start_3d
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    const/high16 v2, 0x40

    invoke-interface {v1, v2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->setInternalEq(I)V

    .line 606
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSRS:Z
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_47} :catch_48

    goto :goto_8

    .line 607
    :catch_48
    move-exception v0

    .line 608
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 609
    const-string v1, "VideoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSRSeffect - SRS_OFF - RemoteException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 618
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_69
    sput-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSRS:Z

    goto :goto_8

    .line 585
    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_39
        :pswitch_9
    .end packed-switch
.end method

.method public static setSchemeType(I)V
    .registers 1
    .parameter "type"

    .prologue
    .line 1212
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    .line 1213
    return-void
.end method

.method public static setSortType(I)V
    .registers 1
    .parameter "sortType"

    .prologue
    .line 492
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSortType:I

    .line 493
    return-void
.end method

.method public static setSubTitleActivationFlag(Z)V
    .registers 1
    .parameter "flag"

    .prologue
    .line 280
    sput-boolean p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleActivation:Z

    .line 281
    return-void
.end method

.method public static setSubTitleColor(I)V
    .registers 1
    .parameter "color"

    .prologue
    .line 300
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleColor:I

    .line 301
    return-void
.end method

.method public static setSubTitleDefaultLanguage(J)V
    .registers 6
    .parameter "langID"

    .prologue
    .line 288
    sput-wide p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleLanguage:J

    .line 290
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleUtil:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getCurrentSetLanguage(J)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, lang:Ljava/lang/String;
    const-string v1, "VideoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSubTitleDefaultLanguage() lang : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/app/videoplayer/db/VideoDB;->updateSubTitleLanguage(JLjava/lang/String;)I

    .line 293
    return-void
.end method

.method public static setSubTitleSize(I)V
    .registers 1
    .parameter "size"

    .prologue
    .line 211
    sput p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSize:I

    .line 212
    return-void
.end method

.method public static setSubtitleFileName(Ljava/lang/String;)V
    .registers 1
    .parameter "fileName"

    .prologue
    .line 272
    sput-object p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleFileName:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public static setVideoPath(Ljava/lang/String;)V
    .registers 1
    .parameter "uri"

    .prologue
    .line 383
    if-eqz p0, :cond_4

    .line 384
    sput-object p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingUri:Ljava/lang/String;

    .line 386
    :cond_4
    return-void
.end method

.method public static setVideoPath(Ljava/lang/String;J)V
    .registers 4
    .parameter "uri"
    .parameter "id"

    .prologue
    .line 389
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingUri:Ljava/lang/String;

    .line 390
    sput-wide p1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    .line 392
    if-eqz p0, :cond_9

    .line 393
    sput-object p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingUri:Ljava/lang/String;

    .line 395
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPyvFilePath(Ljava/lang/String;J)V

    .line 396
    return-void
.end method

.method public static setWasPlayingWhenPaused(Z)V
    .registers 4
    .parameter "wasPlaying"

    .prologue
    .line 568
    const-string v0, "VideoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWasPlayingWhenPaused - mWasPlayingWhenPaused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mWasPlayingWhenPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wasPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    sput-boolean p0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mWasPlayingWhenPaused:Z

    .line 570
    return-void
.end method

.method public static startPlayback()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 622
    const-string v3, "VideoUtil"

    const-string v4, "startPlayback()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v3, :cond_12

    .line 627
    :try_start_d
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v3}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_34

    .line 634
    .local v1, e:Landroid/os/RemoteException;
    :cond_12
    :goto_12
    const/4 v2, 0x0

    .line 636
    .end local v1           #e:Landroid/os/RemoteException;
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_start_13
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_55

    move-result-object v2

    .line 643
    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v4, 0x21

    if-ne v3, v4, :cond_5a

    .line 647
    invoke-static {v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPlayerState(I)V

    .line 649
    const-string v3, "VideoUtil"

    const-string v4, "HTTP SDP Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v0, Ljava/lang/Thread;

    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSDPDownloader:Ljava/lang/Runnable;

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 651
    .local v0, downloadThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 697
    .end local v0           #downloadThread:Ljava/lang/Thread;
    :goto_33
    return-void

    .line 628
    .end local v2           #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :catch_34
    move-exception v1

    .line 629
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 630
    const-string v3, "VideoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPlayback - stop - RemoteException occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 637
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    :catch_55
    move-exception v1

    .line 638
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33

    .line 657
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5a
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->startPlayingChecker()V

    .line 659
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v3, :cond_b3

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceExists()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 662
    const/4 v3, 0x0

    :try_start_68
    sput-boolean v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlaybackComplete:Z

    .line 664
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingUri:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->checkIsDRM(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 665
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingUri:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->startPlay(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 666
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->setTitleName()V

    .line 667
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setPlayerState(I)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_85} :catch_86

    goto :goto_33

    .line 675
    :catch_86
    move-exception v1

    .line 676
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "VideoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPlayback() - startPlay - RemoteException occured  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 670
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_a4
    :try_start_a4
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    goto :goto_33

    .line 672
    :cond_a8
    const-string v3, "VideoUtil"

    const-string v4, "startPlayback() - this file is DRM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_b2} :catch_86

    goto :goto_33

    .line 680
    :cond_b3
    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingCheckTime:I

    if-gez v3, :cond_ca

    .line 681
    const-string v3, "VideoUtil"

    const-string v4, "startPlayback() mPlayingCheckTime is expired. quit video"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopPlayingChecker()V

    .line 684
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->stopBufferingChecker()V

    .line 685
    const/4 v3, 0x2

    invoke-static {v6, v3}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->notifySettingChanged(II)V

    goto/16 :goto_33

    .line 689
    :cond_ca
    sget v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingCheckTime:I

    add-int/lit16 v3, v3, -0xfa

    sput v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingCheckTime:I

    .line 691
    const-string v3, "VideoUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPlayback() player is not ready. mPlayingCheckTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingCheckTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SurfaceView ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->getSurfaceExists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 694
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_33
.end method

.method public static startPlayingChecker()V
    .registers 7

    .prologue
    .line 1062
    const-string v3, "VideoUtil"

    const-string v4, "startPlayingChecker()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingUri:Ljava/lang/String;

    if-eqz v3, :cond_3b

    .line 1065
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v0

    .line 1066
    .local v0, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v3}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getVideoSurface()Lcom/sec/android/app/videoplayer/view/VideoSurface;

    move-result-object v2

    .line 1067
    .local v2, videoView:Lcom/sec/android/app/videoplayer/view/VideoSurface;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1069
    .local v1, uri:Landroid/net/Uri;
    if-eqz v0, :cond_3b

    .line 1070
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setDrawableMode(Ljava/lang/String;)V

    .line 1072
    if-eqz v2, :cond_30

    .line 1073
    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->showControls(I)V

    .line 1074
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSurface;->requestLayout()V

    .line 1077
    :cond_30
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getPlayerState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3b

    .line 1078
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1082
    :cond_3b
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1083
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v5, 0xfa

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1084
    return-void
.end method

.method public static stopBufferingChecker()V
    .registers 3

    .prologue
    .line 1269
    const-string v1, "VideoUtil"

    const-string v2, "stopBufferingChecker()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-eqz v1, :cond_1e

    .line 1271
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v0

    .line 1273
    .local v0, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    if-eqz v0, :cond_1e

    .line 1274
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1e

    .line 1275
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1279
    :cond_1e
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mBufferingChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1280
    const/16 v1, 0x1388

    sput v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingCheckTime:I

    .line 1281
    return-void
.end method

.method public static stopPlayingChecker()V
    .registers 3

    .prologue
    .line 1088
    const-string v1, "VideoUtil"

    const-string v2, "stopPlayingChecker()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    if-eqz v1, :cond_1e

    .line 1091
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getStateView()Lcom/sec/android/app/videoplayer/view/VideoStateView;

    move-result-object v0

    .line 1093
    .local v0, stateView:Lcom/sec/android/app/videoplayer/view/VideoStateView;
    if-eqz v0, :cond_1e

    .line 1094
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1e

    .line 1095
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->setVisibility(I)V

    .line 1099
    :cond_1e
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1100
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1101
    const/16 v1, 0x1388

    sput v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPlayingCheckTime:I

    .line 1102
    return-void
.end method

.method public static suspendPlayback()V
    .registers 4

    .prologue
    .line 758
    const-string v1, "VideoUtil"

    const-string v2, "suspendPlayback()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :try_start_7
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_10

    .line 765
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->stop()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11

    .line 771
    .local v0, e:Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void

    .line 768
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_11
    move-exception v0

    .line 769
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "VideoUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspendPlayback() - RemoteException occured :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public static unbindFromService(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 1260
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/videoplayer/util/VideoUtil$ServiceBinder;

    .line 1261
    .local v0, sb:Lcom/sec/android/app/videoplayer/util/VideoUtil$ServiceBinder;
    if-nez v0, :cond_b

    .line 1266
    :cond_a
    :goto_a
    return-void

    .line 1263
    :cond_b
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1264
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1265
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    goto :goto_a
.end method

.method public static updateResumePos(Z)V
    .registers 2
    .parameter "pauseActivity"

    .prologue
    .line 1379
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->updateResumePos(ZLjava/lang/String;)V

    .line 1380
    return-void
.end method

.method private static updateResumePos(ZLjava/lang/String;)V
    .registers 16
    .parameter "pauseActivity"
    .parameter "filePath"

    .prologue
    const-wide/16 v12, 0x3e8

    .line 1383
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-nez v7, :cond_7

    .line 1443
    :goto_6
    return-void

    .line 1386
    :cond_7
    const-string v7, "VideoUtil"

    const-string v8, "@@ updateResumePos "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    if-nez p1, :cond_14

    .line 1389
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingPath()Ljava/lang/String;

    move-result-object p1

    .line 1391
    :cond_14
    const/4 v6, 0x0

    .line 1393
    .local v6, isDrm:Z
    if-eqz p1, :cond_39

    .line 1394
    const/4 v7, -0x1

    sget-object v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDrmUtil:Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;

    invoke-virtual {v8, p1}, Lcom/sec/android/app/videoplayer/util/VideoDRMUtil;->checkIsDrm(Ljava/lang/String;)I

    move-result v8

    if-eq v7, v8, :cond_21

    .line 1395
    const/4 v6, 0x1

    .line 1397
    :cond_21
    const-string v7, "VideoUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateResumePos() - isDrm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_39
    const-wide/16 v1, -0x1

    .line 1401
    .local v1, curPos:J
    const-wide/16 v3, 0x0

    .line 1404
    .local v3, duration:J
    :try_start_3d
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v7}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->position()J

    move-result-wide v1

    .line 1405
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v7}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->duration()J

    move-result-wide v3

    .line 1407
    const-string v7, "VideoUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateResumePos() - curPos ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " duration ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " wasPlaying ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getWasPlayingWhenPaused()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_79} :catch_122

    .line 1408
    sub-long v7, v3, v1

    cmp-long v7, v7, v12

    if-gez v7, :cond_81

    .line 1409
    const-wide/16 v1, -0x1

    .line 1415
    :cond_81
    :goto_81
    if-eqz v6, :cond_8c

    .line 1416
    const-string v7, "VideoUtil"

    const-string v8, "updateResumePos() - drm is true. set curPosition to 0."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const-wide/16 v1, -0x1

    .line 1420
    :cond_8c
    sget v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSchemeType:I

    const/16 v8, 0x14

    if-ne v7, v8, :cond_d5

    .line 1421
    sget-boolean v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mReadPosition:Z

    if-nez v7, :cond_d5

    .line 1422
    const-string v7, "VideoUtil"

    const-string v8, "updateResumePos() - SCHEME_VIDEO_LIST"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    sget-wide v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    invoke-virtual {v7, v8, v9, v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->updateResumePosition(JJ)I

    .line 1424
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    sget-wide v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    sget-wide v10, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sec/android/app/videoplayer/db/VideoDB;->updateSyncTime(JJ)I

    .line 1426
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1427
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v7, "ResumePosition"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1428
    const-string v7, "PlayedWhen"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1429
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoSubList(I)Lcom/sec/android/app/videoplayer/db/IVideoSubList;

    move-result-object v7

    sget-wide v8, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    invoke-interface {v7, v8, v9, v0}, Lcom/sec/android/app/videoplayer/db/IVideoSubList;->update(JLandroid/content/ContentValues;)I

    .line 1433
    .end local v0           #contentValues:Landroid/content/ContentValues;
    :cond_d5
    if-eqz p0, :cond_fa

    .line 1434
    sget-boolean v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mReadPosition:Z

    if-nez v7, :cond_fa

    .line 1435
    const-string v7, "VideoUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ updateResumePos mReadPosition : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mReadPosition:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    sput-wide v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    .line 1438
    const/4 v7, 0x1

    sput-boolean v7, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mReadPosition:Z

    .line 1442
    :cond_fa
    const-string v7, "VideoUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateResumePos() - mWasPlayingWhenPaused :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mWasPlayingWhenPaused:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mPositionWhenPaused : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v9, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mPositionWhenPaused:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1410
    :catch_122
    move-exception v5

    .line 1411
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1412
    const-string v7, "VideoUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateResumePos() - RemoteException occured :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_81
.end method

.method public static updateSubtitleSync(J)V
    .registers 5
    .parameter "Sync"

    .prologue
    .line 1446
    const-string v0, "VideoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubtitleSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    sget-wide v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->updateSyncTime(JJ)I

    .line 1448
    return-void
.end method

.method public static updateSyncTime()V
    .registers 4

    .prologue
    .line 339
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    sget-wide v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSyncTime(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    .line 340
    const-string v0, "VideoUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSyncTime() - mID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mCurPlayingId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sync Time :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method public static writeFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4
    .parameter "is"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1555
    const/4 v0, 0x0

    .line 1556
    .local v0, c:I
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 1557
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 1558
    :cond_c
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1559
    return-void
.end method
