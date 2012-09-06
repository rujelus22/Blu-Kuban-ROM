.class public Lcom/google/android/music/MediaPlaybackActivity;
.super Lcom/google/android/music/activitymanagement/MusicFragment;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;,
        Lcom/google/android/music/MediaPlaybackActivity$ViewState;,
        Lcom/google/android/music/MediaPlaybackActivity$LightsState;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sSubmitterCols:[Ljava/lang/String;


# instance fields
.field private final keyboard:[[I

.field private mActivityPaused:Z

.field private mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

.field private mAlbumArtFrame:Landroid/view/View;

.field private mAlbumStateOnlyViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationDuration:J

.field private mArtistName:Landroid/widget/TextView;

.field private mBufferingProgress:Landroid/widget/ProgressBar;

.field private mBuyBar:Landroid/view/View;

.field private mBuyButton:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

.field private mCurrentMediaList:Lcom/google/android/music/medialist/SongList;

.field private mCurrentPlaySubmitterId:J

.field private mCurrentPlaySubmitterPhotoSet:Z

.field private mCurrentTime:Landroid/widget/TextView;

.field private mCurrentViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

.field private mDeviceHasDpad:Z

.field private mDuration:J

.field private mFlashWhenPausedColor:Landroid/content/res/ColorStateList;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLandscape:Z

.field private mLightUpBar:Landroid/view/View;

.field private mLightUpOnlyViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLightsUpInterceptor:Landroid/view/View;

.field private mListStateOnlyViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewSwitcher:Landroid/widget/ImageView;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mNextButton:Lcom/google/android/music/RepeatingImageButton;

.field private mNowPlayingListHadItems:Z

.field private mPauseButton:Lcom/google/android/music/PlayPauseButton;

.field private mPlaybackControls:Lcom/google/android/music/PlaybackControls;

.field private mPlaybackServiceConnection:Landroid/content/ServiceConnection;

.field private mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mPlayedColor:Landroid/content/res/ColorStateList;

.field private mPosOverride:J

.field private mPrevButton:Lcom/google/android/music/RepeatingImageButton;

.field private final mProgresAnimationListener:Lcom/google/android/music/animator/AnimatorListener;

.field private mProgress:Lcom/google/android/music/SizableTrackSeekBar;

.field private mQuickContactBadgeHeight:I

.field private mQuickContactBadgeWidth:I

.field private mRatings:Lcom/google/android/music/RatingSelector;

.field private mRefreshDelayMs:J

.field private mRepeatButton:Landroid/widget/ImageView;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

.field private mService:Lcom/google/android/music/IMusicPlaybackService;

.field private mSharedTitle:Landroid/widget/TextView;

.field private mShuffleButton:Landroid/widget/ImageView;

.field private mSmallAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

.field private mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private volatile mStoreService:Lcom/google/android/music/store/IStoreService;

.field private mSubmitterInfo:Landroid/view/View;

.field private mSubmitterQuickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

.field private mSubmitterTextView:Landroid/widget/TextView;

.field private mThumbAlphaAnimation:Lcom/google/android/music/animator/PropertyAnimator;

.field private mTitleBar:Landroid/view/View;

.field private mTitleTextContainer:Landroid/view/View;

.field private mTotalTime:Landroid/widget/TextView;

.field private mTrackListView:Lcom/google/android/music/widgets/TrackListView;

.field private mTrackName:Landroid/widget/TextView;

.field private mTracker:Lcom/google/android/music/MusicEventLogger;

.field private final mUnknownSubmitter:Ljava/lang/String;

.field private mViewStateSwitcher:Landroid/view/View;

.field private seekmethod:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 82
    const-string v0, "MediaPlaybackActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    .line 88
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "submitterId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "submitterGivenName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "submitterFamilyName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "submitterPictureUrl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/MediaPlaybackActivity;->sSubmitterCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "base"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 234
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;-><init>(Landroid/content/Context;)V

    .line 105
    iput-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSeeking:Z

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStartSeekPos:J

    .line 108
    iput-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    .line 142
    iput-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z

    .line 173
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    .line 208
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->OFF:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    .line 216
    iput-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mThumbAlphaAnimation:Lcom/google/android/music/animator/PropertyAnimator;

    .line 223
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$1;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 523
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$2;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgresAnimationListener:Lcom/google/android/music/animator/AnimatorListener;

    .line 688
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$4;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 768
    iput-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

    .line 1023
    const/4 v0, 0x3

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_74

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_8c

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_a4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->keyboard:[[I

    .line 1173
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$6;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    .line 1236
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$7;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$7;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 1277
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$8;

    invoke-direct {v0, p0}, Lcom/google/android/music/MediaPlaybackActivity$8;-><init>(Lcom/google/android/music/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 1564
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ALBUM_ART:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    .line 235
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    .line 236
    const v0, 0x7f0d0077

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mUnknownSubmitter:Ljava/lang/String;

    .line 237
    return-void

    .line 1023
    nop

    :array_74
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

    :array_8c
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

    :array_a4
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
    .line 77
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/SizableTrackSeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/MediaPlaybackActivity;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->refreshTrackListFromService()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/music/MediaPlaybackActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfoImpl(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/music/MediaPlaybackActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->updateQueueImpl(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->turnLightsOff()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/music/MediaPlaybackActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->updateQueue(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/music/MediaPlaybackActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/music/MediaPlaybackActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mUnknownSubmitter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/medialist/SongList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentMediaList:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/MediaPlaybackActivity$LightsState;)Lcom/google/android/music/MediaPlaybackActivity$LightsState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    return-object p1
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity;->sSubmitterCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/music/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/MediaPlaybackActivity;->getContactDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/music/MediaPlaybackActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentPlaySubmitterId:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/google/android/music/MediaPlaybackActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentPlaySubmitterId:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/google/android/music/MediaPlaybackActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/google/android/music/MediaPlaybackActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/google/android/music/MediaPlaybackActivity;Landroid/content/Context;Ljava/lang/String;J)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/MediaPlaybackActivity;->setCurrentPlayQuickContactPicture(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setDefaultCurrentPlayQuickContactPicture()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/music/MediaPlaybackActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSubmitterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/MediaPlaybackActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/google/android/music/MediaPlaybackActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/google/android/music/MediaPlaybackActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/IMusicPlaybackService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/IMusicPlaybackService;)Lcom/google/android/music/IMusicPlaybackService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/PlaybackControls;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackControls:Lcom/google/android/music/PlaybackControls;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/MediaPlaybackActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/MediaPlaybackActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method private changeState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;Z)V
    .registers 12
    .parameter "newState"
    .parameter "animate"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1580
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 1581
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne p1, v6, :cond_a

    .line 1619
    :cond_9
    return-void

    .line 1584
    :cond_a
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    .line 1587
    sget-object v6, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ALBUM_ART:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne p1, v6, :cond_3c

    .line 1588
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumStateOnlyViews:Ljava/util/Set;

    .line 1589
    .local v3, incomingViews:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mListStateOnlyViews:Ljava/util/Set;

    .line 1590
    .local v5, outgoingViews:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTitleBar:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    .line 1591
    invoke-direct {p0, v7}, Lcom/google/android/music/MediaPlaybackActivity;->turnsLightsOn(Z)V

    .line 1599
    :goto_1c
    invoke-direct {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->clearAnimations(Ljava/util/Set;)V

    .line 1600
    invoke-direct {p0, v5}, Lcom/google/android/music/MediaPlaybackActivity;->clearAnimations(Ljava/util/Set;)V

    .line 1602
    if-eqz p2, :cond_64

    .line 1603
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1604
    .local v2, incomingView:Landroid/view/View;
    invoke-direct {p0, v8, v2}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 1605
    .local v0, anim:Landroid/view/animation/Animation;
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_28

    .line 1593
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #incomingView:Landroid/view/View;
    .end local v3           #incomingViews:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    .end local v5           #outgoingViews:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    :cond_3c
    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mListStateOnlyViews:Ljava/util/Set;

    .line 1594
    .restart local v3       #incomingViews:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumStateOnlyViews:Ljava/util/Set;

    .line 1595
    .restart local v5       #outgoingViews:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->scrollListToInitialPosition()V

    .line 1596
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTitleBar:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setClickable(Z)V

    .line 1597
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->turnLightsOff()V

    goto :goto_1c

    .line 1607
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4c
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1608
    .local v4, outgoingView:Landroid/view/View;
    invoke-direct {p0, v7, v4}, Lcom/google/android/music/MediaPlaybackActivity;->generateAlphaAnim(ZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    .line 1609
    .restart local v0       #anim:Landroid/view/animation/Animation;
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_50

    .line 1612
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #outgoingView:Landroid/view/View;
    :cond_64
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1613
    .restart local v2       #incomingView:Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_68

    .line 1615
    .end local v2           #incomingView:Landroid/view/View;
    :cond_78
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1616
    .restart local v4       #outgoingView:Landroid/view/View;
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7c
.end method

.method private clearAnimations(Ljava/util/Set;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1575
    .local p1, views:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1576
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_4

    .line 1578
    .end local v1           #view:Landroid/view/View;
    :cond_14
    return-void
.end method

.method private clearDisplay()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 894
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 896
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->clearArtwork()V

    .line 897
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSmallAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->clearArtwork()V

    .line 898
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;Z)V

    .line 899
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v2}, Lcom/google/android/music/SizableTrackSeekBar;->setProgress(I)V

    .line 901
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    invoke-virtual {v0, v2}, Lcom/google/android/music/RatingSelector;->setRating(I)V

    .line 902
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBuyBar:Landroid/view/View;

    if-eqz v0, :cond_2e

    .line 905
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBuyBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 907
    :cond_2e
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSharedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_37

    .line 908
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSharedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    :cond_37
    iput-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNowPlayingListHadItems:Z

    .line 911
    return-void
.end method

.method private eventIntersectView(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 11
    .parameter "eventView"
    .parameter "event"
    .parameter "possibleIntersectView"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 656
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContentView:Landroid/view/View;

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/google/android/music/MediaPlaybackActivity;->translateCoordinatesToView(Landroid/view/View;IILandroid/view/View;)[I

    move-result-object v0

    .line 658
    .local v0, eventCoord:[I
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContentView:Landroid/view/View;

    invoke-direct {p0, p3, v4, v5, v6}, Lcom/google/android/music/MediaPlaybackActivity;->translateCoordinatesToView(Landroid/view/View;IILandroid/view/View;)[I

    move-result-object v1

    .line 660
    .local v1, viewPos:[I
    aget v4, v0, v3

    aget v5, v1, v3

    if-lt v4, v5, :cond_43

    aget v4, v0, v3

    aget v5, v1, v3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    if-gt v4, v5, :cond_43

    aget v4, v0, v2

    aget v5, v1, v2

    if-le v4, v5, :cond_43

    aget v4, v0, v2

    aget v5, v1, v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-gt v4, v5, :cond_43

    .line 666
    :goto_42
    return v2

    :cond_43
    move v2, v3

    goto :goto_42
.end method

.method private generateAlphaAnim(ZLandroid/view/View;)Landroid/view/animation/AlphaAnimation;
    .registers 7
    .parameter "fadeIn"
    .parameter "target"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 823
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_20

    move v3, v2

    :goto_8
    if-eqz p1, :cond_22

    :goto_a
    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 825
    .local v0, alphaAnim:Landroid/view/animation/AlphaAnimation;
    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 826
    iget-wide v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 827
    new-instance v1, Lcom/google/android/music/MediaPlaybackActivity$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/music/MediaPlaybackActivity$5;-><init>(Lcom/google/android/music/MediaPlaybackActivity;Landroid/view/View;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 838
    return-object v0

    .end local v0           #alphaAnim:Landroid/view/animation/AlphaAnimation;
    :cond_20
    move v3, v1

    .line 823
    goto :goto_8

    :cond_22
    move v1, v2

    goto :goto_a
.end method

.method private getContactDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1495
    if-eqz p1, :cond_1c

    .line 1498
    if-eqz p2, :cond_1b

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1507
    :cond_1b
    :goto_1b
    return-object p1

    .line 1501
    :cond_1c
    if-eqz p2, :cond_20

    move-object p1, p2

    .line 1502
    goto :goto_1b

    .line 1504
    :cond_20
    iget-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mUnknownSubmitter:Ljava/lang/String;

    goto :goto_1b
.end method

.method private getLightsAnimationDuraction(Z)I
    .registers 4
    .parameter "turnOn"

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 556
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p1, :cond_e

    .line 557
    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 559
    :goto_d
    return v1

    :cond_e
    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_d
.end method

.method private getSongListFlag()I
    .registers 5

    .prologue
    .line 405
    const/4 v1, 0x0

    .line 406
    .local v1, songList:Lcom/google/android/music/medialist/SongList;
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v2, :cond_b

    .line 408
    :try_start_5
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_11

    move-result-object v1

    .line 413
    :cond_b
    :goto_b
    if-nez v1, :cond_1c

    .line 414
    const v2, 0x7fffffff

    .line 416
    :goto_10
    return v2

    .line 409
    :catch_11
    move-exception v0

    .line 410
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 416
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1c
    invoke-virtual {v1}, Lcom/google/android/music/medialist/SongList;->getFlags()I

    move-result v2

    goto :goto_10
.end method

.method private handleMenuCommand(Landroid/view/MenuItem;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 929
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_156

    .line 1017
    const-string v0, "MediaPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMusicMenuItemSelected: unexpected item id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_24
    move v0, v1

    .line 1020
    :cond_25
    :goto_25
    return v0

    .line 931
    :sswitch_26
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v3, "equalizer"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "actionArea"

    aput-object v5, v4, v1

    const-string v1, "optionsMenu"

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_25

    .line 936
    :try_start_3b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 937
    const-string v2, "android.media.extra.AUDIO_SESSION"

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v3}, Lcom/google/android/music/IMusicPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 938
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-virtual {v2, v1, v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_56} :catch_57

    goto :goto_25

    .line 939
    :catch_57
    move-exception v1

    .line 940
    const-string v2, "MediaPlaybackActivity"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    .line 947
    :sswitch_62
    const-string v1, "optionsMenu"

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->searchMoreByArtist(Ljava/lang/String;)V

    goto :goto_25

    .line 952
    :sswitch_68
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v3, "makeInstantMix"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "actionArea"

    aput-object v5, v4, v1

    const-string v1, "optionsMenu"

    aput-object v1, v4, v0

    const-string v1, "activeScreen"

    aput-object v1, v4, v6

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 956
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 960
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/google/android/music/CreateInstantMixActivity;->createInstantPlaylistOnTrack(Landroid/content/Context;J)V

    goto :goto_25

    .line 967
    :sswitch_99
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v3, "useAsRingtone"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "actionArea"

    aput-object v5, v4, v1

    const-string v1, "optionsMenu"

    aput-object v1, v4, v0

    const-string v1, "activeScreen"

    aput-object v1, v4, v6

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getLoggerScreenString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_25

    .line 974
    :try_start_b8
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    .line 975
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->isDefaultDomain()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 976
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStoreService:Lcom/google/android/music/store/IStoreService;

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v5, v1}, Lcom/google/android/music/MusicUtils;->setRingtone(Landroid/content/Context;Lcom/google/android/music/store/IStoreService;JLjava/lang/String;)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_d7} :catch_d9

    goto/16 :goto_25

    .line 979
    :catch_d9
    move-exception v1

    .line 980
    const-string v2, "MediaPlaybackActivity"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 986
    :sswitch_e5
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v3, "clearPlayQueue"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "actionArea"

    aput-object v5, v4, v1

    const-string v5, "optionsMenu"

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 989
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_24

    .line 991
    :try_start_fa
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0018

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 992
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->clearQueue()V
    :try_end_10c
    .catch Landroid/os/RemoteException; {:try_start_fa .. :try_end_10c} :catch_10e

    goto/16 :goto_24

    .line 993
    :catch_10e
    move-exception v0

    .line 994
    const-string v2, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 1000
    :sswitch_11a
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v3, "savePlayQueueAsPlaylist"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "actionArea"

    aput-object v5, v4, v1

    const-string v5, "optionsMenu"

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1004
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackListView:Lcom/google/android/music/widgets/TrackListView;

    invoke-virtual {v0}, Lcom/google/android/music/widgets/TrackListView;->getSongList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    .line 1005
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->supportsAppendToPlaylist()Z

    move-result v2

    if-eqz v2, :cond_24

    instance-of v2, v0, Lcom/google/android/music/medialist/PlayQueueSongList;

    if-eqz v2, :cond_24

    .line 1007
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->showCreatePlaylistDialog(Lcom/google/android/music/medialist/SongList;)V

    goto/16 :goto_24

    .line 1012
    :sswitch_146
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    const v2, 0x7f0d0055

    invoke-static {v2, p0}, Lcom/google/android/music/dl/IntentConstants;->getHelpIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicStateController;->superStartActivity(Landroid/content/Intent;)V

    goto/16 :goto_25

    .line 929
    :sswitch_data_156
    .sparse-switch
        0x2 -> :sswitch_99
        0x17 -> :sswitch_146
        0x1a -> :sswitch_26
        0x1b -> :sswitch_68
        0x1e -> :sswitch_e5
        0x1f4 -> :sswitch_62
        0x322 -> :sswitch_11a
    .end sparse-switch
.end method

.method private initializeView()V
    .registers 15

    .prologue
    const v13, 0x7f10002a

    const v12, 0x7f100026

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 260
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 261
    .local v8, resources:Landroid/content/res/Resources;
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    .line 263
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v11, :cond_21f

    move v0, v9

    :goto_1a
    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    .line 265
    const v0, 0x7f100035

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    .line 266
    const v0, 0x7f100036

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    .line 267
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/SizableTrackSeekBar;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    .line 268
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v9}, Lcom/google/android/music/SizableTrackSeekBar;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->getRefreshDelay(Landroid/view/View;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRefreshDelayMs:J

    .line 271
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-nez v0, :cond_57

    .line 272
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-virtual {v0, v10}, Lcom/google/android/music/SizableTrackSeekBar;->setThumbAlpha(I)V

    .line 275
    :cond_57
    const v0, 0x7f100041

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBuyButton:Landroid/view/View;

    .line 276
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBuyButton:Landroid/view/View;

    if-eqz v0, :cond_69

    .line 277
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBuyButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    :cond_69
    const v0, 0x7f10002d

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 281
    const v0, 0x7f10002b

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSmallAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 283
    const v0, 0x7f10000d

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    .line 285
    const v0, 0x7f100033

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/RatingSelector;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    .line 286
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    invoke-virtual {v0, p0}, Lcom/google/android/music/RatingSelector;->setParent(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 288
    const v0, 0x7f100065

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/RepeatingImageButton;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    .line 289
    const v0, 0x7f100064

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/PlayPauseButton;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    .line 290
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    invoke-virtual {v0}, Lcom/google/android/music/PlayPauseButton;->requestFocus()Z

    .line 291
    const v0, 0x7f100066

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/RepeatingImageButton;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    .line 292
    const v0, 0x7f1000bb

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    .line 293
    const v0, 0x7f1000bc

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    .line 294
    new-instance v0, Lcom/google/android/music/PlaybackControls;

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPrevButton:Lcom/google/android/music/RepeatingImageButton;

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPauseButton:Lcom/google/android/music/PlayPauseButton;

    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNextButton:Lcom/google/android/music/RepeatingImageButton;

    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    move-object v1, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/PlaybackControls;-><init>(Landroid/content/Context;Lcom/google/android/music/RepeatingImageButton;Lcom/google/android/music/PlayPauseButton;Lcom/google/android/music/RepeatingImageButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/music/activitymanagement/MusicFragment;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackControls:Lcom/google/android/music/PlaybackControls;

    .line 296
    iput v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->seekmethod:I

    .line 298
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->navigation:I

    if-ne v0, v11, :cond_222

    :goto_f3
    iput-boolean v9, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDeviceHasDpad:Z

    .line 301
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/SizableTrackSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 302
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/google/android/music/SizableTrackSeekBar;->setMax(I)V

    .line 303
    const v0, 0x7f100027

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f100028

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    .line 306
    const v0, 0x7f100030

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSubmitterInfo:Landroid/view/View;

    .line 307
    const v0, 0x7f100010

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/widgets/QuickContactBadgeComp;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSubmitterQuickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    .line 309
    const v0, 0x7f100032

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSubmitterTextView:Landroid/widget/TextView;

    .line 310
    const v0, 0x7f09007e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mQuickContactBadgeWidth:I

    .line 311
    const v0, 0x7f09007f

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mQuickContactBadgeHeight:I

    .line 313
    invoke-virtual {p0, v12}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTitleBar:Landroid/view/View;

    .line 314
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTitleBar:Landroid/view/View;

    new-instance v1, Lcom/google/android/music/FadingColorDrawable;

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTitleBar:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    new-instance v0, Lcom/google/android/music/BufferProgressListener;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    invoke-direct {v0, v1}, Lcom/google/android/music/BufferProgressListener;-><init>(Landroid/widget/ProgressBar;)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    .line 319
    const v0, 0x7f0a0004

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    .line 320
    const v0, 0x7f0a0005

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mFlashWhenPausedColor:Landroid/content/res/ColorStateList;

    .line 322
    invoke-virtual {p0, v12}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTitleTextContainer:Landroid/view/View;

    .line 324
    const v0, 0x7f100040

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSharedTitle:Landroid/widget/TextView;

    .line 326
    const v0, 0x7f100037

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLightsUpInterceptor:Landroid/view/View;

    .line 327
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLightsUpInterceptor:Landroid/view/View;

    if-eqz v0, :cond_1a1

    .line 328
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLightsUpInterceptor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 331
    :cond_1a1
    const v0, 0x7f100029

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewStateSwitcher:Landroid/view/View;

    .line 332
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewStateSwitcher:Landroid/view/View;

    new-instance v1, Lcom/google/android/music/FadingColorDrawable;

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewStateSwitcher:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewStateSwitcher:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    invoke-virtual {p0, v13}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mListViewSwitcher:Landroid/widget/ImageView;

    .line 336
    const v0, 0x7f10002c

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtFrame:Landroid/view/View;

    .line 338
    const v0, 0x7f10002e

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBuyBar:Landroid/view/View;

    .line 339
    const v0, 0x7f10002f

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLightUpBar:Landroid/view/View;

    .line 341
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/widgets/TrackListView;

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackListView:Lcom/google/android/music/widgets/TrackListView;

    .line 342
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackListView:Lcom/google/android/music/widgets/TrackListView;

    invoke-virtual {v0, p0}, Lcom/google/android/music/widgets/TrackListView;->setFragment(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 343
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->refreshTrackListFromService()V

    .line 345
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLightUpBar:Landroid/view/View;

    iget-object v3, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLightUpOnlyViews:Ljava/util/Set;

    .line 347
    const v0, 0x7f100034

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSmallAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mListStateOnlyViews:Ljava/util/Set;

    .line 348
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumArtFrame:Landroid/view/View;

    invoke-virtual {p0, v13}, Lcom/google/android/music/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbumStateOnlyViews:Ljava/util/Set;

    .line 350
    return-void

    :cond_21f
    move v0, v10

    .line 263
    goto/16 :goto_1a

    :cond_222
    move v9, v10

    .line 298
    goto/16 :goto_f3
.end method

.method private isAlbumInfoExpandable()Z
    .registers 3

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getSongListFlag()I

    move-result v0

    .line 385
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

.method private queueNextRefresh(J)V
    .registers 6
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 1189
    iget-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mActivityPaused:Z

    if-nez v1, :cond_15

    .line 1190
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1191
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1192
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1194
    .end local v0           #msg:Landroid/os/Message;
    :cond_15
    return-void
.end method

.method private refreshNow()J
    .registers 13

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v2, 0x1f4

    const-wide/16 v8, 0x0

    .line 1197
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v0, :cond_c

    move-wide v0, v2

    .line 1233
    :goto_b
    return-wide v0

    .line 1202
    :cond_c
    :try_start_c
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_76

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->position()J

    move-result-wide v0

    move-wide v4, v0

    .line 1203
    :goto_19
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRefreshDelayMs:J

    iget-wide v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRefreshDelayMs:J

    rem-long v6, v4, v6

    sub-long/2addr v0, v6

    .line 1204
    cmp-long v6, v4, v8

    if-ltz v6, :cond_90

    iget-wide v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_90

    .line 1205
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1206
    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_50

    .line 1207
    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/google/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1211
    :cond_50
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v6}, Lcom/google/android/music/IMusicPlaybackService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 1212
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1220
    :goto_5f
    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    mul-long/2addr v4, v10

    iget-wide v7, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    div-long/2addr v4, v7

    long-to-int v4, v4

    invoke-virtual {v6, v4}, Lcom/google/android/music/SizableTrackSeekBar;->setProgress(I)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_69} :catch_6a

    goto :goto_b

    .line 1230
    :catch_6a
    move-exception v0

    .line 1231
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, v2

    .line 1233
    goto :goto_b

    .line 1202
    :cond_76
    :try_start_76
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPosOverride:J

    move-wide v4, v0

    goto :goto_19

    .line 1215
    :cond_7a
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    if-ne v0, v6, :cond_8d

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mFlashWhenPausedColor:Landroid/content/res/ColorStateList;

    :goto_88
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-wide v0, v2

    .line 1217
    goto :goto_5f

    .line 1215
    :cond_8d
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    goto :goto_88

    .line 1222
    :cond_90
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const-string v5, "--:--"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1224
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentTime:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlayedColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1225
    iget-object v4, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/music/SizableTrackSeekBar;->setProgress(I)V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_aa} :catch_6a

    goto/16 :goto_b
.end method

.method private refreshTrackListFromService()V
    .registers 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v0, :cond_3f

    .line 355
    :try_start_4
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentMediaList:Lcom/google/android/music/medialist/SongList;

    .line 356
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackListView:Lcom/google/android/music/widgets/TrackListView;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0, v1}, Lcom/google/android/music/widgets/TrackListView;->setSongList(Lcom/google/android/music/medialist/SongList;)V

    .line 357
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->isAlbumInfoExpandable()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->ON:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->TRANSITIONING_UP:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    if-ne v0, v1, :cond_28

    .line 359
    :cond_25
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->turnLightsOff()V

    .line 361
    :cond_28
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSubmitterInfo:Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 362
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v0, v0, Lcom/google/android/music/athome/AtHomeSongList;

    if-eqz v0, :cond_40

    .line 364
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/music/RatingSelector;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSubmitterInfo:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 376
    :cond_3f
    :goto_3f
    return-void

    .line 368
    :cond_40
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/RatingSelector;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSubmitterInfo:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4d} :catch_4e

    goto :goto_3f

    .line 372
    :catch_4e
    move-exception v0

    goto :goto_3f
.end method

.method private scrollListToInitialPosition()V
    .registers 4

    .prologue
    .line 1623
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackListView:Lcom/google/android/music/widgets/TrackListView;

    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mIsLandscape:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->NOW_PLAYING:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    :goto_8
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/widgets/TrackListView;->setScrollPosition(Lcom/google/android/music/widgets/TrackListView$ScrollPosition;Z)V

    .line 1626
    return-void

    .line 1623
    :cond_d
    sget-object v0, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->AFTER_NOW_PLAYING:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    goto :goto_8
.end method

.method private searchMoreByArtist(Ljava/lang/String;)V
    .registers 11
    .parameter

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v0, :cond_5

    .line 816
    :goto_4
    return-void

    .line 803
    :cond_5
    :try_start_5
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getArtistId()J

    move-result-wide v1

    .line 804
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 805
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getSortableAlbumArtistName()Ljava/lang/String;

    move-result-object v4

    .line 806
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v5, "searchMoreByArtist"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "actionArea"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    const-string v8, "albumArtistId"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "albumArtist"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object v3, v6, v7

    const/4 v7, 0x6

    const-string v8, "sortableAlbumArtist"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    aput-object v4, v6, v7

    invoke-virtual {v0, v5, v6}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    const-wide/16 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->startAlbumListingForAlbumArtist(JLjava/lang/String;Ljava/lang/String;J)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_4f} :catch_50

    goto :goto_4

    .line 813
    :catch_50
    move-exception v0

    .line 814
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private setCurrentPlayQuickContactPicture(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 6
    .parameter "context"
    .parameter "url"
    .parameter "submitterId"

    .prologue
    .line 1484
    if-nez p2, :cond_6

    .line 1485
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->setDefaultCurrentPlayQuickContactPicture()V

    .line 1490
    :goto_5
    return-void

    .line 1489
    :cond_6
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSubmitterQuickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    invoke-virtual {v0, p2}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setImageUrl(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private setDefaultCurrentPlayQuickContactPicture()V
    .registers 2

    .prologue
    .line 1477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentPlaySubmitterPhotoSet:Z

    .line 1478
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSubmitterQuickContact:Lcom/google/android/music/widgets/QuickContactBadgeComp;

    invoke-virtual {v0}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setImageToDefault()V

    .line 1479
    return-void
.end method

.method private startLightsAnimation(Z)V
    .registers 11
    .parameter "on"

    .prologue
    const/16 v5, 0xff

    const/4 v0, 0x0

    .line 496
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 497
    if-eqz p1, :cond_22

    .line 498
    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->TRANSITIONING_UP:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    iput-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    .line 502
    :goto_c
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLightUpOnlyViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 503
    .local v8, view:Landroid/view/View;
    invoke-direct {p0, p1, v8}, Lcom/google/android/music/MediaPlaybackActivity;->startLightsAnimation(ZLandroid/view/View;)V

    goto :goto_12

    .line 500
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #view:Landroid/view/View;
    :cond_22
    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->TRANSITIONING_DOWN:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    iput-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    goto :goto_c

    .line 506
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_27
    if-eqz p1, :cond_69

    move v4, v0

    .line 507
    .local v4, startAlpha:I
    :goto_2a
    if-eqz p1, :cond_6b

    .line 508
    .local v5, endAlpha:I
    :goto_2c
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mThumbAlphaAnimation:Lcom/google/android/music/animator/PropertyAnimator;

    if-eqz v0, :cond_4d

    .line 509
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mThumbAlphaAnimation:Lcom/google/android/music/animator/PropertyAnimator;

    invoke-virtual {v0}, Lcom/google/android/music/animator/PropertyAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    .line 510
    .local v6, animatedValue:Ljava/lang/Object;
    if-eqz v6, :cond_48

    instance-of v0, v6, Ljava/lang/Integer;

    if-eqz v0, :cond_48

    .line 511
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mThumbAlphaAnimation:Lcom/google/android/music/animator/PropertyAnimator;

    invoke-virtual {v0}, Lcom/google/android/music/animator/PropertyAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 513
    :cond_48
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mThumbAlphaAnimation:Lcom/google/android/music/animator/PropertyAnimator;

    invoke-virtual {v0}, Lcom/google/android/music/animator/PropertyAnimator;->cancel()V

    .line 515
    .end local v6           #animatedValue:Ljava/lang/Object;
    :cond_4d
    new-instance v0, Lcom/google/android/music/animator/PropertyAnimator;

    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->getLightsAnimationDuraction(Z)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgress:Lcom/google/android/music/SizableTrackSeekBar;

    const-string v3, "thumbAlpha"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/animator/PropertyAnimator;-><init>(ILjava/lang/Object;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mThumbAlphaAnimation:Lcom/google/android/music/animator/PropertyAnimator;

    .line 517
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mThumbAlphaAnimation:Lcom/google/android/music/animator/PropertyAnimator;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mProgresAnimationListener:Lcom/google/android/music/animator/AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/animator/PropertyAnimator;->addListener(Lcom/google/android/music/animator/AnimatorListener;)V

    .line 519
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mThumbAlphaAnimation:Lcom/google/android/music/animator/PropertyAnimator;

    invoke-virtual {v0}, Lcom/google/android/music/animator/PropertyAnimator;->start()V

    .line 521
    return-void

    .end local v4           #startAlpha:I
    .end local v5           #endAlpha:I
    :cond_69
    move v4, v5

    .line 506
    goto :goto_2a

    .restart local v4       #startAlpha:I
    :cond_6b
    move v5, v0

    .line 507
    goto :goto_2c
.end method

.method private startLightsAnimation(ZLandroid/view/View;)V
    .registers 9
    .parameter "turnOn"
    .parameter "target"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 563
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    .line 565
    .local v2, existingAnimation:Landroid/view/animation/Animation;
    if-eqz v2, :cond_34

    instance-of v5, v2, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;

    if-eqz v5, :cond_34

    .line 566
    check-cast v2, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;

    .end local v2           #existingAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v2}, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->getCurrentAlpha()F

    move-result v1

    .line 570
    .local v1, currentAlpha:F
    :goto_13
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 572
    new-instance v0, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;

    if-eqz p1, :cond_3a

    :goto_1a
    invoke-direct {v0, v1, v4}, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;-><init>(FF)V

    .line 574
    .local v0, alphaAnim:Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;
    invoke-virtual {v0, p1}, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->setFillAfter(Z)V

    .line 575
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->getLightsAnimationDuraction(Z)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->setDuration(J)V

    .line 577
    new-instance v3, Lcom/google/android/music/MediaPlaybackActivity$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/music/MediaPlaybackActivity$3;-><init>(Lcom/google/android/music/MediaPlaybackActivity;ZLandroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 594
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 595
    return-void

    .line 568
    .end local v0           #alphaAnim:Lcom/google/android/music/MediaPlaybackActivity$StatefulAlphaAnimation;
    .end local v1           #currentAlpha:F
    .restart local v2       #existingAnimation:Landroid/view/animation/Animation;
    :cond_34
    if-eqz p1, :cond_38

    move v1, v3

    .restart local v1       #currentAlpha:F
    :goto_37
    goto :goto_13

    .end local v1           #currentAlpha:F
    :cond_38
    move v1, v4

    goto :goto_37

    .end local v2           #existingAnimation:Landroid/view/animation/Animation;
    .restart local v1       #currentAlpha:F
    :cond_3a
    move v4, v3

    .line 572
    goto :goto_1a
.end method

.method private switchState()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1567
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ALBUM_ART:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v1, :cond_d

    .line 1568
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->LIST_VIEW:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->changeState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;Z)V

    .line 1572
    :goto_c
    return-void

    .line 1570
    :cond_d
    sget-object v0, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->ALBUM_ART:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    invoke-direct {p0, v0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->changeState(Lcom/google/android/music/MediaPlaybackActivity$ViewState;Z)V

    goto :goto_c
.end method

.method private translateCoordinatesToView(Landroid/view/View;IILandroid/view/View;)[I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 639
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 640
    :goto_6
    if-eq v0, p4, :cond_1b

    if-eqz v0, :cond_1b

    .line 641
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr p2, v1

    .line 642
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr p3, v1

    .line 643
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_6

    .line 645
    :cond_1b
    if-nez v0, :cond_40

    .line 646
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not within targetView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_40
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    return-object v0
.end method

.method private turnLightsOff()V
    .registers 3

    .prologue
    .line 480
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 481
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 493
    :cond_11
    :goto_11
    return-void

    .line 487
    :cond_12
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->OFF:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->TRANSITIONING_DOWN:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    if-eq v0, v1, :cond_11

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->startLightsAnimation(Z)V

    goto :goto_11
.end method

.method private turnsLightsOn(Z)V
    .registers 7
    .parameter "fromUserAction"

    .prologue
    const/4 v4, 0x7

    .line 458
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 459
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v2, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->LIST_VIEW:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-eq v1, v2, :cond_15

    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->isAlbumInfoExpandable()Z

    move-result v1

    if-nez v1, :cond_16

    .line 477
    :cond_15
    :goto_15
    return-void

    .line 465
    :cond_16
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v1

    if-nez v1, :cond_31

    .line 466
    if-eqz p1, :cond_42

    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 469
    .local v0, duration:I
    :goto_2b
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 471
    .end local v0           #duration:I
    :cond_31
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    sget-object v2, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->ON:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    if-eq v1, v2, :cond_15

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    sget-object v2, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->TRANSITIONING_UP:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    if-eq v1, v2, :cond_15

    .line 475
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->startLightsAnimation(Z)V

    goto :goto_15

    .line 466
    :cond_42
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_2b
.end method

.method private updateCurrentSubmitter()Z
    .registers 6

    .prologue
    .line 1405
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 1406
    const/4 v0, 0x0

    .line 1409
    :try_start_4
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_e

    .line 1410
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_18

    move-result-object v0

    .line 1417
    :cond_e
    :goto_e
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/google/android/music/dl/ContentIdentifier;->isAtHomePartyDomain()Z

    move-result v1

    if-nez v1, :cond_32

    .line 1418
    const/4 v0, 0x0

    .line 1473
    :goto_17
    return v0

    .line 1412
    :catch_18
    move-exception v1

    .line 1413
    const-string v2, "MediaPlaybackActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get info from PlaybackService failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1423
    :cond_32
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/MediaPlaybackActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/MediaPlaybackActivity$9;-><init>(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/dl/ContentIdentifier;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 1473
    const/4 v0, 0x1

    goto :goto_17
.end method

.method private updateQueue(Landroid/content/Intent;)V
    .registers 6
    .parameter "sourceIntent"

    .prologue
    const/4 v3, 0x6

    .line 1335
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1336
    .local v0, numsg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1337
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1338
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1339
    return-void
.end method

.method private updateQueueImpl(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f0d00a0

    const/4 v0, 0x0

    .line 1511
    iget-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mActivityPaused:Z

    if-eqz v1, :cond_9

    .line 1562
    :goto_8
    return-void

    .line 1515
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1516
    const-string v1, "MediaPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateQueueImpl called with wrong intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_31
    const-string v1, "queueStoreUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1521
    if-eqz v1, :cond_81

    .line 1522
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBuyBar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1523
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSharedTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_52

    .line 1524
    const-string v1, "previewPlayType"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1526
    packed-switch v1, :pswitch_data_a4

    .line 1537
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSharedTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1544
    :cond_52
    :goto_52
    const-string v1, "queueLoading"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1547
    if-eqz v1, :cond_89

    .line 1548
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->showDefaultArtwork()V

    .line 1549
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSmallAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->showDefaultArtwork()V

    .line 1551
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1552
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    .line 1529
    :pswitch_6f
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSharedTitle:Landroid/widget/TextView;

    const v2, 0x7f0d012a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_52

    .line 1533
    :pswitch_78
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSharedTitle:Landroid/widget/TextView;

    const v2, 0x7f0d0129

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_52

    .line 1541
    :cond_81
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBuyBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_52

    .line 1556
    :cond_89
    const-string v1, "ListSize"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_92

    const/4 v0, 0x1

    .line 1557
    :cond_92
    if-nez v0, :cond_9f

    iget-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNowPlayingListHadItems:Z

    if-eqz v1, :cond_9f

    .line 1559
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicStateController;->goHome()V

    .line 1561
    :cond_9f
    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNowPlayingListHadItems:Z

    goto/16 :goto_8

    .line 1526
    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_78
        :pswitch_6f
        :pswitch_6f
    .end packed-switch
.end method

.method private updateStreaming()V
    .registers 4

    .prologue
    .line 1629
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v1, :cond_5

    .line 1651
    :goto_4
    return-void

    .line 1633
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isInErrorState()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1634
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAvailable(Z)V

    .line 1635
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSmallAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAvailable(Z)V

    .line 1636
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_4

    .line 1648
    :catch_21
    move-exception v0

    .line 1649
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1637
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isPreparing()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1638
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAvailable(Z)V

    .line 1641
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSmallAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAvailable(Z)V

    .line 1642
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_4

    .line 1644
    :cond_4f
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAvailable(Z)V

    .line 1645
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSmallAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAvailable(Z)V

    .line 1646
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBufferingProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_62} :catch_21

    goto :goto_4
.end method

.method private updateTrackInfo()V
    .registers 3

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v0, :cond_5

    .line 1326
    :goto_4
    return-void

    .line 1322
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.queuechanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->populateExtras(Landroid/content/Intent;Lcom/google/android/music/IMusicPlaybackService;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->updateQueue(Landroid/content/Intent;)V

    .line 1324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.metachanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->populateExtras(Landroid/content/Intent;Lcom/google/android/music/IMusicPlaybackService;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method private updateTrackInfo(Landroid/content/Intent;)V
    .registers 6
    .parameter "sourceIntent"

    .prologue
    const/4 v3, 0x5

    .line 1328
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1329
    .local v0, numsg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1330
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1331
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1332
    return-void
.end method

.method private updateTrackInfoImpl(Landroid/content/Intent;)V
    .registers 8
    .parameter

    .prologue
    .line 1342
    iget-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mActivityPaused:Z

    if-eqz v0, :cond_5

    .line 1402
    :goto_4
    return-void

    .line 1346
    :cond_5
    :try_start_5
    const-string v0, "currentSongLoaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 1347
    new-instance v0, Lcom/google/android/music/dl/ContentIdentifier;

    const-string v1, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Lcom/google/android/music/dl/ContentIdentifier$Domain;->values()[Lcom/google/android/music/dl/ContentIdentifier$Domain;

    move-result-object v3

    const-string v4, "domain"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    .line 1352
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    const-string v2, "streaming"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;Z)V

    .line 1354
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1355
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1356
    const v0, 0x7f0d0074

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1359
    :cond_47
    const-string v0, "album"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1360
    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1361
    const v0, 0x7f0d0075

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1364
    :cond_5a
    const-string v0, "albumId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1366
    const-string v0, "albumArtFromService"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 1367
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setServiceAlbumArt(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/IMusicPlaybackService;)V

    .line 1368
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSmallAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    iget-object v5, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setServiceAlbumArt(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/IMusicPlaybackService;)V

    .line 1379
    :goto_79
    const-string v0, "track"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1382
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1383
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mArtistName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1385
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSubmitterInfo:Landroid/view/View;

    if-eqz v0, :cond_96

    .line 1386
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v0, v0, Lcom/google/android/music/athome/AtHomeSongList;

    if-eqz v0, :cond_96

    .line 1387
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateCurrentSubmitter()Z

    .line 1391
    :cond_96
    const-string v0, "duration"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    .line 1392
    iget-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/google/android/music/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1394
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1395
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mRatings:Lcom/google/android/music/RatingSelector;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/google/android/music/IMusicPlaybackService;->getRating()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/RatingSelector;->setRating(I)V
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b9} :catch_bb

    goto/16 :goto_4

    .line 1399
    :catch_bb
    move-exception v0

    .line 1400
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1369
    :cond_c7
    :try_start_c7
    const-string v0, "externalAlbumArtUrl"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 1370
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    const-string v1, "externalAlbumArtUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setExternalAlbumArt(Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSmallAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    const-string v1, "externalAlbumArtUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setExternalAlbumArt(Ljava/lang/String;)V

    goto :goto_79

    .line 1375
    :cond_e6
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSmallAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_79

    .line 1397
    :cond_f1
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;Z)V
    :try_end_f8
    .catch Landroid/os/RemoteException; {:try_start_c7 .. :try_end_f8} :catch_bb

    goto/16 :goto_4
.end method


# virtual methods
.method public getLoggerScreenString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 890
    const-string v0, "nowplaying"

    return-object v0
.end method

.method protected getPlaybackService()Lcom/google/android/music/IMusicPlaybackService;
    .registers 2

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public hasCustomMenuOptions()Z
    .registers 2

    .prologue
    .line 1772
    const/4 v0, 0x1

    return v0
.end method

.method public initializeState(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->clearDisplay()V

    .line 439
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAnimationDuration:J

    .line 440
    return-void
.end method

.method public onActionBarConfig(Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;)V
    .registers 3
    .parameter "actionbarConfig"

    .prologue
    .line 449
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->hide(I)V

    .line 450
    return-void
.end method

.method public onAtHomeGroupNameChanged(Lcom/google/android/music/athome/AtHomeStateController;Ljava/lang/String;)V
    .registers 3
    .parameter "musicStateController"
    .parameter "newGroupName"

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->requestReconfig()V

    .line 1785
    return-void
.end method

.method public onAtHomeStateChanged(Lcom/google/android/music/athome/AtHomeStateController;I)V
    .registers 3
    .parameter "musicStateController"
    .parameter "newState"

    .prologue
    .line 1780
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 738
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mBuyButton:Landroid/view/View;

    if-ne p1, v0, :cond_4f

    .line 739
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-nez v0, :cond_16

    .line 740
    const-string v0, "MediaPlaybackActivity"

    const-string v1, "MusicPlayback service was null"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    :cond_15
    :goto_15
    return-void

    .line 744
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v0}, Lcom/google/android/music/IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->getStoreUrl()Ljava/lang/String;

    move-result-object v0

    .line 745
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    const-string v2, "buy"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "actionArea"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "button"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "uri"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/MusicEventLogger;->trackEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    invoke-static {p0, v0}, Lcom/google/android/music/dl/IntentConstants;->getStoreBuyIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_43} :catch_44

    goto :goto_15

    .line 750
    :catch_44
    move-exception v0

    .line 751
    const-string v1, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 753
    :cond_4f
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mViewStateSwitcher:Landroid/view/View;

    if-ne p1, v0, :cond_57

    .line 754
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->switchState()V

    goto :goto_15

    .line 755
    :cond_57
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTitleBar:Landroid/view/View;

    if-ne p1, v0, :cond_69

    .line 756
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentViewState:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$ViewState;->LIST_VIEW:Lcom/google/android/music/MediaPlaybackActivity$ViewState;

    if-ne v0, v1, :cond_15

    .line 757
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackListView:Lcom/google/android/music/widgets/TrackListView;

    sget-object v1, Lcom/google/android/music/widgets/TrackListView$ScrollPosition;->NOW_PLAYING:Lcom/google/android/music/widgets/TrackListView$ScrollPosition;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/widgets/TrackListView;->setScrollPosition(Lcom/google/android/music/widgets/TrackListView$ScrollPosition;Z)V

    goto :goto_15

    .line 760
    :cond_69
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
    .line 242
    sget-boolean v0, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaPlaybackActivity"

    const-string v1, "onCreate()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_b
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onCreate()V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNowPlayingListHadItems:Z

    .line 246
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 247
    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContentView:Landroid/view/View;

    .line 248
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->initializeView()V

    .line 249
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.STORE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    .line 251
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-direct {v0}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 252
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getTracker()Lcom/google/android/music/MusicEventLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    .line 256
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackListView:Lcom/google/android/music/widgets/TrackListView;

    invoke-virtual {v0}, Lcom/google/android/music/widgets/TrackListView;->onCreate()V

    .line 257
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1655
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1656
    const/16 v0, 0x1b

    const/4 v1, 0x4

    const v2, 0x7f0d0141

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1659
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1660
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1661
    const/16 v0, 0x1a

    const v1, 0x7f0d0140

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1664
    :cond_2b
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->isRingtoneEnabled(Landroid/content/Context;Lcom/google/android/music/jumper/MusicPreferences;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1665
    const/4 v0, 0x2

    const/4 v1, 0x5

    const v2, 0x7f0d0078

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1668
    :cond_3d
    const/16 v0, 0x1e

    const/4 v1, 0x6

    const v2, 0x7f0d0017

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1669
    const/16 v0, 0x322

    const/4 v1, 0x7

    const v2, 0x7f0d0081

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1670
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    invoke-virtual {v0}, Lcom/google/android/music/BufferProgressListener;->destroy()V

    .line 916
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 917
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStoreSafeConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 918
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 920
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackListView:Lcom/google/android/music/widgets/TrackListView;

    invoke-virtual {v0}, Lcom/google/android/music/widgets/TrackListView;->onDestroy()V

    .line 921
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onDestroy()V

    .line 922
    return-void
.end method

.method public onLayoutConfig(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;)V
    .registers 7
    .parameter "layoutConfig"

    .prologue
    const/4 v4, 0x0

    .line 422
    sget-object v3, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;->NOW_PLAYING_SCREEN:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;

    invoke-virtual {p1, v3}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setLevel(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$ViewLevel;)V

    .line 424
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/MusicStateController;->getAtHomeStateController()Lcom/google/android/music/athome/AtHomeStateController;

    move-result-object v0

    .line 425
    .local v0, atHome:Lcom/google/android/music/athome/AtHomeStateController;
    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeStateController;->isAtHomeActive()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeStateController;->getSelectedGroupName()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, groupName:Ljava/lang/String;
    :goto_18
    if-eqz v1, :cond_2d

    move-object v2, v1

    .line 427
    .local v2, title:Ljava/lang/CharSequence;
    :goto_1b
    invoke-virtual {p1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setTitle(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {p1, v4}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setManageMusicBarEnabled(Z)V

    .line 430
    invoke-virtual {p1, v4}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setNowPlayingBarEnabled(Z)V

    .line 431
    invoke-virtual {p1, v4}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setManageMusicModeEnabled(Z)V

    .line 432
    invoke-virtual {p1, v4}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig;->setAllowShopTutorial(Z)V

    .line 433
    return-void

    .line 425
    .end local v1           #groupName:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/CharSequence;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_18

    .line 426
    .restart local v1       #groupName:Ljava/lang/String;
    :cond_2d
    const v3, 0x7f0d0059

    invoke-virtual {p0, v3}, Lcom/google/android/music/MediaPlaybackActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1b
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 1767
    invoke-direct {p0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->handleMenuCommand(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 843
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onPause()V

    .line 844
    iput-boolean v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mActivityPaused:Z

    .line 845
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 846
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 848
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 849
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getAtHomeStateController()Lcom/google/android/music/athome/AtHomeStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/athome/AtHomeStateController;->unregisterAtHomeStateListener(Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;)V

    .line 850
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSongBufferListener:Lcom/google/android/music/BufferProgressListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/music/BufferProgressListener;->updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;Z)V

    .line 851
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 852
    iput-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    .line 853
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 14
    .parameter "menu"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1675
    const/16 v8, 0x65

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1676
    .local v5, item:Landroid/view/MenuItem;
    if-eqz v5, :cond_d

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1678
    :cond_d
    const/16 v8, 0x15

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1679
    if-eqz v5, :cond_18

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1681
    :cond_18
    const/16 v8, 0x16

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1682
    if-eqz v5, :cond_23

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1684
    :cond_23
    const/16 v8, 0xa

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1685
    if-eqz v5, :cond_2e

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1687
    :cond_2e
    const/16 v8, 0x13

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1688
    if-eqz v5, :cond_39

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1690
    :cond_39
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v8, :cond_45

    .line 1692
    :try_start_3d
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v8}, Lcom/google/android/music/IMusicPlaybackService;->getAudioId()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mSelectedId:Lcom/google/android/music/dl/ContentIdentifier;
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_45} :catch_e9

    .line 1698
    :cond_45
    :goto_45
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v8}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v7

    .line 1699
    .local v7, networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    const/4 v3, 0x0

    .line 1700
    .local v3, isConnected:Z
    if-eqz v7, :cond_52

    .line 1702
    :try_start_4e
    invoke-interface {v7}, Lcom/google/android/music/dl/INetworkMonitor;->isConnected()Z
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_51} :catch_f5

    move-result v3

    .line 1707
    :cond_52
    :goto_52
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusicExperience()Z

    move-result v8

    if-nez v8, :cond_89

    .line 1709
    const/16 v8, 0x11

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1710
    if-eqz v5, :cond_65

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1712
    :cond_65
    const/4 v4, 0x0

    .line 1713
    .local v4, isRemote:Z
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v8, :cond_70

    .line 1715
    :try_start_6a
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v8}, Lcom/google/android/music/IMusicPlaybackService;->hasRemote()Z
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6f} :catch_101

    move-result v4

    .line 1721
    :cond_70
    :goto_70
    const/16 v8, 0x1b

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1722
    if-eqz v5, :cond_89

    .line 1723
    if-eqz v4, :cond_10d

    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v8, v8, Lcom/google/android/music/athome/AtHomeSongList;

    if-nez v8, :cond_10d

    move v8, v9

    :goto_81
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1724
    if-eqz v4, :cond_89

    .line 1726
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1731
    .end local v4           #isRemote:Z
    :cond_89
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getSongListFlag()I

    move-result v1

    .line 1733
    .local v1, flag:I
    const/16 v8, 0x1a

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1734
    if-eqz v5, :cond_9c

    and-int/lit8 v8, v1, 0x40

    if-nez v8, :cond_9c

    .line 1735
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1737
    :cond_9c
    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1738
    if-eqz v5, :cond_aa

    and-int/lit16 v8, v1, 0x80

    if-nez v8, :cond_aa

    .line 1739
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1741
    :cond_aa
    if-eqz v5, :cond_bc

    .line 1742
    const/4 v2, 0x0

    .line 1743
    .local v2, hasLocal:Z
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v8, :cond_b7

    .line 1745
    :try_start_b1
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mService:Lcom/google/android/music/IMusicPlaybackService;

    invoke-interface {v8}, Lcom/google/android/music/IMusicPlaybackService;->hasLocal()Z
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_b6} :catch_110

    move-result v2

    .line 1750
    :cond_b7
    :goto_b7
    if-nez v2, :cond_bc

    .line 1752
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1756
    .end local v2           #hasLocal:Z
    :cond_bc
    const/16 v8, 0x1e

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1757
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/music/activitymanagement/MusicStateController;->canClearQueue()Z

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1759
    const/16 v8, 0x322

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1760
    iget-object v8, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTrackListView:Lcom/google/android/music/widgets/TrackListView;

    invoke-virtual {v8}, Lcom/google/android/music/widgets/TrackListView;->getSongList()Lcom/google/android/music/medialist/SongList;

    move-result-object v6

    .line 1761
    .local v6, list:Lcom/google/android/music/medialist/SongList;
    if-eqz v6, :cond_11b

    invoke-virtual {v6}, Lcom/google/android/music/medialist/SongList;->supportsAppendToPlaylist()Z

    move-result v8

    if-eqz v8, :cond_11b

    instance-of v8, v6, Lcom/google/android/music/medialist/PlayQueueSongList;

    if-eqz v8, :cond_11b

    :goto_e5
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1763
    return-void

    .line 1693
    .end local v1           #flag:I
    .end local v3           #isConnected:Z
    .end local v6           #list:Lcom/google/android/music/medialist/SongList;
    .end local v7           #networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    :catch_e9
    move-exception v0

    .line 1694
    .local v0, e:Landroid/os/RemoteException;
    const-string v8, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_45

    .line 1703
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #isConnected:Z
    .restart local v7       #networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    :catch_f5
    move-exception v0

    .line 1704
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v8, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_52

    .line 1716
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v4       #isRemote:Z
    :catch_101
    move-exception v0

    .line 1717
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v8, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_70

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_10d
    move v8, v10

    .line 1723
    goto/16 :goto_81

    .line 1746
    .end local v4           #isRemote:Z
    .restart local v1       #flag:I
    .restart local v2       #hasLocal:Z
    :catch_110
    move-exception v0

    .line 1747
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v8, "MediaPlaybackActivity"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b7

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #hasLocal:Z
    .restart local v6       #list:Lcom/google/android/music/medialist/SongList;
    :cond_11b
    move v9, v10

    .line 1761
    goto :goto_e5
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 857
    sget-boolean v0, Lcom/google/android/music/MediaPlaybackActivity;->LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "MediaPlaybackActivity"

    const-string v1, "onResume()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_c
    invoke-super {p0}, Lcom/google/android/music/activitymanagement/MusicFragment;->onResume()V

    .line 859
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->clearDisplay()V

    .line 860
    iput-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mActivityPaused:Z

    .line 861
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 862
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackControls:Lcom/google/android/music/PlaybackControls;

    invoke-virtual {v0}, Lcom/google/android/music/PlaybackControls;->refreshButtonImages()V

    .line 864
    iput-boolean v2, p0, Lcom/google/android/music/MediaPlaybackActivity;->mNowPlayingListHadItems:Z

    .line 865
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 866
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mPlaybackServiceToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    if-nez v0, :cond_32

    .line 868
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 871
    :cond_32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 872
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    const-string v1, "com.android.music.asyncopencomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    const-string v1, "com.android.music.asyncopenstart"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 876
    const-string v1, "com.android.music.playbackfailed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 878
    iget-object v1, p0, Lcom/google/android/music/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 879
    invoke-virtual {p0}, Lcom/google/android/music/MediaPlaybackActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicStateController;->getAtHomeStateController()Lcom/google/android/music/athome/AtHomeStateController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/athome/AtHomeStateController;->registerAtHomeStateListener(Lcom/google/android/music/athome/AtHomeStateController$AtHomeStateListener;)V

    .line 880
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateTrackInfo()V

    .line 881
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->updateStreaming()V

    .line 882
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mTracker:Lcom/google/android/music/MusicEventLogger;

    invoke-virtual {v0, p0}, Lcom/google/android/music/MusicEventLogger;->trackScreenView(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 884
    invoke-direct {p0, v2}, Lcom/google/android/music/MediaPlaybackActivity;->turnsLightsOn(Z)V

    .line 885
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->scrollListToInitialPosition()V

    .line 886
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 444
    invoke-super {p0, p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 445
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 670
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLightsUpInterceptor:Landroid/view/View;

    if-ne p1, v0, :cond_d

    .line 672
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mListViewSwitcher:Landroid/widget/ImageView;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/MediaPlaybackActivity;->eventIntersectView(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 685
    :cond_d
    :goto_d
    return v2

    .line 675
    :cond_e
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->ON:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mCurrentLightsState:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    sget-object v1, Lcom/google/android/music/MediaPlaybackActivity$LightsState;->TRANSITIONING_UP:Lcom/google/android/music/MediaPlaybackActivity$LightsState;

    if-ne v0, v1, :cond_2e

    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mAlbum:Lcom/google/android/music/AsyncAlbumArtImageView;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/MediaPlaybackActivity;->eventIntersectView(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity;->mLightUpBar:Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/MediaPlaybackActivity;->eventIntersectView(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 679
    invoke-direct {p0}, Lcom/google/android/music/MediaPlaybackActivity;->turnLightsOff()V

    goto :goto_d

    .line 681
    :cond_2e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/music/MediaPlaybackActivity;->turnsLightsOn(Z)V

    goto :goto_d
.end method
