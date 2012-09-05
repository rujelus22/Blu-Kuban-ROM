.class public Lcom/google/android/music/MediaPlaybackActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MediaPlaybackActivity$14;,
        Lcom/google/android/music/MediaPlaybackActivity$ViewState;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private final keyboard:[[I

.field private mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

.field private mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

.field private mAlbumBg:Landroid/widget/ImageView;

.field private mAlbumButton:Landroid/view/View;

.field private mAlbumLabel:Landroid/widget/TextView;

.field private mAlbumNameExp:Landroid/widget/TextView;

.field private mAlbumNameIcon:Landroid/widget/ImageView;

.field private mAlbumNameSml:Landroid/widget/TextView;

.field private mAnimationDuration:J

.field private mArtistButton:Landroid/view/View;

.field private mArtistLabel:Landroid/widget/TextView;

.field private mArtistNameExp:Landroid/widget/TextView;

.field private mArtistNameIcon:Landroid/widget/ImageView;

.field private mArtistNameSml:Landroid/widget/TextView;

.field private mBufferingProgress:Landroid/widget/ProgressBar;

.field private mBuyButton:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextMenu:Landroid/widget/ImageView;

.field private mContractor:Landroid/widget/ImageView;

.field private mContractorOverlay:Landroid/view/View;

.field private mCurrentAlbumId:J

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDebugStreamingView:Landroid/widget/TextView;

.field private mDeviceHasDpad:Z

.field mDraggingLabel:Z

.field private mDuration:J

.field private mErrorText:Landroid/widget/TextView;

.field private mFlashWhenPausedColor:Landroid/content/res/ColorStateList;

.field private mHadValidPlaylistBefore:Z

.field private final mHandler:Landroid/os/Handler;

.field mInitialX:I

.field private mIsLandscape:Z

.field mLabelScroller:Landroid/os/Handler;

.field mLastX:I

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mNextButton:Lcom/google/android/music/RepeatingImageButton;

.field private mPauseButton:Lcom/google/android/music/PlayPauseButton;

.field private mPlaybackServiceConnection:Landroid/content/ServiceConnection;

.field private mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mPlayedColor:Landroid/content/res/ColorStateList;

.field private mPosOverride:J

.field private mPrevButton:Lcom/google/android/music/RepeatingImageButton;

.field private mProgress:Lcom/google/android/music/SizableTrackSeekBar;

.field private mProgressBarMovement:F

.field private mProgressOverlay:Landroid/view/View;

.field private mRatings:Lcom/google/android/music/RatingSelector;

.field private mRefreshDelayMs:J

.field private mRepeatButton:Landroid/widget/ImageView;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

.field private mService:Lcom/google/android/music/IMusicPlaybackService;

.field private mSharedTitle:Landroid/widget/TextView;

.field private mShuffleButton:Landroid/widget/ImageView;

.field private mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mStoreConnection:Landroid/content/ServiceConnection;

.field private volatile mStoreService:Lcom/google/android/music/store/IStoreService;

.field private mTextExpanded:Landroid/view/View;

.field private mTextSmall:Landroid/view/View;

.field mTextWidth:I

.field private mToast:Landroid/widget/Toast;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTouchSlop:I

.field private mTrackButton:Landroid/view/View;

.field private mTrackLabel:Landroid/widget/TextView;

.field private mTrackNameExp:Landroid/widget/TextView;

.field private mTrackNameIcon:Landroid/widget/ImageView;

.field private mTrackNameSml:Landroid/widget/TextView;

.field private mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

.field mViewWidth:I

.field private paused:Z

.field private seekmethod:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const-string v0, "MediaPlaybackActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    .line 91
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .parameter "base"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 206
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 108
    iput-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 111
    iput-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    .line 166
    iput-wide v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 194
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$1;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStoreConnection:Landroid/content/ServiceConnection;

    .line 482
    iput v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mInitialX:I

    .line 483
    iput v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLastX:I

    .line 484
    iput v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextWidth:I

    .line 485
    iput v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewWidth:I

    .line 486
    iput-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 577
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$2;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    .line 717
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$3;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 892
    iput-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 1525
    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6c

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_84

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_9c

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->keyboard:[[I

    .line 1775
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$10;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$10;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    .line 1942
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$11;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$11;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 1977
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$12;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$12;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 2023
    iput-wide v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentAlbumId:J

    .line 207
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    .line 208
    return-void

    .line 1525
    nop

    :array_6c
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    :array_84
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
    .end array-data

    :array_9c
    .array-data 0x4
        0x36t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/store/IStoreService;)Lcom/google/android/music/store/IStoreService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/music/MediaPlaybackActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/music/MediaPlaybackActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/music/MediaPlaybackActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/google/android/music/MediaPlaybackActivity;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setControlsVisibilityAccordingToFlag()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setControlsClickableAccordingToFlag()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfoImpl()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/MediaPlaybackActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/music/MediaPlaybackActivity;I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->getErrorMessage(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameSml:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameExp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameSml:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameExp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameSml:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameExp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/IMusicPlaybackService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/IMusicPlaybackService;)Lcom/google/android/music/IMusicPlaybackService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/SizableTrackSeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/MediaPlaybackActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractor:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animateContractorAnimation(Z)V
    .registers 7
    .parameter "up"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1359
    const/4 v2, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 1360
    .local v0, fadeIn:Landroid/view/animation/AlphaAnimation;
    invoke-direct {p0, v3, v3, v4}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    .line 1361
    .local v1, fadeOut:Landroid/view/animation/AlphaAnimation;
    new-instance v2, Lcom/google/android/music/MediaPlaybackActivity$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/MediaPlaybackActivity$9;-><init>(Lcom/google/android/music/MediaPlaybackActivity;ZLandroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1380
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractor:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1381
    return-void
.end method

.method private animateControlAnimation(ZLandroid/view/View;)V
    .registers 4
    .parameter "show"
    .parameter "target"

    .prologue
    .line 1326
    invoke-direct {p0, p1, p1, p2}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1327
    return-void
.end method

.method private animateErrorTextAnimation(ZLjava/lang/CharSequence;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    .line 1155
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 1156
    if-eqz p1, :cond_1f

    move v2, v1

    .line 1157
    :goto_10
    if-eqz p1, :cond_13

    move v1, v0

    .line 1159
    :cond_13
    if-eqz p1, :cond_21

    if-nez p2, :cond_21

    .line 1160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When switching to error state, errorText is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    move v2, v0

    .line 1156
    goto :goto_10

    .line 1164
    :cond_21
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    monitor-enter v3

    .line 1165
    :try_start_24
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 1167
    if-eqz v0, :cond_41

    instance-of v4, v0, Lcom/google/android/music/utils/RetrievableAlphaAnimation;

    if-eqz v4, :cond_41

    .line 1168
    check-cast v0, Lcom/google/android/music/utils/RetrievableAlphaAnimation;

    .line 1169
    invoke-virtual {v0}, Lcom/google/android/music/utils/RetrievableAlphaAnimation;->getToAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_41

    .line 1171
    monitor-exit v3

    .line 1203
    :goto_40
    return-void

    .line 1175
    :cond_41
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 1177
    new-instance v0, Lcom/google/android/music/utils/RetrievableAlphaAnimation;

    invoke-direct {v0, v2, v1}, Lcom/google/android/music/utils/RetrievableAlphaAnimation;-><init>(FF)V

    .line 1178
    iget-wide v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1179
    new-instance v1, Lcom/google/android/music/MediaPlaybackActivity$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/music/MediaPlaybackActivity$4;-><init>(Lcom/google/android/music/MediaPlaybackActivity;ZLandroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1201
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1202
    monitor-exit v3

    goto :goto_40

    :catchall_5f
    move-exception v0

    monitor-exit v3
    :try_end_61
    .catchall {:try_start_24 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method private animateExpandInfo(Z)V
    .registers 3
    .parameter "expand"

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1113
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    if-eqz v0, :cond_14

    .line 1114
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->animateScalingLandscape(Z)V

    .line 1119
    :cond_13
    :goto_13
    return-void

    .line 1116
    :cond_14
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->animateScalingPortrait(Z)V

    goto :goto_13
.end method

.method private animateFadePlayingTimes(Z)V
    .registers 4
    .parameter "increase"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, p1, v1}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1258
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    invoke-direct {p0, p1, p1, v1}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1259
    return-void
.end method

.method private animateFadeTrackInfo(Z)V
    .registers 9
    .parameter "showExpanded"

    .prologue
    const/4 v1, 0x0

    .line 1297
    if-eqz p1, :cond_21

    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextExpanded:Landroid/view/View;

    .line 1298
    .local v4, inTarget:Landroid/view/View;
    :goto_5
    if-eqz p1, :cond_24

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextSmall:Landroid/view/View;

    .line 1300
    .local v2, outTarget:Landroid/view/View;
    :goto_9
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v6

    .line 1301
    .local v6, fadeOut:Landroid/view/animation/Animation;
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v5

    .line 1303
    .local v5, fadeIn:Landroid/view/animation/Animation;
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$7;

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/MediaPlaybackActivity$7;-><init>(Lcom/google/android/music/MediaPlaybackActivity;Landroid/view/View;ZLandroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1318
    invoke-virtual {v2, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1319
    return-void

    .line 1297
    .end local v2           #outTarget:Landroid/view/View;
    .end local v4           #inTarget:Landroid/view/View;
    .end local v5           #fadeIn:Landroid/view/animation/Animation;
    .end local v6           #fadeOut:Landroid/view/animation/Animation;
    :cond_21
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextSmall:Landroid/view/View;

    goto :goto_5

    .line 1298
    .restart local v4       #inTarget:Landroid/view/View;
    :cond_24
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextExpanded:Landroid/view/View;

    goto :goto_9
.end method

.method private animatePlayControlTransition(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1333
    invoke-direct {p0, v0, v1, v6}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v2

    .line 1334
    invoke-direct {p0, v1, v1, v6}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v3

    .line 1335
    const v4, 0x7f100014

    invoke-virtual {p0, v4}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1336
    new-instance v5, Lcom/google/android/music/MediaPlaybackActivity$8;

    invoke-direct {v5, p0, p1, v4, v2}, Lcom/google/android/music/MediaPlaybackActivity$8;-><init>(Lcom/google/android/music/MediaPlaybackActivity;ZLandroid/view/View;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1349
    iget-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    if-eqz v2, :cond_31

    .line 1350
    if-eqz p1, :cond_35

    move v2, v0

    :goto_21
    if-eqz p1, :cond_37

    :goto_23
    invoke-direct {p0, v2, v0, v6}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 1352
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1353
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1355
    :cond_31
    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1356
    return-void

    :cond_35
    move v2, v1

    .line 1350
    goto :goto_21

    :cond_37
    move v0, v1

    goto :goto_23
.end method

.method private animateProgressBarMove(Z)V
    .registers 13
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0xff

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 1206
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    if-nez v0, :cond_6c

    .line 1208
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1209
    new-instance v0, Lcom/google/android/music/animator/PropertyAnimator;

    iget-wide v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    long-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    const-string v3, "translationY"

    if-eqz p1, :cond_3b

    move v4, v5

    :goto_1b
    if-eqz p1, :cond_1f

    iget v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressBarMovement:F

    :cond_1f
    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/animator/PropertyAnimator;-><init>(ILjava/lang/Object;Ljava/lang/String;FF)V

    .line 1212
    invoke-virtual {v0}, Lcom/google/android/music/animator/Animator;->start()V

    .line 1223
    :goto_25
    new-instance v0, Lcom/google/android/music/animator/PropertyAnimator;

    iget-wide v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    long-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    const-string v3, "thumbAlpha"

    if-eqz p1, :cond_68

    move v4, v10

    :goto_31
    if-eqz p1, :cond_6a

    move v5, v9

    :goto_34
    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/animator/PropertyAnimator;-><init>(ILjava/lang/Object;Ljava/lang/String;II)V

    .line 1225
    invoke-virtual {v0}, Lcom/google/android/music/animator/Animator;->start()V

    .line 1251
    :goto_3a
    return-void

    .line 1209
    :cond_3b
    iget v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressBarMovement:F

    goto :goto_1b

    .line 1214
    :cond_3e
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_63

    move v6, v5

    :goto_43
    if-eqz p1, :cond_66

    iget v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressBarMovement:F

    :goto_47
    move v1, v10

    move v2, v5

    move v3, v10

    move v4, v5

    move v5, v10

    move v7, v10

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1218
    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1219
    iget-wide v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1220
    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1221
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v1, v0}, Lcom/google/android/music/SizableTrackSeekBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_25

    .line 1214
    :cond_63
    iget v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressBarMovement:F

    goto :goto_43

    :cond_66
    move v8, v5

    goto :goto_47

    :cond_68
    move v4, v9

    .line 1223
    goto :goto_31

    :cond_6a
    move v5, v10

    goto :goto_34

    .line 1228
    :cond_6c
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    .line 1229
    invoke-direct {p0, v10, v10, v3}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    .line 1230
    const/4 v2, 0x1

    invoke-direct {p0, v2, v10, v3}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v2

    .line 1231
    new-instance v3, Lcom/google/android/music/MediaPlaybackActivity$5;

    invoke-direct {v3, p0, p1, v0, v2}, Lcom/google/android/music/MediaPlaybackActivity$5;-><init>(Lcom/google/android/music/MediaPlaybackActivity;ZLandroid/view/View;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1249
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v1}, Lcom/google/android/music/SizableTrackSeekBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3a
.end method

.method private animateScalingLandscape(Z)V
    .registers 6
    .parameter "shrink"

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    invoke-virtual {v0}, Lcom/google/android/music/MediaPlaybackLayout;->isCollapsed()Z

    move-result v0

    if-eq p1, v0, :cond_3d

    .line 1125
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->animateFadePlayingTimes(Z)V

    .line 1126
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->animateProgressBarMove(Z)V

    .line 1127
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    iget-wide v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    sget-object v3, Lcom/google/android/music/MediaPlaybackActivity;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/music/MediaPlaybackLayout;->animate(ZJLandroid/view/animation/Interpolator;)V

    .line 1128
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->animateFadeTrackInfo(Z)V

    .line 1129
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->animatePlayControlTransition(Z)V

    .line 1130
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    invoke-direct {p0, p1, p1, v1}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/RatingSelector;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1131
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractor:Landroid/widget/ImageView;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractorOverlay:Landroid/view/View;

    if-eqz v0, :cond_3d

    .line 1132
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractor:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1133
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractorOverlay:Landroid/view/View;

    if-nez p1, :cond_3e

    const/4 v0, 0x1

    :goto_3a
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1136
    :cond_3d
    return-void

    .line 1133
    :cond_3e
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method private animateScalingPortrait(Z)V
    .registers 6
    .parameter "shrink"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    invoke-virtual {v0}, Lcom/google/android/music/MediaPlaybackLayout;->isCollapsed()Z

    move-result v0

    if-eq p1, v0, :cond_42

    .line 1140
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->animateFadePlayingTimes(Z)V

    .line 1141
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->animateProgressBarMove(Z)V

    .line 1142
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->animateControlAnimation(ZLandroid/view/View;)V

    .line 1143
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->animateControlAnimation(ZLandroid/view/View;)V

    .line 1144
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->animateFadeTrackInfo(Z)V

    .line 1145
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    iget-wide v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    sget-object v3, Lcom/google/android/music/MediaPlaybackActivity;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/music/MediaPlaybackLayout;->animate(ZJLandroid/view/animation/Interpolator;)V

    .line 1146
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    invoke-direct {p0, p1, p1, v1}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/RatingSelector;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1147
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractor:Landroid/widget/ImageView;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractorOverlay:Landroid/view/View;

    if-eqz v0, :cond_42

    .line 1148
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->animateContractorAnimation(Z)V

    .line 1149
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractorOverlay:Landroid/view/View;

    if-nez p1, :cond_43

    const/4 v0, 0x1

    :goto_3f
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1152
    :cond_42
    return-void

    .line 1149
    :cond_43
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method private clearDisplay()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1423
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 1425
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentAlbumId:J

    .line 1426
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->clearArtwork()V

    .line 1427
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v0, v2}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;)V

    .line 1428
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameSml:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameSml:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    :cond_1b
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameExp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameSml:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameSml:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1431
    :cond_29
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameExp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1433
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/RatingSelector;->setRating(I)V

    .line 1434
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameSml:Landroid/widget/TextView;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameSml:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1435
    :cond_3d
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameExp:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1436
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    return-void
.end method

.method private cycleRepeat()V
    .registers 4

    .prologue
    const/4 v1, 0x2

    .line 1742
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v0, :cond_6

    .line 1765
    :goto_5
    return-void

    .line 1746
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getRepeatMode()I

    move-result v0

    .line 1747
    if-nez v0, :cond_29

    .line 1748
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/music/IMusicPlaybackService;->setRepeatMode(I)V

    .line 1749
    const v0, 0x7f0d006b

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->showToast(I)V

    .line 1761
    :goto_1a
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1d} :catch_1e

    goto :goto_5

    .line 1762
    :catch_1e
    move-exception v0

    .line 1763
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1750
    :cond_29
    if-ne v0, v1, :cond_49

    .line 1751
    :try_start_2b
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/music/IMusicPlaybackService;->setRepeatMode(I)V

    .line 1752
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getShuffleMode()I

    move-result v0

    if-eqz v0, :cond_42

    .line 1753
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/music/IMusicPlaybackService;->setShuffleMode(I)V

    .line 1754
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V

    .line 1756
    :cond_42
    const v0, 0x7f0d006a

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_1a

    .line 1758
    :cond_49
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/music/IMusicPlaybackService;->setRepeatMode(I)V

    .line 1759
    const v0, 0x7f0d0069

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->showToast(I)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_55} :catch_1e

    goto :goto_1a
.end method

.method private doExternalSearch(Landroid/view/View;)V
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 612
    sget-boolean v0, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v0, :cond_d

    const-string v0, "MediaPlaybackActivity"

    const-string v3, "doExternalSearch()..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_d
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 615
    const-string v0, "MediaPlaybackActivity"

    const-string v1, "Do external search does not work pre-GB"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_1a
    :goto_1a
    return-void

    .line 619
    :cond_1b
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_1a

    .line 623
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SEARCH"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    :try_start_26
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    .line 639
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 640
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 641
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;
    :try_end_3d
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_3d} :catch_77
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_3d} :catch_91

    move-result-object v0

    .line 652
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9d

    invoke-static {v5}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9d

    if-eqz v4, :cond_9d

    const-string v6, "recording"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 657
    sget-boolean v0, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v0, :cond_1a

    const-string v0, "MediaPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doExternalSearch: not music! song = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 642
    :catch_77
    move-exception v0

    .line 644
    const-string v1, "MediaPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doExternalSearch: null mService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 647
    :catch_91
    move-exception v0

    .line 648
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 662
    :cond_9d
    if-eqz v0, :cond_a5

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v6

    if-nez v6, :cond_c9

    .line 664
    :cond_a5
    sget-boolean v1, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v1, :cond_1a

    const-string v1, "MediaPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doExternalSearch: audioid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; bailing out..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 668
    :cond_c9
    invoke-static {v5}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_160

    move v0, v1

    .line 670
    :goto_d0
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_163

    move v6, v1

    .line 672
    :goto_d7
    if-eqz v0, :cond_166

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameExp:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_166

    .line 674
    const-string v1, "vnd.android.cursor.item/artist"

    move-object v2, v5

    .line 699
    :goto_e4
    const-string v8, "query"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    if-eqz v0, :cond_f0

    .line 701
    const-string v0, "android.intent.extra.artist"

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    :cond_f0
    if-eqz v6, :cond_f7

    .line 704
    const-string v0, "android.intent.extra.album"

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    :cond_f7
    const-string v0, "android.intent.extra.title"

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const-string v0, "android.intent.extra.focus"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    sget-boolean v0, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v0, :cond_157

    .line 710
    const-string v0, "MediaPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doExternalSearch(): launching query \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const-string v0, "MediaPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v0, "MediaPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_157
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/music/activitymanagement/MusicStateController;->superStartActivity(Landroid/content/Intent;)V

    goto/16 :goto_1a

    :cond_160
    move v0, v2

    .line 668
    goto/16 :goto_d0

    :cond_163
    move v6, v2

    .line 670
    goto/16 :goto_d7

    .line 675
    :cond_166
    if-eqz v6, :cond_192

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameExp:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_192

    .line 676
    if-eqz v0, :cond_190

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 681
    :goto_189
    const-string v2, "vnd.android.cursor.item/album"

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_e4

    :cond_190
    move-object v1, v3

    .line 679
    goto :goto_189

    .line 682
    :cond_192
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameExp:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19e

    if-eqz v0, :cond_19e

    if-nez v6, :cond_1ea

    .line 683
    :cond_19e
    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c8

    .line 684
    sget-boolean v0, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v0, :cond_1a

    const-string v0, "MediaPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doExternalSearch: unknown song \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'; bailing out..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 689
    :cond_1c8
    if-eqz v0, :cond_1e8

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    :goto_1e1
    const-string v2, "audio/*"

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_e4

    :cond_1e8
    move-object v1, v4

    .line 692
    goto :goto_1e1

    .line 696
    :cond_1ea
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t be here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doPauseResume()V
    .registers 4

    .prologue
    .line 1699
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_17

    .line 1701
    :try_start_4
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1702
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->stop()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_26

    .line 1711
    :goto_11
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->refreshNow()J

    .line 1712
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 1714
    :cond_17
    return-void

    .line 1703
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1704
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->pause()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26

    goto :goto_11

    .line 1708
    :catch_26
    move-exception v0

    .line 1709
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 1706
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->play()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_36} :catch_26

    goto :goto_11
.end method

.method private generateAlphaAnim(ZZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;
    .registers 8
    .parameter "fadeIn"
    .parameter "delay"
    .parameter "target"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 1267
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_2c

    move v3, v2

    :goto_8
    if-eqz p1, :cond_2e

    :goto_a
    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1269
    .local v0, alphaAnim:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1270
    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1271
    iget-wide v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1272
    if-eqz p2, :cond_21

    .line 1273
    iget-wide v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 1275
    :cond_21
    if-eqz p3, :cond_2b

    .line 1276
    new-instance v1, Lcom/google/android/music/MediaPlaybackActivity$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/google/android/music/MediaPlaybackActivity$6;-><init>(Lcom/google/android/music/MediaPlaybackActivity;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1290
    :cond_2b
    return-object v0

    .end local v0           #alphaAnim:Landroid/view/animation/AlphaAnimation;
    :cond_2c
    move v3, v1

    .line 1267
    goto :goto_8

    :cond_2e
    move v1, v2

    goto :goto_a
.end method

.method private getErrorMessage(I)Ljava/lang/CharSequence;
    .registers 6
    .parameter

    .prologue
    const v0, 0x7f0d00dd

    .line 2180
    packed-switch p1, :pswitch_data_52

    .line 2213
    invoke-static {}, Lcom/google/android/music/MusicUtils;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 2214
    const v0, 0x7f0d0091

    .line 2219
    :cond_f
    :goto_f
    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2182
    :pswitch_14
    const v0, 0x7f0d00db

    .line 2183
    goto :goto_f

    .line 2185
    :pswitch_18
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v1

    .line 2188
    :try_start_1e
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyOnWifi()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/google/android/music/dl/INetworkMonitor;->hasHighSpeedConnection()Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2b} :catch_32

    move-result v1

    if-nez v1, :cond_f

    .line 2190
    const v0, 0x7f0d00dc

    goto :goto_f

    .line 2194
    :catch_32
    move-exception v1

    .line 2195
    const-string v2, "MediaPlaybackActivity"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 2200
    :pswitch_3d
    const v0, 0x7f0d00de

    .line 2201
    goto :goto_f

    .line 2203
    :pswitch_41
    const v0, 0x7f0d00e4

    .line 2204
    goto :goto_f

    .line 2206
    :pswitch_45
    const v0, 0x7f0d00e6

    .line 2207
    goto :goto_f

    .line 2209
    :pswitch_49
    const v0, 0x7f0d00e5

    .line 2210
    goto :goto_f

    .line 2216
    :cond_4d
    const v0, 0x7f0d0087

    goto :goto_f

    .line 2180
    nop

    :pswitch_data_52
    .packed-switch 0x2
        :pswitch_14
        :pswitch_18
        :pswitch_3d
        :pswitch_45
        :pswitch_41
        :pswitch_49
    .end packed-switch
.end method

.method private getSongListFlag()I
    .registers 5

    .prologue
    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, songList:Lcom/google/android/music/medialist/SongList;
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v2, :cond_b

    .line 409
    :try_start_5
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_11

    move-result-object v1

    .line 414
    :cond_b
    :goto_b
    if-nez v1, :cond_1c

    .line 415
    const v2, 0x7fffffff

    .line 417
    :goto_10
    return v2

    .line 410
    :catch_11
    move-exception v0

    .line 411
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 417
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1c
    invoke-virtual {v1}, Lcom/google/android/music/medialist/SongList;->getFlags()I

    move-result v2

    goto :goto_10
.end method

.method private handleMenuCommand(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1454
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_c0

    .line 1519
    const-string v0, "MediaPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicMenuItemSelected: unexpected item id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const/4 v0, 0x0

    :cond_21
    :goto_21
    return v0

    .line 1456
    :sswitch_22
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_21

    .line 1458
    :try_start_26
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1459
    const-string v2, "android.media.extra.AUDIO_SESSION"

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v3}, Lcom/google/android/music/IMusicPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1460
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-virtual {v2, v1, v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_41} :catch_42

    goto :goto_21

    .line 1461
    :catch_42
    move-exception v1

    .line 1462
    const-string v2, "MediaPlaybackActivity"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 1469
    :sswitch_4d
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->searchMoreByArtist()V

    goto :goto_21

    .line 1474
    :sswitch_51
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1478
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/google/android/music/CreateInstantMixActivity;->createInstantPlaylistOnTrack(Landroid/content/Context;J)V

    goto :goto_21

    .line 1486
    :sswitch_67
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_21

    .line 1488
    :try_start_6b
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    .line 1489
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1490
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v5, v1}, Lcom/google/android/music/MusicUtils;->setRingtone(Landroid/content/Context;Lcom/google/android/music/store/IStoreService;JLjava/lang/String;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_8a} :catch_8b

    goto :goto_21

    .line 1493
    :catch_8b
    move-exception v1

    .line 1494
    const-string v2, "MediaPlaybackActivity"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 1500
    :sswitch_96
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v2, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v1, v2, :cond_21

    .line 1501
    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto :goto_21

    .line 1507
    :sswitch_a2
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v2, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v1, v2, :cond_21

    .line 1508
    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto/16 :goto_21

    .line 1514
    :sswitch_af
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    const v2, 0x7f0d0045

    invoke-static {v2, p0}, Lcom/google/android/music/dl/IntentConstants;->getHelpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->superStartActivity(Landroid/content/Intent;)V

    goto/16 :goto_21

    .line 1454
    nop

    :sswitch_data_c0
    .sparse-switch
        0x2 -> :sswitch_67
        0x17 -> :sswitch_af
        0x1a -> :sswitch_22
        0x1b -> :sswitch_51
        0x1f4 -> :sswitch_4d
        0x1f5 -> :sswitch_a2
        0x1f6 -> :sswitch_96
    .end sparse-switch
.end method

.method private initializeView()V
    .registers 12

    .prologue
    const v10, 0x7f100020

    const v8, 0x7f10001f

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 227
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 228
    .local v1, resources:Landroid/content/res/Resources;
    const-wide/16 v6, 0xc8

    iput-wide v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    .line 229
    const v3, 0x7f090066

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 231
    .local v0, imagePadding:I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v9, :cond_30b

    move v3, v4

    :goto_22
    iput-boolean v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    .line 233
    const v3, 0x7f10001c

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 234
    const v3, 0x7f10001d

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    .line 235
    const v3, 0x102000d

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/SizableTrackSeekBar;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    .line 236
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v3, v4}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 237
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->getRefreshDelay(Landroid/view/View;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRefreshDelayMs:J

    .line 239
    const v3, 0x7f10002f

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/PassTouchEvents;

    .line 241
    .local v2, touchEventPasser:Lcom/google/android/music/PassTouchEvents;
    if-eqz v2, :cond_62

    .line 242
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v2, v3}, Lcom/google/android/music/PassTouchEvents;->setSendEventsTo(Landroid/view/View;)V

    .line 245
    :cond_62
    const v3, 0x7f100015

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractorOverlay:Landroid/view/View;

    .line 246
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractorOverlay:Landroid/view/View;

    if-eqz v3, :cond_74

    .line 248
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractorOverlay:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :cond_74
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v3

    if-nez v3, :cond_81

    .line 251
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v3, v5}, Lcom/google/android/music/SizableTrackSeekBar;->setThumbAlpha(I)V

    .line 254
    :cond_81
    const v3, 0x7f100030

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    .line 255
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    if-eqz v3, :cond_93

    .line 256
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    :cond_93
    const v3, 0x7f10004b

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBuyButton:Landroid/view/View;

    .line 260
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBuyButton:Landroid/view/View;

    if-eqz v3, :cond_a5

    .line 261
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBuyButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :cond_a5
    const v3, 0x7f100018

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 265
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-eqz v3, :cond_b9

    .line 266
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v3, p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    :cond_b9
    const v3, 0x7f100016

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/MediaPlaybackLayout;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    .line 270
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    sget-object v6, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->FOREGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    invoke-virtual {v3, v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->setLayerMode(Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;)V

    .line 272
    const v3, 0x7f100019

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    .line 273
    const v3, 0x7f10001a

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    .line 275
    const v3, 0x7f100029

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/RatingSelector;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    .line 276
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    invoke-virtual {v3, p0}, Lcom/google/android/music/RatingSelector;->setParent(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 278
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v3

    if-nez v3, :cond_312

    .line 279
    invoke-virtual {p0, v10}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameSml:Landroid/widget/TextView;

    .line 280
    const v3, 0x7f100035

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameSml:Landroid/widget/TextView;

    .line 281
    invoke-virtual {p0, v8}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameSml:Landroid/widget/TextView;

    .line 282
    const v3, 0x7f100025

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameExp:Landroid/widget/TextView;

    .line 283
    const v3, 0x7f100027

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameExp:Landroid/widget/TextView;

    .line 284
    const v3, 0x7f100023

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameExp:Landroid/widget/TextView;

    .line 285
    const v3, 0x7f100017

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextSmall:Landroid/view/View;

    .line 286
    const v3, 0x7f100021

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextExpanded:Landroid/view/View;

    .line 287
    const v3, 0x7f100024

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackLabel:Landroid/widget/TextView;

    .line 288
    const v3, 0x7f100026

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistLabel:Landroid/widget/TextView;

    .line 289
    const v3, 0x7f100028

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumLabel:Landroid/widget/TextView;

    .line 290
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackLabel:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistLabel:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumLabel:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v3, 0x7f10001e

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractor:Landroid/widget/ImageView;

    .line 294
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractor:Landroid/widget/ImageView;

    const v6, 0x7f090067

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-direct {p0, v3, v6}, Lcom/google/android/music/MediaPlaybackActivity;->prepButton(Landroid/view/View;I)V

    .line 297
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    iget-boolean v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    if-eqz v3, :cond_30e

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    :goto_196
    invoke-virtual {v6, v3}, Lcom/google/android/music/MediaPlaybackLayout;->setViewBelow(Landroid/view/View;)V

    .line 298
    iget-boolean v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    if-nez v3, :cond_1a4

    .line 299
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextExpanded:Landroid/view/View;

    invoke-virtual {v3, v6}, Lcom/google/android/music/RatingSelector;->setLeftMargin(Landroid/view/View;)V

    .line 312
    :cond_1a4
    :goto_1a4
    const v3, 0x7f10001b

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    .line 314
    const v3, 0x7f100022

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    .line 315
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    if-eqz v3, :cond_1d1

    .line 316
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    new-instance v6, Lcom/google/android/music/FadingColorDrawable;

    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    invoke-direct {v6, v7, v8}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :cond_1d1
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameExp:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 321
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameExp:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameExp:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 323
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameExp:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 325
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameExp:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameExp:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameExp:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 328
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameExp:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 330
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameExp:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 331
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameExp:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameExp:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 333
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameExp:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 335
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v3

    if-eqz v3, :cond_23f

    .line 336
    const v3, 0x7f100036

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackButton:Landroid/view/View;

    .line 337
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    const v3, 0x7f100037

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistButton:Landroid/view/View;

    .line 339
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const v3, 0x7f100038

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumButton:Landroid/view/View;

    .line 341
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    :cond_23f
    const v3, 0x7f10002b

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/RepeatingImageButton;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    .line 345
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    invoke-direct {p0, v3, v0}, Lcom/google/android/music/MediaPlaybackActivity;->prepButton(Landroid/view/View;I)V

    .line 346
    const v3, 0x7f10002c

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/PlayPauseButton;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    .line 347
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    invoke-virtual {v3}, Lcom/google/android/music/PlayPauseButton;->requestFocus()Z

    .line 348
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    invoke-direct {p0, v3, v0}, Lcom/google/android/music/MediaPlaybackActivity;->prepButton(Landroid/view/View;I)V

    .line 349
    const v3, 0x7f10002d

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/RepeatingImageButton;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    .line 350
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    invoke-direct {p0, v3, v0}, Lcom/google/android/music/MediaPlaybackActivity;->prepButton(Landroid/view/View;I)V

    .line 351
    iput v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->seekmethod:I

    .line 353
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->navigation:I

    if-ne v3, v9, :cond_355

    :goto_27e
    iput-boolean v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDeviceHasDpad:Z

    .line 356
    const v3, 0x7f10002a

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    .line 357
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0}, Lcom/google/android/music/MediaPlaybackActivity;->prepButton(Landroid/view/View;I)V

    .line 358
    const v3, 0x7f10002e

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    .line 359
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v0}, Lcom/google/android/music/MediaPlaybackActivity;->prepButton(Landroid/view/View;I)V

    .line 361
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Lcom/google/android/music/SizableTrackSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 362
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Lcom/google/android/music/SizableTrackSeekBar;->setMax(I)V

    .line 364
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTouchSlop:I

    .line 365
    new-instance v3, Lcom/google/android/music/BufferProgressListener;

    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-direct {v3, v4}, Lcom/google/android/music/BufferProgressListener;-><init>(Landroid/widget/ProgressBar;)V

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    .line 367
    const v3, 0x7f0a0001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    .line 368
    const v3, 0x7f0a0002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mFlashWhenPausedColor:Landroid/content/res/ColorStateList;

    .line 370
    const v3, 0x7f100013

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDebugStreamingView:Landroid/widget/TextView;

    .line 371
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "music_streaming_debug"

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2f3

    .line 373
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDebugStreamingView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    :cond_2f3
    const v3, 0x7f090061

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const/high16 v4, -0x4080

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressBarMovement:F

    .line 376
    const v3, 0x7f10004a

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSharedTitle:Landroid/widget/TextView;

    .line 377
    return-void

    .end local v2           #touchEventPasser:Lcom/google/android/music/PassTouchEvents;
    :cond_30b
    move v3, v5

    .line 231
    goto/16 :goto_22

    .line 297
    .restart local v2       #touchEventPasser:Lcom/google/android/music/PassTouchEvents;
    :cond_30e
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextExpanded:Landroid/view/View;

    goto/16 :goto_196

    .line 302
    :cond_312
    invoke-virtual {p0, v8}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameExp:Landroid/widget/TextView;

    .line 303
    invoke-virtual {p0, v10}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameExp:Landroid/widget/TextView;

    .line 304
    const v3, 0x7f100035

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameExp:Landroid/widget/TextView;

    .line 306
    const v3, 0x7f100032

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameIcon:Landroid/widget/ImageView;

    .line 307
    const v3, 0x7f100033

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameIcon:Landroid/widget/ImageView;

    .line 308
    const v3, 0x7f100034

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameIcon:Landroid/widget/ImageView;

    .line 309
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1a4

    :cond_355
    move v4, v5

    .line 353
    goto/16 :goto_27e
