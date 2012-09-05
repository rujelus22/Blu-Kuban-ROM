.class public Lcom/sec/android/app/music/MusicPlayer;
.super Landroid/app/Activity;
.source "MusicPlayer.java"

# interfaces
.implements Lcom/sec/android/app/music/common/util/OnLowBatteryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/MusicPlayer$Worker;,
        Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;
    }
.end annotation


# static fields
.field public static final EAR_PROTECT_LIMIT_INDEX:I

.field protected static mBeforAblumID:I


# instance fields
.field protected ABRepeat_Info:Landroid/view/ViewGroup;

.field protected ABRepeat_Point_A:Landroid/widget/TextView;

.field protected ABRepeat_Point_B:Landroid/widget/TextView;

.field protected ABRepeat_Point_Image_A:Landroid/widget/ImageView;

.field protected ABRepeat_Point_Image_B:Landroid/widget/ImageView;

.field protected ABRepeat_Point_label_A:Landroid/widget/TextView;

.field protected ABRepeat_Point_label_B:Landroid/widget/TextView;

.field protected ABRepeat_Release_btn:Landroid/widget/Button;

.field protected final CLASSNAME:Ljava/lang/String;

.field protected EQBottomImage:[I

.field protected EQBottomImageView:[I

.field protected EQTopImage:[I

.field protected EQTopImageView:[I

.field IDX_ALARM_TONE:I

.field IDX_CALL_RINGTONE:I

.field IDX_INDIVIDUAL_RINGTONE:I

.field protected final PLAYLIST_TYPE:[I

.field protected additionalPanelFromAlbumArt:Z

.field protected bCalledByList:Z

.field private bPressedFF:Z

.field private bPressedREW:Z

.field protected drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

.field googleSearchMessageBox:Landroid/app/AlertDialog;

.field protected intentIsFromList:Z

.field protected intentStreamMedia:Ljava/lang/String;

.field protected isActivityExit:Z

.field protected isFirstTime:Z

.field protected isShownAdditionalBar:Z

.field protected mAPIWarningDone:Z

.field private final mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

.field protected mAlbumArtHandler:Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

.field protected mAlbumArtWorker:Lcom/sec/android/app/music/MusicPlayer$Worker;

.field private mAlbumId:I

.field private mAlbumIdForAlbumArt:Ljava/lang/String;

.field protected mAnimationScreen:Landroid/widget/FrameLayout;

.field protected mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

.field private mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

.field private mBitmap:Landroid/graphics/Bitmap;

.field protected mButtonFF:Landroid/widget/ImageView;

.field protected mButtonList:Landroid/view/View;

.field protected mButtonPlay:Landroid/widget/ImageView;

.field protected mButtonRepeat:Landroid/widget/ImageView;

.field protected mButtonRew:Landroid/widget/ImageView;

.field protected mButtonShuffle:Landroid/widget/ImageView;

.field protected mButtonSrs:Landroid/widget/ImageView;

.field protected mButtonVolume:Landroid/widget/ImageView;

.field private mCausedByFling:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field protected mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

.field protected mCoverflowView:Landroid/widget/ImageView;

.field protected mCurrentAudioId:J

.field private mCurrentSongNumberView:Landroid/widget/TextView;

.field protected mCursor:Landroid/database/Cursor;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field mDelayTimes:I

.field protected mDetailView:Landroid/widget/LinearLayout;

.field protected mDetailViewImage:Landroid/widget/ImageView;

.field protected mDetailViewImageReflect:Landroid/widget/ImageView;

.field private mDeviceHasDpad:Z

.field protected mDurationView:Landroid/widget/TextView;

.field private final mFlingHandler:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private final mHideBubble:Ljava/lang/Runnable;

.field protected mIndexOfVisualization:I

.field private mIsFlingNow:Z

.field protected mIsLiveStreamMode:Z

.field private mIsMusidPrepared:Z

.field private mIsPlayByIntent:Z

.field private mIsReadyForFling:Z

.field private mIsShownVolumeBar:Z

.field protected mIsVolumeBubbleRunable:Z

.field private mIsVolumeLimit:Z

.field mIsVolumeTouching:Z

.field protected mIterator_Id:I

.field private mKeyWord:Ljava/lang/String;

.field protected mLaunchMode:I

.field private mList:[J

.field private mListTitle:Ljava/lang/String;

.field private mListType:I

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mLyricText:Landroid/widget/TextView;

.field private mLyricView:Landroid/view/View;

.field protected mMediaDuration:J

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field protected mMenu:Landroid/view/Menu;

.field protected mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

.field private mMusicInfoLayout:Landroid/view/ViewGroup;

.field protected mMusicPlayerInitDone:Z

.field protected mNewAudioId:J

.field protected mOptionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mPause:Z

.field private mPausedBySeekBar:Z

.field private mPausedbyFF:Z

.field protected mPlayedTimeView:Landroid/widget/TextView;

.field private mPosition:I

.field protected mProgressBar:Landroid/widget/SeekBar;

.field private final mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

.field protected final mProgressBarRecceiver:Landroid/content/BroadcastReceiver;

.field protected mSavedAudioId:J

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSelectedId:J

.field protected mSubCursor:Landroid/database/Cursor;

.field protected mTitleInfoButton:Landroid/view/View;

.field private mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

.field protected mTvAlbum:Landroid/widget/TextView;

.field protected mTvArtist:Landroid/widget/TextView;

.field protected mTvTitle:Landroid/widget/TextView;

.field protected mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

.field protected mViewAlbumImage:Landroid/widget/ImageView;

.field protected mViewAlbumImageTemp:Landroid/widget/ImageView;

.field protected mViewProgressBar:Landroid/view/ViewGroup;

.field private mVisualizationEqView:Landroid/view/View;

.field protected mVisualizationType:Z

.field private mVisualizationView:Landroid/view/ViewGroup;

.field protected mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

.field private final mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeLevel:I

.field protected mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

.field private final mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

.field protected mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

.field protected menuDetailsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field protected menuSettingsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field musicPlayerToast:Landroid/widget/Toast;

.field private priorBitmap:Landroid/graphics/Bitmap;

.field shareMusicMessageBox:Landroid/app/AlertDialog;

.field protected showTimeElapsed:Z

.field protected skipCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 165
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/music/MusicPlayer;->mBeforAblumID:I

    .line 3217
    invoke-static {}, Lcom/sec/android/app/music/framework/SecAudioManager;->getEarProtectLimitIndex()I

    move-result v0

    sput v0, Lcom/sec/android/app/music/MusicPlayer;->EAR_PROTECT_LIMIT_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    const-class v0, Lcom/sec/android/app/music/MusicPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    .line 106
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    .line 108
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    .line 144
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsVolumeTouching:Z

    .line 149
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->ABRepeat_Info:Landroid/view/ViewGroup;

    .line 151
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->ABRepeat_Point_label_A:Landroid/widget/TextView;

    .line 153
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->ABRepeat_Point_label_B:Landroid/widget/TextView;

    .line 155
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->ABRepeat_Point_A:Landroid/widget/TextView;

    .line 157
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->ABRepeat_Point_B:Landroid/widget/TextView;

    .line 159
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->ABRepeat_Release_btn:Landroid/widget/Button;

    .line 161
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->ABRepeat_Point_Image_A:Landroid/widget/ImageView;

    .line 163
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->ABRepeat_Point_Image_B:Landroid/widget/ImageView;

    .line 173
    iput-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayer;->isFirstTime:Z

    .line 175
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    .line 177
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsShownVolumeBar:Z

    .line 190
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->intentIsFromList:Z

    .line 194
    iput-wide v4, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    .line 196
    iput-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayer;->showTimeElapsed:Z

    .line 198
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    .line 202
    iput-wide v4, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentAudioId:J

    .line 204
    iput-wide v4, p0, Lcom/sec/android/app/music/MusicPlayer;->mSavedAudioId:J

    .line 206
    iput-wide v4, p0, Lcom/sec/android/app/music/MusicPlayer;->mNewAudioId:J

    .line 208
    iput v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mIterator_Id:I

    .line 210
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsLiveStreamMode:Z

    .line 282
    iput v2, p0, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    .line 288
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->bPressedFF:Z

    .line 290
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->bPressedREW:Z

    .line 297
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->isActivityExit:Z

    .line 325
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_13a

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->PLAYLIST_TYPE:[I

    .line 330
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    .line 332
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    .line 334
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 336
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mTitleInfoButton:Landroid/view/View;

    .line 338
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    .line 340
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    .line 342
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    .line 352
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtWorker:Lcom/sec/android/app/music/MusicPlayer$Worker;

    .line 356
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mOptionItems:Ljava/util/ArrayList;

    .line 366
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mMusicPlayerInitDone:Z

    .line 368
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mPause:Z

    .line 374
    iput v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mLaunchMode:I

    .line 376
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->bCalledByList:Z

    .line 381
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mMenu:Landroid/view/Menu;

    .line 383
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mCursor:Landroid/database/Cursor;

    .line 385
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mSubCursor:Landroid/database/Cursor;

    .line 387
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    .line 389
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mCoverflowView:Landroid/widget/ImageView;

    .line 391
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mAnimationScreen:Landroid/widget/FrameLayout;

    .line 393
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mDetailView:Landroid/widget/LinearLayout;

    .line 395
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mDetailViewImage:Landroid/widget/ImageView;

    .line 397
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mDetailViewImageReflect:Landroid/widget/ImageView;

    .line 399
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mAPIWarningDone:Z

    .line 401
    iput v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mIndexOfVisualization:I

    .line 403
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->additionalPanelFromAlbumArt:Z

    .line 423
    iput-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsReadyForFling:Z

    .line 425
    iput-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsMusidPrepared:Z

    .line 427
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsFlingNow:Z

    .line 429
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCausedByFling:Z

    .line 440
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mPausedbyFF:Z

    .line 443
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mPausedBySeekBar:Z

    .line 445
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_148

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->EQTopImage:[I

    .line 457
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_16e

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->EQBottomImage:[I

    .line 469
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_194

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->EQTopImageView:[I

    .line 478
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1be

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->EQBottomImageView:[I

    .line 488
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$1;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mConnection:Landroid/content/ServiceConnection;

    .line 603
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$2;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->menuSettingsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 616
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$3;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->menuDetailsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1428
    iput v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mPosition:I

    .line 1438
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsPlayByIntent:Z

    .line 1502
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$14;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$14;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1524
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$15;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$15;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 2006
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$16;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$16;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    .line 2455
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$17;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$17;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 2494
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$18;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$18;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mProgressBarRecceiver:Landroid/content/BroadcastReceiver;

    .line 2987
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$20;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$20;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 3048
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$21;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$21;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 3081
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$22;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$22;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHideBubble:Ljava/lang/Runnable;

    .line 3205
    iput v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeLevel:I

    .line 3207
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsVolumeLimit:Z

    .line 3254
    iput v2, p0, Lcom/sec/android/app/music/MusicPlayer;->IDX_CALL_RINGTONE:I

    .line 3256
    iput v3, p0, Lcom/sec/android/app/music/MusicPlayer;->IDX_INDIVIDUAL_RINGTONE:I

    .line 3258
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayer;->IDX_ALARM_TONE:I

    .line 3284
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$23;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$23;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3415
    iput v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumId:I

    .line 3417
    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->priorBitmap:Landroid/graphics/Bitmap;

    .line 3556
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$24;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$24;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    .line 3612
    iput v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mDelayTimes:I

    .line 3918
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$26;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$26;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3999
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$27;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$27;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 325
    nop

    :array_13a
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 445
    :array_148
    .array-data 0x4
        0x90t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
    .end array-data

    .line 457
    :array_16e
    .array-data 0x4
        0xa1t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0xabt 0x0t 0x2t 0x7ft
        0xact 0x0t 0x2t 0x7ft
        0xadt 0x0t 0x2t 0x7ft
        0xaet 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x2t 0x7ft
        0xb0t 0x0t 0x2t 0x7ft
        0xb1t 0x0t 0x2t 0x7ft
    .end array-data

    .line 469
    :array_194
    .array-data 0x4
        0x8dt 0x0t 0xct 0x7ft
        0x8et 0x0t 0xct 0x7ft
        0x8ft 0x0t 0xct 0x7ft
        0x90t 0x0t 0xct 0x7ft
        0x91t 0x0t 0xct 0x7ft
        0x92t 0x0t 0xct 0x7ft
        0x93t 0x0t 0xct 0x7ft
        0x94t 0x0t 0xct 0x7ft
        0x95t 0x0t 0xct 0x7ft
        0x96t 0x0t 0xct 0x7ft
        0x97t 0x0t 0xct 0x7ft
        0x98t 0x0t 0xct 0x7ft
        0x99t 0x0t 0xct 0x7ft
        0x9at 0x0t 0xct 0x7ft
        0x9bt 0x0t 0xct 0x7ft
        0x9ct 0x0t 0xct 0x7ft
        0x9dt 0x0t 0xct 0x7ft
        0x9et 0x0t 0xct 0x7ft
        0x9ft 0x0t 0xct 0x7ft
    .end array-data

    .line 478
    :array_1be
    .array-data 0x4
        0xa1t 0x0t 0xct 0x7ft
        0xa2t 0x0t 0xct 0x7ft
        0xa3t 0x0t 0xct 0x7ft
        0xa4t 0x0t 0xct 0x7ft
        0xa5t 0x0t 0xct 0x7ft
        0xa6t 0x0t 0xct 0x7ft
        0xa7t 0x0t 0xct 0x7ft
        0xa8t 0x0t 0xct 0x7ft
        0xa9t 0x0t 0xct 0x7ft
        0xaat 0x0t 0xct 0x7ft
        0xabt 0x0t 0xct 0x7ft
        0xact 0x0t 0xct 0x7ft
        0xadt 0x0t 0xct 0x7ft
        0xaet 0x0t 0xct 0x7ft
        0xaft 0x0t 0xct 0x7ft
        0xb0t 0x0t 0xct 0x7ft
        0xb1t 0x0t 0xct 0x7ft
        0xb2t 0x0t 0xct 0x7ft
        0xb3t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->finishMusicPlayer()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->startBluetoothDevicePicker()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationEqView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/music/MusicPlayer;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationEqView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->playSearch()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/music/MusicPlayer;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/music/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/music/MusicPlayer;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mLyricText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/music/MusicPlayer;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mLyricView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->doUpdateRepeatIcon()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->doUpdateShuffleIcon()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/music/MusicPlayer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->setVolume(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/app/music/MusicPlayer;ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/MusicPlayer;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/MusicPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsFlingNow:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/music/MusicPlayer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->setRingtone(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/music/MusicPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsFlingNow:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/music/MusicPlayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumId:I

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/music/MusicPlayer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumId:I

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/music/MusicPlayer;I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->getArtwork(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/music/MusicPlayer;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/music/MusicPlayer;I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->getDefaultArtwork(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/music/MusicPlayer;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->priorBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/music/MusicPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer;->priorBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/music/MusicPlayer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->showFlingAnimation(I)V

    return-void
.end method

.method static synthetic access$2702(Lcom/sec/android/app/music/MusicPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsReadyForFling:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/sec/android/app/music/MusicPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsMusidPrepared:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/MusicPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->bPressedFF:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/music/MusicPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mPausedBySeekBar:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/sec/android/app/music/MusicPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicPlayer;->mPausedBySeekBar:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/app/music/MusicPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicPlayer;->bPressedFF:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/music/MusicPlayer;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/music/MusicPlayer;Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/music/MusicPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->bPressedREW:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/music/MusicPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicPlayer;->bPressedREW:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/music/MusicPlayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->setEqEffectToNormal()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/music/MusicPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsShownVolumeBar:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/music/MusicPlayer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->changeVolume(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/music/MusicPlayer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/music/MusicPlayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCausedByFling:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/music/MusicPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicPlayer;->mCausedByFling:Z

    return p1
.end method

.method private changeVolume(I)V
    .registers 5
    .parameter "volumeAdjust"

    .prologue
    .line 3104
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/music/MusicPlayer;->isEnableVolumeChange(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3105
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->adjustStreamVolume(III)V

    .line 3107
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->showVolumePanel()V

    .line 3108
    return-void
.end method

.method private doSyncPlayMusic()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 4113
    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsFlingNow:Z

    if-eqz v2, :cond_1d

    .line 4114
    iput-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsFlingNow:Z

    .line 4115
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4117
    :try_start_d
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v2}, Lcom/sec/android/app/music/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v1

    .line 4118
    .local v1, syncUri:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/music/ICorePlayerService;->playIt(Landroid/net/Uri;Z)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1d} :catch_1e

    .line 4123
    .end local v1           #syncUri:Ljava/lang/String;
    :cond_1d
    :goto_1d
    return-void

    .line 4119
    :catch_1e
    move-exception v0

    .line 4120
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1d
.end method

.method private doUpdateRepeatIcon()V
    .registers 5

    .prologue
    .line 2891
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-nez v0, :cond_5

    .line 2915
    :goto_4
    return-void

    .line 2896
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getRepeatMode()I

    move-result v0

    .line 2898
    packed-switch v0, :pswitch_data_4c

    goto :goto_4

    .line 2906
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_4

    .line 2911
    :catch_18
    move-exception v0

    .line 2912
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2913
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 29 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2900
    :pswitch_39
    :try_start_39
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 2903
    :pswitch_42
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_4a} :catch_18

    goto :goto_4

    .line 2898
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_42
        :pswitch_39
    .end packed-switch
.end method

.method private doUpdateShuffleIcon()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 2918
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-nez v0, :cond_6

    .line 2933
    :goto_5
    return-void

    .line 2923
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getShuffleMode()I

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    .line 2924
    :goto_f
    if-ne v0, v1, :cond_3d

    .line 2925
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_5

    .line 2929
    :catch_1a
    move-exception v0

    .line 2930
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2931
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 29 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3b
    move v0, v1

    .line 2923
    goto :goto_f

    .line 2927
    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_45} :catch_1a

    goto :goto_5
.end method

.method private finishMusicPlayer()V
    .registers 3

    .prologue
    .line 3410
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "finishMusicPlayer() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->isActivityExit:Z

    .line 3412
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->finish()V

    .line 3413
    return-void
.end method

.method private getAllListAndPosition(J)V
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 4082
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/music/MusicUtils;->TRACK_PROJECTION:[Ljava/lang/String;

    const-string v3, "title != \'\' AND is_sound != 1"

    const/4 v4, 0x0

    const-string v5, "title COLLATE LOCALIZED ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4086
    if-nez v2, :cond_17

    .line 4087
    iput v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mPosition:I

    .line 4110
    :goto_16
    return-void

    .line 4092
    :cond_17
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 4093
    new-array v4, v3, [J

    .line 4094
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4096
    :try_start_20
    const-string v0, "audio_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_25} :catch_3b

    move-result v0

    :goto_26
    move v1, v6

    .line 4100
    :goto_27
    if-ge v1, v3, :cond_43

    .line 4101
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 4102
    cmp-long v7, v5, p1

    if-nez v7, :cond_33

    .line 4103
    iput v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mPosition:I

    .line 4105
    :cond_33
    aput-wide v5, v4, v1

    .line 4106
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4100
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 4097
    :catch_3b
    move-exception v0

    .line 4098
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_26

    .line 4108
    :cond_43
    iput-object v4, p0, Lcom/sec/android/app/music/MusicPlayer;->mList:[J

    .line 4109
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_16
.end method

.method private getArtwork(I)Landroid/graphics/Bitmap;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3781
    .line 3782
    const-string v1, "content://media/external/audio/albumart"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3783
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3785
    if-nez v0, :cond_47

    .line 3786
    int-to-long v4, p1

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3787
    if-eqz v1, :cond_47

    .line 3788
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getArtwork: uri ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3792
    if-lez p1, :cond_155

    .line 3793
    :try_start_33
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_118
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_36} :catch_74
    .catch Ljava/lang/OutOfMemoryError; {:try_start_33 .. :try_end_36} :catch_c9

    move-result-object v2

    .line 3794
    const/4 v4, 0x0

    :try_start_38
    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_14d
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3b} :catch_152
    .catch Ljava/lang/OutOfMemoryError; {:try_start_38 .. :try_end_3b} :catch_14f

    move-result-object v0

    .line 3803
    :goto_3c
    if-eqz v2, :cond_41

    .line 3806
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4c

    .line 3814
    :cond_41
    :goto_41
    if-nez v0, :cond_47

    .line 3815
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->getDefaultArtwork(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3821
    :cond_47
    :goto_47
    iput p1, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumId:I

    .line 3822
    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->priorBitmap:Landroid/graphics/Bitmap;

    .line 3824
    return-object v0

    .line 3807
    :catch_4c
    move-exception v1

    .line 3808
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3809
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v3, "fail to read image."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

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

    goto :goto_41

    .line 3796
    :catch_74
    move-exception v1

    move-object v2, v0

    .line 3797
    :goto_76
    :try_start_76
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3798
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

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
    :try_end_95
    .catchall {:try_start_76 .. :try_end_95} :catchall_14d

    .line 3803
    if-eqz v2, :cond_9a

    .line 3806
    :try_start_97
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_a1

    .line 3814
    :cond_9a
    :goto_9a
    if-nez v0, :cond_47

    .line 3815
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->getDefaultArtwork(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_47

    .line 3807
    :catch_a1
    move-exception v1

    .line 3808
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3809
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v3, "fail to read image."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

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

    goto :goto_9a

    .line 3800
    :catch_c9
    move-exception v2

    move-object v2, v0

    .line 3801
    :goto_cb
    :try_start_cb
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Memory allocation failed getArtwork:uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e3
    .catchall {:try_start_cb .. :try_end_e3} :catchall_14d

    .line 3803
    if-eqz v2, :cond_e8

    .line 3806
    :try_start_e5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_f0

    .line 3814
    :cond_e8
    :goto_e8
    if-nez v0, :cond_47

    .line 3815
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->getDefaultArtwork(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_47

    .line 3807
    :catch_f0
    move-exception v1

    .line 3808
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3809
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v3, "fail to read image."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

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

    goto :goto_e8

    .line 3803
    :catchall_118
    move-exception v1

    move-object v2, v0

    :goto_11a
    if-eqz v2, :cond_11f

    .line 3806
    :try_start_11c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_125

    .line 3814
    :cond_11f
    :goto_11f
    if-nez v0, :cond_124

    .line 3815
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->getDefaultArtwork(I)Landroid/graphics/Bitmap;

    :cond_124
    throw v1

    .line 3807
    :catch_125
    move-exception v2

    .line 3808
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3809
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v4, "fail to read image."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

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

    goto :goto_11f

    .line 3803
    :catchall_14d
    move-exception v1

    goto :goto_11a

    .line 3800
    :catch_14f
    move-exception v3

    goto/16 :goto_cb

    .line 3796
    :catch_152
    move-exception v1

    goto/16 :goto_76

    :cond_155
    move-object v2, v0

    goto/16 :goto_3c
.end method

.method private getDefaultArtwork(I)Landroid/graphics/Bitmap;
    .registers 8
    .parameter

    .prologue
    .line 3834
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultArtwork(id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3837
    if-gez p1, :cond_21

    .line 3838
    const/4 p1, 0x0

    .line 3840
    :cond_21
    sget-object v0, Lcom/sec/android/app/music/common/util/ListUtil;->sDefalutBigAlbumArtId:[I

    sget-object v1, Lcom/sec/android/app/music/common/util/ListUtil;->sDefalutBigAlbumArtId:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    .line 3841
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 3844
    :try_start_32
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_54
    .catch Ljava/lang/OutOfMemoryError; {:try_start_32 .. :try_end_35} :catch_3a

    move-result-object v0

    .line 3850
    :try_start_36
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_59

    .line 3855
    :goto_39
    return-object v0

    .line 3845
    :catch_3a
    move-exception v2

    .line 3846
    :try_start_3b
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

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

    .line 3847
    throw v2
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_54

    .line 3849
    :catchall_54
    move-exception v0

    .line 3850
    :try_start_55
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5b

    .line 3853
    :goto_58
    throw v0

    .line 3851
    :catch_59
    move-exception v1

    goto :goto_39

    :catch_5b
    move-exception v1

    goto :goto_58
.end method

.method private getUri(I)Landroid/net/Uri;
    .registers 6
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 3599
    const/4 v1, 0x0

    .line 3601
    .local v1, uri:Landroid/net/Uri;
    if-ne p1, v2, :cond_c

    .line 3602
    :try_start_4
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/sec/android/app/music/ICorePlayerService;->getNext(Z)Landroid/net/Uri;

    move-result-object v1

    .line 3609
    :goto_b
    return-object v1

    .line 3604
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v2}, Lcom/sec/android/app/music/ICorePlayerService;->getPrev()Landroid/net/Uri;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_13

    move-result-object v1

    goto :goto_b

    .line 3606
    :catch_13
    move-exception v0

    .line 3607
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method private initializeControls()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 988
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->setContentView(I)V

    .line 989
    new-instance v1, Lcom/sec/android/app/music/MusicPlayer$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicPlayer$5;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    .line 1016
    new-instance v2, Lcom/sec/android/app/music/MusicPlayer$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/MusicPlayer$6;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    .line 1043
    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;

    .line 1044
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->setFlingHandler(Landroid/os/Handler;)V

    .line 1045
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/music/widget/MusicPlayerTouchHandleLayout;->setTouchDownHandler(Landroid/os/Handler;)V

    .line 1047
    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mMusicInfoLayout:Landroid/view/ViewGroup;

    .line 1049
    const v0, 0x7f0c0080

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    .line 1050
    const v0, 0x7f0c007d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentSongNumberView:Landroid/widget/TextView;

    .line 1052
    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationView:Landroid/view/ViewGroup;

    .line 1054
    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    .line 1055
    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    .line 1057
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/app/music/widget/MusicPlayerBaseOnKeyListener;

    invoke-direct {v3}, Lcom/sec/android/app/music/widget/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1058
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 1060
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mLyricView:Landroid/view/View;

    .line 1061
    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mLyricText:Landroid/widget/TextView;

    .line 1063
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    .line 1064
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V

    .line 1065
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSeekThumbFontEnable(Z)V

    .line 1067
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    .line 1068
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleAlign(I)V

    .line 1070
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 1072
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsShownVolumeBar:Z

    if-eqz v0, :cond_cc

    .line 1073
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->showVolumePanel()V

    .line 1076
    :cond_cc
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    new-instance v3, Lcom/sec/android/app/music/MusicPlayer$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/music/MusicPlayer$7;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    const v0, 0x7f0c0089

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    .line 1084
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    const v3, 0x7f02007b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/app/music/MusicPlayer$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/music/MusicPlayer$8;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    const v0, 0x7f0c0088

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    .line 1098
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    new-instance v2, Lcom/sec/android/app/music/widget/MusicPlayerBaseOnKeyListener;

    invoke-direct {v2}, Lcom/sec/android/app/music/widget/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1101
    const v0, 0x7f0c008b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    .line 1102
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1103
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/music/widget/MusicPlayerBaseOnKeyListener;

    invoke-direct {v1}, Lcom/sec/android/app/music/widget/MusicPlayerBaseOnKeyListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1105
    const v0, 0x7f0c0085

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    .line 1106
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mProgressBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1109
    const v0, 0x7f0c0083

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    .line 1110
    const v0, 0x7f0c0084

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    .line 1112
    const v0, 0x7f0c00b5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    .line 1113
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1114
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$9;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    .line 1161
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    const v0, 0x7f0c0081

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    .line 1164
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$10;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    .line 1170
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1172
    const v0, 0x7f0c0082

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    .line 1173
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$11;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    .line 1179
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    const v0, 0x7f0c00b4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTitleInfoButton:Landroid/view/View;

    .line 1182
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTitleInfoButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/music/MusicPlayer$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicPlayer$12;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1199
    const v0, 0x7f0c0076

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    .line 1200
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$13;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicPlayer$13;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    .line 1210
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1212
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->createListButton()V

    .line 1213
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->attachTitleTextViews()V

    .line 1214
    return-void
.end method

.method private isEnableVolumeChange(II)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 3125
    .line 3127
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3173
    :cond_a
    :goto_a
    return v3

    .line 3131
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->getStreamVolume(I)I

    move-result v0

    .line 3132
    if-gez p2, :cond_17

    .line 3133
    packed-switch p1, :pswitch_data_66

    :pswitch_16
    move p2, v0

    .line 3151
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

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

    .line 3158
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnableVolumeChange isVolumeLimit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsVolumeLimit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeLevel:I

    sget v1, Lcom/sec/android/app/music/MusicPlayer;->EAR_PROTECT_LIMIT_INDEX:I

    if-ge v0, v1, :cond_a

    sget v0, Lcom/sec/android/app/music/MusicPlayer;->EAR_PROTECT_LIMIT_INDEX:I

    if-lt p2, v0, :cond_a

    goto :goto_a

    .line 3135
    :pswitch_54
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-ge v0, v1, :cond_64

    .line 3136
    add-int/lit8 p2, v0, 0x1

    goto :goto_17

    .line 3140
    :pswitch_5f
    if-lez v0, :cond_64

    .line 3141
    add-int/lit8 p2, v0, -0x1

    goto :goto_17

    :cond_64
    move p2, v0

    goto :goto_17

    .line 3133
    :pswitch_data_66
    .packed-switch -0x1
        :pswitch_5f
        :pswitch_16
        :pswitch_54
    .end packed-switch
.end method

.method private playSearch()V
    .registers 5

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "playSearch() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    const-wide/16 v0, 0x0

    :try_start_9
    iput-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    .line 2290
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->changePlayButton(ZZ)V

    .line 2291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsLiveStreamMode:Z

    .line 2293
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 2294
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/android/app/music/ICorePlayerService;->setPlayIteratorWithUri(Ljava/lang/String;)V

    .line 2295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->intentStreamMedia:Ljava/lang/String;

    .line 2296
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->doPrepare()V

    .line 2297
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 2308
    :goto_2f
    return-void

    .line 2299
    :cond_30
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "playSearch() intentStreamMedia==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->doPrepare()V

    .line 2301
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_40} :catch_41

    goto :goto_2f

    .line 2304
    :catch_41
    move-exception v0

    .line 2305
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2306
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 38 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private processIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1442
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "processIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    if-eqz p1, :cond_84

    .line 1444
    const-string v0, "audioId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mNewAudioId:J

    .line 1445
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1446
    if-eqz v0, :cond_52

    .line 1447
    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mList:[J

    .line 1448
    const-string v1, "fromQueryBrowser"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1451
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mList:[J

    aget-wide v1, v1, v3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->getAllListAndPosition(J)V

    .line 1455
    :goto_31
    const-string v1, "tabFrom"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mListType:I

    .line 1456
    const-string v1, "keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mKeyWord:Ljava/lang/String;

    .line 1457
    const-string v1, "headTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mListTitle:Ljava/lang/String;

    .line 1458
    const-string v1, "albumIdForAlbumArt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumIdForAlbumArt:Ljava/lang/String;

    .line 1461
    :cond_52
    iput-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsPlayByIntent:Z

    .line 1462
    iget v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mPosition:I

    if-gez v1, :cond_5a

    .line 1463
    iput v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mPosition:I

    .line 1466
    :cond_5a
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v1, :cond_84

    .line 1468
    if-eqz v0, :cond_8e

    :try_start_60
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mList:[J

    if-eqz v0, :cond_8e

    .line 1474
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mList:[J

    iget v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mPosition:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/music/ICorePlayerService;->open([JI)V

    .line 1475
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mListType:I

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mKeyWord:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicUtils;->setListFrom(ILjava/lang/String;)V

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->play()V

    .line 1477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsPlayByIntent:Z

    .line 1485
    :cond_7c
    :goto_7c
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->hideNotificationInfo()V

    .line 1486
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->doSetListButton()V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_84} :catch_a6

    .line 1500
    :cond_84
    :goto_84
    return-void

    .line 1453
    :cond_85
    const-string v1, "list_position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mPosition:I

    goto :goto_31

    .line 1478
    :cond_8e
    :try_start_8e
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mList:[J

    if-nez v0, :cond_7c

    .line 1481
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->doPrepare()V

    .line 1482
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getTabFrom()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mListType:I

    .line 1483
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mKeyWord:Ljava/lang/String;
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_a5} :catch_a6

    goto :goto_7c

    .line 1487
    :catch_a6
    move-exception v0

    .line 1488
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1489
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processIntent - RemoteException occured 20 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84
.end method

.method private registerMediaScannerReceiver()V
    .registers 3

    .prologue
    .line 2445
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2446
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2447
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2451
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2452
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/MusicPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2453
    return-void
.end method

.method private setEqEffectToNormal()V
    .registers 6

    .prologue
    const v4, 0x7f090109

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4045
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v2

    if-eq v0, v3, :cond_16

    .line 4046
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    sget-object v1, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEqValue:[I

    aget v1, v1, v3

    aput v1, v0, v2

    .line 4047
    invoke-static {v3}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setEqualizer(I)V

    .line 4050
    :cond_16
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    aget v0, v0, v3

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_29

    .line 4051
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    sget-object v1, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->sEffectValue:[I

    aget v1, v1, v2

    aput v1, v0, v3

    .line 4052
    invoke-static {v2}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setEffect(I)V

    .line 4056
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->setR2VSMode()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_49

    .line 4061
    :goto_2e
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 4063
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    if-nez v0, :cond_4e

    .line 4064
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    .line 4071
    :goto_43
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4072
    return-void

    .line 4057
    :catch_49
    move-exception v0

    .line 4058
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2e

    .line 4068
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_43
.end method

.method private setRingtone(I)V
    .registers 7
    .parameter

    .prologue
    .line 3305
    .line 3309
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v0

    .line 3310
    if-nez v0, :cond_10

    .line 3311
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "setRingtone() strUri == null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    :cond_f
    :goto_f
    return-void

    .line 3314
    :cond_10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3315
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/music/MusicPlayer;->updateContentValue(ILandroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3319
    iget v1, p0, Lcom/sec/android/app/music/MusicPlayer;->IDX_CALL_RINGTONE:I

    if-ne p1, v1, :cond_79

    .line 3320
    const/4 v1, 0x1

    .line 3321
    invoke-static {p0, v1, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 3322
    if-eqz v0, :cond_44

    .line 3323
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "DEBUG_RINGTONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NusicPlayer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3347
    :cond_44
    :goto_44
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayer;->IDX_CALL_RINGTONE:I

    if-ne p1, v0, :cond_f

    .line 3348
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_57} :catch_58

    goto :goto_f

    .line 3350
    :catch_58
    move-exception v0

    .line 3351
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3352
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  26 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 3325
    :cond_79
    :try_start_79
    iget v1, p0, Lcom/sec/android/app/music/MusicPlayer;->IDX_INDIVIDUAL_RINGTONE:I

    if-ne p1, v1, :cond_a1

    .line 3326
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 3327
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3328
    const-string v3, "ringtone_filepath"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3329
    const-string v1, "ringtone_uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3330
    const-string v0, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3332
    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    goto :goto_44

    .line 3333
    :cond_a1
    iget v1, p0, Lcom/sec/android/app/music/MusicPlayer;->IDX_ALARM_TONE:I

    if-ne p1, v1, :cond_44

    .line 3334
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 3335
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "content://com.sec.android.app.clockpackage/alarmlist/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3337
    const-string v3, "set_alarm"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3339
    const-string v1, "alarm_uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3343
    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicPlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_c9} :catch_58

    goto/16 :goto_44
.end method

.method private setVolume(I)V
    .registers 5
    .parameter "progress"

    .prologue
    .line 3118
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/music/MusicPlayer;->isEnableVolumeChange(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3119
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/music/framework/SecAudioManager;->setStreamVolume(III)V

    .line 3121
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->showVolumePanel()V

    .line 3122
    return-void
.end method

.method private showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 9
    .parameter "progress"
    .parameter "seekBar"

    .prologue
    .line 3222
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showBubble progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 3224
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosX()I

    move-result v0

    .line 3225
    .local v0, bubbleX:I
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbCenterPosY()I

    move-result v1

    .line 3226
    .local v1, bubbleY:I
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    sub-int/2addr v0, v2

    .line 3228
    const/16 v2, 0xf

    if-ne p1, v2, :cond_60

    .line 3229
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v1, v2

    .line 3235
    :goto_3d
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2, p2, v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubblePosition(Landroid/view/View;II)V

    .line 3236
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 3238
    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsVolumeBubbleRunable:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_53

    .line 3239
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mHideBubble:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3241
    :cond_53
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mHideBubble:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsVolumeBubbleRunable:Z

    .line 3242
    return-void

    .line 3230
    :cond_60
    if-nez p1, :cond_6a

    .line 3231
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_3d

    .line 3233
    :cond_6a
    invoke-virtual {p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getThumbHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    goto :goto_3d
.end method

.method private showFlingAnimation(I)V
    .registers 11
    .parameter

    .prologue
    const v8, 0x7f090134

    const/4 v1, 0x3

    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 3617
    .line 3620
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-nez v0, :cond_11

    .line 3621
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3776
    :cond_10
    :goto_10
    return-void

    .line 3629
    :cond_11
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsReadyForFling:Z

    if-eqz v0, :cond_10

    .line 3630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsReadyForFling:Z

    .line 3634
    iput-boolean v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsFlingNow:Z

    .line 3636
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 3639
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3640
    iput v7, p0, Lcom/sec/android/app/music/MusicPlayer;->mDelayTimes:I

    .line 3648
    :goto_29
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->getUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 3651
    if-eqz v2, :cond_10

    .line 3662
    if-ne p1, v6, :cond_e0

    .line 3663
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3664
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    const v3, 0x7f040003

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3669
    :goto_43
    new-instance v3, Lcom/sec/android/app/music/MusicPlayer$25;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/app/music/MusicPlayer$25;-><init>(Lcom/sec/android/app/music/MusicPlayer;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3696
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/music/common/data/MusicDB;->getAlbumInfo(Landroid/net/Uri;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v3

    .line 3702
    if-nez v3, :cond_f4

    .line 3703
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/music/MusicPlayer;->getDefaultArtwork(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3710
    :goto_58
    iget-object v4, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3713
    iget-object v4, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3716
    iput-boolean v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mCausedByFling:Z

    .line 3717
    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsShownVolumeBar:Z

    if-eqz v2, :cond_71

    .line 3718
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->hideVolumePanel()V

    .line 3720
    :cond_71
    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    if-eqz v2, :cond_7c

    .line 3721
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3723
    :cond_7c
    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    if-eqz v2, :cond_85

    .line 3724
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3726
    :cond_85
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mLyricView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3730
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3731
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImageTemp:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3736
    if-nez v3, :cond_fc

    .line 3737
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3738
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    const v1, 0x7f090136

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3739
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    const v1, 0x7f090135

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 3641
    :cond_d4
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsMusidPrepared:Z

    if-nez v0, :cond_dc

    .line 3642
    iput v7, p0, Lcom/sec/android/app/music/MusicPlayer;->mDelayTimes:I

    goto/16 :goto_29

    .line 3644
    :cond_dc
    iput v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mDelayTimes:I

    goto/16 :goto_29

    .line 3666
    :cond_e0
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3667
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    const v3, 0x7f040004

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto/16 :goto_43

    .line 3705
    :cond_f4
    iget v2, v3, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbumID:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/music/MusicPlayer;->getArtwork(I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_58

    .line 3741
    :cond_fc
    iget-object v0, v3, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_14e

    .line 3743
    :try_start_100
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3744
    if-eqz v0, :cond_121

    .line 3745
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sec/android/app/music/common/util/ListUtil;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_111} :catch_149

    .line 3756
    :goto_111
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3757
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 3747
    :cond_121
    :try_start_121
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    const v4, 0x7f090134

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_148
    .catch Landroid/os/RemoteException; {:try_start_121 .. :try_end_148} :catch_149

    goto :goto_111

    .line 3750
    :catch_149
    move-exception v0

    .line 3751
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_111

    .line 3754
    :cond_14e
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, v3, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_111
.end method

.method private startBluetoothDevicePicker()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 942
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 943
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 944
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 946
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 947
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    .line 948
    return-void
.end method

.method private updateContentValue(ILandroid/net/Uri;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3361
    .line 3364
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3365
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3366
    iget v3, p0, Lcom/sec/android/app/music/MusicPlayer;->IDX_INDIVIDUAL_RINGTONE:I

    if-eq p1, v3, :cond_12

    iget v3, p0, Lcom/sec/android/app/music/MusicPlayer;->IDX_CALL_RINGTONE:I

    if-ne p1, v3, :cond_20

    .line 3367
    :cond_12
    const-string v3, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3371
    :goto_19
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3372
    const/4 v0, 0x1

    .line 3384
    :goto_1f
    return v0

    .line 3369
    :cond_20
    const-string v3, "is_alarm"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_27} :catch_28
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_27} :catch_49

    goto :goto_19

    .line 3373
    :catch_28
    move-exception v1

    .line 3374
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3375
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

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

    goto :goto_1f

    .line 3377
    :catch_49
    move-exception v1

    .line 3378
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 3379
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

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

    goto :goto_1f
.end method

.method private useDpadMusicControl()Z
    .registers 2

    .prologue
    .line 1309
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mDeviceHasDpad:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1311
    :cond_1c
    const/4 v0, 0x1

    .line 1313
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method protected attachTitleTextViews()V
    .registers 2

    .prologue
    .line 1919
    const v0, 0x7f0c00bc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    .line 1920
    const v0, 0x7f0c00bd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    .line 1921
    const v0, 0x7f0c00be

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    .line 1922
    return-void
.end method

.method protected changePlayButton(ZZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 2772
    if-eqz p1, :cond_1d

    .line 2773
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 2774
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2775
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    const v1, 0x7f090160

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2788
    :cond_1c
    :goto_1c
    return-void

    .line 2779
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->updatePlayStatus()V

    .line 2780
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2783
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mPausedBySeekBar:Z

    if-nez v0, :cond_1c

    .line 2784
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2785
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    const v1, 0x7f09015f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1c
.end method

.method protected changeView(I)V
    .registers 9
    .parameter

    .prologue
    const/16 v5, 0x9

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3868
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 3870
    if-eqz v0, :cond_8f

    .line 3871
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    move v1, v0

    .line 3874
    :goto_f
    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicPlayer;->setEnableTextScroll(Z)V

    .line 3876
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->initializeControls()V

    .line 3878
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_20

    .line 3879
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3881
    :cond_20
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    if-eqz v0, :cond_49

    .line 3882
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f030022

    iget-object v4, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationEqView:Landroid/view/View;

    .line 3884
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3886
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_49

    .line 3887
    const-wide/16 v3, 0x0

    invoke-virtual {p0, v5, v3, v4}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 3890
    :cond_49
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    if-eqz v0, :cond_60

    .line 3891
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x21

    iget-boolean v5, p0, Lcom/sec/android/app/music/MusicPlayer;->additionalPanelFromAlbumArt:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3895
    :cond_60
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->doSyncPlayMusic()V

    .line 3896
    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/MusicPlayer;->updatePlayerInfo(Z)V

    .line 3898
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3899
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3904
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mPause:Z

    if-nez v0, :cond_85

    .line 3905
    invoke-virtual {p0, v6}, Lcom/sec/android/app/music/MusicPlayer;->setEnableTextScroll(Z)V

    .line 3910
    :goto_7b
    if-eqz v1, :cond_89

    .line 3911
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3916
    :goto_84
    return-void

    .line 3907
    :cond_85
    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicPlayer;->setEnableTextScroll(Z)V

    goto :goto_7b

    .line 3913
    :cond_89
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_84

    :cond_8f
    move v1, v2

    goto/16 :goto_f
.end method

.method protected createListButton()V
    .registers 3

    .prologue
    .line 2793
    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonList:Landroid/view/View;

    .line 2794
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2795
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonList:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/music/MusicPlayer$19;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicPlayer$19;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2823
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->doSetListButton()V

    .line 2824
    return-void
.end method

.method public doChangeRepeatMode()V
    .registers 5

    .prologue
    .line 2941
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getRepeatMode()I

    move-result v0

    .line 2942
    packed-switch v0, :pswitch_data_58

    .line 2964
    :goto_9
    return-void

    .line 2944
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2945
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/music/ICorePlayerService;->setRepeatMode(I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_9

    .line 2959
    :catch_19
    move-exception v0

    .line 2960
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2961
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 29 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2948
    :pswitch_3a
    :try_start_3a
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2949
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/music/ICorePlayerService;->setRepeatMode(I)V

    goto :goto_9

    .line 2952
    :pswitch_49
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2953
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/music/ICorePlayerService;->setRepeatMode(I)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_57} :catch_19

    goto :goto_9

    .line 2942
    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_49
        :pswitch_a
    .end packed-switch
.end method

.method public doChangeShuffleMode()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2970
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v2}, Lcom/sec/android/app/music/ICorePlayerService;->getShuffleMode()I

    move-result v2

    if-nez v2, :cond_1b

    .line 2972
    :goto_a
    if-ne v0, v1, :cond_1d

    .line 2973
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2974
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/music/ICorePlayerService;->setShuffleMode(I)V

    .line 2985
    :goto_1a
    return-void

    :cond_1b
    move v0, v1

    .line 2970
    goto :goto_a

    .line 2976
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2977
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/music/ICorePlayerService;->setShuffleMode(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2b} :catch_2c

    goto :goto_1a

    .line 2980
    :catch_2c
    move-exception v0

    .line 2981
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2982
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 29 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public doPause()V
    .registers 5

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v0, :cond_1b

    .line 2877
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2878
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->pause()V

    .line 2880
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->changePlayButton(ZZ)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    .line 2886
    :cond_1b
    :goto_1b
    return-void

    .line 2881
    :catch_1c
    move-exception v0

    .line 2882
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2883
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public doPlay()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2827
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "doPlay() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v0, :cond_23

    .line 2830
    :try_start_c
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2831
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->pause()V

    .line 2861
    :goto_19
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->changePlayButton(ZZ)V

    .line 2871
    :cond_23
    :goto_23
    return-void

    .line 2832
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->isStop()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 2834
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v0

    .line 2838
    invoke-static {}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isAnyDrmEnabled()Z

    move-result v1

    if-eqz v1, :cond_a0

    if-eqz v0, :cond_a0

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 2840
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2841
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    .line 2842
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getDrmPopup(Z[I[Lcom/sec/android/app/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v0

    .line 2847
    if-eqz v0, :cond_55

    const/16 v1, 0x16

    if-ne v0, v1, :cond_89

    .line 2849
    :cond_55
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/music/ICorePlayerService;->playSeek(J)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_67} :catch_68
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_67} :catch_8f

    goto :goto_19

    .line 2862
    :catch_68
    move-exception v0

    .line 2863
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2864
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 2 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 2852
    :cond_89
    :try_start_89
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->play()V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_8e} :catch_68
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_8e} :catch_8f

    goto :goto_19

    .line 2865
    :catch_8f
    move-exception v0

    .line 2866
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2868
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f09004d

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_23

    .line 2855
    :cond_a0
    :try_start_a0
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/music/ICorePlayerService;->playSeek(J)V

    goto/16 :goto_19

    .line 2858
    :cond_b4
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->play()V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_b9} :catch_68
    .catch Ljava/io/FileNotFoundException; {:try_start_a0 .. :try_end_b9} :catch_8f

    goto/16 :goto_19
.end method

.method protected doPrepare()V
    .registers 5

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "doPrepare() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-nez v0, :cond_13

    .line 1902
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "doPrepare() mCorePlayer == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :goto_12
    return-void

    .line 1905
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_40

    .line 1907
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/music/ICorePlayerService;->prepareWithLastPlayedFile(Z)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_21} :catch_22

    goto :goto_12

    .line 1912
    :catch_22
    move-exception v0

    .line 1913
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured in doPrepare():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1909
    :cond_40
    :try_start_40
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    iget-boolean v1, p0, Lcom/sec/android/app/music/MusicPlayer;->intentIsFromList:Z

    invoke-interface {v0, v1}, Lcom/sec/android/app/music/ICorePlayerService;->openCurrent(Z)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_47} :catch_22

    goto :goto_12
.end method

.method protected doSetListButton()V
    .registers 3

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonList:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 1688
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getItemCountFromDB()I

    move-result v0

    if-gtz v0, :cond_18

    .line 1689
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonList:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1696
    :cond_17
    :goto_17
    return-void

    .line 1691
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1e} :catch_1f

    goto :goto_17

    .line 1692
    :catch_1f
    move-exception v0

    .line 1693
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "doSetListButton()...RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method protected doSetSrsRepeatShuffleImage(IIZ)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f020089

    const/4 v2, 0x1

    .line 1649
    sget-boolean v0, Lcom/sec/android/app/music/MusicUtils;->sIsHeadsetPlugged:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1651
    :cond_18
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1657
    :goto_1d
    packed-switch p1, :pswitch_data_7a

    .line 1671
    :goto_20
    if-ne v2, p2, :cond_68

    .line 1672
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1677
    :goto_2a
    if-ne p3, v2, :cond_71

    .line 1678
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1683
    :goto_34
    return-void

    .line 1652
    :cond_35
    sget-object v0, Lcom/sec/android/app/music/common/util/R2vsUtil;->r2vs_mode_array:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_47

    .line 1653
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d

    .line 1655
    :cond_47
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonSrs:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1d

    .line 1659
    :pswitch_4d
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_20

    .line 1662
    :pswitch_56
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_20

    .line 1665
    :pswitch_5f
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRepeat:Landroid/widget/ImageView;

    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_20

    .line 1674
    :cond_68
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonShuffle:Landroid/widget/ImageView;

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2a

    .line 1680
    :cond_71
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonVolume:Landroid/widget/ImageView;

    const v1, 0x7f020113

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_34

    .line 1657
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_56
        :pswitch_4d
    .end packed-switch
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 4025
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method hideAdditionalPanel()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    .line 967
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 969
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 970
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 971
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 973
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentSongNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 974
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentSongNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 976
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 979
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    .line 981
    return-void
.end method

.method hideVolumePanel()V
    .registers 3

    .prologue
    .line 3246
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsShownVolumeBar:Z

    .line 3250
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 3252
    return-void
.end method

.method notifySeekChange(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1221
    const-string v1, "from"

    const-string v2, "MusicPlayer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1222
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1223
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->sendBroadcast(Landroid/content/Intent;)V

    .line 1224
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 3391
    packed-switch p1, :pswitch_data_26

    .line 3404
    :cond_5
    :goto_5
    if-eq p2, v4, :cond_7

    .line 3407
    :cond_7
    return-void

    .line 3393
    :pswitch_8
    if-ne p2, v4, :cond_5

    .line 3394
    new-array v0, v5, [J

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mSelectedId:J

    aput-wide v2, v0, v1

    .line 3397
    .local v0, selectedItem:[J
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3, v5}, Lcom/sec/android/app/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)I

    goto :goto_5

    .line 3391
    nop

    :pswitch_data_26
    .packed-switch 0x5
        :pswitch_8
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 3860
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onConfigurationChanged() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3861
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3862
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    .line 3863
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->changeView(I)V

    .line 3864
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onCreate() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 511
    if-eqz p1, :cond_1c

    .line 513
    invoke-static {}, Lcom/sec/android/app/music/MusicUtils;->getCurrentAudioId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mSavedAudioId:J

    .line 514
    const-string v0, "selectedId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mSelectedId:J

    .line 516
    :cond_1c
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/MusicPlayer;->setVolumeControlStream(I)V

    .line 517
    iput-object p0, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    .line 525
    invoke-static {v2}, Lcom/sec/android/app/music/MusicUtils;->setMusicPlayerResume(Z)V

    .line 528
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 529
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->initializeControls()V

    .line 532
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/music/common/data/MusicDB;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    .line 533
    new-instance v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    .line 536
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$Worker;

    const-string v1, "album art worker"

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/MusicPlayer$Worker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtWorker:Lcom/sec/android/app/music/MusicPlayer$Worker;

    .line 537
    new-instance v0, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtWorker:Lcom/sec/android/app/music/MusicPlayer$Worker;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicPlayer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;-><init>(Lcom/sec/android/app/music/MusicPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtHandler:Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

    .line 539
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->processIntent(Landroid/content/Intent;)V

    .line 541
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->registerMediaScannerReceiver()V

    .line 543
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 544
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    const-string v1, "musicPlayer.service.startUpdateStatus"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    const-string v1, "musicPlayer.service.updatePlayComplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    const-string v1, "musicPlayer.service.updateSeekPlayedTime"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v1, "musicPlayer.service.stopPlay"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    const-string v1, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v1, "musicPlayer.service.DOCK_PLUG_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v1, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v1, "musicPlayer.service.updateABRepeat"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/MusicPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/sec/android/app/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    .line 558
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 559
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/MusicPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 561
    new-instance v0, Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/music/framework/SecAudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeLevel:I

    .line 566
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 3265
    packed-switch p1, :pswitch_data_44

    .line 3281
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 3267
    :pswitch_5
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f090054

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f090055

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f090056

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3272
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 3273
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090030

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3274
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mOptionPopupSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3275
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_4

    .line 3265
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 639
    iput-object p1, p0, Lcom/sec/android/app/music/MusicPlayer;->mMenu:Landroid/view/Menu;

    .line 640
    const v0, 0x7f09002c

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020012

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 642
    const/4 v0, 0x7

    const/4 v1, 0x1

    const v2, 0x7f090031

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020019

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 644
    const/4 v0, 0x2

    const v1, 0x7f09002e

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020029

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 646
    const v0, 0x7f090036

    invoke-interface {p1, v3, v4, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020028

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 652
    const v0, 0x7f09002f

    invoke-interface {p1, v3, v5, v6, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020027

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 654
    const v0, 0x7f090030

    invoke-interface {p1, v3, v6, v7, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 656
    const/16 v0, 0x8

    const v1, 0x7f09003c

    invoke-interface {p1, v3, v7, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020011

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 658
    const/16 v0, 0x9

    const/16 v1, 0x9

    const v2, 0x7f090004

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020025

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->menuSettingsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 661
    const/16 v0, 0xa

    const/16 v1, 0xa

    const v2, 0x7f09004a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020015

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->menuDetailsOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 670
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2634
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onDestroy() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    iput-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayer;->isActivityExit:Z

    .line 2636
    iput-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mPause:Z

    .line 2640
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->doSyncPlayMusic()V

    .line 2642
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_16

    .line 2643
    iput-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    .line 2644
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1c

    .line 2645
    iput-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    .line 2647
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v0, :cond_34

    .line 2648
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2f

    .line 2649
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 2651
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 2657
    :cond_34
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2660
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2662
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2664
    iput-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    .line 2665
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->unbindFromService(Lcom/sec/android/app/music/MusicUtils$ServiceToken;)V

    .line 2668
    :try_start_4c
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4c .. :try_end_51} :catch_82

    .line 2674
    :goto_51
    :try_start_51
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_56} :catch_8b

    .line 2680
    :goto_56
    :try_start_56
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mActivityUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_5b} :catch_94

    .line 2685
    :goto_5b
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtWorker:Lcom/sec/android/app/music/MusicPlayer$Worker;

    if-eqz v0, :cond_66

    .line 2686
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtWorker:Lcom/sec/android/app/music/MusicPlayer$Worker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicPlayer$Worker;->quit()V

    .line 2687
    iput-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtWorker:Lcom/sec/android/app/music/MusicPlayer$Worker;

    .line 2690
    :cond_66
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_71

    .line 2691
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2692
    iput-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mBitmap:Landroid/graphics/Bitmap;

    .line 2695
    :cond_71
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7c

    .line 2696
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2697
    iput-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 2702
    :cond_7c
    iput-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtHandler:Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

    .line 2705
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2706
    return-void

    .line 2669
    :catch_82
    move-exception v0

    .line 2670
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onDestroy : mVolumeChangeReceiver is not registered."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 2675
    :catch_8b
    move-exception v0

    .line 2676
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onDestroy : mMediaReceiver is not registered."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 2681
    :catch_94
    move-exception v0

    .line 2682
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onDestroy : mActivityUpdateReceiver is not registered."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method onFFDown()V
    .registers 4

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onFFDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/16 v0, 0xa

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 1233
    const-string v0, "fastforward_down"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->notifySeekChange(Ljava/lang/String;)V

    .line 1235
    return-void
.end method

.method onFFUp(J)V
    .registers 9
    .parameter

    .prologue
    const-wide/16 v4, 0x12c

    const/4 v3, 0x0

    .line 1239
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFFUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iput v3, p0, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    .line 1241
    const/16 v0, 0xb

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 1242
    cmp-long v0, p1, v4

    if-gez v0, :cond_42

    .line 1247
    :try_start_2e
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsReadyForFling:Z

    if-eqz v0, :cond_42

    .line 1248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsReadyForFling:Z

    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->next()V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_42} :catch_48

    .line 1259
    :cond_42
    :goto_42
    const-string v0, "fastforward_up"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->notifySeekChange(Ljava/lang/String;)V

    .line 1261
    return-void

    .line 1252
    :catch_48
    move-exception v0

    .line 1253
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1254
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 14 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1321
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown("

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

    .line 1322
    const/16 v1, 0x19

    if-ne v1, p1, :cond_28

    .line 1323
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/MusicPlayer;->changeVolume(I)V

    .line 1363
    :cond_27
    :goto_27
    return v0

    .line 1325
    :cond_28
    const/16 v1, 0x18

    if-ne v1, p1, :cond_30

    .line 1326
    invoke-direct {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->changeVolume(I)V

    goto :goto_27

    .line 1331
    :cond_30
    packed-switch p1, :pswitch_data_8a

    .line 1363
    :cond_33
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_27

    .line 1333
    :pswitch_38
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->useDpadMusicControl()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1336
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1337
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    .line 1339
    :cond_4b
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->onRewDown()V

    goto :goto_27

    .line 1343
    :pswitch_4f
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->useDpadMusicControl()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1346
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_62

    .line 1347
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    .line 1349
    :cond_62
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->onFFDown()V

    goto :goto_27

    .line 1354
    :pswitch_66
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->useDpadMusicControl()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_33

    .line 1357
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_84

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1358
    :cond_84
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_27

    .line 1331
    :pswitch_data_8a
    .packed-switch 0x13
        :pswitch_66
        :pswitch_66
        :pswitch_38
        :pswitch_4f
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1369
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp("

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

    .line 1371
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 1372
    packed-switch p1, :pswitch_data_7a

    .line 1423
    :cond_2b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_2f
    :goto_2f
    return v0

    .line 1374
    :pswitch_30
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->useDpadMusicControl()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1386
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v3, :cond_2f

    .line 1387
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->onRewUp(J)V

    .line 1388
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_2f

    .line 1393
    :pswitch_43
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->useDpadMusicControl()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1405
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v3, :cond_2f

    .line 1406
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->onFFUp(J)V

    .line 1407
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_2f

    .line 1413
    :pswitch_56
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->useDpadMusicControl()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1416
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonFF:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_74

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonRew:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1417
    :cond_74
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z

    goto :goto_2f

    .line 1372
    :pswitch_data_7a
    .packed-switch 0x13
        :pswitch_56
        :pswitch_56
        :pswitch_30
        :pswitch_43
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onNewIntent() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 575
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    .line 577
    if-eqz p1, :cond_47

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mPause:Z

    .line 581
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 583
    if-eqz v0, :cond_43

    .line 586
    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mList:[J

    .line 588
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mList:[J

    if-eqz v1, :cond_43

    .line 589
    const-string v1, "list_position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mPosition:I

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mList:[J

    iget v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mPosition:I

    aget-wide v0, v0, v1

    .line 591
    iget-wide v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mSavedAudioId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_43

    cmp-long v2, v0, v4

    if-lez v2, :cond_43

    .line 592
    iput-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mSavedAudioId:J

    .line 597
    :cond_43
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->processIntent(Landroid/content/Intent;)V

    .line 601
    :goto_46
    return-void

    .line 599
    :cond_47
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onNewIntent() intent==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 812
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_fa

    .line 938
    :cond_a
    :goto_a
    :pswitch_a
    return v5

    .line 814
    :pswitch_b
    const-wide/16 v0, -0x1

    .line 816
    :try_start_d
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v2}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_1f

    move-result-wide v0

    .line 820
    :goto_13
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v5, [J

    aput-wide v0, v3, v4

    invoke-static {v2, v3}, Lcom/sec/android/app/music/MusicUtils;->addToQuicklist(Landroid/content/Context;[J)V

    goto :goto_a

    .line 817
    :catch_1f
    move-exception v2

    .line 818
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    .line 825
    :pswitch_24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 826
    const-string v1, "tabFrom"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    const-string v1, "keyword"

    sget-wide v2, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 833
    :pswitch_3f
    :try_start_3f
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mSelectedId:J
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_47} :catch_61

    .line 837
    :goto_47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 838
    const-string v1, "tabFrom"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 839
    const-string v1, "mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 840
    const-string v1, "selectMode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 841
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/music/MusicPlayer;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 834
    :catch_61
    move-exception v0

    .line 835
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_47

    .line 848
    :pswitch_66
    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/MusicPlayer;->showDialog(I)V

    goto :goto_a

    .line 851
    :pswitch_6a
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-nez v0, :cond_76

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onCreateDialog,SHARE_MUSIC_VIA_OPTION_DIALOG,mCorePlayer==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 857
    :cond_76
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    if-nez v0, :cond_82

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onOptionsItemSelected-MENU_SHARE_TRACK_VIA : mediaAlbumInfo == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 862
    :cond_82
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mMimeType:Ljava/lang/String;

    .line 864
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 866
    const/4 v0, 0x0

    .line 868
    :try_start_91
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_9a} :catch_b0

    move-result-object v0

    .line 872
    :goto_9b
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 873
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 869
    :catch_b0
    move-exception v1

    .line 870
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9b

    .line 880
    :pswitch_b5
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_a

    .line 881
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 882
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/music/MusicPlayer$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/MusicPlayer$4;-><init>(Lcom/sec/android/app/music/MusicPlayer;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto/16 :goto_a

    .line 913
    :pswitch_d0
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/music/framework/SecAudioManager;->setBluetoothA2dpForceOn(Z)V

    .line 916
    :try_start_d5
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/music/ICorePlayerService;->setUlpBypass(Z)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d5 .. :try_end_db} :catch_dd

    goto/16 :goto_a

    .line 917
    :catch_dd
    move-exception v0

    .line 918
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_a

    .line 926
    :pswitch_e3
    :try_start_e3
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->stop()V
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_e3 .. :try_end_e8} :catch_f4

    .line 930
    :goto_e8
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 931
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->refreshPlayedTime(J)V

    goto/16 :goto_a

    .line 927
    :catch_f4
    move-exception v0

    .line 928
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e8

    .line 812
    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_d0
        :pswitch_b5
        :pswitch_6a
        :pswitch_66
        :pswitch_3f
        :pswitch_24
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_e3
    .end packed-switch
.end method

.method protected onPause()V
    .registers 7

    .prologue
    const/16 v2, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2537
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onPause() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2539
    iput-boolean v5, p0, Lcom/sec/android/app/music/MusicPlayer;->mPause:Z

    .line 2540
    invoke-static {v4}, Lcom/sec/android/app/music/MusicUtils;->setMusicPlayerResume(Z)V

    .line 2546
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2547
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2548
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    if-eqz v0, :cond_2d

    .line 2550
    :try_start_28
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->offRealEQdata()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2d} :catch_6c

    .line 2560
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    if-eqz v0, :cond_36

    .line 2561
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->musicPlayerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2565
    :cond_36
    :try_start_36
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mProgressBarRecceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_36 .. :try_end_3b} :catch_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3b} :catch_8f

    .line 2575
    :goto_3b
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v0, :cond_44

    .line 2576
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 2578
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_49
    .catch Ljava/lang/IllegalStateException; {:try_start_44 .. :try_end_49} :catch_ad
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_49} :catch_cc

    .line 2587
    :goto_49
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    .line 2588
    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/MusicPlayer;->setEnableTextScroll(Z)V

    .line 2591
    :try_start_52
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v0

    if-eq v0, v5, :cond_66

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->isPausedByTransientLossOfFocus()Z

    move-result v0

    if-ne v0, v5, :cond_6b

    .line 2594
    :cond_66
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->showNotificationInfo()V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_6b} :catch_eb

    .line 2600
    :cond_6b
    :goto_6b
    return-void

    .line 2551
    :catch_6c
    move-exception v0

    .line 2552
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2d

    .line 2566
    :catch_71
    move-exception v0

    .line 2567
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver(mProgressBarRecceiver) IllegalStateException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 2570
    :catch_8f
    move-exception v0

    .line 2571
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver(mProgressBarRecceiver) IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 2579
    :catch_ad
    move-exception v0

    .line 2580
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver(mLowBatteryReceiver) IllegalStateException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 2582
    :catch_cc
    move-exception v0

    .line 2583
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver(mLowBatteryReceiver) IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 2596
    :catch_eb
    move-exception v0

    .line 2597
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 35:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 677
    const/4 v0, 0x0

    .line 678
    const/4 v4, 0x0

    .line 686
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-nez v1, :cond_10

    .line 687
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v5, "mCorePlayer() : mCorePlayer == null "

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :goto_f
    return v2

    .line 691
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_8e

    move-result-object v0

    .line 697
    :goto_16
    iget-boolean v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsShownVolumeBar:Z

    if-eqz v1, :cond_1d

    .line 698
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->hideVolumePanel()V

    .line 700
    :cond_1d
    if-nez v0, :cond_93

    move v1, v2

    move-object v5, v4

    move v4, v2

    .line 735
    :goto_22
    :try_start_22
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v6}, Lcom/sec/android/app/music/framework/SecAudioManager;->isWiredHeadsetOn()Z

    move-result v6

    if-nez v6, :cond_32

    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v6}, Lcom/sec/android/app/music/framework/SecAudioManager;->isExtraSpeakerDockOn()Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 736
    :cond_32
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 737
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 748
    :goto_44
    iget v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mLaunchMode:I

    if-eqz v6, :cond_120

    .line 751
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 752
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 753
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 754
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 756
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsLiveStreamMode:Z

    if-eqz v0, :cond_15f

    move v0, v2

    move v1, v2

    .line 784
    :goto_73
    if-eqz v1, :cond_193

    .line 785
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 789
    :goto_7e
    if-eqz v0, :cond_19e

    .line 790
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_89} :catch_ea

    .line 807
    :goto_89
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_f

    .line 692
    :catch_8e
    move-exception v1

    .line 693
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16

    .line 704
    :cond_93
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 706
    if-nez v5, :cond_a2

    move v1, v2

    move v4, v2

    .line 708
    goto :goto_22

    .line 713
    :cond_a2
    :try_start_a2
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmFile(Ljava/lang/String;)Z

    move-result v1

    .line 714
    if-eqz v1, :cond_1a9

    .line 715
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->drmManager:Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getOptionInfo()Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;

    move-result-object v1

    .line 717
    if-nez v1, :cond_b6

    move v1, v2

    move v4, v2

    .line 719
    goto/16 :goto_22

    .line 721
    :cond_b6
    iget-boolean v4, v1, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bRingtone:Z

    .line 722
    iget-boolean v1, v1, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bSendAs:Z
    :try_end_ba
    .catch Ljava/io/FileNotFoundException; {:try_start_a2 .. :try_end_ba} :catch_bc

    goto/16 :goto_22

    .line 725
    :catch_bc
    move-exception v0

    .line 726
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f09004d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_f

    .line 739
    :cond_ce
    :try_start_ce
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v6}, Lcom/sec/android/app/music/framework/SecAudioManager;->isAudioPathBT()Z

    move-result v6

    if-eqz v6, :cond_10c

    .line 740
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 741
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_e8
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_e8} :catch_ea

    goto/16 :goto_44

    .line 801
    :catch_ea
    move-exception v0

    .line 802
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 803
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException occured 18 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 743
    :cond_10c
    const/4 v6, 0x3

    :try_start_10d
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 744
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_44

    .line 761
    :cond_120
    iget-object v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v6}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J

    move-result-wide v6

    .line 764
    if-eqz v0, :cond_130

    if-eqz v5, :cond_130

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_163

    .line 766
    :cond_130
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 767
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 768
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 769
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 781
    :goto_155
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_15f
    move v0, v1

    move v1, v4

    goto/16 :goto_73

    .line 773
    :cond_163
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/sec/android/app/music/MusicUtils;->isItemInQuickList(Landroid/content/Context;J)Z

    move-result v0

    .line 775
    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 776
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v0, :cond_191

    :goto_17b
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 777
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 778
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_155

    :cond_191
    move v3, v2

    .line 776
    goto :goto_17b

    .line 787
    :cond_193
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_7e

    .line 792
    :cond_19e
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_1a7
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_1a7} :catch_ea

    goto/16 :goto_89

    :cond_1a9
    move v1, v3

    move v4, v3

    goto/16 :goto_22
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 2312
    sget-object v0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mFinishApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2313
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->finishMusicPlayer()V

    .line 2314
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2315
    return-void
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2356
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v3, "onResume() is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2359
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->checkLowStorageforMedia(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2360
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->finish()V

    .line 2437
    :goto_16
    return-void

    .line 2366
    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v2, :cond_20

    .line 2367
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v2}, Lcom/sec/android/app/music/ICorePlayerService;->hideNotificationInfo()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_e1

    .line 2375
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v2}, Lcom/sec/android/app/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_33

    .line 2376
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 2378
    :cond_33
    new-instance v2, Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/common/util/BatteryChecker;-><init>(Lcom/sec/android/app/music/common/util/OnLowBatteryListener;)V

    iput-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    .line 2379
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    new-array v3, v0, [Landroid/app/Activity;

    aput-object p0, v3, v1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2381
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2382
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2383
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/music/MusicPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2385
    iput-boolean v1, p0, Lcom/sec/android/app/music/MusicPlayer;->bPressedFF:Z

    .line 2386
    iput-boolean v1, p0, Lcom/sec/android/app/music/MusicPlayer;->bPressedREW:Z

    .line 2387
    iput-boolean v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mPause:Z

    .line 2388
    invoke-static {v0}, Lcom/sec/android/app/music/MusicUtils;->setMusicPlayerResume(Z)V

    .line 2391
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v2, :cond_78

    .line 2393
    :try_start_5f
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v2}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_100

    .line 2394
    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 2395
    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    if-eqz v2, :cond_78

    .line 2396
    const/16 v2, 0x9

    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_78} :catch_106

    .line 2405
    :cond_78
    :goto_78
    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    if-nez v2, :cond_96

    .line 2406
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x21

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2407
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2411
    :cond_96
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2412
    const-string v3, "musicplayer.ffrew.down"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2413
    const-string v3, "musicplayer.ffrew.up"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2416
    const-string v3, "com.android.music.settingchanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2418
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mProgressBarRecceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/music/MusicPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2420
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->setEnableTextScroll(Z)V

    .line 2422
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->doSetListButton()V

    .line 2423
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10c

    :goto_c2
    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mDeviceHasDpad:Z

    .line 2426
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getLyric(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 2429
    const-string v0, ""

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mLyricText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 2430
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mLyricView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_16

    .line 2369
    :catch_e1
    move-exception v2

    .line 2370
    iget-object v3, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException occured 36:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 2398
    :cond_100
    const/4 v2, 0x0

    :try_start_101
    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicPlayer;->updatePlayerInfo(Z)V
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_101 .. :try_end_104} :catch_106

    goto/16 :goto_78

    .line 2400
    :catch_106
    move-exception v2

    .line 2401
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_78

    :cond_10c
    move v0, v1

    .line 2423
    goto :goto_c2

    .line 2432
    :cond_10e
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mLyricView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_16

    .line 2435
    :cond_115
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mLyricView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_16
.end method

.method onRewDown()V
    .registers 4

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onRewDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const/16 v0, 0xc

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 1268
    const-string v0, "rewind_down"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->notifySeekChange(Ljava/lang/String;)V

    .line 1271
    return-void
.end method

.method onRewUp(J)V
    .registers 11
    .parameter

    .prologue
    const-wide/16 v6, 0x12c

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 1275
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewUp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iput v3, p0, Lcom/sec/android/app/music/MusicPlayer;->skipCount:I

    .line 1277
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v4, v5}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 1279
    cmp-long v0, p1, v6

    if-gez v0, :cond_4d

    .line 1281
    :try_start_2e
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->position()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_53

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_53

    .line 1282
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/music/ICorePlayerService;->seek(J)J

    .line 1283
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->updatePlayStatus()V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_4d} :catch_68

    .line 1300
    :cond_4d
    :goto_4d
    const-string v0, "rewind_up"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->notifySeekChange(Ljava/lang/String;)V

    .line 1303
    return-void

    .line 1287
    :cond_53
    :try_start_53
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsReadyForFling:Z

    if-eqz v0, :cond_4d

    .line 1288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsReadyForFling:Z

    .line 1289
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mFlingHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1290
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->prev()V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_67} :catch_68

    goto :goto_4d

    .line 1295
    :catch_68
    move-exception v0

    .line 1296
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1297
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 19 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 2710
    const-string v0, "selectedId"

    iget-wide v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2711
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2712
    return-void
.end method

.method protected onServicePrepared()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 2716
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onServicePrepared() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    :try_start_9
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsPlayByIntent:Z

    if-nez v0, :cond_30

    .line 2719
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mList:[J

    if-nez v0, :cond_47

    .line 2720
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->doPrepare()V

    .line 2721
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getTabFrom()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mListType:I

    .line 2722
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mKeyWord:Ljava/lang/String;

    .line 2735
    :cond_28
    :goto_28
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->hideNotificationInfo()V

    .line 2736
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->doSetListButton()V

    .line 2746
    :cond_30
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 2748
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    if-nez v0, :cond_46

    .line 2749
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/music/common/data/MusicDB;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    .line 2767
    :cond_46
    :goto_46
    return-void

    .line 2724
    :cond_47
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J

    move-result-wide v0

    .line 2725
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_59

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mSavedAudioId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_73

    .line 2726
    :cond_59
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->stop()V

    .line 2727
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mList:[J

    iget v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mPosition:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/music/ICorePlayerService;->open([JI)V

    .line 2728
    iget v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mListType:I

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mKeyWord:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicUtils;->setListFrom(ILjava/lang/String;)V

    .line 2729
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->play()V

    .line 2731
    :cond_73
    iget-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mSavedAudioId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_28

    .line 2732
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mSavedAudioId:J
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_7d} :catch_7e

    goto :goto_28

    .line 2763
    :catch_7e
    move-exception v0

    .line 2764
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 2765
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 20 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 2320
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onStart() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    if-nez v0, :cond_17

    .line 2323
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/sec/android/app/music/common/data/MusicDB;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    .line 2335
    :cond_17
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    .line 2336
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    if-eqz v0, :cond_4d

    .line 2337
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_46

    .line 2338
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationEqView:Landroid/view/View;

    if-nez v0, :cond_40

    .line 2339
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030022

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationEqView:Landroid/view/View;

    .line 2342
    :cond_40
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2348
    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->updateFullMediaInfo()V

    .line 2350
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2351
    return-void

    .line 2345
    :cond_4d
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_46
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "onStop() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    const/4 v0, 0x0

    :try_start_8
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->dismissDialog(I)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_b} :catch_20

    .line 2623
    :goto_b
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2624
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2629
    :cond_1c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2630
    return-void

    .line 2620
    :catch_20
    move-exception v0

    goto :goto_b
.end method

.method queueUpdate(IJ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 1995
    if-ne p1, v1, :cond_15

    .line 1996
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2001
    :goto_8
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mPause:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x5

    if-ne p1, v0, :cond_14

    .line 2002
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2004
    :cond_14
    return-void

    .line 1998
    :cond_15
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

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

    goto :goto_8
.end method

.method protected refreshPlayStatus(J)V
    .registers 7
    .parameter

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshPlayStatus(millisecond = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/music/MusicPlayer;->refreshPlayedTime(J)V

    .line 1964
    long-to-double v0, p1

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1965
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1966
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 1967
    return-void
.end method

.method protected refreshPlayedTime(J)V
    .registers 8
    .parameter "millisecond"

    .prologue
    .line 1972
    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->isActivityExit:Z

    if-eqz v2, :cond_5

    .line 1992
    :goto_4
    return-void

    .line 1981
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v3, "refreshPlayedTime"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-boolean v2, p0, Lcom/sec/android/app/music/MusicPlayer;->showTimeElapsed:Z

    if-eqz v2, :cond_2a

    .line 1983
    move-wide v0, p1

    .line 1988
    .local v0, playTimeMillisecond:J
    :goto_11
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    iget-wide v3, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_1b

    iget-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    .end local v0           #playTimeMillisecond:J
    :cond_1b
    iget-boolean v3, p0, Lcom/sec/android/app/music/MusicPlayer;->showTimeElapsed:Z

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/music/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1991
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mPlayedTimeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    goto :goto_4

    .line 1985
    :cond_2a
    iget-wide v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    sub-long v0, v2, p1

    .restart local v0       #playTimeMillisecond:J
    goto :goto_11
.end method

.method protected setEnableTextScroll(Z)V
    .registers 5
    .parameter "bEnable"

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

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

    .line 1928
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 1929
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1931
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    .line 1932
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1934
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    if-eqz v0, :cond_33

    .line 1935
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1936
    :cond_33
    return-void
.end method

.method showAdditionalPanel(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAdditionalPanel() fromAlbumArt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->isShownAdditionalBar:Z

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewProgressBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentSongNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mMusicInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 958
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicPlayer;->additionalPanelFromAlbumArt:Z

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mViewAlbumImage:Landroid/widget/ImageView;

    const v1, 0x7f0c0081

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setNextFocusDownId(I)V

    .line 961
    return-void
.end method

.method showVolumePanel()V
    .registers 5

    .prologue
    const/16 v3, 0x1f

    const/4 v2, 0x0

    .line 3186
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    const v1, 0x7f020166

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setBackgroundDrawable(I)V

    .line 3187
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setSecondaryProgress(I)V

    .line 3190
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/framework/SecAudioManager;->getStreamVolume(I)I

    move-result v0

    .line 3191
    iput v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeLevel:I

    .line 3193
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    .line 3194
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->invalidate()V

    .line 3196
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeBubble:Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setVisibility(I)V

    .line 3198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsShownVolumeBar:Z

    .line 3199
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mVolumeSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBar;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->showBubble(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 3201
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3202
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v3, v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->queueUpdate(IJ)V

    .line 3203
    return-void
.end method

.method protected updateDefaultMediaInfo(Z)V
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x9

    const/4 v9, 0x7

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 1785
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDefaultMediaInfo():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentAudioId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mNewAudioId:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_f9

    .line 1790
    iget-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentAudioId:J

    .line 1792
    :try_start_29
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v2, :cond_5a

    .line 1793
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v2}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J

    move-result-wide v0

    .line 1794
    iget-wide v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentAudioId:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_6c

    cmp-long v2, v0, v6

    if-lez v2, :cond_6c

    if-nez p1, :cond_6c

    .line 1796
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDefaultMediaInfo() but same audioID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentAudioId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :goto_59
    return-void

    .line 1800
    :cond_5a
    iget-wide v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentAudioId:J

    cmp-long v2, v2, v6

    if-gtz v2, :cond_6c

    .line 1802
    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v3, "updateDefaultMediaInfo() : mCorePlayer == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_67} :catch_68

    goto :goto_59

    .line 1805
    :catch_68
    move-exception v2

    .line 1806
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1808
    :cond_6c
    iput-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentAudioId:J

    .line 1814
    :goto_6e
    iget-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentAudioId:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_121

    .line 1816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    .line 1817
    const/4 v0, 0x0

    .line 1820
    :try_start_78
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v1, :cond_82

    .line 1821
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->getCurrentFilePath()Ljava/lang/String;
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_81} :catch_101

    move-result-object v0

    .line 1826
    :cond_82
    :goto_82
    if-eqz v0, :cond_8c

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 1827
    :cond_8c
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "updateMediaInfo : filePath is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

    const v1, 0x7f090133

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1831
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicPlayer;->finishMusicPlayer()V

    .line 1832
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

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

    .line 1837
    :goto_c9
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1838
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1840
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    if-eqz v0, :cond_111

    .line 1841
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtHandler:Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->removeMessages(I)V

    .line 1842
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtHandler:Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

    invoke-virtual {v0, v10, v8, v8}, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1893
    :goto_e9
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtHandler:Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->removeMessages(I)V

    .line 1894
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtHandler:Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_59

    .line 1810
    :cond_f9
    iget-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mNewAudioId:J

    iput-wide v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentAudioId:J

    .line 1811
    iput-wide v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mNewAudioId:J

    goto/16 :goto_6e

    .line 1822
    :catch_101
    move-exception v1

    .line 1823
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_82

    .line 1834
    :cond_107
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sec/android/app/music/common/util/ListUtil;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c9

    .line 1844
    :cond_111
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtHandler:Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->removeMessages(I)V

    .line 1845
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtHandler:Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v8, v11, v1}, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_e9

    .line 1849
    :cond_121
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mMusicDB:Lcom/sec/android/app/music/common/data/MusicDB;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentAudioId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/data/MusicDB;->getAlbumInfo(Landroid/net/Uri;)Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    .line 1854
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_15d

    .line 1855
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicPlayer;->mContext:Landroid/content/Context;

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

    iput-object v1, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    .line 1859
    :cond_15d
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1860
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvArtist:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    if-nez v0, :cond_1a2

    const v0, 0x7f090136

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_175
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1864
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mTvAlbum:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    if-nez v0, :cond_1a7

    const v0, 0x7f090135

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_187
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1882
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mVisualizationType:Z

    if-eqz v0, :cond_1ac

    .line 1883
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtHandler:Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->removeMessages(I)V

    .line 1884
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtHandler:Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget v1, v1, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbumID:I

    invoke-virtual {v0, v10, v1, v8}, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_e9

    .line 1860
    :cond_1a2
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    goto :goto_175

    .line 1864
    :cond_1a7
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-object v0, v0, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    goto :goto_187

    .line 1888
    :cond_1ac
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtHandler:Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->removeMessages(I)V

    .line 1889
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAlbumArtHandler:Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget v1, v1, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mAlbumID:I

    invoke-virtual {v0, v9, v1, v11}, Lcom/sec/android/app/music/MusicPlayer$AlbumArtHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_e9
.end method

.method protected updateFullMediaInfo()V
    .registers 2

    .prologue
    .line 1727
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->updateFullMediaInfo(Z)V

    .line 1728
    return-void
.end method

.method protected updateFullMediaInfo(Z)V
    .registers 13
    .parameter "bForce"

    .prologue
    const/4 v10, 0x1

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    .line 1732
    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v8, "updateFullMediaInfo()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->updateDefaultMediaInfo(Z)V

    .line 1737
    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v7, :cond_ac

    .line 1739
    :try_start_12
    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v7}, Lcom/sec/android/app/music/ICorePlayerService;->getIndexOfPlayList()I

    move-result v7

    add-int/lit8 v0, v7, 0x1

    .line 1740
    .local v0, current:I
    if-gez v0, :cond_1d

    .line 1741
    const/4 v0, 0x0

    .line 1743
    :cond_1d
    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v7}, Lcom/sec/android/app/music/ICorePlayerService;->getTotalMediaCount()I

    move-result v4

    .line 1744
    .local v4, total:I
    if-gez v4, :cond_26

    .line 1745
    const/4 v4, 0x0

    .line 1747
    :cond_26
    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentSongNumberView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1750
    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v7}, Lcom/sec/android/app/music/ICorePlayerService;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 1752
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v5}, Lcom/sec/android/app/music/ICorePlayerService;->duration()J

    move-result-wide v1

    .line 1753
    .local v1, duration:J
    iput-wide v1, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    .line 1754
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    iget-wide v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/music/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1756
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v5}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/music/MusicPlayer;->changePlayButton(ZZ)V

    .line 1759
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v5}, Lcom/sec/android/app/music/ICorePlayerService;->position()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/music/MusicPlayer;->refreshPlayStatus(J)V

    .line 1780
    .end local v0           #current:I
    .end local v1           #duration:J
    .end local v4           #total:I
    :cond_79
    :goto_79
    return-void

    .line 1760
    .restart local v0       #current:I
    .restart local v4       #total:I
    :cond_7a
    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v7}, Lcom/sec/android/app/music/ICorePlayerService;->position()J

    move-result-wide v7

    const-wide/16 v9, -0x3e7

    cmp-long v7, v7, v9

    if-eqz v7, :cond_79

    .line 1762
    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    if-eqz v7, :cond_8e

    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer;->mediaAlbumInfo:Lcom/sec/android/app/music/common/data/MusicAlbumInfo;

    iget-wide v5, v5, Lcom/sec/android/app/music/common/data/MusicAlbumInfo;->mDuration:J

    :cond_8e
    iput-wide v5, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    .line 1763
    iget-object v5, p0, Lcom/sec/android/app/music/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    iget-wide v6, p0, Lcom/sec/android/app/music/MusicPlayer;->mMediaDuration:J

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/music/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1766
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/music/MusicPlayer;->changePlayButton(ZZ)V

    .line 1769
    const-wide/16 v5, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/music/MusicPlayer;->refreshPlayStatus(J)V
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_a6} :catch_a7

    goto :goto_79

    .line 1771
    .end local v0           #current:I
    .end local v4           #total:I
    :catch_a7
    move-exception v3

    .line 1772
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_79

    .line 1774
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_ac
    iget-wide v7, p0, Lcom/sec/android/app/music/MusicPlayer;->mCurrentAudioId:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_79

    .line 1775
    iget-object v7, p0, Lcom/sec/android/app/music/MusicPlayer;->mDurationView:Landroid/widget/TextView;

    invoke-static {v5, v6, v10}, Lcom/sec/android/app/music/MusicUtils;->getTimeString(JZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1776
    invoke-virtual {p0, v9, v9}, Lcom/sec/android/app/music/MusicPlayer;->changePlayButton(ZZ)V

    .line 1777
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/music/MusicPlayer;->refreshPlayStatus(J)V

    goto :goto_79
.end method

.method protected updatePlayStatus()V
    .registers 5

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "updatePlayStatus() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    :try_start_7
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v0, :cond_17

    .line 1944
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->position()J

    move-result-wide v0

    .line 1946
    const-wide/16 v2, -0x3e7

    cmp-long v2, v0, v2

    if-nez v2, :cond_18

    .line 1954
    :cond_17
    :goto_17
    return-void

    .line 1948
    :cond_18
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/music/MusicPlayer;->refreshPlayStatus(J)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_17

    .line 1950
    :catch_1c
    move-exception v0

    .line 1951
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1952
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 30 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method protected updatePlayerInfo()V
    .registers 2

    .prologue
    .line 1699
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicPlayer;->updatePlayerInfo(Z)V

    .line 1700
    return-void
.end method

.method protected updatePlayerInfo(Z)V
    .registers 6
    .parameter

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    const-string v1, "updatePlayerInfo() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->isActivityExit:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    if-nez v0, :cond_14

    .line 1724
    :cond_13
    :goto_13
    return-void

    .line 1708
    :cond_14
    :try_start_14
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/MusicPlayer;->updateFullMediaInfo(Z)V

    .line 1710
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getRepeatMode()I

    move-result v1

    .line 1711
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;

    invoke-interface {v0}, Lcom/sec/android/app/music/ICorePlayerService;->getShuffleMode()I

    move-result v2

    .line 1712
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/music/framework/SecAudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_61

    const/4 v0, 0x1

    .line 1714
    :goto_2d
    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/music/MusicPlayer;->doSetSrsRepeatShuffleImage(IIZ)V

    .line 1716
    iget-object v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mAudioManager:Lcom/sec/android/app/music/framework/SecAudioManager;

    invoke-virtual {v0}, Lcom/sec/android/app/music/framework/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicPlayer;->mIsShownVolumeBar:Z

    if-eqz v0, :cond_13

    .line 1717
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicPlayer;->showVolumePanel()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3f} :catch_40

    goto :goto_13

    .line 1720
    :catch_40
    move-exception v0

    .line 1721
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/LogUtil;->printVersion(Landroid/content/Context;)V

    .line 1722
    iget-object v1, p0, Lcom/sec/android/app/music/MusicPlayer;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured 29 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1712
    :cond_61
    const/4 v0, 0x0

    goto :goto_2d
.end method
