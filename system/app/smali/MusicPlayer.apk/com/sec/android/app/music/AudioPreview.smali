.class public Lcom/sec/android/app/music/AudioPreview;
.super Landroid/app/Activity;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/AudioPreview$ShareAppItem;,
        Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;,
        Lcom/sec/android/app/music/AudioPreview$ShareAppListAdapter;,
        Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;,
        Lcom/sec/android/app/music/AudioPreview$CallListener;,
        Lcom/sec/android/app/music/AudioPreview$BatteryChecker;,
        Lcom/sec/android/app/music/AudioPreview$Worker;,
        Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;,
        Lcom/sec/android/app/music/AudioPreview$GoogleSearchAdapter;,
        Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;
    }
.end annotation


# static fields
.field public static final EAR_PROTECT_LIMIT_INDEX:I

.field private static errorurl:Ljava/lang/String;

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static mNumberOfTryToPlay:I

.field private static mScanToast:Landroid/widget/Toast;


# instance fields
.field protected final CLASSNAME:Ljava/lang/String;

.field final FF_MODE:I

.field private final FLING_ANIMATION_READY_DELAY:I

.field private final FLING_ANIMATION_READY_DELAY_FOR_MUSIC_PREPARE:I

.field private final FLING_IMAGE_TO_LEFT:I

.field private final FLING_IMAGE_TO_RIGHT:I

.field private final FLING_PLAY_MUSIC_DELAY:I

.field private final FLING_STATE_READY:I

.field IDX_ALARM_TONE:I

.field IDX_CALL_RINGTONE:I

.field IDX_INDIVIDUAL_RINGTONE:I

.field private InfoModechanged:Z

.field private final LAUNCH_CLOUD:I

.field public final LAUNCH_MYFILES:I

.field public final LAUNCH_PREVIEW:I

.field private final MEDIA_ERROR_CURRUPT:I

.field private final MEDIA_ERROR_NOTSUPPORT:I

.field private final PLAY_MUSIC:I

.field final REW_MODE:I

.field protected final SETAS_OPTION_POPUP_DIALOG:I