.end method

.method private isAlbumInfoClickable()Z
    .registers 3

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getSongListFlag()I

    move-result v0

    .line 397
    .local v0, flag:I
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private isAlbumInfoExpandable()Z
    .registers 3

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getSongListFlag()I

    move-result v0

    .line 386
    .local v0, flag:I
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private prepButton(Landroid/view/View;I)V
    .registers 5
    .parameter "button"
    .parameter "padding"

    .prologue
    .line 422
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    new-instance v0, Lcom/google/android/music/FadingColorDrawable;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_18

    .line 425
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 427
    :cond_18
    return-void
.end method

.method private queueNextRefresh(J)V
    .registers 6
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 1894
    iget-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->paused:Z

    if-nez v1, :cond_15

    .line 1895
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1896
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1897
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1899
    .end local v0           #msg:Landroid/os/Message;
    :cond_15
    return-void
.end method

.method private refreshNow()J
    .registers 13

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v0, 0x1f4

    const-wide/16 v8, 0x0

    .line 1902
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v2, :cond_b

    .line 1939
    :goto_a
    return-wide v0

    .line 1907
    :cond_b
    :try_start_b
    iget-wide v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_73

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->position()J

    move-result-wide v2

    move-wide v4, v2

    .line 1908
    :goto_18
    iget-wide v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRefreshDelayMs:J

    iget-wide v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRefreshDelayMs:J

    rem-long v6, v4, v6

    sub-long/2addr v2, v6

    .line 1909
    cmp-long v6, v4, v8

    if-ltz v6, :cond_8d

    iget-wide v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_8d

    .line 1910
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1911
    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f

    .line 1912
    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/google/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1913
    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1916
    :cond_4f
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v6}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_77

    .line 1917
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1925
    :goto_5e
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    mul-long/2addr v4, v10

    iget-wide v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    div-long/2addr v4, v7

    long-to-int v4, v4

    invoke-virtual {v6, v4}, Lcom/google/android/music/SizableTrackSeekBar;->setProgress(I)V

    .line 1934
    :goto_68
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->requestLayout()V

    move-wide v0, v2

    .line 1935
    goto :goto_a

    .line 1907
    :cond_73
    iget-wide v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    move-wide v4, v2

    goto :goto_18

    .line 1920
    :cond_77
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    if-ne v2, v6, :cond_8a

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mFlashWhenPausedColor:Landroid/content/res/ColorStateList;

    :goto_85
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-wide v2, v0

    .line 1922
    goto :goto_5e

    .line 1920
    :cond_8a
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    goto :goto_85

    .line 1927
    :cond_8d
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const-string v5, "--:--"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1928
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1929
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1930
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/music/SizableTrackSeekBar;->setProgress(I)V
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_a7} :catch_a8

    goto :goto_68

    .line 1936
    :catch_a8
    move-exception v2

    .line 1937
    const-string v3, "MediaPlaybackActivity"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a
