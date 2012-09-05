.class public Lcom/google/android/apps/books/app/ReaderFragment;
.super Landroid/app/Fragment;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/app/OnBackListener;
.implements Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;
.implements Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ReaderFragment$25;,
        Lcom/google/android/apps/books/app/ReaderFragment$MyScreenReaderTask;,
        Lcom/google/android/apps/books/app/ReaderFragment$VolumeAccessException;,
        Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;,
        Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;,
        Lcom/google/android/apps/books/app/ReaderFragment$PlusOneAuthenticationListener;,
        Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;,
        Lcom/google/android/apps/books/app/ReaderFragment$PlusOneListener;,
        Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailCallback;,
        Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailEnsurer;,
        Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;,
        Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeQuery;,
        Lcom/google/android/apps/books/app/ReaderFragment$VolumesQuery;,
        Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;,
        Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;,
        Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;,
        Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeParams;,
        Lcom/google/android/apps/books/app/ReaderFragment$EndViewFactory;,
        Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;,
        Lcom/google/android/apps/books/app/ReaderFragment$SimpleViewFactory;,
        Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;,
        Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;,
        Lcom/google/android/apps/books/app/ReaderFragment$StateKeys;
    }
.end annotation


# static fields
.field private static mMetadataLoadTask:Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;

.field private static sCalendar:Ljava/util/Calendar;

.field private static sDateFormat:Ljava/text/DateFormat;


# instance fields
.field private mAboutTheBook:Landroid/view/View;

.field private mAboutTheBookPopup:Landroid/widget/PopupWindow;

.field private mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

.field private mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

.field private final mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentMode:I

.field private final mDataLock:Ljava/lang/Object;

.field private mDestroyed:Z

.field private mFadingIn:Z

.field private mHasShownErrorDialog:Z

.field private mHaveSavedPosition:Z

.field private mHideChromeAtEndOfPreview:Z

.field private mIgnoreTouchesHorizontalMargin:F

.field private mImageAvailable:Z

.field private mInitializedPlusOne:Z

.field private mKeepAvailableOffline:Landroid/view/MenuItem;

.field private mLastKnownPosition:Lcom/google/android/apps/books/common/Position;

.field private mLatestPlusOne:Lcom/google/android/plus1/PlusOne;

.field private mMenu:Landroid/view/Menu;

.field private mMenuBookBuy:Landroid/view/MenuItem;

.field private mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

.field private mMinimumZoomPastEdge:I

.field private mMoveStart:J

.field private final mNavigator:Lcom/google/android/apps/books/util/Navigator;

.field private final mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private final mOnSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mOnSearchFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mOnSearchItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnSearchPopupDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

.field private final mPassagesWithSearchResults:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlusOneAuthenticationListener:Lcom/google/android/plus1/PlusOneController$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlusOneClickedListener:Landroid/view/View$OnClickListener;

.field private mPlusOneException:Ljava/lang/Exception;

.field private final mPlusOneListener:Lcom/google/android/plus1/PlusOneController$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Lcom/google/android/plus1/PlusOne;",
            ">;"
        }
    .end annotation
.end field

.field private mPlusOneStatus:Lcom/google/android/plus1/PlusOneStatus;

.field private mPlusOneStatusException:Ljava/lang/Exception;

.field private final mPlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/plus1/PlusOneController$ValueListener",
            "<",
            "Lcom/google/android/plus1/PlusOneStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionSaver:Lcom/google/android/apps/books/model/VolumeStatesEditor;

.field private final mPreviewHandler:Landroid/os/Handler;

.field private final mPreviousNextSearchResultListener:Landroid/view/View$OnClickListener;

.field private final mReadingAccessDelegate:Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

.field private mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/ReaderRenderer",
            "<*>;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private final mScreenTimeout:Ljava/lang/Runnable;

.field private mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

.field private mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

.field private mScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

.field private mSearchMenu:Landroid/view/MenuItem;

.field private mSearchModeActive:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

.field private mSearchResultsPopup:Landroid/widget/ListPopupWindow;

.field private mSearchResultsState:Landroid/os/Parcelable;

.field private mSearchScrubBar:Lcom/google/android/apps/books/widget/SearchScrubBar;

.field private mSearchScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

.field private mSearchView:Landroid/widget/SearchView;

.field private final mSearchWithinVolumeLoader:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mServerAccess:J

.field private mServerPosition:Lcom/google/android/apps/books/common/Position;

.field private mSettings:Lcom/google/android/apps/books/render/ReaderSettings;

.field private mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

.field private final mSettingsListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

.field private mShowingActionBar:Z

.field private mShowingSearchResultsList:Z

.field private mSoftActionCount:I

.field private mStartedReadingPositionFetch:Z

.field private mStubView:Landroid/view/ViewGroup;

.field private final mSystemUiListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

.field private mTextAvailable:Z

.field private mTtsActive:Z

.field private mTtsActiveSetByUser:Z

.field private mUndoPosition:Lcom/google/android/apps/books/common/Position;

.field private mValidTextZoom:Ljava/lang/Float;

.field private mVerticalRut:I

.field private mView:Landroid/view/ViewGroup;

.field private mViewLastBottom:I

.field private mViewLastLeft:I

.field private mViewLastRight:I

.field private mViewLastTop:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockHandler:Landroid/os/Handler;

.field private mZoomEnabled:Z

.field private mZoomMaxSpan:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 411
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/books/app/ReaderFragment;->sDateFormat:Ljava/text/DateFormat;

    .line 414
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/app/ReaderFragment;->sCalendar:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 244
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPassagesWithSearchResults:Ljava/util/Set;

    .line 262
    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mZoomEnabled:Z

    .line 266
    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHasShownErrorDialog:Z

    .line 269
    iput v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSoftActionCount:I

    .line 285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mDataLock:Ljava/lang/Object;

    .line 300
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneListener;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 301
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneStatusListener;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 302
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneAuthenticationListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneAuthenticationListener;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneAuthenticationListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    .line 313
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$PlusOneClickedListener;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneClickedListener:Landroid/view/View$OnClickListener;

    .line 315
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$1;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mNavigator:Lcom/google/android/apps/books/util/Navigator;

    .line 322
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$2;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHideChromeAtEndOfPreview:Z

    .line 337
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$3;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPreviewHandler:Landroid/os/Handler;

    .line 405
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    .line 454
    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z

    .line 469
    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActiveSetByUser:Z

    .line 675
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$5;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$5;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSystemUiListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 1601
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$8;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$8;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mReadingAccessDelegate:Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

    .line 1697
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$10;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$10;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 1872
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$12;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$12;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 1884
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$13;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$13;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1914
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$14;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$14;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 1941
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$15;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$15;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchPopupDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1954
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$16;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$16;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1985
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$17;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$17;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPreviousNextSearchResultListener:Landroid/view/View$OnClickListener;

    .line 2094
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$18;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$18;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchWithinVolumeLoader:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 2296
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$20;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$20;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScreenTimeout:Ljava/lang/Runnable;

    .line 2841
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$23;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$23;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    .line 4424
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastTop:I

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/apps/books/app/ReaderFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastTop:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/books/app/ReaderFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastRight:I

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/apps/books/app/ReaderFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastRight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/apps/books/app/ReaderFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastBottom:I

    return v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/books/app/ReaderFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastBottom:I

    return p1
.end method