.field public final SKIP_TIME:[I

.field protected additionalPanelFromAlbumArt:Z

.field private bDrmPopupShown:Z

.field private bErrorFile:Z

.field private bIsDrmFile:Z

.field private bLaunchedRichInfo:Z

.field private bPlay:Z

.field private bPressedFF:Z

.field private bPressedREW:Z

.field batteryMessageBox:Landroid/app/AlertDialog;

.field private ffRewRepeatTime:I

.field googleSearchMessageBox:Landroid/app/AlertDialog;

.field protected intentIndexOfMainListType:I

.field protected intentStreamMedia:Ljava/lang/String;

.field protected intentStreamMimeType:Ljava/lang/String;

.field protected isActivityExit:Z

.field protected isEjectSD:Z

.field isInfoMode:Z

.field protected isMediaUnMounted:Z

.field protected isShowPrepare:Z

.field private isShownVolumeBar:Z

.field private listener:Lcom/sec/android/app/music/AudioPreview$CallListener;

.field private final mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

.field protected mAlbumArtHandler:Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;

.field protected mAlbumArtWorker:Lcom/sec/android/app/music/AudioPreview$Worker;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

.field private mBaseVolume:F

.field private mBatteryChecker:Lcom/sec/android/app/music/AudioPreview$BatteryChecker;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field protected mBufferPercentage:I

.field protected mButtonFF:Landroid/widget/ImageView;

.field protected mButtonPlay:Landroid/widget/ImageView;

.field protected mButtonRew:Landroid/widget/ImageView;

.field protected mButtonVolume:Landroid/widget/ImageView;

.field private mCausedByFling:Z

.field private mCloudCursor:Landroid/database/Cursor;

.field private final mConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentDisplayName:Ljava/lang/String;

.field protected mCurrentFilePth:Ljava/lang/String;

.field protected mCurrentState:I

.field protected mCurrentUri:Landroid/net/Uri;

.field private mDataIdx:I

.field mDelayTimes:I

.field private mDeviceHasDpad:Z

.field private mDpadFFKeyDown:Z

.field private mDpadRewKeyDown:Z

.field protected mDrmDialog:Landroid/app/AlertDialog;

.field private final mDrmPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mDrmPopupOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mDrmPopupPlayListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mDurationView:Landroid/widget/TextView;

.field private final mFlingHandler:Landroid/os/Handler;

.field mGoogleSearchListener:Landroid/content/DialogInterface$OnClickListener;

.field final mHandler:Landroid/os/Handler;

.field private final mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private final mHideBubble:Ljava/lang/Runnable;

.field private mIsFinish:Z

.field private mIsFlingNow:Z

.field protected mIsLiveStreamMode:Z

.field private mIsMusidPrepared:Z

.field protected mIsPrepareRequested:Z

.field private mIsReadyForFling:Z

.field protected mIsSeekable:Z

.field protected mIsShownAdditionalBar:Z

.field private mIsStartTrackingProgressBar:Z

.field protected mIsStopRequested:Z

.field private mIsUlpByPass:Z

.field protected mIsVolumeBubbleRunable:Z

.field private mIsVolumeLimit:Z

.field protected mIsVolumeTouching:Z

.field protected mLaunchMode:I

.field protected mLibraryMediaPlayerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mLowBattery:Ljava/lang/Runnable;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field protected mMediaDuration:I

.field protected mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaplayerHandler:Landroid/os/Handler;

.field protected mMenu:Landroid/view/Menu;

.field protected mMenuDetailsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

.field protected mMusicPlayerInitDone:Z

.field private mNeedToPause:Z

.field protected mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field protected mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field protected mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field protected mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPCloudUri:Landroid/net/Uri;

.field protected mPause:Z

.field private mPausedByTransientLossOfFocus:Z

.field private final mPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

.field private mPlayedTimeForUlp:J

.field protected mPlayedTimeView:Landroid/widget/TextView;

.field private final mPlayreadyPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mPlayreadyPopupOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositionPCloudCursor:I

.field private mPreparingProgress:Landroid/app/ProgressDialog;

.field private mProgress1:Landroid/app/ProgressDialog;

.field protected mProgressBar:Landroid/widget/SeekBar;

.field private final mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

.field private mResetForUlp:Z

.field private mSearchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSearchListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShareListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mSoundPlayerActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundPlayerToast:Landroid/widget/Toast;

.field private mStartFromFadeIn:Z

.field private mTitleIdx:I

.field protected mTitleInfoButton:Landroid/view/View;

.field private mToast:Landroid/widget/Toast;

.field protected mTvAlbum:Landroid/widget/TextView;

.field protected mTvArtist:Landroid/widget/TextView;

.field protected mTvTitle:Landroid/widget/TextView;

.field protected mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

.field private mUnitVolume:F

.field protected mViewAlbumImage:Landroid/widget/ImageView;

.field private mViewAlbumImageTemp:Landroid/widget/ImageView;

.field protected mViewChanging:Z

.field protected mViewProgressBar:Landroid/view/ViewGroup;

.field protected mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field private final mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeLevel:I

.field protected mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private final mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWasPlayed:Z

.field private mWmDrmAcquistionCnt:I

.field private final mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

.field protected mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

.field protected myFiles_bucketID:Ljava/lang/String;

.field protected myFiles_iPos:I

.field protected myFiles_path:Ljava/lang/String;

.field protected myFiles_sortOrder:I

.field powermanager:Landroid/os/PowerManager;

.field protected preparingDialog:Landroid/app/AlertDialog;

.field private pyv_wmdrm_file:Z

.field searchItemChooserMessageBox:Landroid/app/AlertDialog;

.field protected searchItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/AudioPreview$GoogleSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private searchQueryItem:Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;

.field shareMusicMessageBox:Landroid/app/AlertDialog;

.field protected showTimeElapsed:Z

.field protected skipCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 687
    sput-object v1, Lcom/sec/android/app/music/AudioPreview;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 3487
    invoke-static {}, Lcom/sec/android/app/music/framework/SecAudioManager;->getEarProtectLimitIndex()I

    move-result v0

    sput v0, Lcom/sec/android/app/music/AudioPreview;->EAR_PROTECT_LIMIT_INDEX:I

    .line 5520
    sput-object v1, Lcom/sec/android/app/music/AudioPreview;->errorurl:Ljava/lang/String;

    .line 6265
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/music/AudioPreview;->mNumberOfTryToPlay:I

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    const-class v0, Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    .line 139
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->isMediaUnMounted:Z

    .line 141
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->isEjectSD:Z

    .line 143
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    .line 145
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    .line 147
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;

    .line 150
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    .line 152
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bIsDrmFile:Z

    .line 155
    iput-boolean v4, p0, Lcom/sec/android/app/music/AudioPreview;->mIsUlpByPass:Z

    .line 157
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mResetForUlp:Z

    .line 159
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mWasPlayed:Z

    .line 161
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mNeedToPause:Z

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPlayedTimeForUlp:J

    .line 187
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mIsVolumeTouching:Z

    .line 191
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->isShownVolumeBar:Z

    .line 196
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mDpadFFKeyDown:Z

    .line 198
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mDpadRewKeyDown:Z

    .line 205
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z

    .line 210
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mIsFinish:Z

    .line 212
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->InfoModechanged:Z

    .line 214
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->isInfoMode:Z

    .line 222
    iput v5, p0, Lcom/sec/android/app/music/AudioPreview;->intentIndexOfMainListType:I

    .line 226
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    .line 228
    iput-boolean v4, p0, Lcom/sec/android/app/music/AudioPreview;->showTimeElapsed:Z

    .line 231
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    .line 233
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mIsLiveStreamMode:Z

    .line 279
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    .line 287
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bPressedFF:Z

    .line 289
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bPressedREW:Z

    .line 291
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->isActivityExit:Z

    .line 303
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    .line 306
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->preparingDialog:Landroid/app/AlertDialog;

    .line 311
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 313
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->googleSearchMessageBox:Landroid/app/AlertDialog;

    .line 315
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->searchItemChooserMessageBox:Landroid/app/AlertDialog;

    .line 317
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->shareMusicMessageBox:Landroid/app/AlertDialog;

    .line 319
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 321
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mTitleInfoButton:Landroid/view/View;

    .line 323
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mTvTitle:Landroid/widget/TextView;

    .line 325
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mTvArtist:Landroid/widget/TextView;

    .line 327
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mTvAlbum:Landroid/widget/TextView;

    .line 329
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->searchItemList:Ljava/util/ArrayList;

    .line 331
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mAlbumArtWorker:Lcom/sec/android/app/music/AudioPreview$Worker;

    .line 335
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->SETAS_OPTION_POPUP_DIALOG:I

    .line 339
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicPlayerInitDone:Z

    .line 341
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mPause:Z

    .line 345
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    .line 349
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    .line 374
    iput v4, p0, Lcom/sec/android/app/music/AudioPreview;->LAUNCH_PREVIEW:I

    .line 376
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->LAUNCH_MYFILES:I

    .line 378
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->LAUNCH_CLOUD:I

    .line 380
    const/4 v0, -0x4

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->MEDIA_ERROR_NOTSUPPORT:I

    .line 382
    const/16 v0, -0xa

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->MEDIA_ERROR_CURRUPT:I

    .line 384
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 386
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mContentResolver:Landroid/content/ContentResolver;

    .line 389
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMenu:Landroid/view/Menu;

    .line 391
    iput-boolean v4, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    .line 395
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    .line 397
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z

    .line 399
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bErrorFile:Z

    .line 401
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mStartFromFadeIn:Z

    .line 403
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mShareList:Ljava/util/List;

    .line 405
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->searchQueryItem:Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;

    .line 407
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mSearchList:Ljava/util/List;

    .line 410
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    .line 412
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mToast:Landroid/widget/Toast;

    .line 414
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->powermanager:Landroid/os/PowerManager;

    .line 416
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bLaunchedRichInfo:Z

    .line 448
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->FF_MODE:I

    .line 450
    iput v4, p0, Lcom/sec/android/app/music/AudioPreview;->REW_MODE:I

    .line 452
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->ffRewRepeatTime:I

    .line 457
    iput v5, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_sortOrder:I

    .line 459
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_bucketID:Ljava/lang/String;

    .line 461
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_path:Ljava/lang/String;

    .line 463
    iput v5, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    .line 466
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mViewChanging:Z

    .line 476
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->FLING_IMAGE_TO_LEFT:I

    .line 478
    iput v4, p0, Lcom/sec/android/app/music/AudioPreview;->FLING_IMAGE_TO_RIGHT:I

    .line 480
    iput v6, p0, Lcom/sec/android/app/music/AudioPreview;->FLING_STATE_READY:I

    .line 482
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->PLAY_MUSIC:I

    .line 486
    iput-boolean v4, p0, Lcom/sec/android/app/music/AudioPreview;->mIsReadyForFling:Z

    .line 488
    iput-boolean v4, p0, Lcom/sec/android/app/music/AudioPreview;->mIsMusidPrepared:Z

    .line 490
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mIsFlingNow:Z

    .line 492
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mCausedByFling:Z

    .line 494
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->FLING_ANIMATION_READY_DELAY:I

    .line 496
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->FLING_PLAY_MUSIC_DELAY:I

    .line 498
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->FLING_ANIMATION_READY_DELAY_FOR_MUSIC_PREPARE:I

    .line 506
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;-><init>(Lcom/sec/android/app/music/AudioPreview;Lcom/sec/android/app/music/AudioPreview$1;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    .line 508
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->mWmDrmAcquistionCnt:I

    .line 513
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$1;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;

    .line 562
    iput v4, p0, Lcom/sec/android/app/music/AudioPreview;->mDelayTimes:I

    .line 689
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$3;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 730
    iput-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 732
    iput v4, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 734
    iput-boolean v4, p0, Lcom/sec/android/app/music/AudioPreview;->mIsSeekable:Z

    .line 736
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->mBufferPercentage:I

    .line 738
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->isShowPrepare:Z

    .line 740
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mIsPrepareRequested:Z

    .line 742
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mIsStopRequested:Z

    .line 745
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1f6

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->SKIP_TIME:[I

    .line 749
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->additionalPanelFromAlbumArt:Z

    .line 894
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$4;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMenuDetailsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1725
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$12;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 1869
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$13;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 1919
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$14;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1941
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$15;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$15;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 1998
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$16;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$16;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 2537
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$17;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$17;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    .line 2980
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$18;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$18;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 3267
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$19;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$19;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 3304
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$20;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$20;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 3338
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$21;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$21;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHideBubble:Ljava/lang/Runnable;

    .line 3383
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mIsVolumeLimit:Z

    .line 3485
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeLevel:I

    .line 3517
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->IDX_CALL_RINGTONE:I

    .line 3519
    iput v4, p0, Lcom/sec/android/app/music/AudioPreview;->IDX_INDIVIDUAL_RINGTONE:I

    .line 3521
    iput v6, p0, Lcom/sec/android/app/music/AudioPreview;->IDX_ALARM_TONE:I

    .line 3547
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$22;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$22;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mGoogleSearchListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3660
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$23;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$23;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4228
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$27;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$27;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLowBattery:Ljava/lang/Runnable;

    .line 4358
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mIsStartTrackingProgressBar:Z

    .line 4360
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$28;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$28;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 4417
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$29;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$29;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 4430
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$30;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$30;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 4455
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$31;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$31;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 4723
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$32;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$32;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmPopupOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4744
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$33;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$33;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmPopupPlayListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4760
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$34;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$34;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4770
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$35;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$35;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4786
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$36;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$36;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPlayreadyPopupOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4812
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$37;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$37;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPlayreadyPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 4828
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$38;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$38;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 4952
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->mPositionPCloudCursor:I

    .line 5396
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$39;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$39;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 5481
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$40;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$40;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLibraryMediaPlayerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 5523
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$41;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$41;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    .line 6145
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$42;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$42;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSearchListener:Landroid/content/DialogInterface$OnClickListener;

    .line 6185
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$43;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$43;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    .line 6213
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    .line 6215
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$44;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$44;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 6271
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    .line 6273
    const v0, 0x3c23d70a

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mUnitVolume:F

    .line 6275
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$45;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$45;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    return-void

    .line 745
    nop

    :array_1f6
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/AudioPreview;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->showFlingAnimation(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->startBluetoothDevicePicker()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->useUlpMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/music/AudioPreview;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/AudioPreview;->setUlpBypassInternal(ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bPressedFF:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->bPressedFF:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bPressedREW:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->bPressedREW:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->isShownVolumeBar:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/music/AudioPreview;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->changeVolume(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/music/AudioPreview;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->isMidiMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/music/AudioPreview;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/music/AudioPreview;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    return p1
.end method

.method static synthetic access$2000(Lcom/sec/android/app/music/AudioPreview;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mUnitVolume:F

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/music/AudioPreview;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/sec/android/app/music/AudioPreview;->mUnitVolume:F

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->mIsReadyForFling:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/music/AudioPreview;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->changeVolumeLimitPannel(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/app/music/AudioPreview;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->finishMusicPlayer()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPreparingProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/music/AudioPreview;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/music/AudioPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/music/AudioPreview;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->ffRewRepeatTime:I

    return v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/music/AudioPreview;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/sec/android/app/music/AudioPreview;->ffRewRepeatTime:I

    return p1
.end method

.method static synthetic access$2608(Lcom/sec/android/app/music/AudioPreview;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->ffRewRepeatTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/music/AudioPreview;->ffRewRepeatTime:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsStartTrackingProgressBar:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->mIsStartTrackingProgressBar:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/sec/android/app/music/AudioPreview;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWmDrmAcquistionCnt:I

    return v0
.end method

.method static synthetic access$2802(Lcom/sec/android/app/music/AudioPreview;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Lcom/sec/android/app/music/AudioPreview;->mWmDrmAcquistionCnt:I

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/android/app/music/AudioPreview;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->mIsMusidPrepared:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/music/AudioPreview;IZ)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/AudioPreview;->checkDrmRight(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/music/AudioPreview;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/sec/android/app/music/AudioPreview;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/sec/android/app/music/AudioPreview;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/music/AudioPreview;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->setVolume(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/android/app/music/AudioPreview;ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/AudioPreview;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->searchQueryItem:Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sec/android/app/music/AudioPreview;Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;)Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview;->searchQueryItem:Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sec/android/app/music/AudioPreview;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSearchList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/sec/android/app/music/AudioPreview;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview;->mSearchList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/sec/android/app/music/AudioPreview;I)Landroid/net/Uri;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->setRingtone(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/app/music/AudioPreview;IZ)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/AudioPreview;->getArtwork(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/app/music/AudioPreview;I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->getDefaultArtwork(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->batteryCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/sec/android/app/music/AudioPreview;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLowBattery:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->bErrorFile:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->InfoModechanged:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->InfoModechanged:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsFinish:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->mIsFinish:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/common/manager/MusicDrmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/music/AudioPreview;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    return p1
.end method

.method static synthetic access$5100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 131
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->errorurl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5102(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 131
    sput-object p0, Lcom/sec/android/app/music/AudioPreview;->errorurl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mResetForUlp:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->mResetForUlp:Z

    return p1
.end method

.method static synthetic access$5300(Lcom/sec/android/app/music/AudioPreview;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPlayedTimeForUlp:J

    return-wide v0
.end method

.method static synthetic access$5302(Lcom/sec/android/app/music/AudioPreview;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/sec/android/app/music/AudioPreview;->mPlayedTimeForUlp:J

    return-wide p1
.end method

.method static synthetic access$5400(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWasPlayed:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->mWasPlayed:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mNeedToPause:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->mNeedToPause:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/sec/android/app/music/AudioPreview;)Landroid/content/DialogInterface$OnClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPlayreadyPopupOkListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sec/android/app/music/AudioPreview;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mShareList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->startAndFadeIn()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/music/AudioPreview;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->playWithFilePath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6002(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->mStartFromFadeIn:Z

    return p1
.end method

.method static synthetic access$6102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 131
    sput p0, Lcom/sec/android/app/music/AudioPreview;->mNumberOfTryToPlay:I

    return p0
.end method

.method static synthetic access$6104()I
    .registers 1

    .prologue
    .line 131
    sget v0, Lcom/sec/android/app/music/AudioPreview;->mNumberOfTryToPlay:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/app/music/AudioPreview;->mNumberOfTryToPlay:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/music/AudioPreview;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsFlingNow:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->mIsFlingNow:Z

    return p1
.end method

.method static synthetic access$902(Lcom/sec/android/app/music/AudioPreview;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->bLaunchedRichInfo:Z

    return p1
.end method

.method private acquireRights(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 6061
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWmDrmAcquistionCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWmDrmAcquistionCnt:I

    .line 6062
    invoke-static {p1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDrmMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6063
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 6065
    const-string v0, "drm_path"

    invoke-virtual {v1, v0, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6066
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->acquireRights(Landroid/drm/DrmInfoRequest;Landroid/os/Handler;)I

    .line 6068
    return-void
.end method

.method private batteryCheck()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4255
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v4, "batteryCheck() is called"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    const-string v2, "/sys/class/power_supply/battery/charging_source"

    .line 4262
    const/16 v2, 0xa

    new-array v5, v2, [B

    .line 4267
    :try_start_10
    new-instance v2, Ljava/io/FileInputStream;

    const-string v4, "/sys/class/power_supply/battery/charging_source"

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_17} :catch_2e

    move-object v4, v2

    .line 4273
    :goto_18
    if-eqz v4, :cond_b0

    .line 4275
    :try_start_1a
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_59
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_50

    move-result v2

    .line 4279
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    move v4, v2

    .line 4283
    :goto_22
    if-eqz v4, :cond_5e

    .line 4284
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, v4, -0x1

    invoke-direct {v2, v5, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 4290
    :goto_2b
    if-nez v2, :cond_67

    .line 4317
    :cond_2d
    :goto_2d
    return v0

    .line 4268
    :catch_2e
    move-exception v2

    .line 4269
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4270
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "charging_source FileNotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    goto :goto_18

    .line 4276
    :catch_50
    move-exception v2

    .line 4277
    :try_start_51
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_59

    .line 4279
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    move v4, v1

    .line 4280
    goto :goto_22

    .line 4279
    :catchall_59
    move-exception v0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v0

    .line 4287
    :cond_5e
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v4, "batteryCheck : read in length is 0.."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto :goto_2b

    .line 4292
    :cond_67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4296
    if-nez v2, :cond_2d

    move v2, v1

    move v3, v1

    .line 4298
    :goto_73
    const/4 v4, 0x5

    if-ge v2, v4, :cond_a2

    .line 4299
    :try_start_76
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->getVoltage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_81} :catch_86

    move-result v4

    add-int/2addr v3, v4

    .line 4298
    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    .line 4301
    :catch_86
    move-exception v2

    .line 4302
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 4304
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "batteryCheck : IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4309
    :cond_a2
    div-int/lit8 v2, v3, 0x5

    if-gt v2, v0, :cond_2d

    .line 4310
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "batteryCheck : Low Battery.."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 4312
    goto/16 :goto_2d

    :cond_b0
    move v4, v1

    goto/16 :goto_22
.end method

.method private changeVolume(I)V
    .registers 5
    .parameter "volumeAdjust"

    .prologue
    .line 3361
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/music/AudioPreview;->isEnableVolumeChange(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3362
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->adjustStreamVolume(III)V

    .line 3364
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->showVolumePanel()V

    .line 3365
    return-void
.end method

.method private changeVolumeLimitPannel(Z)V
    .registers 5
    .parameter

    .prologue
    const v2, 0x7f020166

    .line 3442
    if-eqz p1, :cond_1a

    .line 3443
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setBackgroundDrawable(I)V

    .line 3444
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    sget v1, Lcom/sec/android/app/music/AudioPreview;->EAR_PROTECT_LIMIT_INDEX:I

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSecondaryProgress(I)V

    .line 3445
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSecondaryProgressDrawable(I)V

    .line 3450
    :goto_19
    return-void

    .line 3447
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setBackgroundDrawable(I)V

    .line 3448
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSecondaryProgress(I)V

    goto :goto_19
.end method

.method private checkDrmRight(IZ)I
    .registers 12
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0900ef

    const v7, 0x1080027

    const/16 v3, 0x15

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 5863
    .line 5865
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    if-nez v1, :cond_16

    .line 5867
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "checkDrmRight() mCurrentFilePth == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6054
    :goto_15
    return v0

    .line 5872
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmFile(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/music/AudioPreview;->bIsDrmFile:Z
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_20} :catch_2e

    .line 5878
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDrmPopup()I

    move-result v1

    .line 5890
    packed-switch v1, :pswitch_data_26c

    :cond_29
    :goto_29
    :pswitch_29
    move v0, v1

    .line 6052
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    goto :goto_15

    .line 5873
    :catch_2e
    move-exception v1

    .line 5874
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDrmRight()...FileNotFoundException..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 5893
    :pswitch_4c
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5895
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v3, "CheckDrmRight() DRM_INVALID_WMDRM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5896
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v3, "CheckDrmRight() show pop up that aquiring license "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5898
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/music/MusicUtils;->checkIsNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_ac

    .line 5899
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "No Network Connection"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5901
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 5902
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "checkdrmRight no connectivity here aquiring pop up is dismissed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5904
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5907
    :cond_86
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9c

    .line 5908
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    const v2, 0x7f0900db

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 5913
    :goto_92
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5914
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->finishMusicPlayer()V

    move v0, v1

    goto :goto_2a

    .line 5910
    :cond_9c
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v2, 0x7f0900db

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    goto :goto_92

    .line 5917
    :cond_ac
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v3, "Network connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5918
    iput-boolean v6, p0, Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z

    .line 5919
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v3, "pyv_wmdrm_file is made true CheckDRMright on network connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5921
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v3, "it has come inside thread of AquiringLicense"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5922
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    .line 5926
    :try_start_c5
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmFile(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bIsDrmFile:Z

    .line 5928
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v2}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isValidFile()Z

    move-result v2

    .line 5929
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v3}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDrmType()I
    :try_end_da
    .catch Ljava/io/FileNotFoundException; {:try_start_c5 .. :try_end_da} :catch_126

    move-result v1

    .line 5937
    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    .line 5938
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    iput p1, v1, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mCompleteAction:I

    .line 5939
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mWmDrmPlay:Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;

    iput-boolean p2, v1, Lcom/sec/android/app/music/AudioPreview$WmDrmNextAct;->mPlay:Z

    .line 5941
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->acquireRights(Ljava/lang/String;)V

    .line 5943
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_100

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 5944
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5947
    :cond_100
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    .line 5948
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    const v2, 0x7f0900df

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5949
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 5950
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 5952
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 5953
    const/16 v0, 0xc

    goto/16 :goto_2a

    .line 5931
    :catch_126
    move-exception v0

    .line 5932
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkDrmRight()...FileNotFoundException..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 5934
    goto/16 :goto_15

    .line 5966
    :pswitch_146
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5967
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    if-eqz v2, :cond_15f

    .line 5968
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    const v2, 0x7f0900bb

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 5974
    :goto_157
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 5976
    goto/16 :goto_2a

    .line 5971
    :cond_15f
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v3, 0x7f0900bb

    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    goto :goto_157

    .line 5979
    :pswitch_16f
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5981
    iget-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z

    if-nez v2, :cond_29

    .line 5982
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0900bc

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmPopupOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900f0

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    .line 5995
    iput-boolean v6, p0, Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z

    move v0, v1

    goto/16 :goto_2a

    .line 6001
    :pswitch_1a8
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6003
    iget-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z

    if-nez v2, :cond_29

    .line 6004
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v3, 0x7f0900b7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6005
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v4, 0x7f0900ac

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6006
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v4, 0x7f0900b8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6008
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmPopupPlayListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900f0

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    .line 6020
    iput-boolean v6, p0, Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z

    move v0, v1

    .line 6021
    goto/16 :goto_2a

    .line 6025
    :pswitch_201
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6027
    iget-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z

    if-nez v2, :cond_29

    .line 6028
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v3, 0x7f0900b6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v5}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6031
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v4, 0x7f0900ac

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6032
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v4, 0x7f0900b8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6034
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmPopupPlayListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900f0

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    .line 6046
    iput-boolean v6, p0, Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z

    goto/16 :goto_29

    .line 5890
    :pswitch_data_26c
    .packed-switch 0x1
        :pswitch_201
        :pswitch_1a8
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_146
        :pswitch_4c
        :pswitch_146
        :pswitch_29
        :pswitch_146
        :pswitch_16f
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_146
        :pswitch_4c
    .end packed-switch
.end method

.method private clearPopup()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3136
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    if-eqz v0, :cond_a

    .line 3137
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3139
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3142
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3143
    iput-boolean v1, p0, Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z

    .line 3146
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->googleSearchMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3147
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3150
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->searchItemChooserMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->searchItemChooserMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3151
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->searchItemChooserMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3159
    :cond_3f
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->batteryMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 3160
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3163
    :cond_50
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->shareMusicMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3164
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3168
    :cond_61
    const/4 v0, 0x0

    :try_start_62
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->dismissDialog(I)V
    :try_end_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_62 .. :try_end_65} :catch_66

    .line 3171
    :goto_65
    return-void

    .line 3169
    :catch_66
    move-exception v0

    goto :goto_65
.end method

.method private doSyncPlayMusic()V
    .registers 3

    .prologue
    .line 6410
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsFlingNow:Z

    if-eqz v0, :cond_12

    .line 6411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsFlingNow:Z

    .line 6412
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6413
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->playWithFilePath(Ljava/lang/String;)V

    .line 6415
    :cond_12
    return-void
.end method

.method private finishMusicPlayer()V
    .registers 3

    .prologue
    .line 3877
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "finishMusicPlayer() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->isActivityExit:Z

    .line 3879
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->finish()V

    .line 3880
    return-void
.end method

.method private getArtwork(IZ)Landroid/graphics/Bitmap;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3999
    .line 4000
    const-string v1, "content://media/external/audio/albumart"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4001
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4003
    if-nez v0, :cond_45

    .line 4004
    int-to-long v4, p1

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 4005
    if-eqz v4, :cond_45

    .line 4006
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getArtwork: uri ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4009
    if-lez p1, :cond_10e

    .line 4010
    :try_start_2f
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_106
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_34} :catch_6b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2f .. :try_end_34} :catch_ba

    move-result-object v2

    .line 4011
    const/4 v1, 0x0

    :try_start_36
    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_d5
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_39} :catch_10b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_36 .. :try_end_39} :catch_109

    move-result-object v0

    .line 4020
    :goto_3a
    if-eqz v2, :cond_3f

    .line 4023
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_46

    .line 4030
    :cond_3f
    :goto_3f
    if-nez v0, :cond_45

    .line 4031
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->getDefaultArtwork(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4037
    :cond_45
    :goto_45
    return-object v0

    .line 4024
    :catch_46
    move-exception v1

    .line 4025
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v3, "fail to read image."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured 2 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 4013
    :catch_6b
    move-exception v1

    move-object v2, v0

    .line 4014
    :goto_6d
    :try_start_6d
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException occured 1 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_6d .. :try_end_89} :catchall_d5

    .line 4020
    if-eqz v2, :cond_8e

    .line 4023
    :try_start_8b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_95

    .line 4030
    :cond_8e
    :goto_8e
    if-nez v0, :cond_45

    .line 4031
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->getDefaultArtwork(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_45

    .line 4024
    :catch_95
    move-exception v1

    .line 4025
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v3, "fail to read image."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occured 2 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 4016
    :catch_ba
    move-exception v1

    move-object v2, v0

    .line 4017
    :goto_bc
    :try_start_bc
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Memory allocation failed getArtwork:uri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    throw v1
    :try_end_d5
    .catchall {:try_start_bc .. :try_end_d5} :catchall_d5

    .line 4020
    :catchall_d5
    move-exception v1

    :goto_d6
    if-eqz v2, :cond_db

    .line 4023
    :try_start_d8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_e1

    .line 4030
    :cond_db
    :goto_db
    if-nez v0, :cond_e0

    .line 4031
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->getDefaultArtwork(I)Landroid/graphics/Bitmap;

    :cond_e0
    throw v1

    .line 4024
    :catch_e1
    move-exception v2

    .line 4025
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v4, "fail to read image."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException occured 2 :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_db

    .line 4020
    :catchall_106
    move-exception v1

    move-object v2, v0

    goto :goto_d6

    .line 4016
    :catch_109
    move-exception v1

    goto :goto_bc

    .line 4013
    :catch_10b
    move-exception v1

    goto/16 :goto_6d

    :cond_10e
    move-object v2, v0

    goto/16 :goto_3a
.end method

.method private getDefaultArtwork(I)Landroid/graphics/Bitmap;
    .registers 8
    .parameter

    .prologue
    .line 4045
    if-gez p1, :cond_3

    .line 4046
    const/4 p1, 0x0

    .line 4048
    :cond_3
    sget-object v0, Lcom/sec/android/app/music/common/util/ListUtil;->sDefalutBigAlbumArtId:[I

    sget-object v1, Lcom/sec/android/app/music/common/util/ListUtil;->sDefalutBigAlbumArtId:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    .line 4049
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 4053
    :try_start_14
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_36
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_17} :catch_1c

    move-result-object v0

    .line 4059
    :try_start_18
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_3b

    .line 4064
    :goto_1b
    return-object v0

    .line 4054
    :catch_1c
    move-exception v2

    .line 4055
    :try_start_1d
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Memory allocation failed getDefaultArtwork:id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    throw v2
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_36

    .line 4058
    :catchall_36
    move-exception v0

    .line 4059
    :try_start_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3d

    .line 4062
    :goto_3a
    throw v0

    .line 4060
    :catch_3b
    move-exception v1

    goto :goto_1b

    :catch_3d
    move-exception v1

    goto :goto_3a
.end method

.method private getFilePath(I)Ljava/lang/String;
    .registers 4
    .parameter "direction"

    .prologue
    .line 553
    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    .line 554
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->getNextFilePath()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, filePath:Ljava/lang/String;
    :goto_7
    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    .line 559
    return-object v0

    .line 556
    .end local v0           #filePath:Ljava/lang/String;
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->getPrevFilePath()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #filePath:Ljava/lang/String;
    goto :goto_7
.end method

.method private getNextFilePath()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4992
    iget v5, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1d

    .line 4993
    iget v5, p0, Lcom/sec/android/app/music/AudioPreview;->mPositionPCloudCursor:I

    add-int/lit8 v3, v5, 0x1

    .line 4994
    .local v3, position:I
    invoke-direct {p0, v3}, Lcom/sec/android/app/music/AudioPreview;->requeryPCloudCursor(I)V

    .line 4995
    const/4 v2, 0x0

    .line 4996
    .local v2, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1c

    .line 4997
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/sec/android/app/music/AudioPreview;->mDataIdx:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5023
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #position:I
    :cond_1c
    :goto_1c
    return-object v2

    .line 5001
    :cond_1d
    iget v5, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    if-eq v5, v10, :cond_1c

    .line 5005
    const/4 v4, 0x0

    .line 5006
    .local v4, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 5007
    .local v1, nextFilePath:Ljava/lang/String;
    iget v5, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    .line 5009
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_bucketID:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/music/AudioPreview;->getItemCountInMxList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5010
    .local v0, nCount:I
    if-nez v0, :cond_4e

    .line 5011
    iput v9, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    .line 5012
    iput v10, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    .line 5013
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "playNext() nCount==0, %s,%s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_bucketID:Ljava/lang/String;

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 5018
    :cond_4e
    iget v5, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    if-lt v5, v0, :cond_54

    .line 5019
    iput v9, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    .line 5021
    :cond_54
    iget v5, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_sortOrder:I

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_bucketID:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/android/app/music/AudioPreview;->getItemFilePathMxList(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 5023
    goto :goto_1c
.end method

.method private getPrevFilePath()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 5109
    iget v4, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1c

    .line 5110
    iget v4, p0, Lcom/sec/android/app/music/AudioPreview;->mPositionPCloudCursor:I

    add-int/lit8 v2, v4, -0x1

    .line 5111
    .local v2, position:I
    invoke-direct {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->requeryPCloudCursor(I)V

    .line 5112
    const/4 v1, 0x0

    .line 5113
    .local v1, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_1b

    .line 5114
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/sec/android/app/music/AudioPreview;->mDataIdx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5141
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #position:I
    :cond_1b
    :goto_1b
    return-object v1

    .line 5119
    :cond_1c
    iget v4, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    if-eq v4, v6, :cond_1b

    .line 5123
    const/4 v3, 0x0

    .line 5124
    .local v3, prevFilePath:Ljava/lang/String;
    iget v4, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    .line 5126
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_bucketID:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/music/AudioPreview;->getItemCountInMxList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5127
    .local v0, nCount:I
    if-nez v0, :cond_37

    .line 5128
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    .line 5129
    iput v6, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    goto :goto_1b

    .line 5137
    :cond_37
    iget v4, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    if-gez v4, :cond_3f

    .line 5138
    add-int/lit8 v4, v0, -0x1

    iput v4, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    .line 5140
    :cond_3f
    iget v4, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_sortOrder:I

    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_bucketID:Ljava/lang/String;

    iget v6, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/app/music/AudioPreview;->getItemFilePathMxList(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 5141
    goto :goto_1b
.end method

.method private getVoltage()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 4323
    const-string v1, "/sys/class/power_supply/battery/capacity"

    .line 4327
    new-array v4, v3, [B

    move v1, v2

    .line 4331
    :goto_9
    if-ge v1, v3, :cond_10

    .line 4332
    aput-byte v2, v4, v1

    .line 4331
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 4336
    :cond_10
    :try_start_10
    new-instance v1, Ljava/io/FileInputStream;

    const-string v3, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_17} :catch_2b

    move-object v3, v1

    .line 4342
    :goto_18
    if-eqz v3, :cond_57

    .line 4344
    :try_start_1a
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_52
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_49

    move-result v1

    .line 4348
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 4352
    :goto_21
    if-eqz v1, :cond_2a

    .line 4353
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v4, v2, v1}, Ljava/lang/String;-><init>([BII)V

    .line 4355
    :cond_2a
    return-object v0

    .line 4337
    :catch_2b
    move-exception v1

    .line 4338
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4339
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVoltage : FileNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    goto :goto_18

    .line 4345
    :catch_49
    move-exception v1

    .line 4346
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_52

    .line 4348
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    move v1, v2

    .line 4349
    goto :goto_21

    .line 4348
    :catchall_52
    move-exception v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_57
    move v1, v2

    goto :goto_21
.end method

.method private initializeControls()V
    .registers 8

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 1169
    new-instance v1, Lcom/sec/android/app/music/AudioPreview$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/AudioPreview$6;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    .line 1199
    new-instance v2, Lcom/sec/android/app/music/AudioPreview$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/AudioPreview$7;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    .line 1231
    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;

    .line 1232
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->setFlingHandler(Landroid/os/Handler;)V

    .line 1233
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->setTouchDownHandler(Landroid/os/Handler;)V

    .line 1235
    const v0, 0x7f0c0080

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewProgressBar:Landroid/view/ViewGroup;

    .line 1236
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1238
    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1243
    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    .line 1245
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    .line 1252
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/app/music/widget/MusicPlayerBaseOnKeyListener;

    invoke-direct {v3}, Lcom/sec/android/app/music/widget/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1254
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 1255
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 1256
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontEnable(Z)V

    .line 1258
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 1259
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 1260
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 1263
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 1264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->isShownVolumeBar:Z

    .line 1265
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    new-instance v3, Lcom/sec/android/app/music/AudioPreview$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/music/AudioPreview$8;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1272
    const v0, 0x7f0c0089

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonPlay:Landroid/widget/ImageView;

    .line 1273
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonPlay:Landroid/widget/ImageView;

    const v3, 0x7f02007b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1274
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonPlay:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/app/music/AudioPreview$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/music/AudioPreview$9;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1281
    const v0, 0x7f0c0088

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    .line 1282
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1283
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    new-instance v2, Lcom/sec/android/app/music/widget/MusicPlayerBaseOnKeyListener;

    invoke-direct {v2}, Lcom/sec/android/app/music/widget/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1285
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    .line 1286
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1287
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/music/widget/MusicPlayerBaseOnKeyListener;

    invoke-direct {v1}, Lcom/sec/android/app/music/widget/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1289
    const v0, 0x7f0c0085

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mProgressBar:Landroid/widget/SeekBar;

    .line 1290
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1291
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1293
    const v0, 0x7f0c0083

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPlayedTimeView:Landroid/widget/TextView;

    .line 1294
    const v0, 0x7f0c0084

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDurationView:Landroid/widget/TextView;

    .line 1296
    const v0, 0x7f0c00b4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTitleInfoButton:Landroid/view/View;

    .line 1297
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTitleInfoButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/music/AudioPreview$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/AudioPreview$10;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1341
    const v0, 0x7f0c0076

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonVolume:Landroid/widget/ImageView;

    .line 1342
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$11;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    .line 1357
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonVolume:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1359
    return-void
.end method

.method private isEnableVolumeChange(II)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 3386
    .line 3388
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3433
    :cond_a
    :goto_a
    return v3

    .line 3392
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->getStreamVolume(I)I

    move-result v0

    .line 3393
    if-gez p2, :cond_17

    .line 3394
    packed-switch p1, :pswitch_data_4c

    :pswitch_16
    move p2, v0

    .line 3412
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkVolumeLimit changedVolume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeLevel:I

    sget v1, Lcom/sec/android/app/music/AudioPreview;->EAR_PROTECT_LIMIT_INDEX:I

    if-ge v0, v1, :cond_a

    sget v0, Lcom/sec/android/app/music/AudioPreview;->EAR_PROTECT_LIMIT_INDEX:I

    if-lt p2, v0, :cond_a

    goto :goto_a

    .line 3396
    :pswitch_3a
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 3397
    add-int/lit8 p2, v0, 0x1

    goto :goto_17

    .line 3401
    :pswitch_45
    if-lez v0, :cond_4a

    .line 3402
    add-int/lit8 p2, v0, -0x1

    goto :goto_17

    :cond_4a
    move p2, v0

    goto :goto_17

    .line 3394
    :pswitch_data_4c
    .packed-switch -0x1
        :pswitch_45
        :pswitch_16
        :pswitch_3a
    .end packed-switch
.end method

.method private isMidiMimeType(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    .line 5587
    const-string v0, "audio/midi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "audio/mid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "audio/imelody"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "audio/sp-midi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_20
    const/4 v0, 0x1

    .line 5589
    :goto_21
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isMidi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Mime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5590
    return v0

    .line 5587
    :cond_44
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private isPlaying()Z
    .registers 5

    .prologue
    .line 5844
    const/4 v0, 0x0

    .line 5846
    iget v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 5847
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "mCurrentState == MEDIA_PLAYER_STATE_ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5848
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v1, :cond_19

    .line 5849
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->reset()V

    .line 5850
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5857
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlaying() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5858
    return v0

    .line 5853
    :cond_32
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v1, :cond_19

    .line 5854
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_19
.end method

.method private makeContentUriFromFileUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 14
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    .line 3733
    if-nez p1, :cond_c

    .line 3734
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "makeContentUriFromFileUri: uri == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3787
    :cond_b
    :goto_b
    return-object p1

    .line 3738
    :cond_c
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3739
    if-eqz v0, :cond_b

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3740
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 3742
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3744
    :try_start_20
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3750
    if-eqz v0, :cond_d3

    .line 3751
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 3752
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 3754
    :goto_46
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3757
    :goto_49
    cmp-long v0, v7, v9

    if-nez v0, :cond_cd

    .line 3758
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 3764
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3766
    if-eqz v3, :cond_cb

    .line 3767
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 3768
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3770
    :goto_75
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3774
    :goto_78
    cmp-long v3, v1, v9

    if-eqz v3, :cond_b

    .line 3775
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_7f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_20 .. :try_end_7f} :catch_81
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_20 .. :try_end_7f} :catch_a5

    move-result-object p1

    goto :goto_b

    .line 3777
    :catch_81
    move-exception v0

    .line 3778
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteFullException setRingtone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto/16 :goto_b

    .line 3781
    :catch_a5
    move-exception v0

    .line 3782
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteDiskIOException setRingtone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto/16 :goto_b

    :cond_c9
    move-wide v1, v7

    goto :goto_75

    :cond_cb
    move-wide v1, v7

    goto :goto_78

    :cond_cd
    move-object v0, v6

    move-wide v1, v7

    goto :goto_78

    :cond_d0
    move-wide v7, v9

    goto/16 :goto_46

    :cond_d3
    move-wide v7, v9

    goto/16 :goto_49
.end method

.method private playWithFilePath(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    const v6, 0x10010

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 5029
    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/AudioPreview;->muteForPopupNoise(Z)V

    .line 5030
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_41

    .line 5031
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_41

    .line 5032
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5033
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->stop()V

    .line 5034
    iput v6, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5036
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->reset()V

    .line 5037
    iput v5, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5038
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 5040
    iput v4, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5041
    new-instance v0, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 5042
    iput v5, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5044
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    .line 5046
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->doPrepare(Z)V

    .line 5049
    :cond_41
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5d

    .line 5050
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_4f

    .line 5051
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 5053
    :cond_4f
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    const v1, 0x10008

    if-ne v0, v1, :cond_5e

    .line 5054
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "playNext : It is during preparing...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5101
    :cond_5d
    :goto_5d
    return-void

    .line 5058
    :cond_5e
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z

    .line 5060
    if-eqz p1, :cond_6f

    .line 5061
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5062
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    .line 5063
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    .line 5072
    :cond_6f
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    if-eqz v0, :cond_d5

    .line 5074
    :try_start_73
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bIsDrmFile:Z
    :try_end_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_7d} :catch_b7

    .line 5082
    :goto_7d
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_5d

    .line 5083
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 5084
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->stop()V

    .line 5085
    iput v6, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5087
    :cond_8e
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->reset()V

    .line 5088
    iput v5, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5089
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 5091
    iput v4, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5092
    new-instance v0, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 5093
    iput v5, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5095
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bIsDrmFile:Z

    if-eqz v0, :cond_b1

    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    invoke-direct {p0, v4, v0}, Lcom/sec/android/app/music/AudioPreview;->checkDrmRight(IZ)I

    move-result v0

    if-nez v0, :cond_5d

    .line 5097
    :cond_b1
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->doPrepare(Z)V

    goto :goto_5d

    .line 5076
    :catch_b7
    move-exception v0

    .line 5077
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d

    .line 5080
    :cond_d5
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bIsDrmFile:Z

    goto :goto_7d
.end method

.method private processIntent(Landroid/content/Intent;)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1628
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "processIntent() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    if-eqz p1, :cond_4e

    .line 1633
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->intentStreamMedia:Ljava/lang/String;

    .line 1634
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->intentStreamMimeType:Ljava/lang/String;

    .line 1636
    const-string v0, "key_filename"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_path:Ljava/lang/String;

    .line 1637
    iput-boolean v7, p0, Lcom/sec/android/app/music/AudioPreview;->mIsLiveStreamMode:Z

    .line 1638
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->intentStreamMedia:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 1639
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->intentStreamMedia:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    .line 1640
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    .line 1642
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_path:Ljava/lang/String;

    if-eqz v0, :cond_5d

    .line 1643
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "processIntent() LAUNCH_MYFILES"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    .line 1645
    const-string v0, "sort_order"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_sortOrder:I

    .line 1646
    iput-object v6, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;

    .line 1714
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    if-eqz v0, :cond_14f

    .line 1716
    :try_start_52
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bIsDrmFile:Z
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_5c} :catch_130

    .line 1723
    :goto_5c
    return-void

    .line 1647
    :cond_5d
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->intentStreamMedia:Ljava/lang/String;

    const-string v1, "content://com.sec.pcw/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 1648
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    .line 1649
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPCloudUri:Landroid/net/Uri;

    .line 1650
    invoke-direct {p0, v7}, Lcom/sec/android/app/music/AudioPreview;->requeryPCloudCursor(I)V

    .line 1651
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1652
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTitleIdx:I

    .line 1653
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    const-string v1, "data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDataIdx:I

    .line 1654
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/sec/android/app/music/AudioPreview;->mTitleIdx:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;

    .line 1659
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/sec/android/app/music/AudioPreview;->mDataIdx:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    goto :goto_4e

    .line 1662
    :cond_aa
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "processIntent() LAUNCH_PREVIEW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    .line 1664
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_sortOrder:I

    .line 1666
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->intentStreamMedia:Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 1669
    :try_start_ba
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c7
    .catchall {:try_start_ba .. :try_end_c7} :catchall_153
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c7} :catch_156

    move-result-object v1

    .line 1671
    if-eqz v1, :cond_125

    .line 1673
    :try_start_ca
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->intentStreamMedia:Ljava/lang/String;

    const-string v2, "content://mms/part/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 1674
    const-string v0, "cl"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1680
    :goto_da
    if-ltz v0, :cond_113

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_113

    .line 1681
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;

    .line 1682
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->intentStreamMedia:Ljava/lang/String;

    const-string v2, "content://mms/part/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_105

    .line 1684
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;
    :try_end_105
    .catchall {:try_start_ca .. :try_end_105} :catchall_129
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_105} :catch_117

    .line 1697
    :cond_105
    :goto_105
    if-eqz v1, :cond_4e

    .line 1698
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4e

    .line 1677
    :cond_10c
    :try_start_10c
    const-string v0, "_display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_da

    .line 1688
    :cond_113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;
    :try_end_116
    .catchall {:try_start_10c .. :try_end_116} :catchall_129
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_116} :catch_117

    goto :goto_105

    .line 1693
    :catch_117
    move-exception v0

    .line 1694
    :goto_118
    :try_start_118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;
    :try_end_11e
    .catchall {:try_start_118 .. :try_end_11e} :catchall_129

    .line 1697
    if-eqz v1, :cond_4e

    .line 1698
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4e

    .line 1691
    :cond_125
    const/4 v0, 0x0

    :try_start_126
    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;
    :try_end_128
    .catchall {:try_start_126 .. :try_end_128} :catchall_129
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_128} :catch_117

    goto :goto_105

    .line 1697
    :catchall_129
    move-exception v0

    :goto_12a
    if-eqz v1, :cond_12f

    .line 1698
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_12f
    throw v0

    .line 1718
    :catch_130
    move-exception v0

    .line 1719
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNotFoundException..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 1722
    :cond_14f
    iput-boolean v7, p0, Lcom/sec/android/app/music/AudioPreview;->bIsDrmFile:Z

    goto/16 :goto_5c

    .line 1697
    :catchall_153
    move-exception v0

    move-object v1, v6

    goto :goto_12a

    .line 1693
    :catch_156
    move-exception v0

    move-object v1, v6

    goto :goto_118
.end method

.method private registerBluetoothReceiver()V
    .registers 5

    .prologue
    .line 2961
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2962
    const-string v1, "com.sec.android.app.soundplayer.MediaKey"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2963
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2964
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2965
    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2966
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2967
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/music/AudioPreviewMediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 2969
    return-void
.end method

.method private registerMediaScannerReceiver()V
    .registers 3

    .prologue
    .line 2972
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2973
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2974
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2975
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2976
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2977
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2978
    return-void
.end method

.method private registerTelephonyListener()V
    .registers 4

    .prologue
    .line 5794
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5795
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->listener:Lcom/sec/android/app/music/AudioPreview$CallListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 5796
    return-void
.end method

.method private requeryPCloudCursor(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 4961
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    .line 4962
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4964
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mPCloudUri:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "title"

    aput-object v4, v2, v6

    const/4 v4, 0x1

    const-string v5, "data"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "album"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "artist"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "album_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    .line 4971
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5f

    .line 4972
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 4973
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requeryPCloudCursor mCloudCursor count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4974
    if-lt p1, v0, :cond_60

    .line 4976
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4977
    iput v6, p0, Lcom/sec/android/app/music/AudioPreview;->mPositionPCloudCursor:I

    .line 4988
    :cond_5f
    :goto_5f
    return-void

    .line 4978
    :cond_60
    if-gez p1, :cond_6c

    .line 4980
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 4981
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPositionPCloudCursor:I

    goto :goto_5f

    .line 4984
    :cond_6c
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4985
    iput p1, p0, Lcom/sec/android/app/music/AudioPreview;->mPositionPCloudCursor:I

    goto :goto_5f
.end method

.method private setRingtone(I)Landroid/net/Uri;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3676
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRingtone(position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    .line 3680
    invoke-direct {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->makeContentUriFromFileUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 3681
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3683
    :goto_2b
    if-eqz v2, :cond_46

    const-string v3, "content://media/internal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "content://media/external"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 3686
    :cond_3d
    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/music/AudioPreview;->updateContentValue(ILandroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 3729
    :goto_43
    return-object v0

    :cond_44
    move-object v2, v0

    .line 3681
    goto :goto_2b

    .line 3690
    :cond_46
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "strUri does not.... content://media/"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 3694
    :cond_4e
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->IDX_CALL_RINGTONE:I

    if-ne p1, v0, :cond_91

    .line 3695
    const/4 v0, 0x1

    .line 3696
    invoke-static {p0, v0, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 3697
    if-eqz v1, :cond_78

    .line 3698
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "DEBUG_RINGTONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoundPlayer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3724
    :cond_78
    :goto_78
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->IDX_CALL_RINGTONE:I

    if-ne p1, v0, :cond_8f

    .line 3725
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    .line 3727
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_8f
    move-object v0, v1

    .line 3729
    goto :goto_43

    .line 3700
    :cond_91
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->IDX_INDIVIDUAL_RINGTONE:I

    if-ne p1, v0, :cond_b7

    .line 3701
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3702
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3703
    const-string v3, "ringtone_filepath"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3704
    const-string v0, "ringtone_uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3705
    const-string v0, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3710
    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    goto :goto_78

    .line 3711
    :cond_b7
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->IDX_ALARM_TONE:I

    if-ne p1, v0, :cond_78

    .line 3712
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3713
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "content://com.sec.android.app.clockpackage/alarmlist/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3715
    const-string v3, "set_alarm"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3717
    const-string v0, "alarm_uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3720
    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    goto :goto_78
.end method

.method private setUlpBypassInternal(ZZ)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6372
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    const v1, 0x11020

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    const v1, 0x11040

    if-eq v0, v1, :cond_31

    .line 6373
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". setUlpBypassInternal is ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6397
    :cond_30
    :goto_30
    return-void

    .line 6378
    :cond_31
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "setUlpBypassInternal(%s -> %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/sec/android/app/music/AudioPreview;->mIsUlpByPass:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6380
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->useUlpMode()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 6381
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsUlpByPass:Z

    if-eq p1, v0, :cond_7b

    .line 6382
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->mIsUlpByPass:Z

    .line 6383
    iput-boolean p2, p0, Lcom/sec/android/app/music/AudioPreview;->mNeedToPause:Z

    .line 6385
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPlayedTimeForUlp:J

    .line 6386
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWasPlayed:Z

    .line 6388
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->stop()V

    .line 6390
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-eqz v0, :cond_30

    .line 6391
    iput-boolean v5, p0, Lcom/sec/android/app/music/AudioPreview;->mResetForUlp:Z

    .line 6392
    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/AudioPreview;->doPrepare(Z)V

    goto :goto_30

    .line 6395
    :cond_7b
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "setUlpBypassInternal - no need to change ULP mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method private setVolume(I)V
    .registers 5
    .parameter "progress"

    .prologue
    .line 3375
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/music/AudioPreview;->isEnableVolumeChange(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3376
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->setStreamVolume(III)V

    .line 3380
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->showVolumePanel()V

    .line 3381
    return-void
.end method

.method private showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 3493
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBubble("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 3495
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 3496
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 3497
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    sub-int v2, v0, v2

    .line 3499
    const/16 v0, 0xf

    if-ne p1, v0, :cond_67

    .line 3500
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x14

    add-int/2addr v0, v1

    .line 3506
    :goto_44
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v1, p2, v2, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 3509
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 3511
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsVolumeBubbleRunable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5a

    .line 3512
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mHideBubble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3514
    :cond_5a
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mHideBubble:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsVolumeBubbleRunable:Z

    .line 3515
    return-void

    .line 3501
    :cond_67
    if-nez p1, :cond_71

    .line 3502
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_44

    .line 3504
    :cond_71
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v1

    goto :goto_44
.end method

.method private showFlingAnimation(I)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v7, 0x1

    .line 568
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    if-ne v0, v7, :cond_8

    .line 681
    :cond_7
    :goto_7
    return-void

    .line 572
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 578
    :cond_13
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsReadyForFling:Z

    if-eqz v0, :cond_7

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsReadyForFling:Z

    .line 584
    iput-boolean v7, p0, Lcom/sec/android/app/music/AudioPreview;->mIsFlingNow:Z

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->mDelayTimes:I

    .line 597
    :goto_2b
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->getFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 598
    const/4 v0, 0x0

    .line 599
    if-eqz v3, :cond_119

    .line 600
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    .line 609
    :goto_3c
    if-ne p1, v7, :cond_dc

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v4, 0x7f040003

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 616
    :goto_50
    new-instance v4, Lcom/sec/android/app/music/AudioPreview$2;

    invoke-direct {v4, p0, v3}, Lcom/sec/android/app/music/AudioPreview$2;-><init>(Lcom/sec/android/app/music/AudioPreview;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 640
    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->getAlbumInfo(Landroid/net/Uri;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v4

    .line 644
    if-nez v4, :cond_f0

    .line 645
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->getDefaultArtwork(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 650
    :goto_63
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 655
    iput-boolean v7, p0, Lcom/sec/android/app/music/AudioPreview;->mCausedByFling:Z

    .line 656
    iget-boolean v5, p0, Lcom/sec/android/app/music/AudioPreview;->isShownVolumeBar:Z

    if-eqz v5, :cond_77

    .line 657
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->hideVolumePanel()V

    .line 659
    :cond_77
    iget-boolean v5, p0, Lcom/sec/android/app/music/AudioPreview;->mIsShownAdditionalBar:Z

    if-eqz v5, :cond_7e

    .line 660
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->hideAdditionalPanel()V

    .line 663
    :cond_7e
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 664
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 665
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 668
    if-nez v4, :cond_f8

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v3, 0x7f090134

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvArtist:Landroid/widget/TextView;

    const v1, 0x7f090136

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvAlbum:Landroid/widget/TextView;

    const v1, 0x7f090135

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 589
    :cond_d0
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsMusidPrepared:Z

    if-nez v0, :cond_d8

    .line 590
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->mDelayTimes:I

    goto/16 :goto_2b

    .line 592
    :cond_d8
    iput v7, p0, Lcom/sec/android/app/music/AudioPreview;->mDelayTimes:I

    goto/16 :goto_2b

    .line 613
    :cond_dc
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v4, 0x7f040004

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto/16 :goto_50

    .line 647
    :cond_f0
    iget v2, v4, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbumID:I

    invoke-direct {p0, v2, v7}, Lcom/sec/android/app/music/AudioPreview;->getArtwork(IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_63

    .line 673
    :cond_f8
    iget-object v0, v4, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_111

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    :goto_101
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvArtist:Landroid/widget/TextView;

    iget-object v1, v4, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvAlbum:Landroid/widget/TextView;

    iget-object v1, v4, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 676
    :cond_111
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, v4, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_101

    :cond_119
    move-object v2, v0

    goto/16 :goto_3c
.end method

.method private startAndFadeIn()V
    .registers 5

    .prologue
    .line 6322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mStartFromFadeIn:Z

    .line 6323
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6324
    return-void
.end method

.method private startBluetoothDevicePicker()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1114
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1115
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1117
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1118
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    .line 1119
    return-void
.end method

.method private unregisterTelephonyListener()V
    .registers 4

    .prologue
    .line 5800
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->listener:Lcom/sec/android/app/music/AudioPreview$CallListener;

    if-eqz v1, :cond_12

    .line 5801
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5802
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->listener:Lcom/sec/android/app/music/AudioPreview$CallListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 5804
    .end local v0           #tm:Landroid/telephony/TelephonyManager;
    :cond_12
    return-void
.end method

.method private updateContentValue(ILandroid/net/Uri;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3791
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateContentValue(position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    :try_start_29
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3797
    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->IDX_INDIVIDUAL_RINGTONE:I

    if-eq p1, v2, :cond_36

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->IDX_CALL_RINGTONE:I

    if-ne p1, v2, :cond_46

    .line 3798
    :cond_36
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3802
    :goto_3d
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3803
    const/4 v0, 0x1

    .line 3812
    :goto_45
    return v0

    .line 3800
    :cond_46
    const-string v2, "is_alarm"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_4d} :catch_4e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_29 .. :try_end_4d} :catch_6c

    goto :goto_3d

    .line 3804
    :catch_4e
    move-exception v1

    .line 3805
    const-string v2, "MusicPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException occured :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 3807
    :catch_6c
    move-exception v1

    .line 3808
    const-string v2, "MusicPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedOperationException occured :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method private useDpadMusicControl()Z
    .registers 2

    .prologue
    .line 1442
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDeviceHasDpad:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1444
    :cond_1c
    const/4 v0, 0x1

    .line 1446
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private useUlpMode()Z
    .registers 3

    .prologue
    .line 6401
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mMimeType:Ljava/lang/String;

    const-string v1, "audio/mpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6404
    const/4 v0, 0x1

    .line 6406
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method


# virtual methods
.method protected attachTitleTextViews()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2437
    const v0, 0x7f0c00bc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvTitle:Landroid/widget/TextView;

    .line 2438
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2439
    const v0, 0x7f0c00bd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvArtist:Landroid/widget/TextView;

    .line 2440
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvArtist:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2441
    const v0, 0x7f0c00be

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvAlbum:Landroid/widget/TextView;

    .line 2442
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvAlbum:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2443
    return-void
.end method

.method public canStartMediaPlayer()Z
    .registers 3

    .prologue
    .line 5823
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    .line 5825
    const/4 v0, 0x1

    .line 5828
    :goto_7
    return v0

    .line 5827
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "isPrepared()[false]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5828
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected changePlayButton(ZZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3241
    if-eqz p1, :cond_b

    .line 3242
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonPlay:Landroid/widget/ImageView;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3246
    :goto_a
    return-void

    .line 3244
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonPlay:Landroid/widget/ImageView;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a
.end method

.method protected changeView(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4080
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewChanging:Z

    if-eqz v0, :cond_24

    .line 4127
    :goto_23
    return-void

    .line 4085
    :cond_24
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 4087
    if-eqz v0, :cond_a6

    .line 4088
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 4091
    :goto_2e
    const v2, 0x7f03001f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->setContentView(I)V

    .line 4092
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->initializeControls()V

    .line 4094
    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8e

    .line 4095
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    const v3, 0x7f020080

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4096
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    const v3, 0x7f020073

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4102
    :goto_4c
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_57

    .line 4103
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4106
    :cond_57
    iget-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mIsShownAdditionalBar:Z

    if-eqz v2, :cond_5e

    .line 4107
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->showAdditionalPanel(Z)V

    .line 4110
    :cond_5e
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->doSyncPlayMusic()V

    .line 4111
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    .line 4113
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4114
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4115
    iput-boolean v1, p0, Lcom/sec/android/app/music/AudioPreview;->mViewChanging:Z

    .line 4118
    iget-boolean v1, p0, Lcom/sec/android/app/music/AudioPreview;->mIsLiveStreamMode:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->setLiveStreamMode(Z)V

    .line 4119
    iget-boolean v1, p0, Lcom/sec/android/app/music/AudioPreview;->mIsLiveStreamMode:Z

    if-eqz v1, :cond_84

    .line 4120
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mProgressBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->mBufferPercentage:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 4122
    :cond_84
    if-eqz v0, :cond_9f

    .line 4123
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_23

    .line 4098
    :cond_8e
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    const v3, 0x7f020084

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4099
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    const v3, 0x7f02006b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4c

    .line 4125
    :cond_9f
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    goto/16 :goto_23

    :cond_a6
    move v0, v1

    goto :goto_2e
.end method

.method public doPlay()V
    .registers 3

    .prologue
    .line 3249
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "doPlay() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_18

    .line 3251
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3252
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsLiveStreamMode:Z

    if-eqz v0, :cond_19

    .line 3253
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->stopPlay()V

    .line 3265
    :cond_18
    :goto_18
    return-void

    .line 3255
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    goto :goto_18

    .line 3256
    :cond_1d
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    const v1, 0x11040

    if-ne v0, v1, :cond_28

    .line 3257
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->startPlay()V

    goto :goto_18

    .line 3259
    :cond_28
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bIsDrmFile:Z

    if-eqz v0, :cond_34

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/music/AudioPreview;->checkDrmRight(IZ)I

    move-result v0

    if-nez v0, :cond_18

    .line 3261
    :cond_34
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->startPlay()V

    goto :goto_18
.end method

.method protected doPrepare(Z)V
    .registers 10
    .parameter

    .prologue
    const v5, 0x10008

    const/4 v1, -0x1

    const/16 v7, 0x384

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 2273
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doPrepare() is called."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    iput-boolean v6, p0, Lcom/sec/android/app/music/AudioPreview;->bErrorFile:Z

    .line 2278
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2279
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2281
    :cond_35
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_55

    .line 2282
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-nez v0, :cond_4a

    .line 2283
    const-string v0, "doPrepare() mCurrentUri == null "

    .line 2284
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2288
    :cond_4a
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    if-ne v0, v5, :cond_56

    .line 2289
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "doPrepare() but it is preparing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_55
    :goto_55
    return-void

    .line 2293
    :cond_56
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    .line 2295
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z

    invoke-static {v0, v3}, Lcom/sec/android/app/music/common/util/UriUtil;->getType(Landroid/net/Uri;Z)I

    move-result v0

    .line 2297
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 2298
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 2299
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 2300
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2301
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 2303
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2306
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnPlayReadyErrorListener(Landroid/media/MediaPlayer$OnPlayReadyErrorListener;)V

    .line 2308
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 2309
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->stop()V

    .line 2311
    const v3, 0x10010

    iput v3, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 2313
    :cond_a0
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->reset()V

    .line 2315
    const/4 v3, 0x2

    iput v3, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 2318
    :try_start_a8
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v3, p0, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2319
    const/4 v3, 0x4

    iput v3, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 2322
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/music/AudioPreview;->mIsSeekable:Z

    .line 2324
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x384

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 2325
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x384

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2328
    :cond_c6
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->useUlpMode()Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 2329
    iget-boolean v3, p0, Lcom/sec/android/app/music/AudioPreview;->mResetForUlp:Z

    if-nez v3, :cond_e3

    .line 2330
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-nez v3, :cond_e0

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v3}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v3

    if-eqz v3, :cond_188

    .line 2332
    :cond_e0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/music/AudioPreview;->mIsUlpByPass:Z

    .line 2337
    :cond_e3
    :goto_e3
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-boolean v4, p0, Lcom/sec/android/app/music/AudioPreview;->mIsUlpByPass:Z

    invoke-virtual {v3, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->ulpBypass(Z)V

    .line 2338
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doPrepare() - mMediaPlayer.ulpBypass("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sec/android/app/music/AudioPreview;->mIsUlpByPass:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :cond_10a
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/music/AudioPreview;->mIsPrepareRequested:Z

    .line 2343
    if-ne v0, v1, :cond_1ad

    .line 2344
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2345
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->prepareAsync()V

    .line 2347
    const v0, 0x10008

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I
    :try_end_120
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a8 .. :try_end_120} :catch_18d
    .catch Ljava/lang/IllegalStateException; {:try_start_a8 .. :try_end_120} :catch_1cf
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_120} :catch_218
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_120} :catch_238

    :goto_120
    move v0, v1

    .line 2385
    :goto_121
    if-eq v0, v1, :cond_29a

    .line 2386
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doPrepare() has error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bErrorFile:Z

    .line 2389
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_14a

    .line 2390
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2394
    :cond_14a
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z

    if-nez v0, :cond_277

    .line 2396
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    if-eqz v0, :cond_258

    .line 2397
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2398
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 2399
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "came here 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :goto_166
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2418
    :cond_16b
    :goto_16b
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2420
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2421
    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/AudioPreview;->refreshPlayedTime(I)V

    .line 2424
    iput v6, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    .line 2425
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    .line 2427
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/sec/android/app/music/AudioPreview;->changePlayButton(ZZ)V

    goto/16 :goto_55

    .line 2334
    :cond_188
    const/4 v3, 0x0

    :try_start_189
    iput-boolean v3, p0, Lcom/sec/android/app/music/AudioPreview;->mIsUlpByPass:Z
    :try_end_18b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_189 .. :try_end_18b} :catch_18d
    .catch Ljava/lang/IllegalStateException; {:try_start_189 .. :try_end_18b} :catch_1cf
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18b} :catch_218
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_18b} :catch_238

    goto/16 :goto_e3

    .line 2370
    :catch_18d
    move-exception v0

    .line 2371
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preparePlay - IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2382
    goto/16 :goto_121

    .line 2350
    :cond_1ad
    const/4 v3, 0x5

    if-ne v0, v3, :cond_1ef

    .line 2351
    :try_start_1b0
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v3, "content_pyawma"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->isInfoMode:Z

    if-ne v0, v2, :cond_1c1

    .line 2353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->isInfoMode:Z

    .line 2354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->InfoModechanged:Z

    .line 2356
    :cond_1c1
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v3, "isInfoMode is turned doprepare content_pyawma"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->prepareAsync()V
    :try_end_1cd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b0 .. :try_end_1cd} :catch_18d
    .catch Ljava/lang/IllegalStateException; {:try_start_1b0 .. :try_end_1cd} :catch_1cf
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1cd} :catch_218
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1cd} :catch_238

    goto/16 :goto_120

    .line 2373
    :catch_1cf
    move-exception v0

    .line 2374
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preparePlay - IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    const/4 v0, 0x2

    .line 2382
    goto/16 :goto_121

    .line 2361
    :cond_1ef
    :try_start_1ef
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    if-eqz v0, :cond_20c

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20c

    .line 2364
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x384

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2366
    :cond_20c
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->prepare()V

    .line 2368
    const v0, 0x10008

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I
    :try_end_216
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ef .. :try_end_216} :catch_18d
    .catch Ljava/lang/IllegalStateException; {:try_start_1ef .. :try_end_216} :catch_1cf
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_216} :catch_218
    .catch Ljava/lang/Exception; {:try_start_1ef .. :try_end_216} :catch_238

    goto/16 :goto_120

    .line 2376
    :catch_218
    move-exception v0

    .line 2377
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preparePlay - IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    const/4 v0, 0x3

    .line 2382
    goto/16 :goto_121

    .line 2379
    :catch_238
    move-exception v0

    .line 2380
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preparePlay - Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    const/4 v0, 0x4

    goto/16 :goto_121

    .line 2402
    :cond_258
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const v1, 0x7f09004b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    .line 2404
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "IsLicenseAquisitionFailed is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "came here 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_166

    .line 2409
    :cond_277
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "No pop up from doPrepare for playready wmdrm file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    iput-boolean v6, p0, Lcom/sec/android/app/music/AudioPreview;->pyv_wmdrm_file:Z

    .line 2412
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_16b

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 2413
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onPreparedListener here aquiring pop up is dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mProgress1:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_16b

    .line 2429
    :cond_29a
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mLibraryMediaPlayerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto/16 :goto_55
.end method

.method protected doSetSrsRepeatShuffleImage()V
    .registers 3

    .prologue
    .line 5834
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_12

    .line 5835
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonVolume:Landroid/widget/ImageView;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5840
    :goto_11
    return-void

    .line 5837
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonVolume:Landroid/widget/ImageView;

    const v1, 0x7f020113

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11
.end method

.method public getAlbumInfo(Landroid/net/Uri;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;
    .registers 13
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 2110
    if-nez p1, :cond_8

    move-object v0, v6

    .line 2269
    :goto_7
    return-object v0

    .line 2113
    :cond_8
    new-instance v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    invoke-direct {v7}, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;-><init>()V

    .line 2114
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2115
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v2, v10

    const-string v1, "album"

    aput-object v1, v2, v9

    const/4 v1, 0x2

    const-string v3, "artist"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "album_id"

    aput-object v3, v2, v1

    const-string v1, "_data"

    aput-object v1, v2, v4

    const/4 v1, 0x5

    const-string v3, "mime_type"

    aput-object v3, v2, v1

    .line 2121
    const/4 v1, -0x1

    iput v1, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbumID:I

    .line 2122
    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 2126
    :try_start_3a
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_e3
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_43} :catch_d8

    move-result-object v1

    .line 2128
    if-eqz v1, :cond_a3

    .line 2129
    :try_start_46
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 2130
    const-string v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 2132
    const-string v0, "album"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    .line 2134
    const-string v0, "artist"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    .line 2136
    const-string v0, "album_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbumID:I

    .line 2138
    const-string v0, "mime_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mMimeType:Ljava/lang/String;

    .line 2140
    iget-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_a3

    .line 2141
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2143
    if-eqz v0, :cond_a3

    .line 2144
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2145
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;
    :try_end_a3
    .catchall {:try_start_46 .. :try_end_a3} :catchall_232
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_a3} :catch_235

    .line 2154
    :cond_a3
    if-eqz v1, :cond_a8

    .line 2155
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2258
    :cond_a8
    :goto_a8
    iget-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_bf

    .line 2259
    const-string v0, "<%s>"

    new-array v1, v9, [Ljava/lang/Object;

    const v2, 0x7f090134

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 2261
    :cond_bf
    const-string v0, "<unknown>"

    .line 2262
    iget-object v1, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 2263
    iput-object v6, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    .line 2264
    :cond_cb
    iget-object v1, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 2265
    iput-object v6, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    :cond_d5
    move-object v0, v7

    .line 2269
    goto/16 :goto_7

    .line 2151
    :catch_d8
    move-exception v0

    move-object v1, v6

    .line 2152
    :goto_da
    :try_start_da
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_232

    .line 2154
    if-eqz v1, :cond_a8

    .line 2155
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a8

    .line 2154
    :catchall_e3
    move-exception v0

    move-object v1, v6

    :goto_e5
    if-eqz v1, :cond_ea

    .line 2155
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_ea
    throw v0

    .line 2157
    :cond_eb
    iget v1, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    if-ne v1, v4, :cond_154

    .line 2158
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_13c

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_13c

    .line 2159
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->mPositionPCloudCursor:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2160
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->mTitleIdx:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;

    .line 2161
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    .line 2163
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    .line 2165
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    const-string v3, "album_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbumID:I

    .line 2168
    :cond_13c
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_14a

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 2169
    :cond_14a
    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    goto/16 :goto_a8

    .line 2171
    :cond_14e
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;

    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    goto/16 :goto_a8

    .line 2173
    :cond_154
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_214

    .line 2174
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 2176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2177
    const-string v0, "_data = ?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2180
    const-string v0, "/system/media"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e5

    .line 2181
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2192
    :goto_174
    if-eqz v1, :cond_1d9

    .line 2195
    :try_start_176
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_188
    .catchall {:try_start_176 .. :try_end_188} :catchall_20c
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_188} :catch_201

    move-result-object v1

    .line 2199
    if-eqz v1, :cond_1d4

    .line 2200
    :try_start_18b
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "file:// cursor != null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 2203
    const-string v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 2205
    const-string v0, "album"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    .line 2207
    const-string v0, "artist"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    .line 2209
    const-string v0, "album_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbumID:I

    .line 2211
    const-string v0, "mime_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mMimeType:Ljava/lang/String;
    :try_end_1d4
    .catchall {:try_start_18b .. :try_end_1d4} :catchall_22e
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1d4} :catch_230

    .line 2220
    :cond_1d4
    if-eqz v1, :cond_1d9

    .line 2221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2227
    :cond_1d9
    :goto_1d9
    iget-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_a8

    .line 2228
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    goto/16 :goto_a8

    .line 2182
    :cond_1e5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f7

    .line 2183
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_174

    .line 2188
    :cond_1f7
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "Incorrect fileUri !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    goto/16 :goto_174

    .line 2216
    :catch_201
    move-exception v0

    move-object v1, v6

    .line 2217
    :goto_203
    :try_start_203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_206
    .catchall {:try_start_203 .. :try_end_206} :catchall_22e

    .line 2220
    if-eqz v1, :cond_1d9

    .line 2221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1d9

    .line 2220
    :catchall_20c
    move-exception v0

    move-object v1, v6

    :goto_20e
    if-eqz v1, :cond_213

    .line 2221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_213
    throw v0

    .line 2230
    :cond_214
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_220

    .line 2231
    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    goto/16 :goto_a8

    .line 2232
    :cond_220
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    if-ne v0, v9, :cond_a8

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_a8

    .line 2233
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentDisplayName:Ljava/lang/String;

    iput-object v0, v7, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    goto/16 :goto_a8

    .line 2220
    :catchall_22e
    move-exception v0

    goto :goto_20e

    .line 2216
    :catch_230
    move-exception v0

    goto :goto_203

    .line 2154
    :catchall_232
    move-exception v0

    goto/16 :goto_e5

    .line 2151
    :catch_235
    move-exception v0

    goto/16 :goto_da
.end method

.method protected getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 5357
    .line 5359
    if-nez p1, :cond_5

    .line 5393
    :cond_4
    :goto_4
    return-object v6

    .line 5361
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5362
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5363
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5364
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 5367
    :cond_1f
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5373
    :try_start_2b
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_ae
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2b .. :try_end_3c} :catch_5a
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2b .. :try_end_3c} :catch_84

    move-result-object v1

    .line 5377
    if-eqz v1, :cond_be

    :try_start_3f
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_be

    .line 5378
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5379
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_b6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3f .. :try_end_51} :catch_ba
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3f .. :try_end_51} :catch_b8

    move-result-object v6

    move-object v0, v6

    .line 5389
    :goto_53
    if-eqz v1, :cond_58

    .line 5390
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_58
    :goto_58
    move-object v6, v0

    .line 5393
    goto :goto_4

    .line 5381
    :catch_5a
    move-exception v0

    move-object v1, v6

    .line 5382
    :goto_5c
    :try_start_5c
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException getAudioFilePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5383
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_7d
    .catchall {:try_start_5c .. :try_end_7d} :catchall_b6

    .line 5389
    if-eqz v1, :cond_bc

    .line 5390
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_58

    .line 5385
    :catch_84
    move-exception v0

    move-object v1, v6

    .line 5386
    :goto_86
    :try_start_86
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException getAudioFilePath"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5387
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_a7
    .catchall {:try_start_86 .. :try_end_a7} :catchall_b6

    .line 5389
    if-eqz v1, :cond_bc

    .line 5390
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_58

    .line 5389
    :catchall_ae
    move-exception v0

    move-object v1, v6

    :goto_b0
    if-eqz v1, :cond_b5

    .line 5390
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b5
    throw v0

    .line 5389
    :catchall_b6
    move-exception v0

    goto :goto_b0

    .line 5385
    :catch_b8
    move-exception v0

    goto :goto_86

    .line 5381
    :catch_ba
    move-exception v0

    goto :goto_5c

    :cond_bc
    move-object v0, v6

    goto :goto_58

    :cond_be
    move-object v0, v6

    goto :goto_53
.end method

.method public getDuration()I
    .registers 5

    .prologue
    .line 4864
    .line 4866
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->canStartMediaPlayer()Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    const v1, 0x10010

    if-ne v0, v1, :cond_36

    .line 4868
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getDuration()I

    move-result v0

    .line 4873
    :goto_17
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDuration()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4874
    return v0

    .line 4870
    :cond_36
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getItemCountInMxList(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 5309
    .line 5312
    const/4 v4, 0x0

    .line 5315
    const/16 v0, 0x1e

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 5317
    if-nez p1, :cond_12

    .line 5318
    if-nez p2, :cond_e

    .line 5353
    :goto_d
    return v6

    .line 5320
    :cond_e
    invoke-static {p2}, Lcom/sec/android/app/music/common/util/ListType;->getBucketIDfromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5325
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bucket_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5326
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(_id)"

    aput-object v0, v2, v6

    .line 5330
    :try_start_2c
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5332
    if-nez v1, :cond_3f

    .line 5333
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "getItemCountInMxList : tmpC is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_3d
    move v6, v0

    .line 5353
    goto :goto_d

    .line 5335
    :cond_3f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5336
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2c .. :try_end_46} :catch_95
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2c .. :try_end_46} :catch_6e

    move-result v0

    .line 5337
    :try_start_47
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_47 .. :try_end_4a} :catch_4b
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_47 .. :try_end_4a} :catch_93

    goto :goto_3d

    .line 5344
    :catch_4b
    move-exception v1

    .line 5345
    :goto_4c
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException getItemCountInMxList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto :goto_3d

    .line 5348
    :catch_6e
    move-exception v0

    move-object v1, v0

    move v0, v6

    .line 5349
    :goto_71
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException getItemCountInMxList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5350
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto :goto_3d

    .line 5348
    :catch_93
    move-exception v1

    goto :goto_71

    .line 5344
    :catch_95
    move-exception v0

    move-object v1, v0

    move v0, v6

    goto :goto_4c
.end method

.method public getItemFilePathMxList(ILjava/lang/String;I)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 5260
    .line 5262
    const/16 v0, 0x1e

    invoke-static {v0, v5}, Lcom/sec/android/app/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v0

    .line 5263
    if-nez v0, :cond_14

    .line 5264
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "getItemFilePathMxList() uri == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 5305
    :goto_13
    return-object v0

    .line 5267
    :cond_14
    new-array v2, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v5

    .line 5270
    const-string v3, "bucket_id = ?"

    .line 5271
    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v5

    .line 5274
    invoke-static {p1}, Lcom/sec/android/app/music/common/util/ListType;->getOrderByMyFiles(I)Ljava/lang/String;

    move-result-object v5

    .line 5276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ",1"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5277
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "?&limit="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5280
    :try_start_56
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5282
    if-nez v1, :cond_8b

    .line 5283
    new-instance v0, Ljava/lang/Error;

    const-string v1, "MusicDB:getItemFilePathMxList return null cursor"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_66
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_56 .. :try_end_66} :catch_66
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_56 .. :try_end_66} :catch_bf

    .line 5296
    :catch_66
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 5297
    :goto_69
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException getItemFilePathMxList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5298
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto :goto_13

    .line 5285
    :cond_8b
    :try_start_8b
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e7

    .line 5286
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5287
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_98
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8b .. :try_end_98} :catch_66
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_8b .. :try_end_98} :catch_bf

    move-result-object v0

    .line 5290
    :goto_99
    :try_start_99
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v3, "getItemFilePathMxList: sort_order[%d], bucketID[%s], index[%d]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5295
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_bb
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_99 .. :try_end_bb} :catch_bd
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_99 .. :try_end_bb} :catch_e5

    goto/16 :goto_13

    .line 5296
    :catch_bd
    move-exception v1

    goto :goto_69

    .line 5300
    :catch_bf
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 5301
    :goto_c2
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException getItemFilePathMxList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5302
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto/16 :goto_13

    .line 5300
    :catch_e5
    move-exception v1

    goto :goto_c2

    :cond_e7
    move-object v0, v6

    goto :goto_99