.end method

.method private searchMoreByArtist()V
    .registers 9

    .prologue
    .line 923
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v0, :cond_5

    .line 933
    :goto_4
    return-void

    .line 925
    :cond_5
    :try_start_5
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getArtistId()J

    move-result-wide v1

    .line 926
    .local v1, artistId:J
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 927
    .local v3, artistName:Ljava/lang/String;
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getSortableAlbumArtistName()Ljava/lang/String;

    move-result-object v4

    .line 928
    .local v4, sortableAlbumArtistName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    const-wide/16 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->startAlbumListingForAlbumArtist(JLjava/lang/String;Ljava/lang/String;J)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_4

    .line 930
    .end local v1           #artistId:J
    .end local v3           #artistName:Ljava/lang/String;
    .end local v4           #sortableAlbumArtistName:Ljava/lang/String;
    :catch_21
    move-exception v7

    .line 931
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MediaPlaybackActivity"

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private setControlsClickableAccordingToFlag()V
    .registers 3

    .prologue
    .line 1822
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->isAlbumInfoClickable()Z

    move-result v0

    .line 1825
    .local v0, clickable:Z
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    if-eqz v1, :cond_d

    .line 1826
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v1, v0}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 1828
    :cond_d
    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->setProgressTouchClickable(Z)V

    .line 1829
    return-void