.method static synthetic access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/books/app/ReaderFragment;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getTextZoomForVolume()F

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/render/ReaderSettings;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/books/app/ReaderFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->setInternalChromeVisible(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-static {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->snapshotView(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Ljava/lang/Runnable;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 174
    invoke-static {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->runOnUiThreadAndBlock(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getVolumeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/util/concurrent/Future;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getFetchService()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->clearSearchViewFocus()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->onSearchStarted()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isViewingSearchResults()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mShowingSearchResultsList:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/google/android/apps/books/app/ReaderFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->setShowSearchResults(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchModeActive:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/google/android/apps/books/app/ReaderFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->clearSearchHighlights(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/SearchView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mShowingActionBar:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->updateDeviceConnected(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/ListPopupWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isSmallDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->startSearchWithinVolume(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/common/Position;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/common/Position;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/common/Position;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->setBeforeSearchPosition(Lcom/google/android/apps/books/common/Position;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/SearchScrubBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubBar:Lcom/google/android/apps/books/widget/SearchScrubBar;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/common/Position;)Ljava/lang/Integer;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->findPreviousChapterWithSearchResults(Lcom/google/android/apps/books/common/Position;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isChromeVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/common/Position;)Ljava/lang/Integer;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->findNextChapterWithSearchResults(Lcom/google/android/apps/books/common/Position;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPassagesWithSearchResults:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->updateSearchResultPassages(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$5402(Lcom/google/android/apps/books/app/ReaderFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActiveSetByUser:Z

    return v0
.end method

.method static synthetic access$5502(Lcom/google/android/apps/books/app/ReaderFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActiveSetByUser:Z

    return p1
.end method

.method static synthetic access$5600(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeStartReadingBook()V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mZoomEnabled:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/google/android/apps/books/app/ReaderFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mFadingIn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHideChromeAtEndOfPreview:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/render/ReaderRenderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/books/app/ReaderFragment;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHideChromeAtEndOfPreview:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/google/android/apps/books/app/ReaderFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$6200(Lcom/google/android/apps/books/app/ReaderFragment;I)Lcom/google/android/apps/books/render/ReaderRenderer;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->setReadingMode(I)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/render/ReaderRenderer;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->setRenderer(Lcom/google/android/apps/books/render/ReaderRenderer;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/TableOfContentsActionItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/util/VolumeScrubIndex;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/ScrubBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeStatesEditor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPositionSaver:Lcom/google/android/apps/books/model/VolumeStatesEditor;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/ReaderSettingsFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/app/ReaderFragment;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->setChromeVisible(Z)V

    return-void
.end method

.method static synthetic access$7000(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->applySettingsIfChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/Float;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mValidTextZoom:Ljava/lang/Float;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/Float;)Ljava/lang/Float;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mValidTextZoom:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->isEdgeTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->shouldDisplayTwoPages()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Lcom/google/android/apps/books/app/ReaderFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMinimumZoomPastEdge:I

    return v0
.end method

.method static synthetic access$7800(Lcom/google/android/apps/books/app/ReaderFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mVerticalRut:I

    return v0
.end method

.method static synthetic access$7900(Lcom/google/android/apps/books/app/ReaderFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mZoomMaxSpan:I

    return v0
.end method

.method static synthetic access$8000(Lcom/google/android/apps/books/app/ReaderFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getReadingMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Lcom/google/android/apps/books/app/ReaderFragment;IZZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/app/ReaderFragment;->dispatchModesAvailable(IZZ)V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/common/Position;J)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeHandleServerPosition(Lcom/google/android/apps/books/common/Position;J)V

    return-void
.end method

.method static synthetic access$8402(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$8500(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->updateAboutTheBookPopupSize()V

    return-void
.end method

.method static synthetic access$8700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/plus1/PlusOne;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLatestPlusOne:Lcom/google/android/plus1/PlusOne;

    return-object v0
.end method

.method static synthetic access$8702(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/plus1/PlusOne;)Lcom/google/android/plus1/PlusOne;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLatestPlusOne:Lcom/google/android/plus1/PlusOne;

    return-object p1
.end method

.method static synthetic access$8802(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/Exception;)Ljava/lang/Exception;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneException:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic access$8900(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeShowPlusOneButton()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/books/app/ReaderFragment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastLeft:I

    return v0
.end method

.method static synthetic access$9000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/plus1/PlusOneStatus;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatus:Lcom/google/android/plus1/PlusOneStatus;

    return-object v0
.end method

.method static synthetic access$9002(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/plus1/PlusOneStatus;)Lcom/google/android/plus1/PlusOneStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatus:Lcom/google/android/plus1/PlusOneStatus;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/android/apps/books/app/ReaderFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastLeft:I

    return p1
.end method

.method static synthetic access$9100(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/Exception;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatusException:Ljava/lang/Exception;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/Exception;)Ljava/lang/Exception;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatusException:Ljava/lang/Exception;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/plus1/PlusOneController$ValueListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneAuthenticationListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/plus1/PlusOneController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneController()Lcom/google/android/plus1/PlusOneController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9400(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isThemeNight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9502(Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;)Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;
    .registers 1
    .parameter "x0"

    .prologue
    .line 174
    sput-object p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadataLoadTask:Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;

    return-object p0
.end method

.method private allowTtsForThisBook()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1466
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-nez v1, :cond_6

    .line 1484
    :goto_5
    :pswitch_5
    return v0

    .line 1470
    :cond_6
    sget-object v1, Lcom/google/android/apps/books/app/ReaderFragment$25;->$SwitchMap$com$google$android$apps$books$provider$BooksContract$Volumes$TtsPermission:[I

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v2, v2, Lcom/google/android/apps/books/model/VolumeMetadata;->ttsPermission:Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;

    invoke-virtual {v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$TtsPermission;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    goto :goto_5

    .line 1473
    :pswitch_16
    const/4 v0, 0x1

    goto :goto_5

    .line 1476
    :pswitch_18
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksApplication;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_5

    .line 1470
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_16
        :pswitch_18
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V
    .registers 4
    .parameter "settings"

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v0, :cond_e

    .line 2767
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/render/ReaderRenderer;->applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V

    .line 2768
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->settingsApplied()V

    .line 2770
    :cond_e
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->updateNightMode()V

    .line 2771
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    .line 2773
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchModeActive:Z

    if-eqz v0, :cond_2f

    .line 2775
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->exitSearch(ZZ)V

    .line 2778
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isViewingSearchResults()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2779
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->saveUndo(Lcom/google/android/apps/books/common/Position;)V

    .line 2780
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->setBeforeSearchPosition(Lcom/google/android/apps/books/common/Position;)V

    .line 2783
    :cond_2f
    return-void
.end method

.method private applySettingsIfChanged(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 2788
    new-instance v0, Lcom/google/android/apps/books/render/ReaderSettings;

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getTextZoomForVolume()F

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/books/render/ReaderSettings;-><init>(Landroid/content/Context;F)V

    .line 2789
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/ReaderSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2790
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V

    .line 2794
    :cond_14
    :goto_14
    return-void

    .line 2791
    :cond_15
    const-string v0, "ReaderFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2792
    const-string v0, "ReaderFragment"

    const-string v1, "applySettings() skipping because settings already match"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private bindSettingsFragment()V
    .registers 3

    .prologue
    .line 2830
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findReaderSettingsFragment()Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    .line 2831
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->setListener(Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;)V

    .line 2832
    return-void
.end method

.method private static buildContextSupportIntent(Lcom/google/android/apps/books/util/Config;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 2761
    invoke-static {p0}, Lcom/google/android/apps/books/util/OceanUris;->getContentBlockedUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v0

    .line 2762
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method private static buildMarketUpdateIntent(Lcom/google/android/apps/books/util/Config;)Landroid/content/Intent;
    .registers 4
    .parameter

    .prologue
    .line 2755
    const-string v0, "market://details"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/Config;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 2757
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v1
.end method

.method private clearSearchHighlights(Z)V
    .registers 11
    .parameter "returnToPreSearchPosition"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1790
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    if-nez v0, :cond_8

    .line 1808
    :goto_7
    return-void

    .line 1795
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    if-eqz v0, :cond_16

    .line 1796
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/books/util/FadeAnimationController;->setVisible(Z)V

    .line 1797
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/util/FadeAnimationController;->setVisible(Z)V

    .line 1801
    :cond_16
    if-eqz p1, :cond_27

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    .line 1804
    .local v1, moveToPosition:Lcom/google/android/apps/books/common/Position;
    :goto_1a
    sget-object v3, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->SEARCH_WITHIN_BOOK:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    move v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 1807
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/app/ReaderFragment;->setBeforeSearchPosition(Lcom/google/android/apps/books/common/Position;)V

    goto :goto_7

    .line 1801
    .end local v1           #moveToPosition:Lcom/google/android/apps/books/common/Position;
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;

    goto :goto_1a
.end method

.method private clearSearchViewFocus()V
    .registers 2

    .prologue
    .line 2271
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_9

    .line 2272
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 2274
    :cond_9
    return-void
.end method

.method private clearUndo()V
    .registers 2

    .prologue
    .line 2630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mUndoPosition:Lcom/google/android/apps/books/common/Position;

    .line 2631
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/ScrubBar;->clearUndoPosition()V

    .line 2632
    return-void
.end method

.method private createSearchMenuExpandListener()Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;
    .registers 2

    .prologue
    .line 1825
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$11;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$11;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    return-object v0
.end method

.method private dismissAboutTheBookPopup()V
    .registers 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_c

    .line 810
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    .line 813
    :cond_c
    return-void
.end method

.method private dispatchModesAvailable(IZZ)V
    .registers 5
    .parameter "preferredMode"
    .parameter "hasTextMode"
    .parameter "hasImageMode"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    if-eqz v0, :cond_9

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->onModesAvailable(IZZ)V

    .line 394
    :cond_9
    iput-boolean p3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mImageAvailable:Z

    .line 395
    iput-boolean p2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTextAvailable:Z

    .line 398
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeUpdateMenu()V

    .line 399
    return-void
.end method

.method private findNextChapterWithSearchResults(Lcom/google/android/apps/books/common/Position;)Ljava/lang/Integer;
    .registers 8
    .parameter "position"

    .prologue
    .line 2032
    const/4 v3, 0x0

    .line 2033
    .local v3, result:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {p1}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/books/model/VolumeMetadata;->getEarliestPossibleChapterIndexForPosition(Ljava/lang/String;)I

    move-result v1

    .line 2035
    .local v1, currentChapterIndex:I
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPassagesWithSearchResults:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2036
    .local v0, chapterIndex:I
    if-le v0, v1, :cond_11

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v0, v4, :cond_11

    .line 2038
    :cond_2b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_11

    .line 2041
    .end local v0           #chapterIndex:I
    :cond_30
    if-nez v3, :cond_3c

    .line 2043
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v4}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2045
    .end local v3           #result:Ljava/lang/Integer;
    :cond_3c
    return-object v3
.end method

.method private findPreviousChapterWithSearchResults(Lcom/google/android/apps/books/common/Position;)Ljava/lang/Integer;
    .registers 8
    .parameter "position"

    .prologue
    .line 2015
    const/4 v3, 0x0

    .line 2016
    .local v3, result:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {p1}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/books/model/VolumeMetadata;->getEarliestPossibleChapterIndexForPosition(Ljava/lang/String;)I

    move-result v1

    .line 2018
    .local v1, currentChapterIndex:I
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPassagesWithSearchResults:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2019
    .local v0, chapterIndex:I
    if-ge v0, v1, :cond_11

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v0, v4, :cond_11

    .line 2021
    :cond_2b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_11

    .line 2024
    .end local v0           #chapterIndex:I
    :cond_30
    if-nez v3, :cond_37

    .line 2026
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2028
    .end local v3           #result:Ljava/lang/Integer;
    :cond_37
    return-object v3
.end method

.method private getAccount()Landroid/accounts/Account;
    .registers 2

    .prologue
    .line 3929
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private getAddToMyEBooks()Z
    .registers 2

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getAddToMyEBooks(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private getBuyUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->buyUrl:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private getCanonicalUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->canonicalUrl:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private getChapterTitleForPage(Lcom/google/android/apps/books/common/Position;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v1, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->adapterChapters:Landroid/database/Cursor;

    .line 2423
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {p1}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getEarliestPossibleChapterIndexForPosition(Ljava/lang/String;)I

    move-result v0

    .line 2425
    if-ltz v0, :cond_1e

    .line 2426
    monitor-enter v1

    .line 2427
    :try_start_11
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2428
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 2434
    :goto_1a
    return-object v0

    .line 2429
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v0

    .line 2431
    :cond_1e
    const-string v0, "ReaderFragment"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2432
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find chapter title for position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    :cond_3f
    const-string v0, ""

    goto :goto_1a
.end method

.method private getConfig()Lcom/google/android/apps/books/util/Config;
    .registers 3

    .prologue
    .line 2635
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2636
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_b

    .line 2637
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    .line 2639
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private getCurrentPosition()Lcom/google/android/apps/books/common/Position;
    .registers 2

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_7

    .line 1457
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;

    .line 1461
    :goto_6
    return-object v0

    .line 1458
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_12

    .line 1459
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPosition()Lcom/google/android/apps/books/common/Position;

    move-result-object v0

    goto :goto_6

    .line 1461
    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private getFetchService()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3780
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3781
    instance-of v1, v0, Lcom/google/android/apps/books/app/BooksActivity;

    if-eqz v1, :cond_f

    .line 3782
    check-cast v0, Lcom/google/android/apps/books/app/BooksActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFetchService()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 3784
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPageCount()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 4088
    const-string v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 4089
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v1, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->lastPageTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 4090
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4091
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 4092
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 4094
    :cond_21
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find a number in page title "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v2, v2, Lcom/google/android/apps/books/model/VolumeMetadata;->lastPageTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPageDisplayText(I)Ljava/lang/CharSequence;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2439
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    .line 2440
    const-string v1, "\\d+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2441
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2442
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2443
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2445
    const v0, 0x7f0e0022

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2450
    :goto_38
    return-object v0

    :cond_39
    const v1, 0x7f0e0023

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38
.end method

.method private getPlusOneController()Lcom/google/android/plus1/PlusOneController;
    .registers 5

    .prologue
    .line 3946
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 3947
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_1b

    .line 3948
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/app/BooksApplication;

    .line 3949
    .local v2, app:Lcom/google/android/apps/books/app/BooksApplication;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    .line 3950
    .local v0, account:Landroid/accounts/Account;
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/app/BooksApplication;->getPlusOneController(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneController;

    move-result-object v3

    .line 3952
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #app:Lcom/google/android/apps/books/app/BooksApplication;
    :goto_1a
    return-object v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private getPlusOneUrl()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 3960
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_41

    .line 3961
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->canonicalUrl:Ljava/lang/String;

    .line 3962
    if-eqz v0, :cond_f

    .line 3963
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3973
    :goto_e
    return-object v0

    .line 3967
    :cond_f
    const-string v0, "ReaderFragment"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3968
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing canonical URL for volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v2, v2, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    :cond_34
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getConfig()Lcom/google/android/apps/books/util/Config;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v1, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/OceanUris;->getBookUrlForPlusOne(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_e

    .line 3973
    :cond_41
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private getPreferredReadingMode()I
    .registers 6

    .prologue
    const/4 v2, 0x2

    const/4 v3, -0x1

    .line 1258
    iget v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    if-eq v4, v3, :cond_9

    .line 1259
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    .line 1274
    :cond_8
    :goto_8
    return v0

    .line 1260
    :cond_9
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v4, :cond_2b

    .line 1261
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v4}, Lcom/google/android/apps/books/model/VolumeMetadata;->getUserPreferredReadingMode()I

    move-result v1

    .line 1262
    .local v1, userPreferredMode:I
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v4}, Lcom/google/android/apps/books/model/VolumeMetadata;->getBookPreferredReadingMode()I

    move-result v0

    .line 1263
    .local v0, bookPreferredMode:I
    if-eq v1, v3, :cond_1d

    move v0, v1

    .line 1264
    goto :goto_8

    .line 1265
    :cond_1d
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-boolean v3, v3, Lcom/google/android/apps/books/model/VolumeMetadata;->hasTextMode:Z

    if-eqz v3, :cond_8

    if-eq v0, v2, :cond_8

    .line 1269
    iget-boolean v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z

    if-eqz v3, :cond_8

    move v0, v2

    goto :goto_8

    .end local v0           #bookPreferredMode:I
    .end local v1           #userPreferredMode:I
    :cond_2b
    move v0, v3

    .line 1274
    goto :goto_8
.end method

.method private getReadingMode()I
    .registers 2

    .prologue
    .line 1251
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    return v0
.end method

.method private getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .registers 2

    .prologue
    .line 3776
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private getTextZoomForVolume()F
    .registers 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mValidTextZoom:Ljava/lang/Float;

    if-eqz v0, :cond_b

    .line 1285
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mValidTextZoom:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1287
    :goto_a
    return v0

    :cond_b
    const/high16 v0, 0x3f80

    goto :goto_a
.end method

.method private getUpdateVolumeOverview()Z
    .registers 2

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getUpdateVolumeOverview(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private getVolumeId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isChromeVisible()Z
    .registers 2

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isDestroyed()Z
    .registers 2

    .prologue
    .line 4417
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mDestroyed:Z

    return v0
.end method

.method private isEdgeTouch(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 2326
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 2327
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_21

    .line 2328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 2329
    .local v2, x:F
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2330
    .local v1, w:I
    const/high16 v4, 0x3f80

    add-float/2addr v4, v2

    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mIgnoreTouchesHorizontalMargin:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_20

    int-to-float v4, v1

    sub-float/2addr v4, v2

    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mIgnoreTouchesHorizontalMargin:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_21

    :cond_20
    const/4 v3, 0x1

    .line 2333
    .end local v1           #w:I
    .end local v2           #x:F
    :cond_21
    return v3
.end method

.method private isSmallDevice()Z
    .registers 2

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->shouldLockOrientationToPortraitWhileInImageMode()Z

    move-result v0

    return v0
.end method

.method private isThemeNight()Z
    .registers 3

    .prologue
    .line 4336
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->isThemeNight()Z

    move-result v0

    return v0
.end method

.method private isViewingSearchResults()Z
    .registers 2

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private maybeAnchorSearchResultsPopup()V
    .registers 3

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_f

    .line 1597
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1599
    :cond_f
    return-void
.end method

.method private maybeHandleServerPosition(Lcom/google/android/apps/books/common/Position;J)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3720
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3722
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-nez v0, :cond_d

    .line 3724
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mServerPosition:Lcom/google/android/apps/books/common/Position;

    .line 3725
    iput-wide p2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mServerAccess:J

    .line 3773
    :cond_c
    :goto_c
    return-void

    .line 3729
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPosition()Lcom/google/android/apps/books/common/Position;

    move-result-object v0

    .line 3730
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getLastAccess()J

    move-result-wide v2

    .line 3733
    cmp-long v2, p2, v2

    if-lez v2, :cond_c

    .line 3737
    invoke-virtual {p1}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3738
    invoke-static {v2}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3739
    if-nez v0, :cond_8d

    move-object v0, v1

    .line 3743
    :goto_28
    invoke-static {v3, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3747
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;

    if-nez v0, :cond_96

    .line 3751
    :goto_32
    invoke-static {v3, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3759
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getEarliestPossibleChapterIndexForPosition(Ljava/lang/String;)I

    move-result v0

    .line 3761
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterTitle(I)Ljava/lang/String;

    move-result-object v4

    .line 3763
    :try_start_44
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Lcom/google/android/apps/books/common/Position;)I

    move-result v0

    .line 3764
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageTitle(I)Ljava/lang/String;

    move-result-object v5

    .line 3765
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 3766
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-static {v2}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/apps/books/util/LoaderParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showNewPositionAvailableDialog(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/util/NoSuchElementException; {:try_start_44 .. :try_end_64} :catch_65

    goto :goto_c

    .line 3768
    :catch_65
    move-exception v0

    .line 3770
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeHandleServerPosition unable to find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v2, v2, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 3739
    :cond_8d
    invoke-virtual {v0}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 3747
    :cond_96
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v0}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_32
.end method

.method private maybeSetTextZoomSetting()V
    .registers 3

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mValidTextZoom:Ljava/lang/Float;

    if-eqz v0, :cond_13

    .line 1297
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mValidTextZoom:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->setTextZoom(F)V

    .line 1299
    :cond_13
    return-void
.end method

.method private maybeShowPlusOneButton()V
    .registers 7

    .prologue
    const v5, 0x7f0f0012

    const/4 v1, 0x0

    .line 4176
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 4177
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    if-eqz v0, :cond_90

    if-eqz v3, :cond_90

    .line 4178
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLatestPlusOne:Lcom/google/android/plus1/PlusOne;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneException:Ljava/lang/Exception;

    if-eqz v0, :cond_91

    :cond_16
    const/4 v0, 0x1

    .line 4182
    :goto_17
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatus:Lcom/google/android/plus1/PlusOneStatus;

    if-eqz v2, :cond_90

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatus:Lcom/google/android/plus1/PlusOneStatus;

    iget-object v2, v2, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 4183
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    const v4, 0x7f0f0010

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4187
    if-eqz v0, :cond_90

    .line 4189
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLatestPlusOne:Lcom/google/android/plus1/PlusOne;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLatestPlusOne:Lcom/google/android/plus1/PlusOne;

    iget-object v0, v0, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_93

    .line 4190
    const v0, 0x7f020040

    move v2, v0

    .line 4194
    :goto_45
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    const v4, 0x7f0f0013

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 4196
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4198
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    const v2, 0x7f0f0014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4200
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLatestPlusOne:Lcom/google/android/plus1/PlusOne;

    if-eqz v2, :cond_98

    .line 4201
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLatestPlusOne:Lcom/google/android/plus1/PlusOne;

    invoke-static {v3, v2}, Lcom/google/android/apps/books/plus1/BooksPlusOneStrings;->makeAnnotationString(Landroid/content/Context;Lcom/google/android/plus1/PlusOne;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4206
    :goto_68
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4208
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    const v2, 0x7f0f0011

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4209
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4212
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4215
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->updateAboutTheBookPopupSize()V

    .line 4219
    :cond_90
    return-void

    :cond_91
    move v0, v1

    .line 4178
    goto :goto_17

    .line 4192
    :cond_93
    const v0, 0x7f02003f

    move v2, v0

    goto :goto_45

    .line 4204
    :cond_98
    const v2, 0x7f0e00d9

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_68
.end method

.method private maybeStartReadingBook()V
    .registers 4

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1440
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z

    if-eqz v1, :cond_39

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->allowTtsForThisBook()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1442
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->getSpeechIsAvailable()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->isSpeaking()Z

    move-result v1

    if-nez v1, :cond_39

    .line 1444
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->setSpeechEnabled(Z)V

    .line 1445
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeUpdateMenu()V

    .line 1448
    :cond_39
    return-void
.end method

.method private maybeUpdateMenu()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1493
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_7

    .line 1578
    :cond_6
    :goto_6
    return-void

    .line 1498
    :cond_7
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenu:Landroid/view/Menu;

    const v4, 0x7f0f0084

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isViewingSearchResults()Z

    move-result v0

    if-nez v0, :cond_10e

    move v0, v1

    :goto_13
    invoke-interface {v3, v4, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1499
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0f008e

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isViewingSearchResults()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1501
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isViewingSearchResults()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1506
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0f008c

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1507
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->allowTtsForThisBook()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 1510
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    if-eqz v0, :cond_111

    .line 1511
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->getSpeechIsAvailable()Z

    move-result v3

    .line 1512
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->isSpeaking()Z

    move-result v0

    .line 1517
    :goto_47
    if-eqz v0, :cond_115

    const v0, 0x7f0e001b

    .line 1519
    :goto_4c
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1520
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1526
    :goto_52
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0f0087

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1528
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    if-ne v0, v1, :cond_11f

    .line 1529
    const v0, 0x7f0e0016

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1530
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTextAvailable:Z

    .line 1535
    :goto_67
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1537
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_12e

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12e

    move v0, v1

    .line 1538
    :goto_77
    if-eqz v0, :cond_133

    .line 1539
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1541
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setVolumeMetadata(Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 1542
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    iget v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    invoke-virtual {v0, v4}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setReadingMode(I)V

    .line 1544
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mKeepAvailableOffline:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1545
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mKeepAvailableOffline:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v4}, Lcom/google/android/apps/books/model/VolumeMetadata;->isPinned()Z

    move-result v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1547
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v4, v4, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1548
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v5, v5, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v6, v6, Lcom/google/android/apps/books/model/VolumeMetadata;->buyUrl:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->canStartBuyVolume(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1550
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenuBookBuy:Landroid/view/MenuItem;

    if-eqz v0, :cond_131

    if-eqz v4, :cond_131

    move v0, v1

    :goto_be
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1554
    invoke-static {v3}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v0

    .line 1555
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1563
    :goto_ca
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0f0086

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1564
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_143

    move v0, v1

    :goto_d9
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1566
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0f008a

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1567
    if-eqz v0, :cond_ee

    .line 1569
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v3, :cond_145

    :goto_eb
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1572
    :cond_ee
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0f0089

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1573
    if-eqz v0, :cond_6

    .line 1574
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getVolumeId()Ljava/lang/String;

    move-result-object v1

    .line 1575
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v2

    .line 1576
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->canStartAboutVolume(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_10e
    move v0, v2

    .line 1498
    goto/16 :goto_13

    :cond_111
    move v0, v2

    move v3, v2

    .line 1515
    goto/16 :goto_47

    .line 1517
    :cond_115
    const v0, 0x7f0e001a

    goto/16 :goto_4c

    .line 1522
    :cond_11a
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_52

    .line 1531
    :cond_11f
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_147

    .line 1532
    const v0, 0x7f0e0015

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1533
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mImageAvailable:Z

    goto/16 :goto_67

    :cond_12e
    move v0, v2

    .line 1537
    goto/16 :goto_77

    :cond_131
    move v0, v2

    .line 1550
    goto :goto_be

    .line 1557
    :cond_133
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1558
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenuBookBuy:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1559
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mKeepAvailableOffline:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_ca

    :cond_143
    move v0, v2

    .line 1564
    goto :goto_d9

    :cond_145
    move v1, v2

    .line 1569
    goto :goto_eb

    :cond_147
    move v0, v2

    goto/16 :goto_67
.end method

.method private onSearchStarted()V
    .registers 2

    .prologue
    .line 1723
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->dismissAboutTheBookPopup()V

    .line 1727
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->setKeepSearchFieldExpanded(Z)V

    .line 1728
    return-void
.end method

.method private oneTimeFetchOfLatestServerSideReadingPosition()V
    .registers 10

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 660
    .local v8, context:Landroid/content/Context;
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mStartedReadingPositionFetch:Z

    if-nez v0, :cond_3b

    invoke-static {v8}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mStartedReadingPositionFetch:Z

    .line 662
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/books/common/BooksContext;

    .line 663
    .local v7, booksContext:Lcom/google/android/apps/books/common/BooksContext;
    invoke-interface {v7}, Lcom/google/android/apps/books/common/BooksContext;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v2

    .line 664
    .local v2, getter:Lcom/google/android/apps/books/net/ResponseGetter;
    invoke-interface {v7}, Lcom/google/android/apps/books/common/BooksContext;->getApiaryClient()Lcom/google/android/apps/books/api/ApiaryClient;

    move-result-object v3

    .line 665
    .local v3, apiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;
    invoke-static {v8}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v4

    .line 666
    .local v4, config:Lcom/google/android/apps/books/util/Config;
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getVolumeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/net/ResponseGetter;Lcom/google/android/apps/books/api/ApiaryClient;Lcom/google/android/apps/books/util/Config;Ljava/lang/String;Landroid/accounts/Account;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 669
    .end local v2           #getter:Lcom/google/android/apps/books/net/ResponseGetter;
    .end local v3           #apiaryClient:Lcom/google/android/apps/books/api/ApiaryClient;
    .end local v4           #config:Lcom/google/android/apps/books/util/Config;
    .end local v7           #booksContext:Lcom/google/android/apps/books/common/BooksContext;
    :cond_3b
    return-void
.end method

.method private previewChrome(Z)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2456
    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    if-eqz v0, :cond_26

    .line 2458
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/util/FadeAnimationController;->setVisible(Z)V

    .line 2460
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/books/util/FadeAnimationController;->setVisible(Z)V

    .line 2465
    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    .line 2466
    iput-boolean v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHideChromeAtEndOfPreview:Z

    .line 2467
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPreviewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2468
    return-void

    .line 2463
    :cond_26
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/books/util/FadeAnimationController;->setVisible(Z)V

    goto :goto_12
.end method

.method private releaseSettingsFragment()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2835
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    if-eqz v0, :cond_c

    .line 2836
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->setListener(Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;)V

    .line 2837
    iput-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    .line 2839
    :cond_c
    return-void
.end method

.method private releaseWakeLock()V
    .registers 3

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2293
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mWakeLockHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScreenTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2294
    return-void
.end method

.method private renewWakeLock()V
    .registers 5

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2287
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mWakeLockHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScreenTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2288
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mWakeLockHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScreenTimeout:Ljava/lang/Runnable;

    const-wide/32 v2, 0x57e40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2289
    return-void
.end method

.method private static runOnUiThreadAndBlock(Ljava/lang/Runnable;)V
    .registers 5
    .parameter

    .prologue
    .line 1022
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 1023
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1042
    :cond_d
    :goto_d
    return-void

    .line 1025
    :cond_e
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1026
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 1027
    new-instance v2, Lcom/google/android/apps/books/app/ReaderFragment$7;

    invoke-direct {v2, p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$7;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1035
    :try_start_25
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_d

    .line 1036
    :catch_29
    move-exception v0

    .line 1037
    const-string v1, "ReaderFragment"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1038
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted while waiting for result from UI thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private saveUndo(Lcom/google/android/apps/books/common/Position;)V
    .registers 5
    .parameter

    .prologue
    .line 2616
    if-nez p1, :cond_3

    .line 2627
    :goto_2
    return-void

    .line 2618
    :cond_3
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mUndoPosition:Lcom/google/android/apps/books/common/Position;

    .line 2620
    :try_start_5
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Lcom/google/android/apps/books/common/Position;)I

    move-result v0

    .line 2621
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->setUndoPosition(I)V
    :try_end_10
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_10} :catch_11

    goto :goto_2

    .line 2622
    :catch_11
    move-exception v0

    .line 2624
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveUndo unable to find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v2, v2, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setBeforeSearchPosition(Lcom/google/android/apps/books/common/Position;)V
    .registers 2
    .parameter "newValue"

    .prologue
    .line 1742
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    .line 1743
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeUpdateMenu()V

    .line 1744
    return-void
.end method

.method private setChromeVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    const/4 v0, 0x0

    .line 2934
    if-nez p1, :cond_17

    .line 2935
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->dismissAboutTheBookPopup()V

    .line 2937
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isViewingSearchResults()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2938
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isSmallDevice()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2940
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 2955
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2d

    :goto_1b
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 2956
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->setChromeVisible(Z)V

    .line 2957
    :goto_23
    return-void

    .line 2946
    :cond_24
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 2947
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->setSettingsVisible(Z)V

    goto :goto_23

    .line 2955
    :cond_2d
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method private setInternalChromeVisible(Z)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2965
    const-string v0, "ReaderFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2966
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInternalChromeVisible() called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    :cond_23
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    .line 2969
    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2971
    if-nez p1, :cond_43

    .line 2972
    invoke-direct {p0, v3}, Lcom/google/android/apps/books/app/ReaderFragment;->setSettingsVisible(Z)V

    .line 2973
    if-eqz v0, :cond_35

    .line 2974
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 2976
    :cond_35
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    if-eqz v1, :cond_3e

    .line 2977
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/books/util/FadeAnimationController;->setVisible(Z)V

    .line 2979
    :cond_3e
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/books/util/FadeAnimationController;->setVisible(Z)V

    .line 2982
    :cond_43
    if-eqz p1, :cond_66

    .line 2983
    iput-boolean v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mShowingActionBar:Z

    .line 2986
    if-eqz v0, :cond_4c

    .line 2987
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 2989
    :cond_4c
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_55

    .line 2990
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 2992
    :cond_55
    iput-boolean v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mShowingActionBar:Z

    .line 2994
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isViewingSearchResults()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    if-eqz v0, :cond_67

    .line 2995
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/books/util/FadeAnimationController;->setVisible(Z)V

    .line 3000
    :cond_66
    :goto_66
    return-void

    .line 2997
    :cond_67
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/books/util/FadeAnimationController;->setVisible(Z)V

    goto :goto_66
.end method

.method private setKeepSearchFieldExpanded(Z)V
    .registers 4
    .parameter "expanded"

    .prologue
    .line 1713
    invoke-static {}, Lcom/google/android/apps/books/app/BooksApplication;->runningOnIcsOrLater()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1714
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    if-nez p1, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 1716
    :cond_e
    return-void

    .line 1714
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private setOrientationBasedOnMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 2259
    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->shouldLockOrientationToPortraitWhileInImageMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2261
    const/4 v0, 0x1

    .line 2266
    .local v0, orientation:I
    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2267
    return-void

    .line 2264
    .end local v0           #orientation:I
    :cond_12
    const/4 v0, -0x1

    .restart local v0       #orientation:I
    goto :goto_a
.end method

.method private setReadingMode(I)Lcom/google/android/apps/books/render/ReaderRenderer;
    .registers 10
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/apps/books/render/ReaderRenderer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1232
    iput p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    .line 1236
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeUpdateMenu()V

    .line 1238
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1239
    .local v1, context:Landroid/content/Context;
    new-instance v6, Lcom/google/android/apps/books/render/ReaderSettings;

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getTextZoomForVolume()F

    move-result v0

    invoke-direct {v6, v1, v0}, Lcom/google/android/apps/books/render/ReaderSettings;-><init>(Landroid/content/Context;F)V

    .line 1240
    .local v6, settings:Lcom/google/android/apps/books/render/ReaderSettings;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mStubView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/widget/PageTurnView;->setReadingMode(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/ViewGroup;ILandroid/accounts/Account;Lcom/google/android/apps/books/render/ReaderSettings;)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v7

    .line 1243
    .local v7, result:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<*>;"
    return-object v7
.end method

.method private setRenderer(Lcom/google/android/apps/books/render/ReaderRenderer;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/ReaderRenderer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2303
    const-string v1, "ReaderFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2304
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveToRenderer() renderer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    :cond_22
    if-eqz p1, :cond_2d

    .line 2307
    invoke-virtual {p1}, Lcom/google/android/apps/books/render/ReaderRenderer;->isSetup()Z

    move-result v1

    const-string v2, "newRenderer not setup"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2310
    :cond_2d
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v1, :cond_36

    .line 2311
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    invoke-virtual {v1}, Lcom/google/android/apps/books/render/ReaderRenderer;->teardown()V

    .line 2314
    :cond_36
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    .line 2318
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    if-ne v1, v0, :cond_3f

    :goto_3c
    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mZoomEnabled:Z

    .line 2323
    return-void

    .line 2318
    :cond_3f
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method private setSettingsVisible(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    if-eqz v0, :cond_e

    .line 2149
    if-eqz p1, :cond_9

    .line 2150
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeSetTextZoomSetting()V

    .line 2153
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->setVisible(Z)V

    .line 2155
    :cond_e
    return-void
.end method

.method private setShowSearchResults(Z)V
    .registers 3
    .parameter "show"

    .prologue
    .line 1814
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mShowingSearchResultsList:Z

    .line 1815
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_d

    .line 1816
    if-eqz p1, :cond_e

    .line 1817
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1822
    :cond_d
    :goto_d
    return-void

    .line 1819
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_d
.end method

.method private setupGestureDetector(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 2341
    const-string v0, "setupGestureDetector missing view"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2343
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2345
    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/View;)V

    .line 2346
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 2347
    new-instance v3, Landroid/view/ScaleGestureDetector;

    invoke-direct {v3, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 2349
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 2351
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$21;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/google/android/apps/books/app/ReaderFragment$21;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/GestureDetector;Landroid/view/ScaleGestureDetector;Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2376
    return-void
.end method

.method private shouldDisplayTwoPages()Z
    .registers 2

    .prologue
    .line 3789
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3790
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/ReaderUtils;->shouldDisplayTwoPages(Landroid/content/Context;)Z

    move-result v0

    .line 3794
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method private shouldLockOrientationToPortraitWhileInImageMode()Z
    .registers 3

    .prologue
    .line 760
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static snapshotView(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "view"
    .parameter "convertBitmap"

    .prologue
    const/4 v1, 0x1

    .line 958
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 959
    .local v3, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 961
    .local v2, height:I
    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_30

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v2, v4, :cond_30

    .line 965
    .local v1, dimensionsMatch:Z
    :goto_1f
    if-nez v1, :cond_27

    .line 966
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 969
    :cond_27
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 970
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 971
    return-object p1

    .line 961
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #dimensionsMatch:Z
    :cond_30
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private startSearchWithinVolume(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2054
    iput-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchModeActive:Z

    .line 2056
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->setEmptyLoading(Z)V

    .line 2057
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 2058
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->setShowSearchResults(Z)V

    .line 2061
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    .line 2062
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/util/LoaderParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 2063
    invoke-static {v0, v1, p1}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeParams;->buildFrom(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2064
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const v2, 0x7f0f0004

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchWithinVolumeLoader:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 2066
    return-void
.end method

.method private teardownGestureDetector(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 2379
    const-string v0, "missing PageTurnView"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2381
    return-void
.end method

.method private toggleAboutTheBook()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3978
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 3980
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1b1

    .line 3982
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    if-nez v0, :cond_107

    .line 3984
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-nez v0, :cond_16

    .line 4080
    :goto_15
    return-void

    .line 3989
    :cond_16
    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    .line 3992
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneUrl()Landroid/net/Uri;

    move-result-object v1

    .line 3995
    if-eqz v1, :cond_64

    .line 3996
    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/BooksApplication;

    .line 3997
    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksApplication;->getImageManager()Lcom/google/android/apps/books/common/ImageManager;

    move-result-object v0

    .line 3998
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v4

    .line 3999
    new-instance v5, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailEnsurer;

    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v6, v6, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-direct {v5, p0, v4, v6}, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailEnsurer;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 4001
    new-instance v6, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailCallback;

    invoke-direct {v6, p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailCallback;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V

    .line 4002
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v7, v7, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/apps/books/common/ImageManager;->getImage(Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageManager$Ensurer;Lcom/google/android/apps/books/common/ImageCallback;)Lcom/google/android/apps/books/common/ImageFuture;

    .line 4006
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneController()Lcom/google/android/plus1/PlusOneController;

    move-result-object v0

    .line 4007
    new-array v4, v8, [Landroid/net/Uri;

    aput-object v1, v4, v9

    invoke-static {v4}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    .line 4011
    invoke-virtual {v0, v1}, Lcom/google/android/plus1/PlusOneController;->refreshPlusOnes(Ljava/util/Set;)V

    .line 4014
    :cond_64
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v1, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4015
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v1, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->creator:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4017
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    const v1, 0x7f0f000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4020
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v1, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->date:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17a

    .line 4022
    :try_start_9d
    sget-object v1, Lcom/google/android/apps/books/app/ReaderFragment;->sDateFormat:Ljava/text/DateFormat;

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v4, v4, Lcom/google/android/apps/books/model/VolumeMetadata;->date:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 4024
    sget-object v4, Lcom/google/android/apps/books/app/ReaderFragment;->sCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4025
    sget-object v1, Lcom/google/android/apps/books/app/ReaderFragment;->sCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;
    :try_end_be
    .catch Ljava/text/ParseException; {:try_start_9d .. :try_end_be} :catch_14e

    move-result-object v1

    .line 4035
    :goto_bf
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v4, v4, Lcom/google/android/apps/books/model/VolumeMetadata;->publisher:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17d

    .line 4036
    const v4, 0x7f0e00b5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v6, v6, Lcom/google/android/apps/books/model/VolumeMetadata;->publisher:Ljava/lang/CharSequence;

    aput-object v6, v5, v9

    aput-object v1, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4046
    :goto_e4
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4049
    const v1, 0x7f0e00b4

    const/4 v4, 0x1

    :try_start_f3
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getPageCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_107
    .catch Ljava/lang/NumberFormatException; {:try_start_f3 .. :try_end_107} :catch_1ab

    .line 4056
    :cond_107
    :goto_107
    new-instance v0, Landroid/widget/PopupWindow;

    const v1, 0x1010300

    invoke-direct {v0, v3, v2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    .line 4057
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 4059
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$24;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/app/ReaderFragment$24;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 4065
    const v0, 0x7f0f006a

    invoke-virtual {v3, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4066
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4068
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4069
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 4070
    if-eqz v1, :cond_13e

    .line 4071
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4073
    :cond_13e
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 4075
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->updateAboutTheBookPopupSize()V

    goto/16 :goto_15

    .line 4026
    :catch_14e
    move-exception v1

    .line 4027
    const-string v4, "ReaderFragment"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_170

    .line 4028
    const-string v4, "ReaderFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing volume date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    :cond_170
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v1, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->date:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_bf

    :cond_17a
    move-object v1, v2

    .line 4033
    goto/16 :goto_bf

    .line 4038
    :cond_17d
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v4, v4, Lcom/google/android/apps/books/model/VolumeMetadata;->publisher:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_190

    .line 4039
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v1, v1, Lcom/google/android/apps/books/model/VolumeMetadata;->publisher:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e4

    .line 4040
    :cond_190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a6

    .line 4041
    const v4, 0x7f0e00b6

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e4

    .line 4043
    :cond_1a6
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e4

    .line 4051
    :catch_1ab
    move-exception v1

    .line 4052
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_107

    .line 4078
    :cond_1b1
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->dismissAboutTheBookPopup()V

    goto/16 :goto_15
.end method

.method private toggleSettings()V
    .registers 2

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    if-eqz v0, :cond_10

    .line 2159
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->getVisible()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->setSettingsVisible(Z)V

    .line 2161
    :cond_10
    return-void

    .line 2159
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private updateAboutTheBookPopupSize()V
    .registers 8

    .prologue
    const/high16 v6, -0x8000

    .line 4100
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_77

    .line 4103
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4104
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4105
    if-eqz v0, :cond_1a

    .line 4106
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4108
    :cond_1a
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 4109
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    .line 4113
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f006a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4114
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 4115
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4117
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    aget v3, v3, v5

    sub-int v3, v4, v3

    sub-int/2addr v3, v0

    .line 4119
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4122
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v2, v1

    .line 4125
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/view/View;->measure(II)V

    .line 4129
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBookPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAboutTheBook:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/widget/PopupWindow;->update(II)V

    .line 4132
    :cond_77
    return-void
.end method

.method private updateDeviceConnected(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 356
    invoke-static {p1}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v1

    .line 358
    .local v1, deviceConnected:Z
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v8, :cond_4e

    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v8}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v8

    if-nez v8, :cond_4e

    move v5, v6

    .line 359
    .local v5, validMetadata:Z
    :goto_13
    if-eqz v1, :cond_50

    if-eqz v5, :cond_50

    .line 361
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getReadingMode()I

    move-result v0

    .line 362
    .local v0, desiredMode:I
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-boolean v8, v8, Lcom/google/android/apps/books/model/VolumeMetadata;->hasTextMode:Z

    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-boolean v9, v9, Lcom/google/android/apps/books/model/VolumeMetadata;->hasImageMode:Z

    invoke-direct {p0, v0, v8, v9}, Lcom/google/android/apps/books/app/ReaderFragment;->dispatchModesAvailable(IZZ)V

    .line 371
    .end local v0           #desiredMode:I
    :cond_26
    :goto_26
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeUpdateMenu()V

    .line 373
    if-eqz v1, :cond_4d

    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatusException:Ljava/lang/Exception;

    if-eqz v8, :cond_4d

    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v8, :cond_4d

    .line 374
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneUrl()Landroid/net/Uri;

    move-result-object v3

    .line 375
    .local v3, plusOneUrl:Landroid/net/Uri;
    if-eqz v3, :cond_4d

    .line 377
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneController()Lcom/google/android/plus1/PlusOneController;

    move-result-object v2

    .line 378
    .local v2, plusOne:Lcom/google/android/plus1/PlusOneController;
    if-eqz v2, :cond_4d

    .line 379
    new-array v6, v6, [Landroid/net/Uri;

    aput-object v3, v6, v7

    invoke-static {v6}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v4

    .line 380
    .local v4, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-virtual {v2}, Lcom/google/android/plus1/PlusOneController;->refreshAccountStatus()V

    .line 381
    invoke-virtual {v2, v4}, Lcom/google/android/plus1/PlusOneController;->refreshPlusOnes(Ljava/util/Set;)V

    .line 385
    .end local v2           #plusOne:Lcom/google/android/plus1/PlusOneController;
    .end local v3           #plusOneUrl:Landroid/net/Uri;
    .end local v4           #uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    :cond_4d
    return-void

    .end local v5           #validMetadata:Z
    :cond_4e
    move v5, v7

    .line 358
    goto :goto_13

    .line 364
    .restart local v5       #validMetadata:Z
    :cond_50
    if-nez v1, :cond_26

    if-eqz v5, :cond_26

    .line 367
    new-instance v8, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V

    new-array v9, v7, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_26
.end method

.method private updateSearchResultPassages(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    .line 2136
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-nez v2, :cond_5

    .line 2145
    :cond_4
    return-void

    .line 2138
    :cond_5
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2139
    :goto_9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2140
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2141
    .local v1, pageId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getEarliestPossibleChapterIndexForPosition(Ljava/lang/String;)I

    move-result v0

    .line 2143
    .local v0, minPassageIndex:I
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPassagesWithSearchResults:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method


# virtual methods
.method public acceptNewPosition(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;)V
    .registers 14
    .parameter "account"
    .parameter "volumeId"
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2478
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 2479
    .local v9, arguments:Landroid/os/Bundle;
    invoke-static {v9}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2480
    invoke-static {v9}, Lcom/google/android/apps/books/util/LoaderParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2483
    sget-object v3, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->SCROLL_TO_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p3

    move v5, v2

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 2484
    return-void
.end method

.method public createHelpArguments()Landroid/os/Bundle;
    .registers 8

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_32

    .line 428
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_2f

    .line 429
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v0}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, position:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v0}, Lcom/google/android/apps/books/common/Position;->getPageId()Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, pageNumber:Ljava/lang/String;
    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->creator:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 437
    .local v5, creator:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->create(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 442
    .end local v2           #position:Ljava/lang/String;
    .end local v3           #pageNumber:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #creator:Ljava/lang/String;
    .local v6, result:Landroid/os/Bundle;
    :goto_2e
    return-object v6

    .line 432
    .end local v6           #result:Landroid/os/Bundle;
    :cond_2f
    const/4 v2, 0x0

    .line 433
    .restart local v2       #position:Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #pageNumber:Ljava/lang/String;
    goto :goto_14

    .line 440
    .end local v2           #position:Ljava/lang/String;
    .end local v3           #pageNumber:Ljava/lang/String;
    :cond_32
    const/4 v6, 0x0

    .restart local v6       #result:Landroid/os/Bundle;
    goto :goto_2e
.end method

.method public exitSearch(ZZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1755
    if-eqz p1, :cond_1b

    .line 1756
    invoke-static {}, Lcom/google/android/apps/books/app/TabletBooksApplication;->runningOnIcsOrLater()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1757
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1b

    .line 1758
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/app/TabletBooksApplication;->getIcsApis(Landroid/content/Context;)Lcom/google/android/apps/books/app/IcsApis;

    move-result-object v0

    .line 1759
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/IcsApis;->collapseActionView(Landroid/view/MenuItem;)V

    .line 1770
    :cond_1b
    :goto_1b
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->setShowSearchResults(Z)V

    .line 1772
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    if-eqz v0, :cond_29

    .line 1773
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1774
    iput-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsState:Landroid/os/Parcelable;

    .line 1777
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1779
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/app/ReaderFragment;->clearSearchHighlights(Z)V

    .line 1781
    iput-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchModeActive:Z

    .line 1782
    return-void

    .line 1763
    :cond_39
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1b

    .line 1764
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1765
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->setKeepSearchFieldExpanded(Z)V

    goto :goto_1b
.end method

.method public getPassageIndexForPosition(Lcom/google/android/apps/books/common/Position;)I
    .registers 4
    .parameter "position"

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-nez v0, :cond_6

    .line 2585
    const/4 v0, -0x1

    .line 2587
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {p1}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getEarliestPossibleChapterIndexForPosition(Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;Z)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2386
    if-eqz p5, :cond_7

    .line 2387
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->saveUndo(Lcom/google/android/apps/books/common/Position;)V

    .line 2394
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Lcom/google/android/apps/books/common/Position;)I

    move-result v0

    .line 2395
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->setPosition(I)V
    :try_end_12
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_12} :catch_32

    move-object v1, p1

    .line 2407
    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMoveStart:J

    .line 2408
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/widget/PageTurnView;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2411
    if-eqz p8, :cond_31

    .line 2412
    if-eqz p4, :cond_69

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_69

    const/4 v0, 0x1

    :goto_2e
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->previewChrome(Z)V

    .line 2414
    :cond_31
    return-void

    .line 2397
    :catch_32
    move-exception v0

    .line 2400
    const-string v0, "ReaderFragment"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2401
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToPosition() unable to find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v2, v2, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    :cond_62
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getDefaultPosition()Lcom/google/android/apps/books/common/Position;

    move-result-object v1

    goto :goto_13

    .line 2412
    :cond_69
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 652
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 655
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->oneTimeFetchOfLatestServerSideReadingPosition()V

    .line 656
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 3935
    return-void
.end method

.method public onBackPressed()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3582
    const-string v2, "ReaderFragment"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3583
    const-string v2, "ReaderFragment"

    const-string v3, "onBackPressed()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    :cond_12
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v2

    .line 3589
    invoke-interface {v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->isSettingsVisible()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3590
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->setSettingsVisible(Z)V

    .line 3612
    :goto_1f
    return v1

    .line 3598
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 3599
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 3601
    if-eqz v4, :cond_33

    .line 3602
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_33

    move v0, v1

    .line 3606
    :cond_33
    if-nez v0, :cond_3b

    invoke-interface {v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->isHomeVisited()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3607
    :cond_3b
    invoke-interface {v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    goto :goto_1f

    .line 3609
    :cond_3f
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_1f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 478
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 480
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->setHasOptionsMenu(Z)V

    .line 482
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/16 v2, 0xa

    const-string v3, "ReaderFragment"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 484
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 485
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mWakeLockHandler:Landroid/os/Handler;

    .line 487
    if-eqz p1, :cond_41

    .line 488
    const-string v1, "ttsActive"

    iget-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z

    .line 490
    const-string v1, "ttsActiveSetByUser"

    iget-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActiveSetByUser:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActiveSetByUser:Z

    .line 509
    :goto_40
    return-void

    .line 493
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksApplication;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 495
    .local v0, accessibilityEnabled:Z
    if-eqz v0, :cond_69

    .line 496
    invoke-static {}, Lcom/google/android/apps/books/app/BooksApplication;->runningOnIcsOrLater()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 498
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/app/BooksApplication;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z

    goto :goto_40

    .line 500
    :cond_5c
    iput-boolean v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z

    .line 503
    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$MyScreenReaderTask;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/app/ReaderFragment$MyScreenReaderTask;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment$MyScreenReaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_40

    .line 506
    :cond_69
    iput-boolean v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z

    goto :goto_40
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1628
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1630
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenu:Landroid/view/Menu;

    .line 1632
    const v0, 0x7f110003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1635
    const v0, 0x7f0f0085

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    .line 1637
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mNavigator:Lcom/google/android/apps/books/util/Navigator;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setNavigator(Lcom/google/android/apps/books/util/Navigator;)V

    .line 1638
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$9;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/app/ReaderFragment$9;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1646
    const v0, 0x7f0f0083

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchMenu:Landroid/view/MenuItem;

    .line 1647
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    .line 1648
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 1649
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 1650
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1651
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1652
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1654
    invoke-static {}, Lcom/google/android/apps/books/app/BooksApplication;->runningOnIcsOrLater()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 1655
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/app/TabletBooksApplication;->getIcsApis(Landroid/content/Context;)Lcom/google/android/apps/books/app/IcsApis;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->createSearchMenuExpandListener()Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/app/IcsApis;->setOnActionExpandListener(Landroid/view/MenuItem;Lcom/google/android/apps/books/app/IcsApis$BooksOnActionExpandListener;)V

    .line 1659
    :cond_88
    const v0, 0x7f0f008b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mKeepAvailableOffline:Landroid/view/MenuItem;

    .line 1660
    const v0, 0x7f0f0088

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenuBookBuy:Landroid/view/MenuItem;

    .line 1662
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeAnchorSearchResultsPopup()V

    .line 1663
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 528
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 531
    iput-boolean v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHasShownErrorDialog:Z

    .line 533
    const v2, 0x7f0a001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMinimumZoomPastEdge:I

    .line 534
    const v2, 0x7f0a001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mVerticalRut:I

    .line 535
    const v2, 0x7f0a001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mIgnoreTouchesHorizontalMargin:F

    .line 537
    const v2, 0x7f0a0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mZoomMaxSpan:I

    .line 539
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mResolver:Landroid/content/ContentResolver;

    .line 540
    new-instance v0, Lcom/google/android/apps/books/model/VolumeStatesEditor;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v2}, Lcom/google/android/apps/books/model/VolumeStatesEditor;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPositionSaver:Lcom/google/android/apps/books/model/VolumeStatesEditor;

    .line 542
    const v0, 0x7f030010

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    .line 543
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v2, 0x7f0f0079

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mStubView:Landroid/view/ViewGroup;

    .line 548
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    const v2, 0x7f0f001c

    invoke-interface {v0, v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/PageTurnView;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    .line 549
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/books/widget/PageTurnView;->setReaderDelegate(Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;)V

    .line 550
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->setupGestureDetector(Landroid/view/View;)V

    .line 553
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/apps/books/util/LoaderParams;->getReaderFadeIn(Landroid/os/Bundle;Z)Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 554
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->setShouldFadeIn(Z)V

    .line 555
    iput-boolean v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mFadingIn:Z

    .line 564
    :goto_83
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    invoke-direct {v0, p0, p1, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 565
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/books/widget/PageTurnView;->setSpecialViews(Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;)V

    .line 567
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/google/android/apps/books/app/ReaderFragment$4;

    invoke-direct {v2, p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$4;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 588
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v2, 0x7f0f0060

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/ScrubBar;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    .line 589
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/books/widget/ScrubBar;->setOnScrubListener(Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;)V

    .line 592
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/books/widget/ScrubBar;->setTabletMode(Z)V

    .line 594
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v2, 0x7f0f0062

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/ScrubTrackView;

    .line 595
    new-instance v2, Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;

    invoke-direct {v2}, Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;-><init>()V

    .line 596
    sget-object v3, Lcom/google/android/apps/books/R$styleable;->Theme:[I

    invoke-virtual {v1, v5, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 597
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;->groupWell:Landroid/graphics/drawable/Drawable;

    .line 598
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 599
    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/widget/ScrubTrackView;->setResources(Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;)V

    .line 601
    new-instance v2, Lcom/google/android/apps/books/widget/ScrubBar$Resources;

    invoke-direct {v2}, Lcom/google/android/apps/books/widget/ScrubBar$Resources;-><init>()V

    .line 602
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v4, 0x7f0f0061

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->maskView:Landroid/view/View;

    .line 603
    iput-object v0, v2, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->trackView:Lcom/google/android/apps/books/widget/ScrubTrackView;

    .line 604
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v3, 0x7f0f0068

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->calloutArrow:Landroid/view/View;

    .line 605
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v3, 0x7f0f0063

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->calloutView:Landroid/view/View;

    .line 606
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v3, 0x7f0f0064

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->chapterTextView:Landroid/widget/TextView;

    .line 608
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v3, 0x7f0f0065

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->pageTextView:Landroid/widget/TextView;

    .line 609
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v3, 0x7f0f0069

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->knobView:Landroid/widget/ImageView;

    .line 610
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v3, 0x7f0f0066

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoView:Landroid/view/View;

    .line 611
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v3, 0x7f0f0067

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/apps/books/widget/ScrubBar$Resources;->undoTargetView:Landroid/view/View;

    .line 612
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/widget/ScrubBar;->setResources(Lcom/google/android/apps/books/widget/ScrubBar$Resources;)V

    .line 614
    new-instance v0, Lcom/google/android/apps/books/util/FadeAnimationController;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-direct {v0, v2}, Lcom/google/android/apps/books/util/FadeAnimationController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    .line 616
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v2, 0x7f0f006b

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/SearchScrubBar;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubBar:Lcom/google/android/apps/books/widget/SearchScrubBar;

    .line 617
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubBar:Lcom/google/android/apps/books/widget/SearchScrubBar;

    if-eqz v0, :cond_168

    .line 619
    new-instance v0, Lcom/google/android/apps/books/util/FadeAnimationController;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubBar:Lcom/google/android/apps/books/widget/SearchScrubBar;

    invoke-direct {v0, v2}, Lcom/google/android/apps/books/util/FadeAnimationController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubberAnimationController:Lcom/google/android/apps/books/util/FadeAnimationController;

    .line 620
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubBar:Lcom/google/android/apps/books/widget/SearchScrubBar;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPreviousNextSearchResultListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/widget/SearchScrubBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    :cond_168
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->getBrightness()I

    move-result v0

    .line 626
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    invoke-interface {v2, v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;->onBrightnessChanged(I)V

    .line 627
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    invoke-interface {v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;->onThemeChanged()V

    .line 633
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mConnReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 635
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->updateDeviceConnected(Landroid/content/Context;)V

    .line 638
    new-instance v0, Landroid/widget/ListPopupWindow;

    const v2, 0x1010300

    invoke-direct {v0, v1, v5, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    .line 639
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeAnchorSearchResultsPopup()V

    .line 642
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    .line 643
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 644
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 645
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchPopupDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 647
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    return-object v0

    .line 558
    :cond_1b6
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    const v2, 0x7f0f001a

    invoke-interface {v0, v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v0

    .line 559
    invoke-static {v0, v3}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    goto/16 :goto_83
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 879
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mDestroyed:Z

    .line 883
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    if-eqz v1, :cond_d

    .line 884
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReadingAccessManager;->stop()V

    .line 888
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 889
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    .line 890
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/app/ReadingAccessManager;->maybeReleaseAccessLock(Landroid/content/Context;)V

    .line 893
    :cond_1c
    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

    .line 894
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/ScrubBar;->setScrubIndex(Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;)V

    .line 896
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    if-eqz v1, :cond_2c

    .line 897
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setVolumeMetadata(Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 900
    :cond_2c
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->setVolumeMetadata(Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 902
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v1, :cond_41

    .line 903
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 904
    :try_start_38
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v1}, Lcom/google/android/apps/books/model/VolumeMetadata;->close()V

    .line 905
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 906
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_45

    .line 909
    :cond_41
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 910
    return-void

    .line 906
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public onDestroyView()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 846
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 847
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 849
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 850
    const/4 v1, 0x0

    :try_start_f
    iput-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    .line 851
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_42

    .line 853
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->teardownGestureDetector(Landroid/view/View;)V

    .line 857
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/app/ReaderFragment;->setShowSearchResults(Z)V

    .line 858
    iput-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    .line 860
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_27

    .line 861
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 862
    iput-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    .line 865
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->setSpecialViews(Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;)V

    .line 866
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->resetZoom()V

    .line 868
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    if-eqz v1, :cond_3a

    .line 869
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->dismiss()V

    .line 872
    :cond_3a
    const/4 v1, 0x1

    invoke-virtual {p0, v4, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->exitSearch(ZZ)V

    .line 874
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 875
    return-void

    .line 851
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 11
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x0

    const v6, 0x104000a

    const/high16 v8, 0x104

    const/4 v1, 0x1

    .line 2646
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2752
    :cond_e
    :goto_e
    return-void

    .line 2653
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHasShownErrorDialog:Z

    if-nez v0, :cond_e

    .line 2654
    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHasShownErrorDialog:Z

    .line 2656
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v3

    .line 2658
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getConfig()Lcom/google/android/apps/books/util/Config;

    move-result-object v4

    .line 2659
    if-eqz v4, :cond_54

    move v0, v1

    .line 2661
    :goto_20
    instance-of v5, p1, Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException;

    if-eqz v5, :cond_56

    .line 2662
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2663
    const v2, 0x7f0e0081

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2664
    if-eqz v0, :cond_46

    .line 2665
    const v0, 0x7f0e0082

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2666
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->buildMarketUpdateIntent(Lcom/google/android/apps/books/util/Config;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 2668
    :cond_46
    invoke-virtual {p0, v8}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setNegativeText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2669
    invoke-interface {v3, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 2670
    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    goto :goto_e

    :cond_54
    move v0, v2

    .line 2659
    goto :goto_20

    .line 2672
    :cond_56
    instance-of v5, p1, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;

    if-eqz v5, :cond_a6

    .line 2673
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2674
    check-cast p1, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;

    .line 2675
    const v6, 0x7f0e0084

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;->getDeviceLimit()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-virtual {p0, v6, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2677
    if-eqz v0, :cond_97

    .line 2678
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getVolumeId()Ljava/lang/String;

    move-result-object v0

    .line 2679
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v4, v0, v1, v2}, Lcom/google/android/apps/books/util/OceanUris;->getOfflineLimitUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2681
    const v1, 0x7f0e0086

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2682
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v5, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 2684
    :cond_97
    invoke-virtual {p0, v8}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setNegativeText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2685
    invoke-interface {v3, v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 2686
    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    goto/16 :goto_e

    .line 2688
    :cond_a6
    instance-of v0, p1, Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;

    if-eqz v0, :cond_d9

    .line 2689
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2690
    const v1, 0x7f0e0085

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2691
    const v1, 0x7f0e0086

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2692
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->buildContextSupportIntent(Lcom/google/android/apps/books/util/Config;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 2693
    invoke-virtual {p0, v8}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setNegativeText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2694
    invoke-interface {v3, v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 2695
    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    goto/16 :goto_e

    .line 2697
    :cond_d9
    instance-of v0, p1, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;

    if-eqz v0, :cond_fb

    .line 2698
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2699
    const v1, 0x7f0e0083

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2700
    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2701
    invoke-interface {v3, v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 2702
    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    goto/16 :goto_e

    .line 2704
    :cond_fb
    instance-of v0, p1, Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;

    if-eqz v0, :cond_11d

    .line 2705
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2706
    const v1, 0x7f0e0099

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2707
    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2708
    invoke-interface {v3, v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 2709
    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    goto/16 :goto_e

    .line 2711
    :cond_11d
    instance-of v0, p1, Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;

    if-nez v0, :cond_125

    instance-of v0, p1, Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;

    if-eqz v0, :cond_12a

    .line 2713
    :cond_125
    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->onExternalStorageException()V

    goto/16 :goto_e

    .line 2715
    :cond_12a
    instance-of v0, p1, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_159

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_159

    .line 2720
    const-string v0, "ReaderFragment"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2721
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader task was canceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2725
    :cond_159
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2726
    const v1, 0x7f0e009a

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2727
    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 2728
    invoke-interface {v3, v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 2729
    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    .line 2732
    instance-of v0, p1, Lcom/google/android/apps/books/net/HttpHelper$UncategorizedIoException;

    if-nez v0, :cond_181

    instance-of v0, p1, Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;

    if-nez v0, :cond_181

    instance-of v0, p1, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;

    if-eqz v0, :cond_1a3

    .line 2737
    :cond_181
    const-string v0, "ReaderFragment"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2738
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem with network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2741
    :cond_1a3
    instance-of v0, p1, Lcom/google/android/apps/books/app/ReaderFragment$VolumeAccessException;

    if-eqz v0, :cond_1c9

    .line 2743
    const-string v0, "ReaderFragment"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2744
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VolumeAccessException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2749
    :cond_1c9
    const-string v0, "ReaderFragment"

    const-string v1, "reader ran into unexpected error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e
.end method

.method public onFadeInComplete()V
    .registers 3

    .prologue
    .line 2571
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$22;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/app/ReaderFragment$22;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2580
    return-void
.end method

.method public onFinishedSpeaking()V
    .registers 2

    .prologue
    .line 2606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z

    .line 2607
    return-void
.end method

.method public onLoadedVolumeMetadata(Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .registers 13
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1302
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1435
    :cond_a
    :goto_a
    return-void

    .line 1307
    :cond_b
    const-string v0, "ReaderFragment"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1308
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded metadata for volume "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_2d
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v1, 0x7f0f0024

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1313
    if-eqz v0, :cond_3c

    .line 1314
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    :cond_3c
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1318
    :try_start_3f
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 1319
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_1bb

    .line 1321
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    const-string v1, "missing mMetadata"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getTextZoom()F

    move-result v0

    .line 1326
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_6e

    .line 1327
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->getTextZoom()F

    move-result v0

    .line 1331
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPositionSaver:Lcom/google/android/apps/books/model/VolumeStatesEditor;

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v5, v5, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v0}, Lcom/google/android/apps/books/model/VolumeStatesEditor;->startTextZoomSave(Landroid/accounts/Account;Ljava/lang/String;F)Ljava/util/concurrent/Future;

    .line 1336
    :cond_6e
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mValidTextZoom:Ljava/lang/Float;

    if-nez v1, :cond_79

    .line 1337
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    iput-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mValidTextZoom:Ljava/lang/Float;

    .line 1340
    :cond_79
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeSetTextZoomSetting()V

    .line 1342
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 1345
    new-instance v0, Lcom/google/android/apps/books/render/ReaderSettings;

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getTextZoomForVolume()F

    move-result v1

    invoke-direct {v0, v9, v1}, Lcom/google/android/apps/books/render/ReaderSettings;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    .line 1348
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/apps/books/model/VolumeMetadata;->title:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/google/android/apps/books/model/VolumeMetadata;->creator:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v4}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->populateReaderActionBar(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1350
    new-instance v0, Lcom/google/android/apps/books/util/RecordingCursor;

    invoke-virtual {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChaptersCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/util/RecordingCursor;-><init>(Landroid/database/Cursor;)V

    .line 1351
    new-instance v1, Lcom/google/android/apps/books/util/RecordingCursor;

    invoke-virtual {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPagesCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/apps/books/util/RecordingCursor;-><init>(Landroid/database/Cursor;)V

    .line 1352
    new-instance v4, Lcom/google/android/apps/books/util/VolumeScrubIndex;

    invoke-direct {v4, v0, p1, v1, p1}, Lcom/google/android/apps/books/util/VolumeScrubIndex;-><init>(Landroid/database/Cursor;Ljava/lang/Object;Landroid/database/Cursor;Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

    .line 1353
    new-instance v0, Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;-><init>()V

    .line 1354
    const v1, 0x7f0e0022

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;->intPageCalloutFormat:Ljava/lang/String;

    .line 1355
    const v1, 0x7f0e0023

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;->stringPageCalloutFormat:Ljava/lang/String;

    .line 1356
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->setResources(Lcom/google/android/apps/books/util/VolumeScrubIndex$Resources;)V

    .line 1358
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/ScrubBar;->setScrubIndex(Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;)V

    .line 1361
    iget-object v0, p1, Lcom/google/android/apps/books/model/VolumeMetadata;->fetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    .line 1364
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getPreferredReadingMode()I

    move-result v1

    .line 1365
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->setOrientationBasedOnMode(I)V

    .line 1366
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->setReadingMode(I)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v1

    .line 1367
    invoke-virtual {v1, v0, p1}, Lcom/google/android/apps/books/render/ReaderRenderer;->setup(Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 1368
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->setRenderer(Lcom/google/android/apps/books/render/ReaderRenderer;)V

    .line 1372
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->setReadingMode(I)V

    .line 1373
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/ScrubBar;->invalidate()V

    .line 1374
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    if-eqz v0, :cond_fc

    .line 1375
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->updateEnabled(I)V

    .line 1379
    :cond_fc
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeUpdateMenu()V

    .line 1381
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->setReadingMode(I)V

    .line 1382
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->setVolumeMetadata(Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 1387
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPassageCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->setPassageCount(I)V

    .line 1393
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getCurrentPosition()Lcom/google/android/apps/books/common/Position;

    move-result-object v1

    .line 1395
    const-string v0, "ReaderFragment"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 1396
    const-string v0, "ReaderFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_138
    move-object v0, p0

    move-object v4, v3

    move v5, v2

    move-object v6, v3

    move-object v7, v3

    move v8, v2

    .line 1398
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 1402
    invoke-direct {p0, v9}, Lcom/google/android/apps/books/app/ReaderFragment;->updateDeviceConnected(Landroid/content/Context;)V

    .line 1404
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getUpdateVolumeOverview()Z

    move-result v0

    if-eqz v0, :cond_163

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getAddToMyEBooks()Z

    move-result v0

    if-eqz v0, :cond_163

    invoke-virtual {p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->isInMyEBooksCollection()Z

    move-result v0

    if-nez v0, :cond_163

    .line 1406
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v4, p1, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->addVolumeToMyEBooks(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1409
    :cond_163
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    if-nez v0, :cond_185

    iget-object v0, p1, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->PURCHASED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    .line 1410
    new-instance v0, Lcom/google/android/apps/books/app/ReadingAccessManager;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mReadingAccessDelegate:Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v5, v9}, Lcom/google/android/apps/books/app/ReadingAccessManager;-><init>(Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;Landroid/accounts/Account;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    .line 1412
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReadingAccessManager;->start()V

    .line 1416
    :cond_185
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mServerPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_192

    .line 1417
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mServerPosition:Lcom/google/android/apps/books/common/Position;

    iget-wide v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mServerAccess:J

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeHandleServerPosition(Lcom/google/android/apps/books/common/Position;J)V

    .line 1418
    iput-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mServerPosition:Lcom/google/android/apps/books/common/Position;

    .line 1421
    :cond_192
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeStartReadingBook()V

    .line 1423
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mInitializedPlusOne:Z

    if-nez v0, :cond_a

    .line 1424
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneController()Lcom/google/android/plus1/PlusOneController;

    move-result-object v0

    .line 1425
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneUrl()Landroid/net/Uri;

    move-result-object v1

    .line 1426
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 1428
    new-array v3, v10, [Landroid/net/Uri;

    aput-object v1, v3, v2

    invoke-static {v3}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    .line 1429
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneStatusListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    invoke-virtual {v0, v2}, Lcom/google/android/plus1/PlusOneController;->addAccountStatusListener(Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    .line 1430
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPlusOneListener:Lcom/google/android/plus1/PlusOneController$ValueListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/plus1/PlusOneController;->addPlusOneListener(Ljava/util/Set;Lcom/google/android/plus1/PlusOneController$ValueListener;)V

    .line 1432
    iput-boolean v10, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mInitializedPlusOne:Z

    goto/16 :goto_a

    .line 1319
    :catchall_1bb
    move-exception v0

    :try_start_1bc
    monitor-exit v1
    :try_end_1bd
    .catchall {:try_start_1bc .. :try_end_1bd} :catchall_1bb

    throw v0
.end method

.method public onNoHighlightFound(I)V
    .registers 4
    .parameter "highlightSearch"

    .prologue
    const/4 v1, 0x0

    .line 2592
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubBar:Lcom/google/android/apps/books/widget/SearchScrubBar;

    if-nez v0, :cond_6

    .line 2602
    :cond_5
    :goto_5
    return-void

    .line 2597
    :cond_6
    if-gez p1, :cond_e

    .line 2598
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubBar:Lcom/google/android/apps/books/widget/SearchScrubBar;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/SearchScrubBar;->setPreviousButtonEnabled(Z)V

    goto :goto_5

    .line 2599
    :cond_e
    if-lez p1, :cond_5

    .line 2600
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubBar:Lcom/google/android/apps/books/widget/SearchScrubBar;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/SearchScrubBar;->setNextButtonEnabled(Z)V

    goto :goto_5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 15
    .parameter "item"

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 2167
    iput-boolean v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHideChromeAtEndOfPreview:Z

    .line 2169
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v4

    .line 2170
    .local v4, scene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    packed-switch v9, :pswitch_data_d0

    :pswitch_10
    move v8, v3

    .line 2254
    :cond_11
    :goto_11
    return v8

    .line 2172
    :pswitch_12
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    iget-object v10, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->onClick(Landroid/view/View;)V

    goto :goto_11

    .line 2175
    :pswitch_1a
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->clearSearchViewFocus()V

    .line 2176
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->toggleSettings()V

    goto :goto_11

    .line 2180
    :pswitch_21
    iget v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    if-ne v9, v8, :cond_2e

    .line 2181
    invoke-direct {p0, v10}, Lcom/google/android/apps/books/app/ReaderFragment;->setOrientationBasedOnMode(I)V

    .line 2182
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    invoke-interface {v9, v10}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;->onReadingModeChanged(I)V

    goto :goto_11

    .line 2183
    :cond_2e
    iget v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mCurrentMode:I

    if-ne v9, v10, :cond_11

    .line 2184
    invoke-direct {p0, v8}, Lcom/google/android/apps/books/app/ReaderFragment;->setOrientationBasedOnMode(I)V

    .line 2185
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    invoke-interface {v9, v8}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;->onReadingModeChanged(I)V

    goto :goto_11

    .line 2190
    :pswitch_3b
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getVolumeId()Ljava/lang/String;

    move-result-object v7

    .line 2191
    .local v7, volumeId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getCanonicalUrl()Ljava/lang/String;

    move-result-object v1

    .line 2192
    .local v1, canonicalUrl:Ljava/lang/String;
    invoke-interface {v4, v7, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startAboutVolume(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 2196
    .end local v1           #canonicalUrl:Ljava/lang/String;
    .end local v7           #volumeId:Ljava/lang/String;
    :pswitch_47
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getVolumeId()Ljava/lang/String;

    move-result-object v7

    .line 2197
    .restart local v7       #volumeId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getBuyUrl()Ljava/lang/String;

    move-result-object v0

    .line 2198
    .local v0, buyUrl:Ljava/lang/String;
    invoke-interface {v4, v7, v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startBuyVolume(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 2203
    .end local v0           #buyUrl:Ljava/lang/String;
    .end local v7           #volumeId:Ljava/lang/String;
    :pswitch_53
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v9, :cond_11

    .line 2206
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v9

    if-nez v9, :cond_5e

    move v3, v8

    .line 2207
    .local v3, pinned:Z
    :cond_5e
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 2209
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPositionSaver:Lcom/google/android/apps/books/model/VolumeStatesEditor;

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getAccount()Landroid/accounts/Account;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v11, v11, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v3}, Lcom/google/android/apps/books/model/VolumeStatesEditor;->startPinnedSave(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    goto :goto_11

    .line 2213
    .end local v3           #pinned:Z
    :pswitch_6f
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getPlusOneUrl()Landroid/net/Uri;

    move-result-object v6

    .line 2214
    .local v6, uri:Landroid/net/Uri;
    if-eqz v6, :cond_11

    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v9, :cond_11

    .line 2215
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v9, v9, Lcom/google/android/apps/books/model/VolumeMetadata;->title:Ljava/lang/CharSequence;

    invoke-interface {v4, v6, v9}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startShare(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 2220
    .end local v6           #uri:Landroid/net/Uri;
    :pswitch_81
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->createHelpArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showHelp(ZLandroid/os/Bundle;)V

    goto :goto_11

    .line 2224
    :pswitch_89
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    if-eqz v9, :cond_11

    .line 2225
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v9}, Lcom/google/android/apps/books/widget/PageTurnView;->isSpeaking()Z

    move-result v9

    if-nez v9, :cond_ac

    move v5, v8

    .line 2226
    .local v5, startSpeech:Z
    :goto_96
    if-eqz v5, :cond_ae

    .line 2227
    invoke-direct {p0, v3}, Lcom/google/android/apps/books/app/ReaderFragment;->setChromeVisible(Z)V

    .line 2232
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    new-instance v10, Lcom/google/android/apps/books/app/ReaderFragment$19;

    invoke-direct {v10, p0}, Lcom/google/android/apps/books/app/ReaderFragment$19;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    const-wide/16 v11, 0x12c

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/apps/books/widget/PageTurnView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2244
    :goto_a7
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeUpdateMenu()V

    goto/16 :goto_11

    .end local v5           #startSpeech:Z
    :cond_ac
    move v5, v3

    .line 2225
    goto :goto_96

    .line 2240
    .restart local v5       #startSpeech:Z
    :cond_ae
    iput-boolean v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z

    .line 2241
    iput-boolean v8, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActiveSetByUser:Z

    .line 2242
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v9, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->setSpeechEnabled(Z)V

    goto :goto_a7

    .line 2249
    .end local v5           #startSpeech:Z
    :pswitch_b8
    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v10, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v9, v10}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Lcom/google/android/apps/books/common/Position;)I

    move-result v2

    .line 2250
    .local v2, pageIndex:I
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v10, v2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageTitle(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showExitSearchDialog(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 2170
    nop

    :pswitch_data_d0
    .packed-switch 0x7f0f0085
        :pswitch_12
        :pswitch_1a
        :pswitch_21
        :pswitch_47
        :pswitch_3b
        :pswitch_6f
        :pswitch_53
        :pswitch_89
        :pswitch_81
        :pswitch_10
        :pswitch_b8
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 785
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 786
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->pause()V

    .line 787
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->releaseWakeLock()V

    .line 791
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 794
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    if-eqz v1, :cond_1e

    .line 795
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReadingAccessManager;->stop()V

    .line 799
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 800
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    if-eqz v1, :cond_2d

    if-eqz v0, :cond_2d

    .line 801
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/app/ReadingAccessManager;->maybeReleaseAccessLock(Landroid/content/Context;)V

    .line 805
    .end local v0           #context:Landroid/content/Context;
    :cond_2d
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->dismissAboutTheBookPopup()V

    .line 806
    return-void
.end method

.method public onPositionChanged(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2489
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2567
    :cond_b
    :goto_b
    return-void

    .line 2495
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v2

    .line 2496
    :goto_19
    if-nez v0, :cond_2d

    .line 2497
    const-string v0, "ReaderFragment"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2498
    const-string v0, "ReaderFragment"

    const-string v1, "validMetadata missing, dropping position update on floor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_2b
    move v0, v1

    .line 2495
    goto :goto_19

    .line 2503
    :cond_2d
    if-nez p1, :cond_3f

    const-string v0, "ReaderFragment"

    const/4 v3, 0x6

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2504
    const-string v0, "ReaderFragment"

    const-string v3, "Missing reading position in onPositionChanged"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :cond_3f
    if-nez p3, :cond_43

    if-nez p2, :cond_105

    :cond_43
    move v0, v2

    :goto_44
    const-string v3, "missing lastAction"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2511
    iget-wide v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMoveStart:J

    cmp-long v0, v3, v8

    if-lez v0, :cond_7f

    const-string v0, "ReaderPerf"

    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMoveStart:J

    sub-long/2addr v3, v5

    .line 2513
    iput-wide v8, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMoveStart:J

    .line 2514
    const-string v0, "ReaderPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveToPosition() took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    :cond_7f
    const-string v0, "ReaderFragment"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 2518
    const-string v0, "ReaderFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPositionChanged() with position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    :cond_a0
    if-eqz p1, :cond_b

    .line 2524
    :try_start_a2
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Lcom/google/android/apps/books/common/Position;)I

    move-result v0

    .line 2525
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->setPosition(I)V
    :try_end_ad
    .catch Ljava/util/NoSuchElementException; {:try_start_a2 .. :try_end_ad} :catch_108

    .line 2536
    :goto_ad
    if-eqz p2, :cond_c8

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isViewingSearchResults()Z

    move-result v0

    if-nez v0, :cond_c8

    .line 2537
    invoke-virtual {p1}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2538
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPositionSaver:Lcom/google/android/apps/books/model/VolumeStatesEditor;

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v5, v5, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0, p3}, Lcom/google/android/apps/books/model/VolumeStatesEditor;->startPositionSave(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)Ljava/util/concurrent/Future;

    .line 2540
    iput-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHaveSavedPosition:Z

    .line 2544
    :cond_c8
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->NEXT_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    if-eq v0, p3, :cond_d0

    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->PREV_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    if-ne v0, p3, :cond_131

    .line 2545
    :cond_d0
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSoftActionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSoftActionCount:I

    .line 2550
    :goto_d6
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastKnownPosition:Lcom/google/android/apps/books/common/Position;

    .line 2554
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mUndoPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_e3

    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSoftActionCount:I

    if-le v0, v7, :cond_e3

    .line 2555
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->clearUndo()V

    .line 2558
    :cond_e3
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    if-eqz v0, :cond_ec

    .line 2559
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setPosition(Lcom/google/android/apps/books/common/Position;)V

    .line 2562
    :cond_ec
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubBar:Lcom/google/android/apps/books/widget/SearchScrubBar;

    if-eqz v0, :cond_b

    .line 2563
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchScrubBar:Lcom/google/android/apps/books/widget/SearchScrubBar;

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->getChapterTitleForPage(Lcom/google/android/apps/books/common/Position;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/ScrubBar;->getPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->getPageDisplayText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/widget/SearchScrubBar;->setDisplayText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_105
    move v0, v1

    .line 2509
    goto/16 :goto_44

    .line 2526
    :catch_108
    move-exception v0

    .line 2529
    const-string v0, "ReaderFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPositionChanged() unable to find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v4, v4, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ad

    .line 2547
    :cond_131
    iput v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSoftActionCount:I

    goto :goto_d6
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 1667
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1668
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeUpdateMenu()V

    .line 1669
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 765
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 766
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->resume()V

    .line 767
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->renewWakeLock()V

    .line 768
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    if-eqz v0, :cond_14

    .line 769
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReadingAccessManager;->start()V

    .line 772
    :cond_14
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeStartReadingBook()V

    .line 773
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 513
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 515
    const-string v0, "ttsActive"

    iget-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActive:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 516
    const-string v0, "ttsActiveSetByUser"

    iget-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTtsActiveSetByUser:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 517
    return-void
.end method

.method public onScrubFinished(I)V
    .registers 14
    .parameter "itemPosition"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 2805
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2b

    move v11, v2

    .line 2806
    .local v11, validMetadata:Z
    :goto_10
    if-eqz v11, :cond_2a

    .line 2807
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageId(I)Ljava/lang/String;

    move-result-object v9

    .line 2808
    .local v9, pageId:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/apps/books/common/Position;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2809
    .local v10, position:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/books/common/Position;

    invoke-direct {v1, v10}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->SCROLL_TO_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    move-object v0, p0

    move v5, v2

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 2815
    .end local v9           #pageId:Ljava/lang/String;
    .end local v10           #position:Ljava/lang/String;
    :cond_2a
    return-void

    .end local v11           #validMetadata:Z
    :cond_2b
    move v11, v8

    .line 2805
    goto :goto_10
.end method

.method public onScrubStarted()V
    .registers 2

    .prologue
    .line 2800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHideChromeAtEndOfPreview:Z

    .line 2801
    return-void
.end method

.method public onScrubUndo()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2819
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mUndoPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_15

    .line 2820
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mUndoPosition:Lcom/google/android/apps/books/common/Position;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->SCROLL_TO_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    move v8, v5

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 2822
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->clearUndo()V

    .line 2824
    :cond_15
    return-void
.end method

.method public onSearchRequested()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1676
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v2, :cond_2e

    .line 1678
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->setChromeVisible(Z)V

    .line 1680
    invoke-static {}, Lcom/google/android/apps/books/app/BooksApplication;->runningOnIcsOrLater()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1681
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/app/TabletBooksApplication;->getIcsApis(Landroid/content/Context;)Lcom/google/android/apps/books/app/IcsApis;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/IcsApis;->expandActionView(Landroid/view/MenuItem;)V

    .line 1686
    :goto_24
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->onSearchStarted()V

    .line 1690
    :goto_27
    return v0

    .line 1683
    :cond_28
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    goto :goto_24

    :cond_2e
    move v0, v1

    .line 1690
    goto :goto_27
.end method

.method public onStart()V
    .registers 10

    .prologue
    const/4 v4, 0x4

    const/4 v8, 0x0

    .line 697
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 699
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSystemUiListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 704
    invoke-direct {p0, v8}, Lcom/google/android/apps/books/app/ReaderFragment;->previewChrome(Z)V

    .line 707
    const v1, 0x7f0f001c

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 709
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/apps/books/R$styleable;->Theme:[I

    invoke-virtual {v1, v2, v3, v8, v8}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 710
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 711
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 713
    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 714
    if-eqz v0, :cond_3c

    .line 715
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 716
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 721
    :cond_3c
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v0

    if-nez v0, :cond_66

    .line 722
    const-string v0, "ReaderFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 723
    const-string v0, "ReaderFragment"

    const-string v1, "Using existing volume metadata"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_58
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$6;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/app/ReaderFragment$6;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 750
    :cond_62
    :goto_62
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->bindSettingsFragment()V

    .line 751
    return-void

    .line 734
    :cond_66
    sget-object v0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadataLoadTask:Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;

    if-nez v0, :cond_62

    .line 735
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getFetchService()Ljava/util/concurrent/Future;

    move-result-object v3

    .line 736
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 737
    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v4

    .line 738
    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 739
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getUpdateVolumeOverview()Z

    move-result v6

    .line 743
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getAddToMyEBooks()Z

    move-result v7

    .line 745
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/ContentResolver;Ljava/util/concurrent/Future;Landroid/accounts/Account;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadataLoadTask:Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;

    .line 747
    sget-object v0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadataLoadTask:Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$VolumeMetadataLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_62
.end method

.method public onStop()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 817
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 820
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 824
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/app/ReaderFragment;->setRenderer(Lcom/google/android/apps/books/render/ReaderRenderer;)V

    .line 825
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->clearRenderer()V

    .line 826
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->refreshPages()V

    .line 830
    iget-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHaveSavedPosition:Z

    if-eqz v2, :cond_31

    .line 831
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    .line 832
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->requestManualSyncUpload(Landroid/accounts/Account;)V

    .line 837
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->dirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 838
    .local v1, collectionDirUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 841
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #collectionDirUri:Landroid/net/Uri;
    :cond_31
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->releaseSettingsFragment()V

    .line 842
    return-void
.end method

.method public onTitleClick()V
    .registers 2

    .prologue
    .line 3941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHideChromeAtEndOfPreview:Z

    .line 3942
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->toggleAboutTheBook()V

    .line 3943
    return-void
.end method

.method public onUserInteraction()V
    .registers 1

    .prologue
    .line 2282
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->renewWakeLock()V

    .line 2283
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 778
    if-eqz p1, :cond_5

    .line 779
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeStartReadingBook()V

    .line 781
    :cond_5
    return-void
.end method

.method public toggleChrome()V
    .registers 3

    .prologue
    .line 2611
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isChromeVisible()Z

    move-result v0

    .line 2612
    .local v0, visible:Z
    if-nez v0, :cond_b

    const/4 v1, 0x1

    :goto_7
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->setChromeVisible(Z)V

    .line 2613
    return-void

    .line 2612
    :cond_b
    const/4 v1, 0x0

    goto :goto_7
.end method