.end method

.method protected getItemPositionMxList(ILjava/lang/String;Ljava/lang/String;)I
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 5152
    .line 5155
    invoke-static {p1}, Lcom/sec/android/app/music/common/util/ListType;->getOrderByKeywordMyFiles(I)Ljava/lang/String;

    move-result-object v8

    .line 5161
    packed-switch p1, :pswitch_data_10e

    .line 5170
    const-string v0, " < "

    move-object v6, v0

    .line 5174
    :goto_e
    const/16 v0, 0x1e

    invoke-static {v0, v7}, Lcom/sec/android/app/music/common/util/ListType;->getUri(II)Landroid/net/Uri;

    move-result-object v1

    .line 5176
    if-nez p2, :cond_1a

    .line 5177
    invoke-static {p3}, Lcom/sec/android/app/music/common/util/ListType;->getBucketIDfromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5181
    :cond_1a
    const-string v3, "_data = ?"

    .line 5182
    new-array v4, v9, [Ljava/lang/String;

    aput-object p3, v4, v5

    .line 5185
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    aput-object v8, v2, v9

    .line 5190
    :try_start_28
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5192
    if-nez v0, :cond_3e

    .line 5193
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "getItemPositionMxList - ( tmpC == null ) !! Music DB is not available "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_28 .. :try_end_38} :catch_a9
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_28 .. :try_end_38} :catch_e4

    move v0, v7

    .line 5256
    :goto_39
    return v0

    .line 5163
    :pswitch_3a
    const-string v0, " > "

    move-object v6, v0

    .line 5164
    goto :goto_e

    .line 5198
    :cond_3e
    :try_start_3e
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v9, :cond_50

    .line 5199
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "getItemPositionMxList - ( tmpC.getCount < 1 ) is false!! ... In audioDB, not exist the filePath"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5204
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 5205
    goto :goto_39

    .line 5208
    :cond_50
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5210
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5211
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 5212
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5214
    if-nez v5, :cond_6b

    .line 5215
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "getItemPositionMxList - ( keywordValue==null ) is false!! ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 5216
    goto :goto_39

    .line 5221
    :cond_6b
    const-string v0, "(%s %s ? OR ( _id < %d AND %s = ?)) AND bucket_id = ? "

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v6, v3, v4

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    aput-object v8, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5224
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v5, v4, v0

    const/4 v0, 0x1

    aput-object v5, v4, v0

    const/4 v0, 0x2

    aput-object p2, v4, v0

    .line 5227
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "count()"

    aput-object v5, v2, v0

    .line 5230
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5232
    if-nez v1, :cond_cf

    .line 5233
    new-instance v0, Ljava/lang/Error;

    const-string v1, "MusicDB:getItemPositionMxList - cursor return null"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3e .. :try_end_a9} :catch_a9
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3e .. :try_end_a9} :catch_e4

    .line 5247
    :catch_a9
    move-exception v0

    move-object v1, v0

    move v0, v7

    .line 5248
    :goto_ac
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException getItemPositionMxList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5249
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto/16 :goto_39

    .line 5235
    :cond_cf
    :try_start_cf
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_10c

    .line 5236
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5237
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_dc
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_cf .. :try_end_dc} :catch_a9
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_cf .. :try_end_dc} :catch_e4

    move-result v0

    .line 5240
    :goto_dd
    :try_start_dd
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_e0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_dd .. :try_end_e0} :catch_e2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_dd .. :try_end_e0} :catch_10a

    goto/16 :goto_39

    .line 5247
    :catch_e2
    move-exception v1

    goto :goto_ac

    .line 5251
    :catch_e4
    move-exception v0

    move-object v1, v0

    move v0, v7

    .line 5252
    :goto_e7
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException getItemPositionMxList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5253
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/music/MusicUtils;->forceStopPackage(Landroid/content/Context;)V

    goto/16 :goto_39

    .line 5251
    :catch_10a
    move-exception v1

    goto :goto_e7

    :cond_10c
    move v0, v7

    goto :goto_dd

    .line 5161
    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_3a
    .end packed-switch