.end method

.method private setControlsVisibilityAccordingToFlag()V
    .registers 3

    .prologue
    .line 1806
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->isAlbumInfoExpandable()Z

    move-result v1

    if-eqz v1, :cond_38

    const/4 v0, 0x0

    .line 1809
    .local v0, visibility:I
    :goto_7
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractor:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 1810
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1811
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 1812
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameIcon:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 1813
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameIcon:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 1814
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameIcon:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 1815
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 1816
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 1817
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    invoke-static {v1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->setViewVisibility(Landroid/view/View;I)V

    .line 1819
    :cond_37
    return-void

    .line 1806
    .end local v0           #visibility:I
    :cond_38
    const/4 v0, 0x4

    goto :goto_7
.end method

.method private setPauseButtonImage()V
    .registers 4

    .prologue
    .line 1878
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_1a

    .line 1880
    :try_start_4
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1881
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V

    .line 1891
    :cond_1a
    :goto_1a
    return-void

    .line 1882
    :cond_1b
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1883
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_2a

    goto :goto_1a

    .line 1887
    :catch_2a
    move-exception v0

    .line 1888
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 1885
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/music/PlayPauseButton;->setCurrentPlayState(I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3b} :catch_2a

    goto :goto_1a
.end method

.method private setProgressTouchClickable(Z)V
    .registers 3
    .parameter "clickable"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 937
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 939
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractorOverlay:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 940
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractorOverlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 942
    :cond_12
    return-void
.end method

.method private setRepeatButtonImage()V
    .registers 4

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    if-nez v0, :cond_9

    .line 1859
    :cond_8
    :goto_8
    return-void

    .line 1845
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getRepeatMode()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 1853
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_8

    .line 1856
    :catch_1b
    move-exception v0

    .line 1857
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1847
    :pswitch_26
    :try_start_26
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 1850
    :pswitch_2f
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    const v1, 0x7f020113

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_37} :catch_1b

    goto :goto_8

    .line 1845
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_26
    .end packed-switch
.end method

.method private setShuffleButtonImage()V
    .registers 4

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    if-nez v0, :cond_9

    .line 1875
    :cond_8
    :goto_8
    return-void

    .line 1864
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getShuffleMode()I

    move-result v0

    packed-switch v0, :pswitch_data_30

    .line 1869
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    const v1, 0x7f020128

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_8

    .line 1872
    :catch_1b
    move-exception v0

    .line 1873
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1866
    :pswitch_26
    :try_start_26
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    const v1, 0x7f02011f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2e} :catch_1b

    goto :goto_8

    .line 1864
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_26
    .end packed-switch
.end method

.method private static setViewVisibility(Landroid/view/View;I)V
    .registers 2
    .parameter "v"
    .parameter "visibility"

    .prologue
    .line 1837
    if-eqz p0, :cond_5

    .line 1838
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1840
    :cond_5
    return-void
.end method

.method private showContextMusicMenu(Landroid/view/View;)V
    .registers 24
    .parameter "view"

    .prologue
    .line 895
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v1, :cond_5

    .line 917
    :cond_4
    :goto_4
    return-void

    .line 899
    :cond_5
    :try_start_5
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 901
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 903
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v2

    .line 904
    .local v2, id:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getContextMenuManager()Lcom/google/android/music/utils/ContextMenuManager;

    move-result-object v1

    sget-object v4, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v4}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v5}, Lcom/google/android/music/IMusicPlaybackService;->getArtistId()J

    move-result-wide v5

    sget-object v7, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v7}, Lcom/google/android/music/IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lcom/google/android/music/utils/ContextMenuManager;->getPopupLocation(Landroid/view/View;)[I

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    sget-object v12, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v12}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v12

    const-wide/16 v13, -0x1

    sget-object v15, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v15}, Lcom/google/android/music/IMusicPlaybackService;->getSongStoreId()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    sget-object v17, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v17 .. v17}, Lcom/google/android/music/IMusicPlaybackService;->hasRemote()Z

    move-result v17

    sget-object v18, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface/range {v18 .. v18}, Lcom/google/android/music/IMusicPlaybackService;->hasLocal()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v20

    invoke-virtual/range {v1 .. v20}, Lcom/google/android/music/utils/ContextMenuManager;->showTrackContextMenu(JLjava/lang/String;JLjava/lang/String;[ILandroid/view/View;IZLcom/google/android/music/medialist/SongList;JLjava/lang/String;ZZZLcom/google/android/music/store/IStoreService;Lcom/google/android/music/dl/INetworkMonitor;)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_7a} :catch_7b

    goto :goto_4

    .line 914
    .end local v2           #id:J
    :catch_7b
    move-exception v21

    .line 915
    .local v21, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual/range {v21 .. v21}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method

.method private showToast(I)V
    .registers 4
    .parameter

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_d

    .line 1769
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    .line 1771
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 1772
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1773
    return-void
.end method

.method private toggleShuffle()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1717
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v0, :cond_6

    .line 1739
    :goto_5
    return-void

    .line 1721
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getShuffleMode()I

    move-result v0

    .line 1722
    if-nez v0, :cond_3a

    .line 1723
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/music/IMusicPlaybackService;->setShuffleMode(I)V

    .line 1724
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getRepeatMode()I

    move-result v0

    if-ne v0, v2, :cond_25

    .line 1725
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/music/IMusicPlaybackService;->setRepeatMode(I)V

    .line 1726
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V

    .line 1728
    :cond_25
    const v0, 0x7f0d0067

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->showToast(I)V

    .line 1735
    :goto_2b
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2e} :catch_2f

    goto :goto_5

    .line 1736
    :catch_2f
    move-exception v0

    .line 1737
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1729
    :cond_3a
    if-ne v0, v2, :cond_49

    .line 1730
    :try_start_3c
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/music/IMusicPlaybackService;->setShuffleMode(I)V

    .line 1731
    const v0, 0x7f0d0068

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->showToast(I)V

    goto :goto_2b

    .line 1733
    :cond_49
    const-string v1, "MediaPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shuffle mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_61} :catch_2f

    goto :goto_2b
.end method

.method private transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V
    .registers 3
    .parameter "newState"

    .prologue
    .line 945
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V

    .line 946
    return-void
.end method