.end method

.method hideAdditionalPanel()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x12c

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 1134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsShownAdditionalBar:Z

    .line 1135
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1137
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1138
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1140
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1141
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 1142
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1143
    invoke-virtual {v1}, Landroid/view/animation/Animation;->startNow()V

    .line 1146
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1149
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewProgressBar:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1150
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    .line 1151
    return-void
.end method

.method hideVolumePanel()V
    .registers 3

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->isShownVolumeBar:Z

    .line 1163
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 1165
    return-void
.end method

.method public launchBrowser(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 6419
    if-nez p1, :cond_4

    .line 6440
    :goto_3
    return v0

    .line 6423
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6424
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6425
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 6426
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6428
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 6433
    :try_start_25
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_25 .. :try_end_2a} :catch_2c

    .line 6440
    :cond_2a
    const/4 v0, 0x1

    goto :goto_3

    .line 6434
    :catch_2c
    move-exception v1

    .line 6435
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "could not find a suitable activity for launching license url"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public muteForPopupNoise(Z)V
    .registers 5
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 5781
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_15

    .line 5782
    if-eqz p1, :cond_16

    .line 5783
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setVolume(FF)V

    .line 5784
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "mPlayer.setVolume(0f,0f)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5790
    :cond_15
    :goto_15
    return-void

    .line 5786
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0, v2, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setVolume(FF)V

    .line 5787
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "mPlayer.setVolume(1.0f,1.0f)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3817
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2b

    .line 3874
    :cond_2b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 4070
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onConfigurationChanged() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4076
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->changeView(I)V

    .line 4077
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 755
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onCreate() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/AudioPreview;->setVolumeControlStream(I)V

    .line 759
    iput-object p0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mToast:Landroid/widget/Toast;

    .line 762
    new-instance v0, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 763
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 765
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mPause:Z

    .line 766
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->isActivityExit:Z

    .line 767
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicPlayerInitDone:Z

    .line 768
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mViewChanging:Z

    .line 770
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->setContentView(I)V

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContentResolver:Landroid/content/ContentResolver;

    .line 773
    new-instance v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    .line 775
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->initializeControls()V

    .line 776
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->processIntent(Landroid/content/Intent;)V

    .line 778
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->isShownVolumeBar:Z

    .line 780
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$Worker;

    const-string v1, "album art worker"

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/AudioPreview$Worker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAlbumArtWorker:Lcom/sec/android/app/music/AudioPreview$Worker;

    .line 781
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mAlbumArtWorker:Lcom/sec/android/app/music/AudioPreview$Worker;

    invoke-virtual {v1}, Lcom/sec/android/app/music/AudioPreview$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;-><init>(Lcom/sec/android/app/music/AudioPreview;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAlbumArtHandler:Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;

    .line 782
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->registerMediaScannerReceiver()V

    .line 784
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPreparingProgress:Landroid/app/ProgressDialog;

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPreparingProgress:Landroid/app/ProgressDialog;

    const v1, 0x7f0900ff

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 787
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 788
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 789
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 791
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 792
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 793
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 795
    new-instance v0, Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/music/framework/SecAudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeLevel:I

    .line 799
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->powermanager:Landroid/os/PowerManager;

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->powermanager:Landroid/os/PowerManager;

    const-string v1, "MusicPlayer-Sleep"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 809
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$CallListener;

    invoke-direct {v0, p0, v5}, Lcom/sec/android/app/music/AudioPreview$CallListener;-><init>(Lcom/sec/android/app/music/AudioPreview;Lcom/sec/android/app/music/AudioPreview$1;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->listener:Lcom/sec/android/app/music/AudioPreview$CallListener;

    .line 810
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->registerTelephonyListener()V

    .line 813
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 814
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 818
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 819
    const-string v1, "com.sec.android.app.soundplayer.command"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 823
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 824
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    const-string v1, "Intent.ACTION_HDMI_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 826
    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/AudioPreview;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 829
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z

    .line 830
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->setPreviewUriAndFilePath()V

    .line 836
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 837
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    if-nez v0, :cond_138

    .line 838
    const-string v0, ""

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    .line 842
    :goto_122
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 843
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 844
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 845
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->finish()V

    .line 851
    :goto_137
    return-void

    .line 840
    :cond_138
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_122

    .line 848
    :cond_13e
    sput-object v5, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    goto :goto_137
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 3528
    packed-switch p1, :pswitch_data_44

    .line 3544
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 3530
    :pswitch_5
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f090054

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f090055

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f090056

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3535
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 3536
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3537
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3538
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 3528
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 914
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview;->mMenu:Landroid/view/Menu;

    .line 915
    const/4 v0, 0x2

    const v1, 0x7f09002e

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020029

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 917
    const v0, 0x7f090036

    invoke-interface {p1, v3, v2, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020028

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 919
    const v0, 0x7f09002f

    invoke-interface {p1, v3, v4, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020027

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 921
    const/4 v0, 0x6

    const v1, 0x7f090030

    invoke-interface {p1, v3, v5, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 922
    const/16 v0, 0xa

    const/16 v1, 0x9

    const v2, 0x7f09004a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020015

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mMenuDetailsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 926
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3175
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onDestroy() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    iput-boolean v5, p0, Lcom/sec/android/app/music/AudioPreview;->isActivityExit:Z

    .line 3177
    iput-boolean v5, p0, Lcom/sec/android/app/music/AudioPreview;->mPause:Z

    .line 3179
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_16

    .line 3180
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCloudCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3187
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->googleSearchMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1c

    .line 3188
    iput-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->googleSearchMessageBox:Landroid/app/AlertDialog;

    .line 3189
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->shareMusicMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_22

    .line 3190
    iput-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->shareMusicMessageBox:Landroid/app/AlertDialog;

    .line 3192
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mFlingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3196
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3198
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3199
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3200
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3201
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3202
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3203
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3204
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->unregisterTelephonyListener()V

    .line 3206
    :try_start_4d
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_52} :catch_ab

    .line 3210
    :goto_52
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/music/AudioPreviewMediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3213
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAlbumArtWorker:Lcom/sec/android/app/music/AudioPreview$Worker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview$Worker;->quit()V

    .line 3215
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPreparingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3216
    iput-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mAlbumArtWorker:Lcom/sec/android/app/music/AudioPreview$Worker;

    .line 3217
    iput-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mAlbumArtHandler:Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;

    .line 3219
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 3220
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 3221
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 3222
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 3224
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 3225
    iput v5, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 3226
    iput-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 3227
    iput-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    .line 3229
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 3232
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 3233
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3235
    :cond_a7
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3236
    return-void

    .line 3207
    :catch_ab
    move-exception v0

    .line 3208
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy()...unregisterReceiver mBluetoothReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method onFFDown()V
    .registers 4

    .prologue
    .line 1363
    const/16 v0, 0xa

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 1364
    return-void
.end method

.method onFFUp(J)V
    .registers 6
    .parameter "interval"

    .prologue
    .line 1368
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    .line 1369
    const/16 v0, 0xb

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 1370
    const-wide/16 v0, 0x12c

    cmp-long v0, p1, v0

    if-gez v0, :cond_15

    .line 1373
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 1386
    :cond_15
    :goto_15
    return-void

    .line 1382
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->playNext()V

    goto :goto_15
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1458
    const/16 v1, 0x19

    if-ne v1, p1, :cond_a

    .line 1459
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->changeVolume(I)V

    .line 1509
    :cond_9
    :goto_9
    return v0

    .line 1461
    :cond_a
    const/16 v1, 0x18

    if-ne v1, p1, :cond_12

    .line 1462
    invoke-direct {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->changeVolume(I)V

    goto :goto_9

    .line 1468
    :cond_12
    packed-switch p1, :pswitch_data_78

    .line 1509
    :cond_15
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9

    .line 1470
    :pswitch_1a
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->useDpadMusicControl()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1473
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1474
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    .line 1476
    :cond_2d
    iget-boolean v1, p0, Lcom/sec/android/app/music/AudioPreview;->mDpadRewKeyDown:Z

    if-nez v1, :cond_34

    .line 1477
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->onRewDown()V

    .line 1479
    :cond_34
    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDpadRewKeyDown:Z

    goto :goto_9

    .line 1484
    :pswitch_37
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->useDpadMusicControl()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1487
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_52

    .line 1488
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    .line 1491
    :cond_52
    iget-boolean v1, p0, Lcom/sec/android/app/music/AudioPreview;->mDpadFFKeyDown:Z

    if-nez v1, :cond_59

    .line 1492
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->onFFDown()V

    .line 1494
    :cond_59
    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDpadFFKeyDown:Z

    goto :goto_9

    .line 1500
    :pswitch_5c
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->useDpadMusicControl()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1503
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1504
    :cond_72
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_9

    .line 1468
    :pswitch_data_78
    .packed-switch 0x13
        :pswitch_5c
        :pswitch_5c
        :pswitch_1a
        :pswitch_37
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 1537
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 1538
    .local v0, pressdTime:J
    packed-switch p1, :pswitch_data_6a

    .line 1576
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_13
    :goto_13
    return v2

    .line 1540
    :pswitch_14
    iput-boolean v7, p0, Lcom/sec/android/app/music/AudioPreview;->mDpadRewKeyDown:Z

    .line 1541
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->useDpadMusicControl()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1544
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v3, :cond_13

    .line 1545
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/AudioPreview;->onRewUp(J)V

    .line 1546
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_13

    .line 1551
    :pswitch_29
    iput-boolean v7, p0, Lcom/sec/android/app/music/AudioPreview;->mDpadFFKeyDown:Z

    .line 1552
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->useDpadMusicControl()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1555
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v3, :cond_13

    .line 1556
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_40

    .line 1557
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/AudioPreview;->onFFUp(J)V

    .line 1559
    :cond_40
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_13

    .line 1565
    :pswitch_46
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->useDpadMusicControl()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1568
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_64

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1569
    :cond_64
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_13

    .line 1538
    :pswitch_data_6a
    .packed-switch 0x13
        :pswitch_46
        :pswitch_46
        :pswitch_14
        :pswitch_29
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x10

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 855
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onNewIntent() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 858
    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_6b

    .line 860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPause:Z

    .line 862
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->processIntent(Landroid/content/Intent;)V

    .line 863
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->setPreviewUriAndFilePath()V

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_5e

    .line 866
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->stop()V

    .line 868
    const v0, 0x10010

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 870
    :cond_34
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->reset()V

    .line 871
    iput v3, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 872
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->release()V

    .line 874
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 875
    new-instance v0, Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-direct {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    .line 876
    iput v3, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 877
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    .line 879
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bIsDrmFile:Z

    if-eqz v0, :cond_59

    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/music/AudioPreview;->checkDrmRight(IZ)I

    move-result v0

    if-nez v0, :cond_5e

    .line 881
    :cond_59
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->doPrepare(Z)V

    .line 885
    :cond_5e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_6a

    .line 887
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 892
    :cond_6a
    :goto_6a
    return-void

    .line 890
    :cond_6b
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onNewIntent() intent==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1031
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 1032
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected() is called,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    packed-switch v1, :pswitch_data_ea

    .line 1109
    :cond_20
    :goto_20
    const/4 v0, 0x1

    return v0

    .line 1036
    :pswitch_22
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->showDialog(I)V

    goto :goto_20

    .line 1039
    :pswitch_26
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected(): MENU_SHARE_TRACK_VIA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->intentStreamMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1044
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1045
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview;->intentStreamMimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    const v3, 0x10060

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mShareList:Ljava/util/List;

    .line 1050
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 1052
    :goto_5f
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mShareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_85

    .line 1053
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mShareList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1054
    new-instance v4, Lcom/sec/android/app/music/AudioPreview$ShareAppItem;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, p0, v5, v0}, Lcom/sec/android/app/music/AudioPreview$ShareAppItem;-><init>(Lcom/sec/android/app/music/AudioPreview;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5f

    .line 1058
    :cond_85
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$ShareAppListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v3}, Lcom/sec/android/app/music/AudioPreview$ShareAppListAdapter;-><init>(Lcom/sec/android/app/music/AudioPreview;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1061
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->shareMusicMessageBox:Landroid/app/AlertDialog;

    if-eqz v1, :cond_9f

    .line 1062
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1069
    :goto_99
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_20

    .line 1064
    :cond_9f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 1065
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1066
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->shareMusicMessageBox:Landroid/app/AlertDialog;

    goto :goto_99

    .line 1072
    :pswitch_be
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1073
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1074
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/music/AudioPreview$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/AudioPreview$5;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto/16 :goto_20

    .line 1103
    :pswitch_d9
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->setBluetoothA2dpForceOn(Z)V

    .line 1104
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->useUlpMode()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1105
    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/music/AudioPreview;->setUlpBypassInternal(ZZ)V

    goto/16 :goto_20

    .line 1033
    nop

    :pswitch_data_ea
    .packed-switch 0x2
        :pswitch_d9
        :pswitch_be
        :pswitch_26
        :pswitch_22
    .end packed-switch
.end method

.method protected onPause()V
    .registers 7

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x2

    .line 3066
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onPause() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 3076
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->powermanager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 3077
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 3080
    if-eqz v1, :cond_89

    iget-boolean v1, p0, Lcom/sec/android/app/music/AudioPreview;->bLaunchedRichInfo:Z

    if-nez v1, :cond_89

    if-nez v0, :cond_89

    .line 3082
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    .line 3085
    :try_start_27
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_2c} :catch_6b

    .line 3090
    :goto_2c
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/music/AudioPreviewMediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3096
    :goto_40
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->clearPopup()V

    .line 3098
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPause:Z

    .line 3099
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 3100
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3101
    :cond_53
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3102
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3103
    :cond_60
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mLowBattery:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3105
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3106
    return-void

    .line 3086
    :catch_6b
    move-exception v0

    .line 3087
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy()...unregisterReceiver mBluetoothReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 3093
    :cond_89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->setEnableTextScroll(Z)V

    goto :goto_40
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 933
    .line 938
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-eqz v0, :cond_11

    .line 939
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->makeContentUriFromFileUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    .line 942
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->intentStreamMimeType:Ljava/lang/String;

    if-nez v0, :cond_7c

    :cond_1d
    move v0, v1

    move v2, v1

    .line 975
    :goto_1f
    iget-boolean v4, p0, Lcom/sec/android/app/music/AudioPreview;->bErrorFile:Z

    if-ne v4, v3, :cond_24

    move v2, v1

    .line 978
    :cond_24
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    if-nez v4, :cond_33

    .line 979
    new-instance v4, Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/android/app/music/framework/SecAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    .line 982
    :cond_33
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v4}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v4

    if-nez v4, :cond_43

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v4}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 983
    :cond_43
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 984
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 995
    :goto_51
    iget-boolean v4, p0, Lcom/sec/android/app/music/AudioPreview;->mIsLiveStreamMode:Z

    if-eqz v4, :cond_57

    move v0, v1

    move v2, v1

    .line 1007
    :cond_57
    if-eqz v2, :cond_11d

    .line 1008
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1014
    :goto_61
    if-eqz v0, :cond_127

    .line 1015
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1021
    :goto_6a
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentFilePth:Ljava/lang/String;

    if-eqz v0, :cond_130

    .line 1022
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1026
    :goto_77
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 945
    :cond_7c
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "content://media/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8d

    move v0, v1

    move v2, v1

    .line 947
    goto :goto_1f

    .line 948
    :cond_8d
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bIsDrmFile:Z

    if-eqz v0, :cond_a2

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMusicDrmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getOptionInfo()Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;

    move-result-object v0

    .line 950
    if-nez v0, :cond_9c

    move v0, v1

    move v2, v1

    .line 952
    goto :goto_1f

    .line 954
    :cond_9c
    iget-boolean v2, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bRingtone:Z

    .line 955
    iget-boolean v0, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bSendAs:Z

    goto/16 :goto_1f

    .line 957
    :cond_a2
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bErrorFile:Z

    if-ne v0, v3, :cond_aa

    move v0, v3

    move v2, v1

    .line 959
    goto/16 :goto_1f

    .line 961
    :cond_aa
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 962
    const-string v0, "content://media/external"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13b

    const-string v0, "content://media/internal"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13b

    const-string v0, "file://"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13b

    const-string v0, "content://drm/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13b

    move v0, v1

    move v2, v1

    .line 970
    :goto_d2
    iget-object v5, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v6, "onPrepareOptionsMenu(%s, isDrm=%s,isRingtone=%s,isSendAs=%s)"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 986
    :cond_f5
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v4}, Lcom/sec/android/app/music/framework/SecAudioManager;->isAudioPathBT()Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 987
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 988
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_51

    .line 990
    :cond_10d
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 991
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_51

    .line 1010
    :cond_11d
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_61

    .line 1017
    :cond_127
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6a

    .line 1024
    :cond_130
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_77

    :cond_13b
    move v0, v3

    move v2, v3

    goto :goto_d2
.end method

.method protected onResume()V
    .registers 10

    .prologue
    const-wide/16 v7, 0x0

    const/16 v6, 0x14

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2867
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicPlayer::onResume() is called,mCurrentState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2870
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bLaunchedRichInfo:Z

    .line 2875
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 2876
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    if-nez v0, :cond_4e

    .line 2877
    const-string v0, ""

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    .line 2881
    :goto_38
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    const v2, 0x7f09013d

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 2882
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 2883
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2884
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->finish()V

    .line 2958
    :goto_4d
    return-void

    .line 2879
    :cond_4e
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_38

    .line 2887
    :cond_54
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/music/AudioPreview;->mScanToast:Landroid/widget/Toast;

    .line 2892
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->checkLowStorageforMedia(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 2893
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->finish()V

    goto :goto_4d

    .line 2897
    :cond_61
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bPressedFF:Z

    .line 2898
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->bPressedREW:Z

    .line 2907
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mPause:Z

    .line 2911
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBatteryChecker:Lcom/sec/android/app/music/AudioPreview$BatteryChecker;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBatteryChecker:Lcom/sec/android/app/music/AudioPreview$BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/AudioPreview$BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v3, :cond_7a

    .line 2912
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBatteryChecker:Lcom/sec/android/app/music/AudioPreview$BatteryChecker;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/AudioPreview$BatteryChecker;->cancel(Z)Z

    .line 2915
    :cond_7a
    new-instance v0, Lcom/sec/android/app/music/AudioPreview$BatteryChecker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/AudioPreview$BatteryChecker;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBatteryChecker:Lcom/sec/android/app/music/AudioPreview$BatteryChecker;

    .line 2916
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBatteryChecker:Lcom/sec/android/app/music/AudioPreview$BatteryChecker;

    new-array v3, v1, [Landroid/app/Activity;

    aput-object p0, v3, v2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/music/AudioPreview$BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2918
    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    .line 2920
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->updateMediaInfo()V

    .line 2923
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->canStartMediaPlayer()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 2926
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 2927
    invoke-virtual {p0, v5, v7, v8}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 2955
    :cond_a7
    :goto_a7
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->navigation:I

    if-ne v0, v5, :cond_fe

    move v0, v1

    :goto_b4
    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDeviceHasDpad:Z

    goto :goto_4d

    .line 2928
    :cond_b7
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    const v3, 0x11080

    if-ne v0, v3, :cond_a7

    .line 2929
    const/16 v0, 0x32

    invoke-virtual {p0, v0, v7, v8}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    goto :goto_a7

    .line 2930
    :cond_c4
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    const v3, 0x10010

    if-ne v0, v3, :cond_e9

    .line 2931
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2932
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->reset()V

    .line 2934
    iput v5, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 2935
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bIsDrmFile:Z

    if-eqz v0, :cond_e3

    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/music/AudioPreview;->checkDrmRight(IZ)I

    move-result v0

    if-nez v0, :cond_a7

    .line 2937
    :cond_e3
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->doPrepare(Z)V

    goto :goto_a7

    .line 2947
    :cond_e9
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2948
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bIsDrmFile:Z

    if-eqz v0, :cond_fa

    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/music/AudioPreview;->checkDrmRight(IZ)I

    move-result v0

    if-nez v0, :cond_a7

    .line 2950
    :cond_fa
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->doPrepare(Z)V

    goto :goto_a7

    :cond_fe
    move v0, v2

    .line 2955
    goto :goto_b4
.end method

.method onRewDown()V
    .registers 4

    .prologue
    .line 1390
    const/16 v0, 0xc

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 1391
    return-void
.end method

.method onRewUp(J)V
    .registers 9
    .parameter "interval"

    .prologue
    const/16 v5, 0x33

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1395
    iput v4, p0, Lcom/sec/android/app/music/AudioPreview;->skipCount:I

    .line 1396
    const/16 v0, 0xd

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 1397
    const-wide/16 v0, 0x12c

    cmp-long v0, p1, v0

    if-gez v0, :cond_41

    .line 1398
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->canStartMediaPlayer()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getCurrentPosition()I

    move-result v0

    const/16 v1, 0xbb8

    if-le v0, v1, :cond_42

    .line 1400
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1401
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/AudioPreview;->muteForPopupNoise(Z)V

    .line 1402
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onRewUp SET_VOLUME_BACK_TO_ONE Must be Called after this!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->seekTo(I)V

    .line 1405
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->updatePlayStatus()V

    .line 1406
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1436
    :cond_41
    :goto_41
    return-void

    .line 1419
    :cond_42
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    if-eq v0, v3, :cond_41

    .line 1428
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/AudioPreview;->muteForPopupNoise(Z)V

    .line 1430
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->playPrev()V

    goto :goto_41
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 2859
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2861
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->registerBluetoothReceiver()V

    .line 2863
    return-void
.end method

.method protected onStop()V
    .registers 5

    .prologue
    .line 3110
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bLaunchedRichInfo:Z

    if-nez v0, :cond_27

    .line 3118
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->pausePlay()V

    .line 3121
    :try_start_e
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_13} :catch_2b

    .line 3126
    :goto_13
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/music/AudioPreviewMediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3130
    :cond_27
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 3131
    return-void

    .line 3122
    :catch_2b
    move-exception v0

    .line 3123
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy()...unregisterReceiver mBluetoothReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method pausePlay()V
    .registers 8

    .prologue
    const v6, 0x11040

    const/16 v5, 0xe

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 5709
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pausePlay() is called,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5712
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->unregisterMotionListener()V

    .line 5714
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 5715
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5716
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget v1, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setVolume(FF)V

    .line 5718
    :cond_3a
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 5719
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 5720
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget v1, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setVolume(FF)V

    .line 5722
    :cond_50
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    const v1, 0x11020

    if-eq v0, v1, :cond_5b

    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    if-ne v0, v6, :cond_62

    .line 5723
    :cond_5b
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->pause()V

    .line 5724
    iput v6, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5726
    :cond_62
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/music/AudioPreview;->changePlayButton(ZZ)V

    .line 5728
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5730
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 5731
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5733
    :cond_7c
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5734
    iput-boolean v3, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    .line 5735
    return-void
.end method

.method protected playNext()V
    .registers 3

    .prologue
    .line 5104
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "playNext() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5105
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->getNextFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->playWithFilePath(Ljava/lang/String;)V

    .line 5106
    return-void
.end method

.method protected playPrev()V
    .registers 3

    .prologue
    .line 5145
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "playPrev() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5146
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->getPrevFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->playWithFilePath(Ljava/lang/String;)V

    .line 5147
    return-void
.end method

.method queueUpdate(IJ)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 2527
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queueUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    if-ne p1, v3, :cond_30

    .line 2529
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2532
    :cond_30
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPause:Z

    if-nez v0, :cond_39

    .line 2533
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2535
    :cond_39
    return-void
.end method

.method protected refreshPlayStatus(I)V
    .registers 7
    .parameter "millisecond"

    .prologue
    .line 2471
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/AudioPreview;->refreshPlayedTime(I)V

    .line 2473
    int-to-double v1, p1

    const-wide/high16 v3, 0x4059

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 2476
    .local v0, progressStatus:I
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2477
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->invalidate()V

    .line 2478
    return-void
.end method

.method protected refreshPlayedTime(I)V
    .registers 4
    .parameter

    .prologue
    .line 2483
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->isActivityExit:Z

    if-eqz v0, :cond_5

    .line 2506
    :cond_4
    :goto_4
    return-void

    .line 2487
    :cond_5
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    if-lez v0, :cond_4

    .line 2491
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->showTimeElapsed:Z

    if-eqz v0, :cond_30

    .line 2497
    :goto_d
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2498
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPlayedTimeView:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/sec/android/app/music/AudioPreview;->showTimeElapsed:Z

    invoke-static {p1, v1}, Lcom/sec/android/app/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2505
    :goto_2a
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPlayedTimeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_4

    .line 2494
    :cond_30
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    sub-int p1, v0, p1

    goto :goto_d

    .line 2501
    :cond_35
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPlayedTimeView:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    if-le p1, v1, :cond_3d

    iget p1, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    :cond_3d
    iget-boolean v1, p0, Lcom/sec/android/app/music/AudioPreview;->showTimeElapsed:Z

    invoke-static {p1, v1}, Lcom/sec/android/app/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a
.end method

.method registerMotionListener()V
    .registers 4

    .prologue
    .line 712
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "registerMotionListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_15

    .line 715
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/sec/android/app/music/AudioPreview;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 717
    :cond_15
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 719
    return-void
.end method

.method protected setEnableTextScroll(Z)V
    .registers 5
    .parameter "bEnable"

    .prologue
    .line 6353
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableTextScroll : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6355
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 6356
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6358
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvArtist:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    .line 6359
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6361
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvAlbum:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    .line 6362
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvAlbum:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6363
    :cond_33
    return-void
.end method

.method protected setLiveStreamMode(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2037
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLiveStreamMode(isLiveStream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    if-nez p1, :cond_39

    const/4 v0, 0x1

    .line 2040
    :goto_22
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 2041
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2042
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2044
    if-eqz v0, :cond_3b

    .line 2045
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDurationView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2049
    :goto_38
    return-void

    :cond_39
    move v0, v1

    .line 2038
    goto :goto_22

    .line 2047
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDurationView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_38
.end method

.method public setPosition(I)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 4886
    const/4 v1, 0x0

    .line 4887
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v2, :cond_32

    .line 4888
    iget-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mIsSeekable:Z

    if-ne v2, v0, :cond_1a

    iget-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mIsLiveStreamMode:Z

    if-nez v2, :cond_1a

    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->canStartMediaPlayer()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 4889
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->seekTo(I)V

    .line 4895
    :goto_19
    return v0

    .line 4892
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It cannot seekTo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    move v0, v1

    goto :goto_19
.end method

.method public setPreviewUriAndFilePath()V
    .registers 9

    .prologue
    const v7, 0x7f020080

    const v6, 0x7f020073

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4911
    .line 4913
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "setPreviewUriAndFilePath()is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4914
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_path:Ljava/lang/String;

    if-eqz v0, :cond_7b

    .line 4915
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_path:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/music/common/util/ListType;->getBucketIDfromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_bucketID:Ljava/lang/String;

    .line 4916
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_sortOrder:I

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_bucketID:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_path:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v4}, Lcom/sec/android/app/music/AudioPreview;->getItemPositionMxList(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    .line 4922
    :goto_28
    const/4 v0, 0x0

    .line 4923
    iget v1, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    if-ltz v1, :cond_82

    .line 4924
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_sortOrder:I

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_bucketID:Ljava/lang/String;

    iget v4, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    invoke-virtual {p0, v0, v1, v4}, Lcom/sec/android/app/music/AudioPreview;->getItemFilePathMxList(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4925
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    .line 4927
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4928
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    move v1, v2

    .line 4930
    :goto_45
    iget v4, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    if-ne v4, v5, :cond_53

    .line 4931
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4932
    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4934
    :cond_53
    iget v4, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    if-eq v4, v5, :cond_7a

    if-eqz v1, :cond_5b

    if-nez v0, :cond_7a

    .line 4941
    :cond_5b
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "setPreviewUriAndFilePath is broken DB data"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4946
    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    .line 4947
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonRew:Landroid/widget/ImageView;

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4948
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mButtonFF:Landroid/widget/ImageView;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4950
    :cond_7a
    return-void

    .line 4918
    :cond_7b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_bucketID:Ljava/lang/String;

    .line 4919
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->myFiles_iPos:I

    goto :goto_28

    :cond_82
    move v1, v3

    goto :goto_45
.end method

.method showAdditionalPanel(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsShownAdditionalBar:Z

    .line 1124
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1126
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewProgressBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 1128
    iput-boolean p1, p0, Lcom/sec/android/app/music/AudioPreview;->additionalPanelFromAlbumArt:Z

    .line 1129
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mViewAlbumImage:Landroid/widget/ImageView;

    const v1, 0x7f0c0085

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    .line 1130
    return-void
.end method

.method public showLowBatteryMsg(Landroid/app/Activity;)V
    .registers 6
    .parameter

    .prologue
    .line 4135
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "showLowBatteryMsg() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->stopPlay()V

    .line 4139
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mPause:Z

    if-eqz v0, :cond_f

    .line 4182
    :goto_e
    return-void

    .line 4142
    :cond_f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4149
    new-instance v1, Lcom/sec/android/app/music/AudioPreview$24;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/AudioPreview$24;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 4161
    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900ed

    new-instance v3, Lcom/sec/android/app/music/AudioPreview$25;

    invoke-direct {v3, p0}, Lcom/sec/android/app/music/AudioPreview$25;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4171
    new-instance v1, Lcom/sec/android/app/music/AudioPreview$26;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/AudioPreview$26;-><init>(Lcom/sec/android/app/music/AudioPreview;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 4180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->batteryMessageBox:Landroid/app/AlertDialog;

    .line 4181
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_e
.end method

.method showVolumePanel()V
    .registers 4

    .prologue
    const/16 v2, 0x1f

    const/4 v1, 0x0

    .line 3468
    invoke-direct {p0, v1}, Lcom/sec/android/app/music/AudioPreview;->changeVolumeLimitPannel(Z)V

    .line 3471
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->updateCurrentVolumeBar()V

    .line 3473
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 3474
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->bringToFront()V

    .line 3476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->isShownVolumeBar:Z

    .line 3477
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/music/AudioPreview;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 3479
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3480
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 3481
    return-void
.end method

.method startPlay()V
    .registers 7

    .prologue
    const v2, 0x7f090125

    const/16 v3, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5596
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "startPlay() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5597
    iput-boolean v4, p0, Lcom/sec/android/app/music/AudioPreview;->bDrmPopupShown:Z

    .line 5600
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->registerMotionListener()V

    .line 5603
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5604
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "startPlay MediaPlayer is null or Playing already"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5706
    :goto_26
    return-void

    .line 5608
    :cond_27
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5609
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_58

    .line 5610
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "startPlay Can\'t play during call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5611
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    if-eqz v0, :cond_4b

    .line 5612
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    .line 5618
    :goto_45
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_26

    .line 5614
    :cond_4b
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mSoundPlayerToast:Landroid/widget/Toast;

    goto :goto_45

    .line 5624
    :cond_58
    iput-boolean v5, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    .line 5625
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->canStartMediaPlayer()Z

    move-result v0

    if-nez v0, :cond_66

    .line 5626
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->bPlay:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->doPrepare(Z)V

    goto :goto_26

    .line 5631
    :cond_66
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/app/music/framework/SecAudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_8a

    .line 5635
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 5636
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 5638
    :cond_82
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_26

    .line 5643
    :cond_8a
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    .line 5644
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->intentStreamMimeType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->isMidiMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 5645
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    if-eqz v0, :cond_a8

    .line 5646
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    const-string v1, "situation=6;device=0"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    .line 5652
    :cond_a8
    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/AudioPreview;->muteForPopupNoise(Z)V

    .line 5656
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mUnitVolume:F

    .line 5668
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mStartFromFadeIn:Z

    if-nez v0, :cond_bf

    .line 5669
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget v1, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setVolume(FF)V

    .line 5670
    :cond_bf
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->start()V

    .line 5673
    const v0, 0x11020

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5674
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/music/AudioPreviewMediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 5683
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_ea

    .line 5684
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5687
    :cond_ea
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    .line 5688
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mDurationView:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    invoke-static {v1, v5}, Lcom/sec/android/app/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5690
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 5692
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsShownAdditionalBar:Z

    if-nez v0, :cond_121

    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCausedByFling:Z

    if-nez v0, :cond_121

    .line 5693
    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/AudioPreview;->showAdditionalPanel(Z)V

    .line 5694
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5700
    :cond_115
    :goto_115
    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/music/AudioPreview;->changePlayButton(ZZ)V

    .line 5702
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mLibraryMediaPlayerCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto/16 :goto_26

    .line 5695
    :cond_121
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCausedByFling:Z

    if-eqz v0, :cond_115

    .line 5696
    iput-boolean v4, p0, Lcom/sec/android/app/music/AudioPreview;->mCausedByFling:Z

    goto :goto_115
.end method

.method stopPlay()V
    .registers 8

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5738
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "stopPlay() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5741
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->unregisterMotionListener()V

    .line 5743
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->mIsPrepareRequested:Z

    if-ne v0, v2, :cond_1e

    .line 5744
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "mIsPrepareRequested == true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5745
    iput-boolean v2, p0, Lcom/sec/android/app/music/AudioPreview;->mIsStopRequested:Z

    .line 5776
    :cond_1d
    :goto_1d
    return-void

    .line 5749
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_38

    .line 5750
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 5751
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget v1, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setVolume(FF)V

    .line 5753
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_52

    .line 5754
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5755
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    iget v1, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->mBaseVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setVolume(FF)V

    .line 5757
    :cond_52
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_67

    .line 5758
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->stop()V

    .line 5759
    const v0, 0x10010

    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    .line 5763
    :cond_67
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/music/AudioPreview;->changePlayButton(ZZ)V

    .line 5764
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/AudioPreview;->refreshPlayStatus(I)V

    .line 5767
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 5768
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5770
    :cond_7e
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_88

    .line 5771
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5772
    :cond_88
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 5773
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5774
    :cond_95
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 5775
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1d
.end method

.method unregisterMotionListener()V
    .registers 3

    .prologue
    .line 723
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "unregisterMotionListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_12

    .line 726
    sget-object v0, Lcom/sec/android/app/music/AudioPreview;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 728
    :cond_12
    return-void
.end method

.method updateCurrentVolumeBar()V
    .registers 4

    .prologue
    .line 3453
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->getStreamVolume(I)I

    move-result v0

    .line 3454
    .local v0, changedVolume:I
    iput v0, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeLevel:I

    .line 3456
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 3457
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->invalidate()V

    .line 3458
    return-void
.end method

.method protected updateMediaInfo()V
    .registers 8

    .prologue
    const v4, 0x7f090134

    const/4 v6, 0x7

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 2053
    iget-boolean v0, p0, Lcom/sec/android/app/music/AudioPreview;->isActivityExit:Z

    if-eqz v0, :cond_12

    .line 2054
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v1, "updateMediaInfo() : isActivityExit==true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :goto_11
    return-void

    .line 2058
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->doSetSrsRepeatShuffleImage()V

    .line 2060
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    .line 2061
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 2066
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->attachTitleTextViews()V

    .line 2067
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->getAlbumInfo(Landroid/net/Uri;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    .line 2068
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    if-eqz v0, :cond_bc

    .line 2069
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mTvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_ad

    const-string v0, "<%s>"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3f
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2071
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2072
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mTvArtist:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    if-nez v0, :cond_b2

    const-string v0, ""

    :goto_51
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2073
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvArtist:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2074
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mTvAlbum:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    if-nez v0, :cond_b7

    const-string v0, ""

    :goto_63
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2075
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvAlbum:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2080
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAlbumArtHandler:Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->removeMessages(I)V

    .line 2081
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAlbumArtHandler:Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget v2, v2, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbumID:I

    invoke-virtual {v0, v6, v2, v1}, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2096
    :goto_7d
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->canStartMediaPlayer()Z

    move-result v0

    if-nez v0, :cond_8a

    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    const v2, 0x10010

    if-ne v0, v2, :cond_fc

    .line 2097
    :cond_8a
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 2098
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getDuration()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    .line 2101
    :goto_96
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview;->mDurationView:Landroid/widget/TextView;

    iget v3, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    invoke-static {v3, v5}, Lcom/sec/android/app/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2103
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->refreshPlayStatus(I)V

    .line 2104
    invoke-direct {p0}, Lcom/sec/android/app/music/AudioPreview;->isPlaying()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/AudioPreview;->changePlayButton(ZZ)V

    goto/16 :goto_11

    .line 2069
    :cond_ad
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    goto :goto_3f

    .line 2072
    :cond_b2
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    goto :goto_51

    .line 2074
    :cond_b7
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    goto :goto_63

    .line 2084
    :cond_bc
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvTitle:Landroid/widget/TextView;

    const-string v2, "<%s>"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2085
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2086
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvArtist:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2087
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvArtist:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2088
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvAlbum:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2089
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mTvAlbum:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2090
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAlbumArtHandler:Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->removeMessages(I)V

    .line 2091
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mAlbumArtHandler:Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;

    const/4 v2, -0x1

    invoke-virtual {v0, v6, v2, v1}, Lcom/sec/android/app/music/AudioPreview$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7d

    :cond_fc
    move v0, v1

    goto :goto_96
.end method

.method protected updatePlayStatus()V
    .registers 3

    .prologue
    .line 2450
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    if-eqz v0, :cond_1a

    .line 2451
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->canStartMediaPlayer()Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mCurrentState:I

    const v1, 0x10010

    if-ne v0, v1, :cond_1b

    .line 2452
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaPlayer:Lcom/sec/android/app/music/framework/SecMediaPlayer;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecMediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->refreshPlayStatus(I)V

    .line 2457
    :cond_1a
    :goto_1a
    return-void

    .line 2454
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/AudioPreview;->refreshPlayStatus(I)V

    goto :goto_1a
.end method

.method protected updateStreamBufferStatus()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2509
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v2, "updateStreamBufferStatus() is called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    iget-boolean v1, p0, Lcom/sec/android/app/music/AudioPreview;->mIsLiveStreamMode:Z

    if-eq v1, v3, :cond_10

    iget-boolean v1, p0, Lcom/sec/android/app/music/AudioPreview;->isActivityExit:Z

    if-eqz v1, :cond_11

    .line 2523
    :cond_10
    :goto_10
    return-void

    .line 2515
    :cond_11
    iget v0, p0, Lcom/sec/android/app/music/AudioPreview;->mBufferPercentage:I

    .line 2516
    .local v0, secondProgress:I
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 2518
    const/16 v1, 0x64

    if-ne v0, v1, :cond_10

    .line 2519
    invoke-virtual {p0}, Lcom/sec/android/app/music/AudioPreview;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    .line 2520
    iget-object v1, p0, Lcom/sec/android/app/music/AudioPreview;->mDurationView:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/music/AudioPreview;->mMediaDuration:I

    invoke-static {v2, v3}, Lcom/sec/android/app/music/common/data/MediaMetadata;->getTimeString(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method