.method private transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const v6, 0x7f020004

    const v5, 0x7f020003

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 949
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, p1, :cond_e

    .line 1105
    :goto_d
    return-void

    .line 952
    :cond_e
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ERROR:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne p1, v0, :cond_1c

    if-nez p2, :cond_1c

    .line 953
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When transitioning to error, an error message must be supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_1c
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne p1, v0, :cond_27

    .line 956
    const v0, 0x7f0d009b

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 959
    :cond_27
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$14;->$SwitchMap$com$google$android$music$MediaPlaybackActivity$ViewState:[I

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-virtual {v1}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1d8

    .line 1098
    :cond_34
    :goto_34
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->isAlbumInfoClickable()Z

    move-result v0

    if-nez v0, :cond_42

    .line 1099
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v2}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 1100
    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->setProgressTouchClickable(Z)V

    .line 1104
    :cond_42
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    goto :goto_d

    .line 961
    :pswitch_45
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$14;->$SwitchMap$com$google$android$music$MediaPlaybackActivity$ViewState:[I

    invoke-virtual {p1}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e6

    goto :goto_34

    .line 963
    :pswitch_51
    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->setProgressTouchClickable(Z)V

    .line 964
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->animateExpandInfo(Z)V

    goto :goto_34

    .line 967
    :pswitch_58
    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->setProgressTouchClickable(Z)V

    .line 968
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 969
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v2}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 970
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 971
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->animateExpandInfo(Z)V

    goto :goto_34

    .line 974
    :pswitch_6e
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v2}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 976
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_34

    .line 979
    :pswitch_7e
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v2}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 980
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 981
    invoke-direct {p0, v3, p2}, Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V

    goto :goto_34

    .line 986
    :pswitch_8c
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_34

    .line 989
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$14;->$SwitchMap$com$google$android$music$MediaPlaybackActivity$ViewState:[I

    invoke-virtual {p1}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1f2

    goto :goto_34

    .line 1001
    :pswitch_a0
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1002
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v2}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 1003
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_34

    .line 991
    :pswitch_b0
    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->animateExpandInfo(Z)V

    .line 992
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->setProgressTouchClickable(Z)V

    goto/16 :goto_34

    .line 995
    :pswitch_b8
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 996
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v2}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 997
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->setProgressTouchClickable(Z)V

    .line 998
    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->animateExpandInfo(Z)V

    goto/16 :goto_34

    .line 1006
    :pswitch_ca
    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->animateExpandInfo(Z)V

    .line 1007
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v2}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 1008
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1009
    invoke-direct {p0, v3, p2}, Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V

    goto/16 :goto_34

    .line 1014
    :pswitch_dc
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$14;->$SwitchMap$com$google$android$music$MediaPlaybackActivity$ViewState:[I

    invoke-virtual {p1}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1fe

    :pswitch_e7
    goto/16 :goto_34

    .line 1021
    :pswitch_e9
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1023
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v3}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 1024
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->animateExpandInfo(Z)V

    .line 1025
    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->setProgressTouchClickable(Z)V

    goto/16 :goto_34

    .line 1016
    :pswitch_100
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1018
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v3}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    goto/16 :goto_34

    .line 1028
    :pswitch_111
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->animateExpandInfo(Z)V

    .line 1029
    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->setProgressTouchClickable(Z)V

    goto/16 :goto_34

    .line 1032
    :pswitch_119
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->setProgressTouchClickable(Z)V

    goto/16 :goto_34

    .line 1039
    :pswitch_128
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$14;->$SwitchMap$com$google$android$music$MediaPlaybackActivity$ViewState:[I

    invoke-virtual {p1}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20c

    :pswitch_138
    goto/16 :goto_34

    .line 1048
    :pswitch_13a
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1049
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v3}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 1050
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V

    .line 1051
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->animateExpandInfo(Z)V

    goto/16 :goto_34

    .line 1042
    :pswitch_14d
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1043
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v3}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 1044
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V

    .line 1045
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->setProgressTouchClickable(Z)V

    goto/16 :goto_34

    .line 1054
    :pswitch_160
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->animateExpandInfo(Z)V

    .line 1055
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1056
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V

    goto/16 :goto_34

    .line 1059
    :pswitch_16e
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1060
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V

    .line 1061
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->setProgressTouchClickable(Z)V

    goto/16 :goto_34

    .line 1066
    :pswitch_17c
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1069
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$14;->$SwitchMap$com$google$android$music$MediaPlaybackActivity$ViewState:[I

    invoke-virtual {p1}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_21a

    :pswitch_18f
    goto/16 :goto_34

    .line 1082
    :pswitch_191
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1083
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1084
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v3}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    goto/16 :goto_34

    .line 1071
    :pswitch_1a2
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1072
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1073
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v3}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 1074
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->setProgressTouchClickable(Z)V

    .line 1075
    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->animateExpandInfo(Z)V

    goto/16 :goto_34

    .line 1078
    :pswitch_1b9
    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->animateExpandInfo(Z)V

    .line 1079
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->setProgressTouchClickable(Z)V

    goto/16 :goto_34

    .line 1087
    :pswitch_1c1
    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->animateExpandInfo(Z)V

    .line 1088
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1089
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1090
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1091
    invoke-direct {p0, v3, p2}, Lcom/google/android/music/MediaPlaybackActivity;->animateErrorTextAnimation(ZLjava/lang/CharSequence;)V

    goto/16 :goto_34

    .line 959
    :pswitch_data_1d8
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_17c
        :pswitch_dc
        :pswitch_128
        :pswitch_45
    .end packed-switch

    .line 961
    :pswitch_data_1e6
    .packed-switch 0x1
        :pswitch_51
        :pswitch_58
        :pswitch_6e
        :pswitch_7e
    .end packed-switch

    .line 989
    :pswitch_data_1f2
    .packed-switch 0x2
        :pswitch_a0
        :pswitch_b8
        :pswitch_ca
        :pswitch_b0
    .end packed-switch

    .line 1014
    :pswitch_data_1fe
    .packed-switch 0x1
        :pswitch_e9
        :pswitch_111
        :pswitch_e7
        :pswitch_119
        :pswitch_100
    .end packed-switch

    .line 1040
    :pswitch_data_20c
    .packed-switch 0x1
        :pswitch_13a
        :pswitch_160
        :pswitch_16e
        :pswitch_138
        :pswitch_14d
    .end packed-switch

    .line 1069
    :pswitch_data_21a
    .packed-switch 0x1
        :pswitch_191
        :pswitch_18f
        :pswitch_1b9
        :pswitch_1c1
        :pswitch_1a2
    .end packed-switch
.end method

.method private updateDebugStreamingInfo()V
    .registers 4

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDebugStreamingView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_d

    .line 2176
    :cond_c
    :goto_c
    return-void

    .line 2168
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getDebugInfo()Ljava/lang/String;

    move-result-object v0

    .line 2169
    if-nez v0, :cond_17

    .line 2170
    const-string v0, "<missing>"

    .line 2172
    :cond_17
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDebugStreamingView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    goto :goto_c

    .line 2173
    :catch_1d
    move-exception v0

    .line 2174
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method private updateStreaming()V
    .registers 4

    .prologue
    .line 2140
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v1, :cond_5

    .line 2161
    :goto_4
    return-void

    .line 2144
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isInErrorState()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2145
    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ERROR:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getErrorType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->getErrorMessage(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V

    .line 2157
    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateDebugStreamingInfo()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1f} :catch_20

    goto :goto_4

    .line 2158
    :catch_20
    move-exception v0

    .line 2159
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2146
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2b
    :try_start_2b
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 2147
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v2, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v1, v2, :cond_47

    .line 2148
    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING_CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto :goto_1c

    .line 2150
    :cond_47
    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto :goto_1c

    .line 2152
    :cond_4d
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v2, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING_CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v1, v2, :cond_59

    .line 2153
    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto :goto_1c

    .line 2154
    :cond_59
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v2, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-eq v1, v2, :cond_1c

    .line 2155
    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_64} :catch_20

    goto :goto_1c
.end method

.method private updateTrackInfo()V
    .registers 5

    .prologue
    const/4 v3, 0x5

    .line 2026
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2027
    .local v0, numsg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2028
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2029
    return-void
.end method

.method private updateTrackInfoImpl()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 2032
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->paused:Z

    if-eqz v0, :cond_a

    .line 2137
    :cond_9
    :goto_9
    return-void

    .line 2039
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->hasValidPlaylist()Z

    move-result v0

    if-nez v0, :cond_25

    .line 2040
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHadValidPlaylistBefore:Z

    if-eqz v0, :cond_9

    .line 2041
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->finish()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_1a

    goto :goto_9

    .line 2134
    :catch_1a
    move-exception v0

    .line 2135
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 2048
    :cond_25
    const/4 v0, 0x1

    :try_start_26
    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHadValidPlaylistBefore:Z

    .line 2051
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 2052
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v1, v0}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;)V

    .line 2053
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->isCurrentSongLoaded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2054
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 2055
    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2056
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2060
    :cond_4e
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    .line 2062
    if-eqz v0, :cond_dd

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->getStoreUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_dd

    .line 2063
    const v1, 0x7f100049

    invoke-virtual {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2064
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSharedTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_7a

    .line 2065
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getPreviewPlayType()I

    move-result v1

    .line 2066
    packed-switch v1, :pswitch_data_114

    .line 2077
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSharedTitle:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2083
    :cond_7a
    :goto_7a
    instance-of v1, v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    if-eqz v1, :cond_ea

    .line 2084
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 2085
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 2086
    const v1, 0x7f0d0065

    invoke-virtual {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2090
    :cond_91
    check-cast v0, Lcom/google/android/music/medialist/ExternalDomainSongList;

    .line 2091
    invoke-virtual {v0}, Lcom/google/android/music/medialist/ExternalDomainSongList;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v0

    .line 2092
    if-eqz v0, :cond_9e

    .line 2093
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v1, v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setExternalAlbumArt(Ljava/lang/String;)V

    .line 2112
    :cond_9e
    :goto_9e
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 2114
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->duration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    .line 2115
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    invoke-static {p0, v0, v1}, Lcom/google/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 2119
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$13;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/MediaPlaybackActivity$13;-><init>(Lcom/google/android/music/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2132
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getRating()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/RatingSelector;->setRating(I)V

    goto/16 :goto_9

    .line 2069
    :pswitch_cb
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSharedTitle:Landroid/widget/TextView;

    const v4, 0x7f0d00ee

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7a

    .line 2073
    :pswitch_d4
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSharedTitle:Landroid/widget/TextView;

    const v4, 0x7f0d00ed

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7a

    .line 2081
    :cond_dd
    const v1, 0x7f100049

    invoke-virtual {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7a

    .line 2096
    :cond_ea
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J

    move-result-wide v0

    .line 2098
    iget-wide v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentAlbumId:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_9e

    .line 2099
    iput-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentAlbumId:J

    .line 2100
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v3}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 2101
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 2102
    const v3, 0x7f0d0065

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2105
    :cond_10b
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v4, v0, v1, v3, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 2106
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->requestReconfig()V
    :try_end_113
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_113} :catch_1a

    goto :goto_9e

    .line 2066
    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_cb
        :pswitch_cb
    .end packed-switch
.end method


# virtual methods
.method protected getPlaybackService()Lcom/google/android/music/IMusicPlaybackService;
    .registers 2

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 2346
    const/4 v0, 0x1

    return v0
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 8
    .parameter "state"

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->clearDisplay()V

    .line 444
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHadValidPlaylistBefore:Z

    .line 445
    invoke-virtual {p1, p0}, Lcom/google/android/music/activitymanagement/MusicState;->getSavedBundle(Lcom/google/android/music/activitymanagement/MusicFragment;)Landroid/os/Bundle;

    move-result-object v1

    .line 446
    .local v1, savedState:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-nez v3, :cond_12

    .line 447
    sget-object v3, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    iput-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    .line 450
    :cond_12
    const/4 v0, 0x0

    .line 451
    .local v0, savedErrorMsg:Ljava/lang/CharSequence;
    if-eqz v1, :cond_39

    .line 452
    invoke-static {}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->values()[Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    move-result-object v3

    const-string v4, "viewState"

    sget-object v5, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-virtual {v5}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ordinal()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    aget-object v2, v3, v4

    .line 454
    .local v2, savedViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;
    const-string v3, "viewStateError"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 458
    :goto_2d
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    .line 459
    invoke-direct {p0, v2, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;Ljava/lang/CharSequence;)V

    .line 460
    const-wide/16 v3, 0xc8

    iput-wide v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    .line 461
    return-void

    .line 456
    .end local v2           #savedViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;
    :cond_39
    sget-object v2, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    .restart local v2       #savedViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;
    goto :goto_2d
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 3
    .parameter "actionbarConfig"

    .prologue
    .line 474
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 475
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    .line 767
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_8

    .line 768
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->toggleShuffle()V

    .line 886
    :cond_7
    :goto_7
    return-void

    .line 769
    :cond_8
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_10

    .line 770
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->cycleRepeat()V

    goto :goto_7

    .line 771
    :cond_10
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    if-ne p1, v0, :cond_18

    .line 772
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->doPauseResume()V

    goto :goto_7

    .line 773
    :cond_18
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgressOverlay:Landroid/view/View;

    if-eq p1, v0, :cond_20

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    if-ne p1, v0, :cond_68

    .line 774
    :cond_20
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->isAlbumInfoExpandable()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->isAlbumInfoClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 777
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 778
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->showContextMusicMenu(Landroid/view/View;)V

    goto :goto_7

    .line 780
    :cond_38
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v1, :cond_44

    .line 781
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto :goto_7

    .line 782
    :cond_44
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v1, :cond_50

    .line 783
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto :goto_7

    .line 784
    :cond_50
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v1, :cond_5c

    .line 785
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING_CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto :goto_7

    .line 786
    :cond_5c
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING_CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v1, :cond_7

    .line 787
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto :goto_7

    .line 791
    :cond_68
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractorOverlay:Landroid/view/View;

    if-ne p1, v0, :cond_8b

    .line 792
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->isAlbumInfoExpandable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 795
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v1, :cond_7e

    .line 796
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto :goto_7

    .line 797
    :cond_7e
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v1, :cond_7

    .line 798
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING_CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto/16 :goto_7

    .line 800
    :cond_8b
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtContainerLayout:Lcom/google/android/music/MediaPlaybackLayout;

    if-eq p1, v0, :cond_7

    .line 802
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumBg:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_98

    .line 803
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->showContextMusicMenu(Landroid/view/View;)V

    goto/16 :goto_7

    .line 804
    :cond_98
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_a1

    .line 805
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->showContextMusicMenu(Landroid/view/View;)V

    goto/16 :goto_7

    .line 806
    :cond_a1
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    if-ne p1, v0, :cond_bc

    .line 807
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_7

    .line 809
    :try_start_a9
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->prev()V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ae} :catch_b0

    goto/16 :goto_7

    .line 810
    :catch_b0
    move-exception v0

    .line 811
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 813
    :cond_bc
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    if-ne p1, v0, :cond_d7

    .line 814
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_7

    .line 816
    :try_start_c4
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->next()V
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_c9} :catch_cb

    goto/16 :goto_7

    .line 817
    :catch_cb
    move-exception v0

    .line 818
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 820
    :cond_d7
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistNameExp:Landroid/widget/TextView;

    if-eq p1, v0, :cond_e3

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistLabel:Landroid/widget/TextView;

    if-eq p1, v0, :cond_e3

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistButton:Landroid/view/View;

    if-ne p1, v0, :cond_fc

    .line 821
    :cond_e3
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-eq v0, v1, :cond_f1

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 822
    :cond_f1
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->isAlbumInfoClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 823
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->searchMoreByArtist()V

    goto/16 :goto_7

    .line 825
    :cond_fc
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumNameExp:Landroid/widget/TextView;

    if-eq p1, v0, :cond_108

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumLabel:Landroid/widget/TextView;

    if-eq p1, v0, :cond_108

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumButton:Landroid/view/View;

    if-ne p1, v0, :cond_159

    .line 826
    :cond_108
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-eq v0, v1, :cond_116

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 827
    :cond_116
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_7

    .line 828
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->isAlbumInfoClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 830
    :try_start_120
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getAlbumId()J

    move-result-wide v1

    .line 831
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    .line 832
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 833
    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v5

    .line 834
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v3}, Lcom/google/android/music/IMusicPlaybackService;->getArtistId()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForAlbum(JJJ)V
    :try_end_14b
    .catch Landroid/os/RemoteException; {:try_start_120 .. :try_end_14b} :catch_14d

    goto/16 :goto_7

    .line 837
    :catch_14d
    move-exception v0

    .line 838
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 842
    :cond_159
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackNameExp:Landroid/widget/TextView;

    if-eq p1, v0, :cond_165

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackLabel:Landroid/widget/TextView;

    if-eq p1, v0, :cond_165

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackButton:Landroid/view/View;

    if-ne p1, v0, :cond_1d1

    .line 843
    :cond_165
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-eq v0, v1, :cond_173

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 845
    :cond_173
    :try_start_173
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v0, :cond_1b0

    const/4 v0, 0x0

    .line 846
    :goto_178
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->isAlbumInfoClickable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 847
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 849
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getPlaylistCount()I

    move-result v1

    if-nez v1, :cond_1b7

    .line 850
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    new-instance v2, Lcom/google/android/music/medialist/SingleSongList;

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/music/medialist/SingleSongList;-><init>(JLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->showCreatePlaylistDialog(Lcom/google/android/music/medialist/SongList;)V
    :try_end_1a2
    .catch Landroid/os/RemoteException; {:try_start_173 .. :try_end_1a2} :catch_1a4

    goto/16 :goto_7

    .line 857
    :catch_1a4
    move-exception v0

    .line 858
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 845
    :cond_1b0
    :try_start_1b0
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v0

    goto :goto_178

    .line 853
    :cond_1b7
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    new-instance v2, Lcom/google/android/music/medialist/SingleSongList;

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/music/medialist/SingleSongList;-><init>(JLjava/lang/String;)V

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/music/activitymanagement/MusicStateController;->showAddToPlaylistDialog(Lcom/google/android/music/medialist/SongList;J)V
    :try_end_1cf
    .catch Landroid/os/RemoteException; {:try_start_1b0 .. :try_end_1cf} :catch_1a4

    goto/16 :goto_7

    .line 862
    :cond_1d1
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContractor:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_209

    .line 863
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v1, :cond_1e2

    .line 864
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto/16 :goto_7

    .line 865
    :cond_1e2
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->NORMAL:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v1, :cond_1ef

    .line 866
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto/16 :goto_7

    .line 867
    :cond_1ef
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v1, :cond_1fc

    .line 868
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING_CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto/16 :goto_7

    .line 869
    :cond_1fc
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING_CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v1, :cond_7

    .line 870
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->transitionToState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;)V

    goto/16 :goto_7

    .line 872
    :cond_209
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBuyButton:Landroid/view/View;

    if-ne p1, v0, :cond_23e

    .line 873
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v0, :cond_21f

    .line 874
    const-string v0, "MediaPlaybackActivity"

    const-string v1, "MusicPlayback service was null"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 878
    :cond_21f
    :try_start_21f
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/music/dl/IntentConstants;->getStoreBuyIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_230
    .catch Landroid/os/RemoteException; {:try_start_21f .. :try_end_230} :catch_232

    goto/16 :goto_7

    .line 880
    :catch_232
    move-exception v0

    .line 881
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 884
    :cond_23e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view clicked on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 213
    sget-boolean v0, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaPlaybackActivity"

    const-string v1, "onCreate()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_b
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 216
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 217
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContentView:Landroid/view/View;

    .line 218
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->initializeView()V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->registerManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.STORE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStoreConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/music/MediaPlaybackActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 222
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-direct {v0}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 223
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 224
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2224
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2225
    const/16 v0, 0x1f5

    const v1, 0x7f0d00e9

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2226
    const/16 v0, 0x1f6

    const/4 v1, 0x3

    const v2, 0x7f0d00ea

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2227
    const/16 v0, 0x1b

    const/4 v1, 0x4

    const v2, 0x7f0d0105

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2230
    :cond_24
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2231
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 2232
    const/16 v0, 0x1a

    const v1, 0x7f0d0104

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2235
    :cond_3d
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->isRingtoneEnabled(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2236
    const/4 v0, 0x5

    const v1, 0x7f0d006c

    invoke-interface {p1, v3, v4, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 2238
    :cond_4e
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v0}, Lcom/google/android/music/BufferProgressListener;->destroy()V

    .line 1442
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicStateController;->unregisterManageMusicModeListener(Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;)V

    .line 1443
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 1444
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStoreConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1445
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 1446
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 1447
    return-void
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 6
    .parameter "layoutConfig"

    .prologue
    const/4 v1, 0x0

    .line 430
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->NOW_PLAYING_SCREEN:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V

    .line 431
    const v0, 0x7f0d0049

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setManageMusicBarEnabled(Z)V

    .line 433
    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNowPlayingBarEnabled(Z)V

    .line 434
    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setManageMusicModeEnabled(Z)V

    .line 435
    invoke-virtual {p1, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setAllowShopTutorial(Z)V

    .line 436
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentAlbumId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    .line 437
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentAlbumId:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setFocusedAlbumId(J)V

    .line 439
    :cond_29
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v0, :cond_e

    .line 600
    :cond_c
    const/4 v0, 0x0

    .line 603
    :goto_d
    return v0

    .line 602
    :cond_e
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->doExternalSearch(Landroid/view/View;)V

    .line 603
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public onManageMusicModeChanged(ZLcom/google/android/music/OfflineMusicManager;)V
    .registers 5
    .parameter "inManageMusicMode"
    .parameter "musicManager"

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 2355
    if-nez p1, :cond_c

    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->isAlbumInfoExpandable()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2356
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2361
    :cond_13
    :goto_13
    return-void

    .line 2358
    :cond_14
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContextMenu:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_13
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 2341
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->handleMenuCommand(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1385
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 1386
    iput-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->paused:Z

    .line 1387
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1388
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1390
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1391
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v0, v2}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;)V

    .line 1392
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 1393
    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    .line 1394
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 15
    .parameter "menu"

    .prologue
    const/16 v12, 0x1f5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2243
    const/16 v10, 0x65

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2244
    .local v6, item:Landroid/view/MenuItem;
    if-eqz v6, :cond_f

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2246
    :cond_f
    const/16 v10, 0x15

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2247
    if-eqz v6, :cond_1a

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2249
    :cond_1a
    const/16 v10, 0x16

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2250
    if-eqz v6, :cond_25

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2252
    :cond_25
    const/16 v10, 0xa

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2253
    if-eqz v6, :cond_30

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2255
    :cond_30
    const/16 v10, 0x13

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2256
    if-eqz v6, :cond_3b

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2258
    :cond_3b
    iget-object v10, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v10, :cond_47

    .line 2260
    :try_start_3f
    iget-object v10, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v10}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_47} :catch_f1

    .line 2266
    :cond_47
    :goto_47
    iget-object v10, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v10}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v7

    .line 2267
    .local v7, networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    const/4 v3, 0x0

    .line 2268
    .local v3, isConnected:Z
    if-eqz v7, :cond_54

    .line 2270
    :try_start_50
    invoke-interface {v7}, Lcom/google/android/music/dl/INetworkMonitor;->isConnected()Z
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_53} :catch_fd

    move-result v3

    .line 2275
    :cond_54
    :goto_54
    iget-object v10, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v10}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v10

    if-nez v10, :cond_b0

    .line 2276
    const/16 v10, 0x17

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2277
    if-eqz v6, :cond_67

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2279
    :cond_67
    const/16 v10, 0x11

    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2280
    if-eqz v6, :cond_72

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2282
    :cond_72
    iget-object v10, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v11, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-eq v10, v11, :cond_7e

    iget-object v10, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v11, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->BUFFERING_CONTROLS:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v10, v11, :cond_109

    :cond_7e
    move v4, v9

    .line 2284
    .local v4, isInControls:Z
    :goto_7f
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2285
    if-eqz v6, :cond_8a

    if-nez v4, :cond_10c

    :goto_87
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2287
    :cond_8a
    const/16 v9, 0x1f6

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2288
    if-eqz v6, :cond_95

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2290
    :cond_95
    const/4 v5, 0x0

    .line 2291
    .local v5, isRemote:Z
    iget-object v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v9, :cond_a0

    .line 2293
    :try_start_9a
    iget-object v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v9}, Lcom/google/android/music/IMusicPlaybackService;->hasRemote()Z
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_9f} :catch_10f

    move-result v5

    .line 2299
    :cond_a0
    :goto_a0
    const/16 v9, 0x1b

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2300
    if-eqz v6, :cond_b0

    .line 2301
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2302
    if-eqz v5, :cond_b0

    .line 2304
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2309
    .end local v4           #isInControls:Z
    .end local v5           #isRemote:Z
    :cond_b0
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getSongListFlag()I

    move-result v1

    .line 2311
    .local v1, flag:I
    const/16 v9, 0x1a

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2312
    if-eqz v6, :cond_c3

    and-int/lit8 v9, v1, 0x40

    if-nez v9, :cond_c3

    .line 2313
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2315
    :cond_c3
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2316
    if-eqz v6, :cond_d0

    and-int/lit16 v9, v1, 0x100

    if-nez v9, :cond_d0

    .line 2317
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2319
    :cond_d0
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2320
    if-eqz v6, :cond_de

    and-int/lit16 v9, v1, 0x80

    if-nez v9, :cond_de

    .line 2321
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2323
    :cond_de
    if-eqz v6, :cond_f0

    .line 2324
    const/4 v2, 0x0

    .line 2325
    .local v2, hasLocal:Z
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v8, :cond_eb

    .line 2327
    :try_start_e5
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v8}, Lcom/google/android/music/IMusicPlaybackService;->hasLocal()Z
    :try_end_ea
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_ea} :catch_11a

    move-result v2

    .line 2332
    :cond_eb
    :goto_eb
    if-nez v2, :cond_f0

    .line 2334
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2337
    .end local v2           #hasLocal:Z
    :cond_f0
    return-void

    .line 2261
    .end local v1           #flag:I
    .end local v3           #isConnected:Z
    .end local v7           #networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    :catch_f1
    move-exception v0

    .line 2262
    .local v0, e:Landroid/os/RemoteException;
    const-string v10, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_47

    .line 2271
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #isConnected:Z
    .restart local v7       #networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    :catch_fd
    move-exception v0

    .line 2272
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v10, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_54

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_109
    move v4, v8

    .line 2282
    goto/16 :goto_7f

    .restart local v4       #isInControls:Z
    :cond_10c
    move v9, v8

    .line 2285
    goto/16 :goto_87

    .line 2294
    .restart local v5       #isRemote:Z
    :catch_10f
    move-exception v0

    .line 2295
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v9, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 2328
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v4           #isInControls:Z
    .end local v5           #isRemote:Z
    .restart local v1       #flag:I
    .restart local v2       #hasLocal:Z
    :catch_11a
    move-exception v0

    .line 2329
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v8, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_eb
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 1398
    sget-boolean v0, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaPlaybackActivity"

    const-string v1, "onResume()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_b
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 1400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->paused:Z

    .line 1401
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 1402
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 1403
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setPauseButtonImage()V

    .line 1405
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 1406
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    if-nez v0, :cond_2e

    .line 1408
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1411
    :cond_2e
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1412
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1413
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1414
    const-string v1, "com.android.music.asyncopencomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1415
    const-string v1, "com.android.music.asyncopenstart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1416
    const-string v1, "com.android.music.playbackfailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1417
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1418
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 1419
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V

    .line 1420
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 465
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 466
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-eqz v0, :cond_1d

    .line 467
    const-string v0, "viewState"

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-virtual {v1}, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 468
    const-string v0, "viewStateError"

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 470
    :cond_1d
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 505
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 506
    .local v0, action:I
    invoke-virtual {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->textViewForContainer(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v5

    .line 507
    .local v5, tv:Landroid/widget/TextView;
    if-nez v5, :cond_d

    .line 574
    :cond_c
    :goto_c
    return v7

    .line 510
    :cond_d
    if-nez v0, :cond_1b

    .line 511
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLastX:I

    iput v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mInitialX:I

    .line 512
    iput-boolean v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    goto :goto_c

    .line 513
    :cond_1b
    if-eq v0, v8, :cond_20

    const/4 v9, 0x3

    if-ne v0, v9, :cond_32

    .line 515
    :cond_20
    iget-boolean v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    if-eqz v8, :cond_c

    .line 516
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    invoke-virtual {v8, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 517
    .local v3, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    const-wide/16 v9, 0x3e8

    invoke-virtual {v8, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 519
    .end local v3           #msg:Landroid/os/Message;
    :cond_32
    const/4 v9, 0x2

    if-ne v0, v9, :cond_c

    .line 520
    iget-boolean v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    if-eqz v9, :cond_67

    .line 521
    invoke-virtual {v5}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    .line 522
    .local v4, scrollx:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v6, v9

    .line 523
    .local v6, x:I
    iget v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLastX:I

    sub-int v1, v9, v6

    .line 524
    .local v1, delta:I
    if-eqz v1, :cond_65

    .line 525
    iput v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLastX:I

    .line 526
    add-int/2addr v4, v1

    .line 527
    iget v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextWidth:I

    if-le v4, v9, :cond_55

    .line 529
    iget v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextWidth:I

    sub-int/2addr v4, v9

    .line 530
    iget v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewWidth:I

    sub-int/2addr v4, v9

    .line 532
    :cond_55
    iget v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewWidth:I

    neg-int v9, v9

    if-ge v4, v9, :cond_60

    .line 534
    iget v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewWidth:I

    add-int/2addr v4, v9

    .line 535
    iget v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextWidth:I

    add-int/2addr v4, v9

    .line 537
    :cond_60
    if-ltz v4, :cond_65

    .line 538
    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->scrollTo(II)V

    :cond_65
    move v7, v8

    .line 541
    goto :goto_c

    .line 543
    .end local v1           #delta:I
    .end local v4           #scrollx:I
    .end local v6           #x:I
    :cond_67
    iget v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mInitialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    sub-int v1, v9, v10

    .line 544
    .restart local v1       #delta:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTouchSlop:I

    if-le v9, v10, :cond_c

    .line 546
    iget-object v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    invoke-virtual {v9, v7, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 550
    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v9

    if-eqz v9, :cond_87

    .line 551
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 553
    :cond_87
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 556
    .local v2, ll:Landroid/text/Layout;
    if-eqz v2, :cond_c

    .line 561
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextWidth:I

    .line 562
    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    iput v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewWidth:I

    .line 563
    iget v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewWidth:I

    iget v10, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTextWidth:I

    if-le v9, v10, :cond_ae

    .line 564
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_c

    .line 568
    :cond_ae
    iput-boolean v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDraggingLabel:Z

    .line 569
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 570
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    move v7, v8

    .line 571
    goto/16 :goto_c
.end method

.method textViewForContainer(Landroid/view/View;)Landroid/widget/TextView;
    .registers 4
    .parameter "v"

    .prologue
    .line 489
    const v1, 0x7f100020

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 490
    .local v0, vv:Landroid/view/View;
    if-eqz v0, :cond_d

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 501
    :goto_c
    return-object v1

    .line 491
    :cond_d
    const v1, 0x7f100035

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_1a

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    goto :goto_c

    .line 493
    :cond_1a
    const v1, 0x7f10001f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_27

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    goto :goto_c

    .line 495
    :cond_27
    const v1, 0x7f100025

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_34

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    goto :goto_c

    .line 497
    :cond_34
    const v1, 0x7f100027

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_41

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    goto :goto_c

    .line 499
    :cond_41
    const v1, 0x7f100023

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 500
    if-eqz v0, :cond_4e

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    goto :goto_c

    .line 501
    :cond_4e
    const/4 v1, 0x0

    goto :goto_c
.end method
