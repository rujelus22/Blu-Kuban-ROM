.class public abstract Lcom/sec/android/touchwiz/widget/TwAbsListView;
.super Lcom/sec/android/touchwiz/widget/TwAdapterView;
.source "TwAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$WindowRunnnable;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;,
        Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/touchwiz/widget/TwAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DEBUG:Z = false

.field protected static final DEBUG_BOUNCE:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "TwAbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private isActionScroll:Z

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field protected mBounceBlocked:Z

.field protected mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

.field protected mBounceEnabled:Z

.field protected mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDVFSLock:Landroid/os/PowerManager$DVFSLock;

.field mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field mFastScrollEnabled:Z

.field protected mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFlingProfilingStarted:Z

.field protected mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field mIsAttached:Z

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPositionDistanceGuess:I

.field protected mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

.field protected mNeedToInvalidateParent:Z

.field private mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field private mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

.field final mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

.field private mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

.field mResurrectToPosition:I

.field mScrollDown:Landroid/view/View;

.field private mScrollDvfsOn:Z

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 845
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;)V

    .line 246
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    .line 279
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 301
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 307
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 317
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 322
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 328
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 333
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    .line 338
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    .line 343
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    .line 348
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    .line 353
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 359
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 409
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 440
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 478
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    .line 499
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 501
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 529
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    .line 533
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollProfilingStarted:Z

    .line 537
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingProfilingStarted:Z

    .line 544
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 546
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 594
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    .line 617
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    .line 619
    new-array v1, v5, [Z

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    .line 629
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 677
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 797
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    .line 806
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 814
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedToInvalidateParent:Z

    .line 817
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPowerManager:Landroid/os/PowerManager;

    .line 818
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDvfsOn:Z

    .line 819
    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    .line 3833
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 846
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initAbsListView()V

    .line 848
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 849
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 850
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initializeScrollbars(Landroid/content/res/TypedArray;)V

    .line 851
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 852
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 855
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 856
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 20
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 859
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 246
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    .line 279
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 301
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 307
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 317
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 322
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 328
    new-instance v13, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    .line 333
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    .line 338
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    .line 343
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    .line 348
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    .line 353
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 359
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mWidthMeasureSpec:I

    .line 409
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 440
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 478
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    .line 499
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 501
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 529
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    .line 533
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollProfilingStarted:Z

    .line 537
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingProfilingStarted:Z

    .line 544
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 546
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 594
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    .line 617
    const/high16 v13, 0x3f80

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    .line 619
    const/4 v13, 0x1

    new-array v13, v13, [Z

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsScrap:[Z

    .line 629
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 677
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 797
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    .line 806
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    .line 814
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedToInvalidateParent:Z

    .line 817
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPowerManager:Landroid/os/PowerManager;

    .line 818
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDvfsOn:Z

    .line 819
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    .line 3833
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 860
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initAbsListView()V

    .line 862
    sget-object v13, Lcom/android/internal/R$styleable;->AbsListView:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 865
    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 866
    .local v5, d:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_df

    .line 867
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 870
    :cond_df
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 873
    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 874
    .local v10, stackFromBottom:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setStackFromBottom(Z)V

    .line 883
    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 884
    .local v8, scrollingCacheEnabled:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setScrollingCacheEnabled(Z)V

    .line 887
    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 888
    .local v12, useTextFilter:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setTextFilterEnabled(Z)V

    .line 890
    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 892
    .local v11, transcriptMode:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setTranscriptMode(I)V

    .line 894
    const/4 v13, 0x6

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 895
    .local v4, color:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setCacheColorHint(I)V

    .line 897
    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 898
    .local v7, enableFastScroll:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollEnabled(Z)V

    .line 900
    const/16 v13, 0x9

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 901
    .local v9, smoothScrollbar:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 903
    const/4 v13, 0x7

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChoiceMode(I)V

    .line 904
    const/16 v13, 0xa

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 908
    const/16 v13, 0x2d

    const/4 v14, 0x1

    :try_start_152
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setOverScrollMode(I)V
    :try_end_15b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_152 .. :try_end_15b} :catch_15f

    .line 915
    :goto_15b
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 916
    return-void

    .line 910
    :catch_15f
    move-exception v6

    .line 911
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 912
    const-string v13, "TwAbsListView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IndexOutOfBoundsException occured: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15b
.end method

.method private acceptFilter()Z
    .registers 2

    .prologue
    .line 1823
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/view/VelocityTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/os/StrictMode$Span;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$2900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/android/touchwiz/widget/TwAbsListView;IIIIIIIIZ)Z
    .registers 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 105
    invoke-virtual/range {p0 .. p9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/touchwiz/widget/TwAbsListView;IIIIIIIIZ)Z
    .registers 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 105
    invoke-virtual/range {p0 .. p9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Landroid/view/inputmethod/InputConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    return-void
.end method

.method private checkScrap(Ljava/util/ArrayList;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6350
    .local p1, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez p1, :cond_4

    .line 6351
    const/4 v2, 0x1

    .line 6369
    :cond_3
    return v2

    .line 6352
    :cond_4
    const/4 v2, 0x1

    .line 6354
    .local v2, result:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6355
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_3

    .line 6356
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6357
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 6358
    const/4 v2, 0x0

    .line 6359
    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap still attached to a parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6362
    :cond_3b
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_64

    .line 6363
    const/4 v2, 0x0

    .line 6364
    const-string v4, "ViewConsistency"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbsListView "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has a view in its scrap heap that is also a direct child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6355
    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method private clearScrollingCache()V
    .registers 2

    .prologue
    .line 5165
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 5166
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$2;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 5181
    :cond_b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5182
    return-void
.end method

.method private contentFits()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1279
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 1280
    .local v0, childCount:I
    if-nez v0, :cond_9

    .line 1285
    :cond_8
    :goto_8
    return v1

    .line 1282
    :cond_9
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-eq v0, v3, :cond_f

    move v1, v2

    .line 1283
    goto :goto_8

    .line 1285
    :cond_f
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_32

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_8

    :cond_32
    move v1, v2

    goto :goto_8
.end method

.method private createScrollingCache()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 5157
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_13

    .line 5158
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 5159
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 5160
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCachingStarted:Z

    .line 5162
    :cond_13
    return-void
.end method

.method private createTextFilter(Z)V
    .registers 10
    .parameter "animateEntrance"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 6088
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_5a

    .line 6089
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6090
    .local v0, c:Landroid/content/Context;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 6091
    .local v2, p:Landroid/widget/PopupWindow;
    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 6093
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x10900cf

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 6098
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v4, 0xb1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 6100
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 6101
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6102
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6103
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 6104
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6105
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 6106
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6107
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 6108
    invoke-virtual {v2, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6109
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 6110
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6111
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 6113
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v2           #p:Landroid/widget/PopupWindow;
    :cond_5a
    if-eqz p1, :cond_65

    .line 6114
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301dd

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 6118
    :goto_64
    return-void

    .line 6116
    :cond_65
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v4, 0x10301de

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_64
.end method

.method private dismissPopup()V
    .registers 2

    .prologue
    .line 5855
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 5856
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5858
    :cond_9
    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 2428
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2429
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2430
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2431
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2433
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_12
    return-void
.end method

.method private finishGlows()V
    .registers 2

    .prologue
    .line 6373
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v0, :cond_e

    .line 6374
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->finish()V

    .line 6375
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->finish()V

    .line 6377
    :cond_e
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .registers 11
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 5902
    sparse-switch p2, :sswitch_data_a2

    .line 5935
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5904
    :sswitch_b
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 5905
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5906
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 5907
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5939
    .local v1, dY:I
    :goto_23
    sub-int v2, v0, v4

    .line 5940
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 5941
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 5910
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2d
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5911
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 5912
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5913
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 5914
    .restart local v1       #dY:I
    goto :goto_23

    .line 5916
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_46
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 5917
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5918
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 5919
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5920
    .restart local v1       #dY:I
    goto :goto_23

    .line 5922
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_5f
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5923
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 5924
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5925
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 5926
    .restart local v1       #dY:I
    goto :goto_23

    .line 5929
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_78
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 5930
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 5931
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 5932
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 5933
    .restart local v1       #dY:I
    goto :goto_23

    .line 5902
    nop

    :sswitch_data_a2
    .sparse-switch
        0x1 -> :sswitch_78
        0x2 -> :sswitch_78
        0x11 -> :sswitch_46
        0x21 -> :sswitch_5f
        0x42 -> :sswitch_b
        0x82 -> :sswitch_2d
    .end sparse-switch
.end method

.method private initAbsListView()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 921
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setClickable(Z)V

    .line 922
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFocusableInTouchMode(Z)V

    .line 923
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setWillNotDraw(Z)V

    .line 924
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 929
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setScrollingCacheEnabled(Z)V

    .line 931
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 932
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    .line 933
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    .line 934
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    .line 935
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    .line 936
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverflingDistance:I

    .line 938
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDensityScale:F

    .line 940
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwBounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    .line 941
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceRunnable(I)Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    .line 943
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .prologue
    .line 3949
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 3950
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3954
    :goto_a
    return-void

    .line 3952
    :cond_b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .prologue
    .line 3957
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 3958
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3960
    :cond_a
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 4061
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 4062
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 4063
    .local v1, pointerId:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_30

    .line 4067
    if-nez v2, :cond_31

    const/4 v0, 0x1

    .line 4068
    .local v0, newPointerIndex:I
    :goto_16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 4069
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 4070
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 4071
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4076
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 4078
    .end local v0           #newPointerIndex:I
    :cond_30
    return-void

    :cond_31
    move v0, v3

    .line 4067
    goto :goto_16
.end method

.method private positionPopup()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 5874
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 5875
    .local v1, screenHeight:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 5876
    .local v2, xy:[I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLocationOnScreen([I)V

    .line 5879
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a0

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 5880
    .local v0, bottomGap:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_36

    .line 5881
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 5886
    :goto_35
    return-void

    .line 5884
    :cond_36
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_35
.end method

.method private positionSelector(IIII)V
    .registers 10
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2332
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .prologue
    .line 3963
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 3964
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 3965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3967
    :cond_c
    return-void
.end method

.method static retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .registers 6
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 7027
    .local p0, scrapViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7028
    .local v1, size:I
    if-lez v1, :cond_2a

    .line 7030
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_20

    .line 7031
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7032
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v3, p1, :cond_1d

    .line 7033
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 7039
    .end local v0           #i:I
    .end local v2           #view:Landroid/view/View;
    :goto_1c
    return-object v2

    .line 7030
    .restart local v0       #i:I
    .restart local v2       #view:Landroid/view/View;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 7037
    .end local v2           #view:Landroid/view/View;
    :cond_20
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v2, v3

    goto :goto_1c

    .line 7039
    .end local v0           #i:I
    :cond_2a
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private scrollIfNeeded(I)V
    .registers 32
    .parameter "y"

    .prologue
    .line 3130
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    sub-int v29, p1, v3

    .line 3131
    .local v29, rawDeltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    sub-int v17, v29, v3

    .line 3132
    .local v17, deltaY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    const/high16 v4, -0x8000

    if-eq v3, v4, :cond_11b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    sub-int v18, p1, v3

    .line 3134
    .local v18, incrementalDeltaY:I
    :goto_1a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_149

    .line 3142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_31

    .line 3144
    const-string v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3147
    :cond_31
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_11a

    .line 3153
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-nez v3, :cond_58

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_58

    .line 3155
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 3156
    .local v28, parent:Landroid/view/ViewParent;
    if-eqz v28, :cond_58

    .line 3157
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3162
    .end local v28           #parent:Landroid/view/ViewParent;
    :cond_58
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    if-ltz v3, :cond_11f

    .line 3163
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v19, v3, v4

    .line 3172
    .local v19, motionIndex:I
    :goto_68
    const/16 v22, 0x0

    .line 3173
    .local v22, motionViewPrevTop:I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3174
    .local v21, motionView:Landroid/view/View;
    if-eqz v21, :cond_78

    .line 3175
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v22

    .line 3179
    :cond_78
    const/16 v16, 0x0

    .line 3180
    .local v16, atEdge:Z
    if-eqz v18, :cond_86

    .line 3181
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v16

    .line 3185
    :cond_86
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3186
    if-eqz v21, :cond_114

    .line 3189
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v23

    .line 3190
    .local v23, motionViewRealTop:I
    if-eqz v16, :cond_10b

    .line 3193
    move/from16 v0, v18

    neg-int v3, v0

    sub-int v4, v23, v22

    sub-int v5, v3, v4

    .line 3195
    .local v5, overscroll:I
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3196
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ne v3, v4, :cond_cf

    .line 3198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_cf

    .line 3199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 3203
    :cond_cf
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v27

    .line 3204
    .local v27, overscrollMode:I
    if-eqz v27, :cond_e0

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_10b

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_10b

    .line 3206
    :cond_e0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 3207
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3208
    if-lez v29, :cond_127

    .line 3209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 3210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_10b

    .line 3211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 3221
    .end local v5           #overscroll:I
    .end local v27           #overscrollMode:I
    :cond_10b
    :goto_10b
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 3222
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 3224
    .end local v23           #motionViewRealTop:I
    :cond_114
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 3293
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    :cond_11a
    :goto_11a
    return-void

    .end local v18           #incrementalDeltaY:I
    :cond_11b
    move/from16 v18, v17

    .line 3132
    goto/16 :goto_1a

    .line 3169
    .restart local v18       #incrementalDeltaY:I
    :cond_11f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v19, v3, 0x2

    .restart local v19       #motionIndex:I
    goto/16 :goto_68

    .line 3213
    .restart local v5       #overscroll:I
    .restart local v16       #atEdge:Z
    .restart local v21       #motionView:Landroid/view/View;
    .restart local v22       #motionViewPrevTop:I
    .restart local v23       #motionViewRealTop:I
    .restart local v27       #overscrollMode:I
    :cond_127
    if-gez v29, :cond_10b

    .line 3214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 3215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_10b

    .line 3216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_10b

    .line 3226
    .end local v5           #overscroll:I
    .end local v16           #atEdge:Z
    .end local v19           #motionIndex:I
    .end local v21           #motionView:Landroid/view/View;
    .end local v22           #motionViewPrevTop:I
    .end local v23           #motionViewRealTop:I
    .end local v27           #overscrollMode:I
    :cond_149
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_11a

    .line 3227
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_11a

    .line 3228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    move/from16 v26, v0

    .line 3229
    .local v26, oldScroll:I
    sub-int v25, v26, v18

    .line 3230
    .local v25, newScroll:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, p1

    if-le v0, v3, :cond_223

    const/16 v24, 0x1

    .line 3232
    .local v24, newDirection:I
    :goto_16a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    if-nez v3, :cond_176

    .line 3233
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    .line 3236
    :cond_176
    move/from16 v0, v18

    neg-int v8, v0

    .line 3237
    .local v8, overScrollDistance:I
    if-gez v25, :cond_17d

    if-gez v26, :cond_181

    :cond_17d
    if-lez v25, :cond_227

    if-gtz v26, :cond_227

    .line 3238
    :cond_181
    move/from16 v0, v26

    neg-int v8, v0

    .line 3239
    add-int v18, v18, v8

    .line 3244
    :goto_186
    if-eqz v8, :cond_1d0

    .line 3245
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 3247
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v27

    .line 3248
    .restart local v27       #overscrollMode:I
    if-eqz v27, :cond_1ac

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_1d0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_1d0

    .line 3250
    :cond_1ac
    if-lez v29, :cond_22b

    .line 3251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 3252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1cd

    .line 3253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 3261
    :cond_1cd
    :goto_1cd
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 3265
    .end local v27           #overscrollMode:I
    :cond_1d0
    if-eqz v18, :cond_215

    .line 3267
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 3268
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidateParentIfNeeded()V

    .line 3272
    if-eqz v18, :cond_1e5

    .line 3273
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    .line 3276
    :cond_1e5
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3281
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findClosestMotionRow(I)I

    move-result v20

    .line 3283
    .local v20, motionPosition:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 3284
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v3, v20, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 3285
    .restart local v21       #motionView:Landroid/view/View;
    if-eqz v21, :cond_24d

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_205
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 3286
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 3287
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 3289
    .end local v20           #motionPosition:I
    .end local v21           #motionView:Landroid/view/View;
    :cond_215
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 3290
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    goto/16 :goto_11a

    .line 3230
    .end local v8           #overScrollDistance:I
    .end local v24           #newDirection:I
    :cond_223
    const/16 v24, -0x1

    goto/16 :goto_16a

    .line 3241
    .restart local v8       #overScrollDistance:I
    .restart local v24       #newDirection:I
    :cond_227
    const/16 v18, 0x0

    goto/16 :goto_186

    .line 3255
    .restart local v27       #overscrollMode:I
    :cond_22b
    if-gez v29, :cond_1cd

    .line 3256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 3257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1cd

    .line 3258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_1cd

    .line 3285
    .end local v27           #overscrollMode:I
    .restart local v20       #motionPosition:I
    .restart local v21       #motionView:Landroid/view/View;
    :cond_24d
    const/4 v3, 0x0

    goto :goto_205
.end method

.method private showPopup()V
    .registers 2

    .prologue
    .line 5865
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 5866
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 5867
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionPopup()V

    .line 5869
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->checkFocus()V

    .line 5871
    :cond_10
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .registers 12
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3087
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    sub-int v0, p1, v6

    .line 3088
    .local v0, deltaY:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3089
    .local v1, distance:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v6, :cond_4f

    move v4, v8

    .line 3090
    .local v4, overscroll:Z
    :goto_f
    if-nez v4, :cond_15

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    if-le v1, v6, :cond_5f

    .line 3091
    :cond_15
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setScrollDVFS(Z)V

    .line 3092
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createScrollingCache()V

    .line 3093
    if-eqz v4, :cond_51

    .line 3094
    const/4 v6, 0x5

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3095
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 3100
    :goto_22
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 3106
    .local v2, handler:Landroid/os/Handler;
    if-eqz v2, :cond_2d

    .line 3107
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3109
    :cond_2d
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 3110
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v6, v9

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3111
    .local v3, motionView:Landroid/view/View;
    if-eqz v3, :cond_3e

    .line 3112
    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3114
    :cond_3e
    invoke-virtual {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 3118
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 3119
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_4a

    .line 3120
    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3122
    :cond_4a
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->scrollIfNeeded(I)V

    move v6, v8

    .line 3126
    .end local v2           #handler:Landroid/os/Handler;
    .end local v3           #motionView:Landroid/view/View;
    .end local v5           #parent:Landroid/view/ViewParent;
    :goto_4e
    return v6

    .end local v4           #overscroll:Z
    :cond_4f
    move v4, v7

    .line 3089
    goto :goto_f

    .line 3097
    .restart local v4       #overscroll:Z
    :cond_51
    const/4 v6, 0x3

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3098
    if-lez v0, :cond_5b

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    :goto_58
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    goto :goto_22

    :cond_5b
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchSlop:I

    neg-int v6, v6

    goto :goto_58

    :cond_5f
    move v6, v7

    .line 3126
    goto :goto_4e
.end method

.method private useDefaultSelector()V
    .registers 3

    .prologue
    .line 1534
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1536
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4085
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v2

    .line 4086
    .local v2, count:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 4087
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4089
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_b

    .line 4100
    :cond_a
    return-void

    .line 4093
    :cond_b
    const/4 v4, 0x0

    .local v4, i:I
    :goto_c
    if-ge v4, v2, :cond_a

    .line 4094
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4095
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 4096
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4098
    :cond_1d
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 4093
    add-int/lit8 v4, v4, 0x1

    goto :goto_c
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 6198
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 6160
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 6078
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 6219
    instance-of v0, p1, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .registers 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_9

    .line 1080
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1082
    :cond_9
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_12

    .line 1083
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1085
    :cond_12
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1086
    return-void
.end method

.method public clearTextFilter()V
    .registers 3

    .prologue
    .line 6124
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v0, :cond_1d

    .line 6125
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    .line 6127
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6128
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 6131
    :cond_1d
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 1912
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 1913
    .local v1, count:I
    if-lez v1, :cond_6a

    .line 1914
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v9, :cond_6b

    .line 1915
    mul-int/lit8 v2, v1, 0x64

    .line 1917
    .local v2, extent:I
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1918
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1919
    .local v6, top:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1920
    .local v3, height:I
    if-lez v3, :cond_20

    .line 1921
    mul-int/lit8 v9, v6, 0x64

    div-int/2addr v9, v3

    add-int/2addr v2, v9

    .line 1924
    :cond_20
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1925
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1926
    .local v0, bottom:I
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1927
    if-lez v3, :cond_3a

    .line 1928
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v9

    sub-int v9, v0, v9

    mul-int/lit8 v9, v9, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v2, v9

    .line 1935
    :cond_3a
    move v5, v2

    .line 1938
    .local v5, retVal:I
    iget-boolean v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v9, :cond_6a

    .line 1939
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v9, v9, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_66

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->computeVerticalScrollRange()I

    move-result v9

    if-ge v2, v9, :cond_66

    .line 1942
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v10, v10, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v4, v9, v10

    .line 1944
    .local v4, ratio:F
    int-to-float v9, v5

    mul-float/2addr v9, v4

    float-to-int v5, v9

    .line 1947
    .end local v4           #ratio:F
    :cond_66
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1955
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v5           #retVal:I
    .end local v6           #top:I
    .end local v7           #view:Landroid/view/View;
    :cond_6a
    :goto_6a
    return v5

    :cond_6b
    move v5, v8

    .line 1952
    goto :goto_6a
.end method

.method protected computeVerticalScrollOffset()I
    .registers 18

    .prologue
    .line 1960
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1961
    .local v4, firstPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 1962
    .local v1, childCount:I
    if-ltz v4, :cond_93

    if-lez v1, :cond_93

    .line 1966
    const/4 v8, 0x0

    .line 1967
    .local v8, retVal:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v13, :cond_75

    .line 1968
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1969
    .local v12, view:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v11

    .line 1970
    .local v11, top:I
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1971
    .local v5, height:I
    if-lez v5, :cond_45

    .line 1972
    mul-int/lit8 v13, v4, 0x64

    mul-int/lit8 v14, v11, 0x64

    div-int/2addr v14, v5

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    int-to-float v15, v15

    mul-float/2addr v14, v15

    const/high16 v15, 0x42c8

    mul-float/2addr v14, v15

    float-to-int v14, v14

    add-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1976
    :cond_45
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v13, :cond_74

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v13, v13, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_74

    .line 1977
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v9, v13, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1978
    .local v9, savedBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->computeVerticalScrollExtent()I

    move-result v10

    .line 1979
    .local v10, shrinkedScrollExtent:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v14, 0x0

    iput v14, v13, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1980
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->computeVerticalScrollExtent()I

    move-result v7

    .line 1981
    .local v7, normalScrollExtent:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iput v9, v13, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1983
    sub-int v3, v7, v10

    .line 1985
    .local v3, delta:I
    add-int/2addr v8, v3

    .line 2005
    .end local v3           #delta:I
    .end local v5           #height:I
    .end local v7           #normalScrollExtent:I
    .end local v8           #retVal:I
    .end local v9           #savedBounceExtent:F
    .end local v10           #shrinkedScrollExtent:I
    .end local v11           #top:I
    .end local v12           #view:Landroid/view/View;
    :cond_74
    :goto_74
    return v8

    .line 1994
    .restart local v8       #retVal:I
    :cond_75
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1995
    .local v2, count:I
    if-nez v4, :cond_88

    .line 1996
    const/4 v6, 0x0

    .line 2002
    .local v6, index:I
    :goto_7c
    int-to-float v13, v4

    int-to-float v14, v1

    int-to-float v15, v6

    int-to-float v0, v2

    move/from16 v16, v0

    div-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v8, v13

    goto :goto_74

    .line 1997
    .end local v6           #index:I
    :cond_88
    add-int v13, v4, v1

    if-ne v13, v2, :cond_8e

    .line 1998
    move v6, v2

    .restart local v6       #index:I
    goto :goto_7c

    .line 2000
    .end local v6           #index:I
    :cond_8e
    div-int/lit8 v13, v1, 0x2

    add-int v6, v4, v13

    .restart local v6       #index:I
    goto :goto_7c

    .line 2005
    .end local v2           #count:I
    .end local v6           #index:I
    .end local v8           #retVal:I
    :cond_93
    const/4 v8, 0x0

    goto :goto_74
.end method

.method protected computeVerticalScrollRange()I
    .registers 4

    .prologue
    .line 2011
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_28

    .line 2012
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2013
    .local v0, result:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v1, :cond_27

    .line 2015
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2020
    :cond_27
    :goto_27
    return v0

    .line 2018
    .end local v0           #result:I
    :cond_28
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_27
.end method

.method confirmCheckedPositionsById()V
    .registers 18

    .prologue
    .line 5639
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 5641
    const/4 v7, 0x0

    .line 5642
    .local v7, checkedCountChanged:Z
    const/4 v8, 0x0

    .local v8, checkedIndex:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_a9

    .line 5643
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 5644
    .local v4, id:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5646
    .local v3, lastPos:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    .line 5647
    .local v11, lastPosId:J
    cmp-long v1, v4, v11

    if-eqz v1, :cond_a0

    .line 5649
    const/4 v1, 0x0

    add-int/lit8 v2, v3, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 5650
    .local v16, start:I
    add-int/lit8 v1, v3, 0x14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 5651
    .local v9, end:I
    const/4 v10, 0x0

    .line 5652
    .local v10, found:Z
    move/from16 v15, v16

    .local v15, searchPos:I
    :goto_49
    if-ge v15, v9, :cond_6b

    .line 5653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v13

    .line 5654
    .local v13, searchId:J
    cmp-long v1, v4, v13

    if-nez v1, :cond_9d

    .line 5655
    const/4 v10, 0x1

    .line 5656
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 5662
    .end local v13           #searchId:J
    :cond_6b
    if-nez v10, :cond_99

    .line 5663
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/util/LongSparseArray;->delete(J)V

    .line 5664
    add-int/lit8 v8, v8, -0x1

    .line 5665
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 5666
    const/4 v7, 0x1

    .line 5667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_99

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_99

    .line 5668
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 5642
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_99
    :goto_99
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9

    .line 5652
    .restart local v9       #end:I
    .restart local v10       #found:Z
    .restart local v13       #searchId:J
    .restart local v15       #searchPos:I
    .restart local v16       #start:I
    :cond_9d
    add-int/lit8 v15, v15, 0x1

    goto :goto_49

    .line 5673
    .end local v9           #end:I
    .end local v10           #found:Z
    .end local v13           #searchId:J
    .end local v15           #searchPos:I
    .end local v16           #start:I
    :cond_a0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_99

    .line 5677
    .end local v3           #lastPos:I
    .end local v4           #id:J
    .end local v11           #lastPosId:J
    :cond_a9
    if-eqz v7, :cond_b8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_b8

    .line 5678
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 5680
    :cond_b8
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 6
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2743
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .registers 2

    .prologue
    .line 6408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6409
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    .line 2336
    const/4 v2, 0x0

    .line 2337
    .local v2, saveCount:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x22

    const/16 v6, 0x22

    if-ne v5, v6, :cond_50

    const/4 v0, 0x1

    .line 2338
    .local v0, clipToPadding:Z
    :goto_a
    if-eqz v0, :cond_35

    .line 2339
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2340
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    .line 2341
    .local v3, scrollX:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 2342
    .local v4, scrollY:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mRight:I

    add-int/2addr v7, v3

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2344
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v5, v5, -0x23

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    .line 2347
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    :cond_35
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 2348
    .local v1, drawSelectorOnTop:Z
    if-nez v1, :cond_3c

    .line 2349
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2352
    :cond_3c
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2354
    if-eqz v1, :cond_44

    .line 2355
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 2358
    :cond_44
    if-eqz v0, :cond_4f

    .line 2359
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2360
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    .line 2362
    :cond_4f
    return-void

    .line 2337
    .end local v0           #clipToPadding:Z
    .end local v1           #drawSelectorOnTop:Z
    :cond_50
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected dispatchSetPressed(Z)V
    .registers 2
    .parameter "pressed"

    .prologue
    .line 2948
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 13
    .parameter "canvas"

    .prologue
    const/4 v10, 0x0

    .line 3858
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 3861
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v7, :cond_34

    .line 3862
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwBounceController;->adjustBounceExtent()F

    move-result v8

    iput v8, v7, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 3864
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getOverScrollMode()I

    move-result v2

    .line 3865
    .local v2, overscrollMode:I
    if-eqz v2, :cond_21

    const/4 v7, 0x1

    if-ne v2, v7, :cond_34

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->contentFits()Z

    move-result v7

    if-nez v7, :cond_34

    .line 3867
    :cond_21
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_f0

    .line 3868
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceExtentRatio()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull2(F)V

    .line 3875
    .end local v2           #overscrollMode:I
    :cond_34
    :goto_34
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v7, :cond_d7

    .line 3876
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 3877
    .local v5, scrollY:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_85

    .line 3878
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3879
    .local v3, restoreCount:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingLeft:I

    add-int v1, v7, v8

    .line 3880
    .local v1, leftPadding:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingRight:I

    add-int v4, v7, v8

    .line 3881
    .local v4, rightPadding:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int v6, v7, v4

    .line 3885
    .local v6, width:I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v7, :cond_61

    .line 3890
    :cond_61
    int-to-float v7, v1

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3894
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 3895
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 3896
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 3898
    :cond_82
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3900
    .end local v1           #leftPadding:I
    .end local v3           #restoreCount:I
    .end local v4           #rightPadding:I
    .end local v6           #width:I
    :cond_85
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_d7

    .line 3901
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3902
    .restart local v3       #restoreCount:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingLeft:I

    add-int v1, v7, v8

    .line 3903
    .restart local v1       #leftPadding:I
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingRight:I

    add-int v4, v7, v8

    .line 3904
    .restart local v4       #rightPadding:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    sub-int v6, v7, v4

    .line 3905
    .restart local v6       #width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v0

    .line 3910
    .local v0, height:I
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v7, :cond_b0

    .line 3915
    :cond_b0
    neg-int v7, v6

    add-int/2addr v7, v1

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v8, v5

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3918
    const/high16 v7, 0x4334

    int-to-float v8, v6

    invoke-virtual {p1, v7, v8, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3919
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7, v6, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 3920
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v7, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_d4

    .line 3921
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 3923
    :cond_d4
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3926
    .end local v0           #height:I
    .end local v1           #leftPadding:I
    .end local v3           #restoreCount:I
    .end local v4           #rightPadding:I
    .end local v5           #scrollY:I
    .end local v6           #width:I
    :cond_d7
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v7, :cond_ef

    .line 3927
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 3928
    .restart local v5       #scrollY:I
    if-eqz v5, :cond_105

    .line 3930
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 3931
    .restart local v3       #restoreCount:I
    int-to-float v7, v5

    invoke-virtual {p1, v10, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3932
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v7, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 3933
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3938
    .end local v3           #restoreCount:I
    .end local v5           #scrollY:I
    :cond_ef
    :goto_ef
    return-void

    .line 3869
    .restart local v2       #overscrollMode:I
    :cond_f0
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v7, v7, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpg-float v7, v7, v10

    if-gez v7, :cond_34

    .line 3870
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceExtentRatio()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull2(F)V

    goto/16 :goto_34

    .line 3935
    .end local v2           #overscrollMode:I
    .restart local v5       #scrollY:I
    :cond_105
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v7, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->draw(Landroid/graphics/Canvas;)V

    goto :goto_ef
.end method

.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 2544
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->drawableStateChanged()V

    .line 2545
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 2546
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .registers 5
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 5490
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 5491
    .local v0, childCount:I
    if-nez v0, :cond_9

    move v1, v2

    .line 5496
    :cond_8
    :goto_8
    return v1

    .line 5495
    :cond_9
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findMotionRow(I)I

    move-result v1

    .line 5496
    .local v1, motionRow:I
    if-ne v1, v2, :cond_8

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_8
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 6209
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 6214
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 8

    .prologue
    .line 2054
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 2055
    .local v1, count:I
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2056
    .local v2, fadeEdge:F
    if-nez v1, :cond_b

    .line 2076
    .end local v2           #fadeEdge:F
    :cond_a
    :goto_a
    return v2

    .line 2059
    .restart local v2       #fadeEdge:F
    :cond_b
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_19

    .line 2060
    const/high16 v2, 0x3f80

    goto :goto_a

    .line 2068
    :cond_19
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v5, :cond_3f

    .line 2069
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2074
    .local v0, bottom:I
    :goto_27
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v4

    .line 2075
    .local v4, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2076
    .local v3, fadeLength:F
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_a

    sub-int v5, v0, v4

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_a

    .line 2071
    .end local v0           #bottom:I
    .end local v3           #fadeLength:F
    .end local v4           #height:I
    :cond_3f
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .restart local v0       #bottom:I
    goto :goto_27
.end method

.method protected getBottomPaddingOffset()I
    .registers 3

    .prologue
    .line 2386
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    goto :goto_9
.end method

.method public getBounceController()Lcom/sec/android/touchwiz/widget/TwBounceController;
    .registers 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    return-object v0
.end method

.method public getCacheColorHint()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 6280
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .registers 2

    .prologue
    .line 998
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .registers 7

    .prologue
    .line 1060
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_10

    .line 1061
    :cond_c
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1072
    :cond_f
    return-object v3

    .line 1064
    :cond_10
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1065
    .local v2, idStates:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1066
    .local v0, count:I
    new-array v3, v0, [J

    .line 1068
    .local v3, ids:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    if-ge v1, v0, :cond_f

    .line 1069
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1068
    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method public getCheckedItemPosition()I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1028
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_19

    .line 1029
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1032
    :goto_18
    return v0

    :cond_19
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .registers 2

    .prologue
    .line 1045
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    .line 1046
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1048
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getChoiceMode()I
    .registers 2

    .prologue
    .line 1223
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1522
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_13

    .line 1525
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1526
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1531
    :goto_12
    return-void

    .line 1529
    :cond_13
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_12
.end method

.method getFooterViewsCount()I
    .registers 2

    .prologue
    .line 5430
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 5419
    const/4 v0, 0x0

    return v0
.end method

.method protected getLeftPaddingOffset()I
    .registers 3

    .prologue
    .line 2371
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_9
.end method

.method public getListPaddingBottom()I
    .registers 2

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .registers 2

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .registers 2

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .registers 2

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .registers 3

    .prologue
    .line 2381
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    goto :goto_9
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2193
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 2194
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2196
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 6248
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1864
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 1865
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1867
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 2025
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 2026
    .local v0, count:I
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2027
    .local v1, fadeEdge:F
    if-nez v0, :cond_c

    .line 2048
    .end local v1           #fadeEdge:F
    :cond_b
    :goto_b
    return v1

    .line 2030
    .restart local v1       #fadeEdge:F
    :cond_c
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v4, :cond_13

    .line 2031
    const/high16 v1, 0x3f80

    goto :goto_b

    .line 2038
    :cond_13
    const/4 v3, 0x0

    .line 2039
    .local v3, top:I
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v4, :cond_26

    .line 2040
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2041
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    if-lt v3, v4, :cond_2e

    .line 2042
    const/4 v1, 0x0

    goto :goto_b

    .line 2044
    :cond_26
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2047
    :cond_2e
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2048
    .local v2, fadeLength:F
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_b

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_b
.end method

.method protected getTopPaddingOffset()I
    .registers 3

    .prologue
    .line 2376
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_9
.end method

.method public getTranscriptMode()I
    .registers 2

    .prologue
    .line 6243
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .registers 3

    .prologue
    .line 1350
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isFastScrollAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1351
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1353
    :goto_14
    return v0

    :cond_15
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_14
.end method

.method protected handleDataChanged()V
    .registers 16

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 5684
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 5685
    .local v1, count:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastHandledItemCount:I

    .line 5686
    .local v4, lastHandledItemCount:I
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastHandledItemCount:I

    .line 5688
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v10, :cond_20

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_20

    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_20

    .line 5689
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->confirmCheckedPositionsById()V

    .line 5692
    :cond_20
    if-lez v1, :cond_e2

    .line 5697
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    if-eqz v10, :cond_6b

    .line 5700
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 5702
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_30

    .line 5703
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 5831
    :cond_2f
    :goto_2f
    return-void

    .line 5705
    :cond_30
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_66

    .line 5706
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3d

    .line 5707
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForceTranscriptScroll:Z

    .line 5708
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_2f

    .line 5711
    :cond_3d
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 5712
    .local v0, childCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 5713
    .local v5, listBottom:I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5714
    .local v3, lastChild:Landroid/view/View;
    if-eqz v3, :cond_61

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5715
    .local v2, lastBottom:I
    :goto_57
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_63

    if-gt v2, v5, :cond_63

    .line 5717
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_2f

    .end local v2           #lastBottom:I
    :cond_61
    move v2, v5

    .line 5714
    goto :goto_57

    .line 5723
    .restart local v2       #lastBottom:I
    :cond_63
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->awakenScrollBars()Z

    .line 5726
    .end local v0           #childCount:I
    .end local v2           #lastBottom:I
    .end local v3           #lastChild:Landroid/view/View;
    .end local v5           #listBottom:I
    :cond_66
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_100

    .line 5785
    :cond_6b
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_de

    .line 5788
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 5791
    .local v6, newPos:I
    if-lt v6, v1, :cond_79

    .line 5792
    add-int/lit8 v6, v1, -0x1

    .line 5794
    :cond_79
    if-gez v6, :cond_7c

    .line 5795
    const/4 v6, 0x0

    .line 5799
    :cond_7c
    invoke-virtual {p0, v6, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5801
    .local v7, selectablePos:I
    if-ltz v7, :cond_d3

    .line 5802
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_2f

    .line 5728
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_86
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_9d

    .line 5737
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 5738
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    goto :goto_2f

    .line 5746
    :cond_9d
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findSyncPosition()I

    move-result v6

    .line 5747
    .restart local v6       #newPos:I
    if-ltz v6, :cond_6b

    .line 5750
    invoke-virtual {p0, v6, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5751
    .restart local v7       #selectablePos:I
    if-ne v7, v6, :cond_6b

    .line 5753
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 5755
    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_bd

    .line 5759
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 5769
    :goto_b8
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_2f

    .line 5765
    :cond_bd
    const/4 v8, 0x2

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    goto :goto_b8

    .line 5778
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :pswitch_c1
    iput v14, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 5779
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    goto/16 :goto_2f

    .line 5806
    .restart local v6       #newPos:I
    .restart local v7       #selectablePos:I
    :cond_d3
    invoke-virtual {p0, v6, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 5807
    if-ltz v7, :cond_e2

    .line 5808
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_2f

    .line 5815
    .end local v6           #newPos:I
    .end local v7           #selectablePos:I
    :cond_de
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_2f

    .line 5823
    :cond_e2
    iget-boolean v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_fd

    :goto_e6
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 5824
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 5825
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    .line 5826
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    .line 5827
    const-wide/high16 v8, -0x8000

    iput-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedRowId:J

    .line 5828
    iput-boolean v12, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 5829
    iput v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 5830
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->checkSelectionChanged()V

    goto/16 :goto_2f

    :cond_fd
    move v8, v9

    .line 5823
    goto :goto_e6

    .line 5726
    nop

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_86
        :pswitch_c1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .registers 2

    .prologue
    .line 6137
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 5444
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_25

    .line 5445
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 5446
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 5448
    :cond_e
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1c

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1c

    .line 5449
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 5451
    :cond_1c
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectedPositionInt(I)V

    .line 5452
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    .line 5453
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 5455
    :cond_25
    return-void
.end method

.method public invalidateViews()V
    .registers 2

    .prologue
    .line 5503
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 5504
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->rememberSyncState()V

    .line 5505
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 5506
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 5507
    return-void
.end method

.method invokeOnItemScrollListener()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1431
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_12

    .line 1432
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V

    .line 1434
    :cond_12
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    if-eqz v0, :cond_23

    .line 1435
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V

    .line 1437
    :cond_23
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onScrollChanged(IIII)V

    .line 1439
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .registers 2

    .prologue
    .line 1345
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isFastScrollEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1364
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    return v0
.end method

.method protected isInFilterMode()Z
    .registers 2

    .prologue
    .line 5946
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 1012
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_f

    .line 1013
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1016
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected isPaddingOffsetRequired()Z
    .registers 3

    .prologue
    .line 2366
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isScrollingCacheEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1473
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1413
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1547
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .registers 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 2592
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->jumpDrawablesToCurrentState()V

    .line 2593
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 2594
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2595
    :cond_c
    return-void
.end method

.method keyPressed()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 2489
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_e

    .line 2525
    :cond_d
    :goto_d
    return-void

    .line 2493
    :cond_e
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2494
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2495
    .local v3, selectorRect:Landroid/graphics/Rect;
    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_20
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 2498
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2500
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_3a

    .line 2501
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_d

    .line 2503
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 2505
    :cond_3a
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 2507
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLongClickable()Z

    move-result v1

    .line 2508
    .local v1, longClickable:Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2509
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_56

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_56

    .line 2510
    if-eqz v1, :cond_78

    .line 2511
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2517
    :cond_56
    :goto_56
    if-eqz v1, :cond_d

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v5, :cond_d

    .line 2518
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_68

    .line 2519
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    .line 2521
    :cond_68
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 2522
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForKeyLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 2514
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_78
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_56
.end method

.method protected layoutChildren()V
    .registers 1

    .prologue
    .line 2154
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v3, 0x0

    .line 2261
    aput-boolean v3, p2, v3

    .line 2264
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 2267
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_29

    .line 2273
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2280
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_22

    .line 2281
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2, v1, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2282
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_21

    .line 2283
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2304
    :cond_21
    :goto_21
    return-object v0

    .line 2290
    :cond_22
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    .line 2291
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_21

    .line 2294
    .end local v0           #child:Landroid/view/View;
    :cond_29
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2295
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_21

    .line 2296
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_21
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2599
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onAttachedToWindow()V

    .line 2601
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2602
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2603
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_1a

    .line 2604
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2607
    :cond_1a
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_3e

    .line 2608
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 2609
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2612
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 2613
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 2614
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 2616
    :cond_3e
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsAttached:Z

    .line 2617
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .registers 12
    .parameter "consistency"

    .prologue
    .line 6317
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onConsistencyCheck(I)Z

    move-result v4

    .line 6319
    .local v4, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_41

    const/4 v1, 0x1

    .line 6321
    .local v1, checkLayout:Z
    :goto_9
    if-eqz v1, :cond_66

    .line 6323
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->access$4300(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;)[Landroid/view/View;

    move-result-object v0

    .line 6324
    .local v0, activeViews:[Landroid/view/View;
    array-length v2, v0

    .line 6325
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    if-ge v3, v2, :cond_43

    .line 6326
    aget-object v7, v0, v3

    if-eqz v7, :cond_3e

    .line 6327
    const/4 v4, 0x0

    .line 6328
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TwAbsListView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has a view in its active recycler: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6325
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 6319
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v1           #checkLayout:Z
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_41
    const/4 v1, 0x0

    goto :goto_9

    .line 6335
    .restart local v0       #activeViews:[Landroid/view/View;
    .restart local v1       #checkLayout:Z
    .restart local v2       #count:I
    .restart local v3       #i:I
    :cond_43
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->access$4400(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;)Ljava/util/ArrayList;

    move-result-object v5

    .line 6336
    .local v5, scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_50

    .line 6337
    const/4 v4, 0x0

    .line 6338
    :cond_50
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->access$4500(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;)[Ljava/util/ArrayList;

    move-result-object v6

    .line 6339
    .local v6, scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v2, v6

    .line 6340
    const/4 v3, 0x0

    :goto_58
    if-ge v3, v2, :cond_66

    .line 6341
    aget-object v7, v6, v3

    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->checkScrap(Ljava/util/ArrayList;)Z

    move-result v7

    if-nez v7, :cond_63

    .line 6342
    const/4 v4, 0x0

    .line 6340
    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 6346
    .end local v0           #activeViews:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #scrap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v6           #scraps:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_66
    return v4
.end method

.method protected onCreateDrawableState(I)[I
    .registers 8
    .parameter "extraSpace"

    .prologue
    .line 2551
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_9

    .line 2553
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2582
    :cond_8
    :goto_8
    return-object v3

    .line 2559
    :cond_9
    sget-object v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 2567
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 2568
    .local v3, state:[I
    const/4 v0, -0x1

    .line 2569
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_18
    if-ltz v2, :cond_1f

    .line 2570
    aget v4, v3, v2

    if-ne v4, v1, :cond_2b

    .line 2571
    move v0, v2

    .line 2577
    :cond_1f
    if-ltz v0, :cond_8

    .line 2578
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    .line 2569
    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_18
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .parameter "outAttrs"

    .prologue
    const/4 v1, 0x0

    .line 6025
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 6029
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 6030
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    if-nez v0, :cond_23

    .line 6031
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 6032
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$3;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/inputmethod/InputConnection;Z)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 6065
    :cond_23
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 6066
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 6067
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPublicInputConnection:Landroid/view/inputmethod/InputConnectionWrapper;

    .line 6069
    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method protected onDetachedFromWindow()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2621
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onDetachedFromWindow()V

    .line 2624
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 2627
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->clear()V

    .line 2629
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2630
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2631
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_21

    .line 2632
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2633
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 2636
    :cond_21
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2e

    .line 2637
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2638
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    .line 2641
    :cond_2e
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_39

    .line 2642
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2643
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 2646
    :cond_39
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_44

    .line 2647
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 2648
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 2651
    :cond_44
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v1, :cond_4d

    .line 2652
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2655
    :cond_4d
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-eqz v1, :cond_56

    .line 2656
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 2659
    :cond_56
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_5f

    .line 2660
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2663
    :cond_5f
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    if-eqz v1, :cond_68

    .line 2664
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2667
    :cond_68
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_73

    .line 2668
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2669
    iput-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 2671
    :cond_73
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsAttached:Z

    .line 2672
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 3
    .parameter "hint"

    .prologue
    .line 5835
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onDisplayHint(I)V

    .line 5836
    sparse-switch p1, :sswitch_data_34

    .line 5848
    :cond_6
    :goto_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_31

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopupHidden:Z

    .line 5849
    return-void

    .line 5838
    :sswitch_d
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5839
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    goto :goto_6

    .line 5843
    :sswitch_1d
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5844
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    goto :goto_6

    .line 5848
    :cond_31
    const/4 v0, 0x0

    goto :goto_a

    .line 5836
    nop

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_1d
        0x4 -> :sswitch_d
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 6201
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_c

    if-lez p1, :cond_c

    .line 6202
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 6203
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    .line 6205
    :cond_c
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1872
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1873
    if-eqz p1, :cond_29

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_29

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_29

    .line 1874
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsAttached:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_26

    .line 1877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1878
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    .line 1879
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 1881
    :cond_26
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    .line 1883
    :cond_29
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 3837
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_10

    .line 3838
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_34

    .line 3853
    :cond_10
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_14
    return v2

    .line 3840
    :pswitch_15
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    .line 3841
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 3842
    .local v1, vscroll:F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_10

    .line 3843
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalScrollFactor()F

    move-result v3

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 3844
    .local v0, delta:I
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 3845
    invoke-virtual {p0, v0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->trackMotionScroll(II)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_14

    .line 3838
    :pswitch_data_34
    .packed-switch 0x8
        :pswitch_15
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 6141
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6143
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_1d

    .line 6144
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    .line 6153
    :cond_1d
    :goto_1d
    return-void

    .line 6148
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 6149
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    goto :goto_1d
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "ev"

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3979
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3982
    .local v0, action:I
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v10, :cond_15

    .line 3983
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v10, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3984
    .local v1, intercepted:Z
    if-eqz v1, :cond_15

    .line 4057
    .end local v1           #intercepted:Z
    :goto_14
    return v8

    .line 3989
    :cond_15
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_a0

    :cond_1a
    :goto_1a
    :pswitch_1a
    move v8, v9

    .line 4057
    goto :goto_14

    .line 3991
    :pswitch_1c
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3992
    .local v4, touchMode:I
    const/4 v10, 0x6

    if-eq v4, v10, :cond_24

    const/4 v10, 0x5

    if-ne v4, v10, :cond_27

    .line 3993
    :cond_24
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    goto :goto_14

    .line 3997
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v6, v10

    .line 3998
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v7, v10

    .line 3999
    .local v7, y:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4001
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findMotionRow(I)I

    move-result v2

    .line 4002
    .local v2, motionPosition:I
    if-eq v4, v12, :cond_58

    if-ltz v2, :cond_58

    .line 4006
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v10, v2, v10

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4007
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 4008
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 4009
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 4010
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 4011
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4012
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 4014
    .end local v5           #v:Landroid/view/View;
    :cond_58
    const/high16 v10, -0x8000

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 4015
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initOrResetVelocityTracker()V

    .line 4016
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4017
    if-ne v4, v12, :cond_1a

    goto :goto_14

    .line 4024
    .end local v2           #motionPosition:I
    .end local v4           #touchMode:I
    .end local v6           #x:I
    .end local v7           #y:I
    :pswitch_67
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v10, :pswitch_data_b2

    goto :goto_1a

    .line 4026
    :pswitch_6d
    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 4027
    .local v3, pointerIndex:I
    if-ne v3, v11, :cond_7c

    .line 4028
    const/4 v3, 0x0

    .line 4029
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4031
    :cond_7c
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v7, v10

    .line 4032
    .restart local v7       #y:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initVelocityTrackerIfNotExists()V

    .line 4033
    iget-object v10, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4034
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startScrollIfNeeded(I)Z

    move-result v10

    if-eqz v10, :cond_1a

    goto :goto_14

    .line 4044
    .end local v3           #pointerIndex:I
    .end local v7           #y:I
    :pswitch_90
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 4045
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 4046
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 4047
    invoke-virtual {p0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto :goto_1a

    .line 4052
    :pswitch_9b
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1a

    .line 3989
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_90
        :pswitch_67
        :pswitch_90
        :pswitch_1a
        :pswitch_1a
        :pswitch_9b
    .end packed-switch

    .line 4024
    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_6d
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2904
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2909
    sparse-switch p1, :sswitch_data_5a

    .line 2939
    :cond_5
    :goto_5
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_9
    :goto_9
    return v1

    .line 2912
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2915
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 2918
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2919
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_43

    .line 2920
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 2921
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2923
    :cond_43
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    goto :goto_9

    .line 2931
    .end local v0           #view:Landroid/view/View;
    :sswitch_47
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    if-eqz v1, :cond_55

    .line 2932
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v1}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 2933
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v2, 0x0

    iput v2, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 2935
    :cond_55
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->refreshDrawableState()V

    goto :goto_5

    .line 2909
    nop

    :sswitch_data_5a
    .sparse-switch
        0x13 -> :sswitch_47
        0x14 -> :sswitch_47
        0x15 -> :sswitch_47
        0x16 -> :sswitch_47
        0x17 -> :sswitch_a
        0x42 -> :sswitch_a
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2110
    invoke-super/range {p0 .. p5}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onLayout(ZIIII)V

    .line 2111
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    .line 2112
    if-eqz p1, :cond_1e

    .line 2113
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 2114
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 2115
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2114
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2117
    :cond_19
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->markChildrenDirty()V

    .line 2120
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1e
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v2, :cond_31

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    if-eq v2, v3, :cond_31

    .line 2121
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldItemCount:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onItemCountChanged(II)V

    .line 2124
    :cond_31
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 2125
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    .line 2127
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollMax:I

    .line 2128
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x1

    .line 2083
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_8

    .line 2084
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->useDefaultSelector()V

    .line 2086
    :cond_8
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2087
    .local v4, listPadding:Landroid/graphics/Rect;
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2088
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2089
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingRight:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2090
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2094
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_4f

    .line 2095
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 2096
    .local v0, childCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2097
    .local v3, listBottom:I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2098
    .local v2, lastChild:Landroid/view/View;
    if-eqz v2, :cond_50

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2099
    .local v1, lastBottom:I
    :goto_44
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_52

    if-gt v1, v3, :cond_52

    :goto_4d
    iput-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mForceTranscriptScroll:Z

    .line 2102
    .end local v0           #childCount:I
    .end local v1           #lastBottom:I
    .end local v2           #lastChild:Landroid/view/View;
    .end local v3           #listBottom:I
    :cond_4f
    return-void

    .restart local v0       #childCount:I
    .restart local v2       #lastChild:Landroid/view/View;
    .restart local v3       #listBottom:I
    :cond_50
    move v1, v3

    .line 2098
    goto :goto_44

    .line 2099
    .restart local v1       #lastBottom:I
    :cond_52
    const/4 v5, 0x0

    goto :goto_4d
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 8
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    .line 3824
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eq v0, p2, :cond_15

    .line 3825
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onScrollChanged(IIII)V

    .line 3826
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 3827
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidateParentIfNeeded()V

    .line 3829
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->awakenScrollBars()Z

    .line 3831
    :cond_15
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 6415
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v1, v2, :cond_18

    .line 6416
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6417
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v1, :cond_17

    .line 6418
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->notifyDataSetChanged()V

    .line 6419
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6426
    :cond_17
    :goto_17
    return v0

    .line 6422
    :cond_18
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    if-eqz v1, :cond_17

    .line 6423
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 6424
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public onRemoteAdapterDisconnected()V
    .registers 1

    .prologue
    .line 6438
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 1812
    sget-object v1, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1813
    instance-of v1, p1, Landroid/os/Bundle;

    if-nez v1, :cond_a

    .line 1818
    :goto_9
    return-void

    :cond_a
    move-object v0, p1

    .line 1816
    check-cast v0, Landroid/os/Bundle;

    .line 1817
    .local v0, ss:Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onRestoreInstanceState2(Landroid/os/Bundle;)V

    goto :goto_9
.end method

.method public onRestoreInstanceState2(Landroid/os/Bundle;)V
    .registers 9
    .parameter "b"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 1763
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1764
    const-class v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1766
    const-string v1, "com.sec.android.touchwiz.widget.twabslistview.savedstate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    .line 1769
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->height:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncHeight:J

    .line 1771
    iget-wide v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_65

    .line 1772
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1773
    iget-wide v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1774
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1775
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 1776
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    .line 1790
    :cond_33
    :goto_33
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 1792
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_40

    .line 1793
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1796
    :cond_40
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_48

    .line 1797
    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1800
    :cond_48
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1802
    iget-boolean v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_61

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_61

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_61

    .line 1804
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1807
    :cond_61
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 1808
    return-void

    .line 1777
    :cond_65
    iget-wide v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_33

    .line 1778
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectedPositionInt(I)V

    .line 1781
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    .line 1782
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 1783
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1784
    iget-wide v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    iput-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncRowId:J

    .line 1785
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncPosition:I

    .line 1786
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 1787
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSyncMode:I

    goto :goto_33
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 1755
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1756
    .local v0, ignoreThis:Landroid/os/Parcelable;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1757
    .local v1, ss:Landroid/os/Bundle;
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSaveInstanceState2(Landroid/os/Bundle;)V

    .line 1758
    return-object v1
.end method

.method public onSaveInstanceState2(Landroid/os/Bundle;)V
    .registers 16
    .parameter "b"

    .prologue
    .line 1678
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 1680
    new-instance v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;

    invoke-direct {v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;-><init>()V

    .line 1682
    .local v8, ss:Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v11

    if-lez v11, :cond_86

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lez v11, :cond_86

    const/4 v3, 0x1

    .line 1683
    .local v3, haveChildren:Z
    :goto_13
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemId()J

    move-result-wide v6

    .line 1684
    .local v6, selectedId:J
    iput-wide v6, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->selectedId:J

    .line 1685
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v11

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->height:I

    .line 1687
    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-ltz v11, :cond_88

    .line 1689
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    .line 1690
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v11

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    .line 1691
    const-wide/16 v11, -0x1

    iput-wide v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    .line 1718
    :goto_33
    const/4 v11, 0x0

    iput-object v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1719
    iget-boolean v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v11, :cond_4a

    .line 1720
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 1721
    .local v9, textFilter:Landroid/widget/EditText;
    if-eqz v9, :cond_4a

    .line 1722
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1723
    .local v1, filterText:Landroid/text/Editable;
    if-eqz v1, :cond_4a

    .line 1724
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 1729
    .end local v1           #filterText:Landroid/text/Editable;
    .end local v9           #textFilter:Landroid/widget/EditText;
    :cond_4a
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_ba

    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v11, :cond_ba

    const/4 v11, 0x1

    :goto_54
    iput-boolean v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->inActionMode:Z

    .line 1731
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v11, :cond_62

    .line 1732
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v11

    iput-object v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 1734
    :cond_62
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v11, :cond_be

    .line 1735
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 1736
    .local v5, idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v11}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1737
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_72
    if-ge v4, v0, :cond_bc

    .line 1738
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v11, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v11

    iget-object v13, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v5, v11, v12, v13}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1737
    add-int/lit8 v4, v4, 0x1

    goto :goto_72

    .line 1682
    .end local v0           #count:I
    .end local v3           #haveChildren:Z
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6           #selectedId:J
    :cond_86
    const/4 v3, 0x0

    goto :goto_13

    .line 1693
    .restart local v3       #haveChildren:Z
    .restart local v6       #selectedId:J
    :cond_88
    if-eqz v3, :cond_ae

    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v11, :cond_ae

    .line 1703
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1704
    .local v10, v:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    .line 1705
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1706
    .local v2, firstPos:I
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-lt v2, v11, :cond_a3

    .line 1707
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v2, v11, -0x1

    .line 1709
    :cond_a3
    iput v2, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    .line 1710
    iget-object v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v11, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v11

    iput-wide v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    goto :goto_33

    .line 1712
    .end local v2           #firstPos:I
    .end local v10           #v:Landroid/view/View;
    :cond_ae
    const/4 v11, 0x0

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->viewTop:I

    .line 1713
    const-wide/16 v11, -0x1

    iput-wide v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->firstId:J

    .line 1714
    const/4 v11, 0x0

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->position:I

    goto/16 :goto_33

    .line 1729
    :cond_ba
    const/4 v11, 0x0

    goto :goto_54

    .line 1740
    .restart local v0       #count:I
    .restart local v4       #i:I
    .restart local v5       #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_bc
    iput-object v5, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 1742
    .end local v0           #count:I
    .end local v4           #i:I
    .end local v5           #idState:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_be
    iget v11, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    iput v11, v8, Lcom/sec/android/touchwiz/widget/TwAbsListView$SavedState;->checkedItemCount:I

    .line 1744
    const-string v11, "com.sec.android.touchwiz.widget.twabslistview.savedstate"

    invoke-virtual {p1, v11, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1745
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    .line 2392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 2393
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->rememberSyncState()V

    .line 2396
    :cond_c
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_15

    .line 2397
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onSizeChanged(IIII)V

    .line 2399
    :cond_15
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 6168
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_31

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 6169
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6170
    .local v1, length:I
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 6171
    .local v2, showing:Z
    if-nez v2, :cond_32

    if-lez v1, :cond_32

    .line 6173
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    .line 6174
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    .line 6180
    :cond_1e
    :goto_1e
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_31

    .line 6181
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 6183
    .local v0, f:Landroid/widget/Filter;
    if-eqz v0, :cond_3d

    .line 6184
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 6191
    .end local v0           #f:Landroid/widget/Filter;
    .end local v1           #length:I
    .end local v2           #showing:Z
    :cond_31
    return-void

    .line 6175
    .restart local v1       #length:I
    .restart local v2       #showing:Z
    :cond_32
    if-eqz v2, :cond_1e

    if-nez v1, :cond_1e

    .line 6177
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 6178
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    goto :goto_1e

    .line 6186
    .restart local v0       #f:Landroid/widget/Filter;
    :cond_3d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 40
    .parameter "ev"

    .prologue
    .line 3333
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isEnabled()Z

    move-result v35

    if-nez v35, :cond_18

    .line 3336
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isClickable()Z

    move-result v35

    if-nez v35, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLongClickable()Z

    move-result v35

    if-eqz v35, :cond_15

    :cond_12
    const/16 v35, 0x1

    .line 3819
    :goto_14
    return v35

    .line 3336
    :cond_15
    const/16 v35, 0x0

    goto :goto_14

    .line 3339
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    move-object/from16 v35, v0

    if-eqz v35, :cond_33

    .line 3340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    .line 3341
    .local v22, intercepted:Z
    if-eqz v22, :cond_33

    .line 3342
    const/16 v35, 0x1

    goto :goto_14

    .line 3346
    .end local v22           #intercepted:Z
    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 3350
    .local v5, action:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->initVelocityTrackerIfNotExists()V

    .line 3351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3355
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_a3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    move/from16 v35, v0

    if-nez v35, :cond_a3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-eqz v35, :cond_a3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_81

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v35

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_a3

    .line 3360
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-interface/range {v35 .. v36}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 3363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_a3

    .line 3364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/VelocityTracker;->clear()V

    .line 3371
    :cond_a3
    and-int/lit16 v0, v5, 0xff

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_9fe

    .line 3819
    :cond_aa
    :goto_aa
    :pswitch_aa
    const/16 v35, 0x1

    goto/16 :goto_14

    .line 3373
    :pswitch_ae
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_a10

    .line 3389
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 3390
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v33, v0

    .line 3391
    .local v33, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3392
    .local v34, y:I
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v26

    .line 3396
    .local v26, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_11c

    .line 3397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 3398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 3400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    if-eqz v35, :cond_11c

    .line 3401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 3402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 3405
    :cond_11c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move/from16 v35, v0

    if-nez v35, :cond_195

    .line 3406
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_250

    if-ltz v26, :cond_250

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_14e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-nez v35, :cond_250

    :cond_14e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v35

    check-cast v35, Landroid/widget/ListAdapter;

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_250

    .line 3414
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_17d

    .line 3417
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 3419
    :cond_17d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3434
    :cond_195
    :goto_195
    if-ltz v26, :cond_1b1

    .line 3436
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v26, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 3437
    .local v31, v:Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 3439
    .end local v31           #v:Landroid/view/View;
    :cond_1b1
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 3440
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 3441
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 3442
    const/high16 v35, -0x8000

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    .line 3447
    .end local v26           #motionPosition:I
    .end local v33           #x:I
    .end local v34           #y:I
    :goto_1cb
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v35

    if-eqz v35, :cond_aa

    .line 3448
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-nez v35, :cond_aa

    .line 3449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_aa

    .line 3375
    :pswitch_1e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 3376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v35, v0

    if-eqz v35, :cond_202

    .line 3377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 3379
    :cond_202
    const/16 v35, 0x5

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3380
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 3381
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 3382
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 3383
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 3384
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDirection:I

    goto/16 :goto_1cb

    .line 3421
    .restart local v26       #motionPosition:I
    .restart local v33       #x:I
    .restart local v34       #y:I
    :cond_250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x4

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_195

    .line 3422
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_278

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v35, v0

    const/16 v36, 0x0

    cmpl-float v35, v35, v36

    if-nez v35, :cond_27b

    .line 3424
    :cond_278
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createScrollingCache()V

    .line 3426
    :cond_27b
    const/16 v35, 0x3

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3427
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 3428
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->findMotionRow(I)I

    move-result v26

    .line 3429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->flywheelTouch()V

    goto/16 :goto_195

    .line 3456
    .end local v26           #motionPosition:I
    .end local v33           #x:I
    .end local v34           #y:I
    :pswitch_29e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    move/from16 v35, v0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v29

    .line 3457
    .local v29, pointerIndex:I
    const/16 v35, -0x1

    move/from16 v0, v29

    move/from16 v1, v35

    if-ne v0, v1, :cond_2c4

    .line 3458
    const/16 v29, 0x0

    .line 3459
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 3462
    :cond_2c4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2dd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_2dd

    .line 3463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 3466
    :cond_2dd
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3467
    .restart local v34       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_a16

    :pswitch_2f3
    goto/16 :goto_aa

    .line 3474
    :pswitch_2f5
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startScrollIfNeeded(I)Z

    .line 3476
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    move/from16 v35, v0

    sub-int v11, v34, v35

    .line 3480
    .local v11, deltaY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_aa

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    move/from16 v35, v0

    if-nez v35, :cond_aa

    .line 3481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x3

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_aa

    .line 3484
    move/from16 v30, v11

    .line 3485
    .local v30, tempY:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v7

    .line 3486
    .local v7, childCount:I
    if-lez v7, :cond_aa

    .line 3487
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    move/from16 v36, v0

    sub-int v17, v35, v36

    .line 3488
    .local v17, height:I
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTop()I

    move-result v15

    .line 3489
    .local v15, firstTop:I
    add-int/lit8 v35, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getBottom()I

    move-result v23

    .line 3490
    .local v23, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    .line 3491
    .local v25, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v35

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    sub-int v12, v35, v36

    .line 3493
    .local v12, end:I
    if-gez v30, :cond_3f7

    .line 3494
    add-int/lit8 v35, v17, -0x1

    move/from16 v0, v35

    neg-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 3499
    :goto_37d
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 3501
    .local v14, firstPosition:I
    if-nez v14, :cond_3b8

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-lt v15, v0, :cond_3b8

    if-ltz v11, :cond_3b8

    .line 3503
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_403

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    move/from16 v35, v0

    if-nez v35, :cond_403

    .line 3504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v36, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 3510
    :cond_3b8
    :goto_3b8
    add-int v35, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_aa

    move/from16 v0, v23

    if-gt v0, v12, :cond_aa

    if-gtz v11, :cond_aa

    .line 3512
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_412

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    move/from16 v35, v0

    if-nez v35, :cond_412

    .line 3513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v36, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v37, v0

    add-float v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    goto/16 :goto_aa

    .line 3496
    .end local v14           #firstPosition:I
    :cond_3f7
    add-int/lit8 v35, v17, -0x1

    move/from16 v0, v35

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v30

    goto/16 :goto_37d

    .line 3506
    .restart local v14       #firstPosition:I
    :cond_403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    goto :goto_3b8

    .line 3515
    :cond_412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v35

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    goto/16 :goto_aa

    .line 3524
    .end local v7           #childCount:I
    .end local v11           #deltaY:I
    .end local v12           #end:I
    .end local v14           #firstPosition:I
    .end local v15           #firstTop:I
    .end local v17           #height:I
    .end local v23           #lastBottom:I
    .end local v25           #listPadding:Landroid/graphics/Rect;
    .end local v30           #tempY:I
    :pswitch_422
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->scrollIfNeeded(I)V

    goto/16 :goto_aa

    .line 3531
    .end local v29           #pointerIndex:I
    .end local v34           #y:I
    :pswitch_42b
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setScrollDVFS(Z)V

    .line 3533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_a26

    .line 3697
    :cond_43d
    :goto_43d
    :pswitch_43d
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 3699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    if-eqz v35, :cond_460

    .line 3700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 3701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 3706
    :cond_460
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 3708
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v16

    .line 3709
    .local v16, handler:Landroid/os/Handler;
    if-eqz v16, :cond_476

    .line 3710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-object/from16 v35, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3713
    :cond_476
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 3715
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 3724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v35, v0

    if-eqz v35, :cond_aa

    .line 3725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/StrictMode$Span;->finish()V

    .line 3726
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto/16 :goto_aa

    .line 3537
    .end local v16           #handler:Landroid/os/Handler;
    :pswitch_49c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v26, v0

    .line 3538
    .restart local v26       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v26, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3540
    .local v6, child:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v33

    .line 3541
    .local v33, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    cmpl-float v35, v33, v35

    if-lez v35, :cond_618

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWidth()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    cmpg-float v35, v33, v35

    if-gez v35, :cond_618

    const/16 v19, 0x1

    .line 3544
    .local v19, inList:Z
    :goto_4e8
    if-eqz v6, :cond_64b

    invoke-virtual {v6}, Landroid/view/View;->hasFocusable()Z

    move-result v35

    if-nez v35, :cond_64b

    if-eqz v19, :cond_64b

    .line 3545
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-eqz v35, :cond_501

    .line 3546
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3549
    :cond_501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    move-object/from16 v35, v0

    if-nez v35, :cond_51c

    .line 3550
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    .line 3553
    :cond_51c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPerformClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;

    move-object/from16 v28, v0

    .line 3554
    .local v28, performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    move/from16 v0, v26

    move-object/from16 v1, v28

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->mClickMotionPosition:I

    .line 3555
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 3557
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 3559
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-eqz v35, :cond_547

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_630

    .line 3560
    :cond_547
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v16

    .line 3561
    .restart local v16       #handler:Landroid/os/Handler;
    if-eqz v16, :cond_562

    .line 3562
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    if-nez v35, :cond_61c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    :goto_55b
    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3566
    :cond_562
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 3567
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move/from16 v35, v0

    if-nez v35, :cond_624

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_624

    .line 3568
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3569
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectedPositionInt(I)V

    .line 3570
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 3571
    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/view/View;->setPressed(Z)V

    .line 3572
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3573
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 3574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5d6

    .line 3575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 3576
    .local v10, d:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_5d6

    instance-of v0, v10, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v35, v0

    if-eqz v35, :cond_5d6

    .line 3577
    check-cast v10, Landroid/graphics/drawable/TransitionDrawable;

    .end local v10           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3580
    :cond_5d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_5eb

    .line 3581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3583
    :cond_5eb
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$1;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Landroid/view/View;Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 3594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v35, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3600
    :goto_614
    const/16 v35, 0x1

    goto/16 :goto_14

    .line 3541
    .end local v16           #handler:Landroid/os/Handler;
    .end local v19           #inList:Z
    .end local v28           #performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    :cond_618
    const/16 v19, 0x0

    goto/16 :goto_4e8

    .line 3562
    .restart local v16       #handler:Landroid/os/Handler;
    .restart local v19       #inList:Z
    .restart local v28       #performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    :cond_61c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-object/from16 v35, v0

    goto/16 :goto_55b

    .line 3597
    :cond_624
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3598
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    goto :goto_614

    .line 3601
    .end local v16           #handler:Landroid/os/Handler;
    :cond_630
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    move/from16 v35, v0

    if-nez v35, :cond_64b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_64b

    .line 3602
    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;->run()V

    .line 3605
    .end local v28           #performClick:Lcom/sec/android/touchwiz/widget/TwAbsListView$PerformClick;
    :cond_64b
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3606
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    goto/16 :goto_43d

    .line 3609
    .end local v6           #child:Landroid/view/View;
    .end local v19           #inList:Z
    .end local v26           #motionPosition:I
    .end local v33           #x:F
    :pswitch_658
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v7

    .line 3610
    .restart local v7       #childCount:I
    if-lez v7, :cond_7d7

    .line 3611
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getTop()I

    move-result v13

    .line 3612
    .local v13, firstChildTop:I
    add-int/lit8 v35, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getBottom()I

    move-result v24

    .line 3613
    .local v24, lastChildBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 3614
    .local v9, contentTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    sub-int v8, v35, v36

    .line 3615
    .local v8, contentBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    if-nez v35, :cond_6d3

    if-lt v13, v9, :cond_6d3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    add-int v35, v35, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ge v0, v1, :cond_6d3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v35

    sub-int v35, v35, v8

    move/from16 v0, v24

    move/from16 v1, v35

    if-gt v0, v1, :cond_6d3

    .line 3618
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3619
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_43d

    .line 3621
    :cond_6d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    .line 3622
    .local v32, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v35, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3624
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    move/from16 v35, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    .line 3625
    .local v4, YVelocity:F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v35

    mul-float v35, v35, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    move/from16 v36, v0

    mul-float v35, v35, v36

    const/high16 v36, 0x447a

    div-float v35, v35, v36

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v21, v0

    .line 3634
    .local v21, initialVelocity:I
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_7a2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    if-nez v35, :cond_738

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    move/from16 v35, v0

    sub-int v35, v9, v35

    move/from16 v0, v35

    if-eq v13, v0, :cond_7a2

    :cond_738
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    add-int v35, v35, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_75a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOverscrollDistance:I

    move/from16 v35, v0

    add-int v35, v35, v8

    move/from16 v0, v24

    move/from16 v1, v35

    if-eq v0, v1, :cond_7a2

    .line 3639
    :cond_75a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_779

    .line 3643
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_792

    .line 3644
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 3650
    :cond_779
    :goto_779
    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 3652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_43d

    .line 3646
    :cond_792
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_779

    .line 3654
    :cond_7a2
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3655
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 3656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    if-eqz v35, :cond_7c4

    .line 3657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 3659
    :cond_7c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v35, v0

    if-eqz v35, :cond_43d

    .line 3660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    goto/16 :goto_43d

    .line 3665
    .end local v4           #YVelocity:F
    .end local v8           #contentBottom:I
    .end local v9           #contentTop:I
    .end local v13           #firstChildTop:I
    .end local v21           #initialVelocity:I
    .end local v24           #lastChildBottom:I
    .end local v32           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_7d7
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3666
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_43d

    .line 3671
    .end local v7           #childCount:I
    :pswitch_7ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_809

    .line 3675
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_861

    .line 3676
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 3682
    :cond_809
    :goto_809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    .line 3683
    .restart local v32       #velocityTracker:Landroid/view/VelocityTracker;
    const/16 v35, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMaximumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3684
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    move/from16 v35, v0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v21, v0

    .line 3687
    .restart local v21       #initialVelocity:I
    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 3688
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMinimumVelocity:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_871

    .line 3689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_43d

    .line 3678
    .end local v21           #initialVelocity:I
    .end local v32           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_861
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_809

    .line 3691
    .restart local v21       #initialVelocity:I
    .restart local v32       #velocityTracker:Landroid/view/VelocityTracker;
    :cond_871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_43d

    .line 3732
    .end local v21           #initialVelocity:I
    .end local v32           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_87c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_a36

    .line 3753
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3754
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 3755
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 3756
    .local v27, motionView:Landroid/view/View;
    if-eqz v27, :cond_8b7

    .line 3757
    const/16 v35, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3759
    :cond_8b7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 3761
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v16

    .line 3762
    .restart local v16       #handler:Landroid/os/Handler;
    if-eqz v16, :cond_8cd

    .line 3763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-object/from16 v35, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3766
    :cond_8cd
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 3769
    .end local v16           #handler:Landroid/os/Handler;
    .end local v27           #motionView:Landroid/view/View;
    :goto_8d0
    :pswitch_8d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    if-eqz v35, :cond_8ea

    .line 3770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 3771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 3773
    :cond_8ea
    const/16 v35, -0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    goto/16 :goto_aa

    .line 3734
    :pswitch_8f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    if-nez v35, :cond_913

    .line 3738
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_91d

    .line 3739
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 3745
    :cond_913
    :goto_913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_8d0

    .line 3741
    :cond_91d
    new-instance v35, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_913

    .line 3778
    :pswitch_92d
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 3779
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    move/from16 v33, v0

    .line 3780
    .local v33, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    move/from16 v34, v0

    .line 3781
    .restart local v34       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v26

    .line 3782
    .restart local v26       #motionPosition:I
    if-ltz v26, :cond_985

    .line 3784
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v26, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 3785
    .restart local v31       #v:Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 3786
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 3787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    if-eqz v35, :cond_aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v35

    if-eqz v35, :cond_aa

    .line 3788
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    goto/16 :goto_aa

    .line 3791
    .end local v31           #v:Landroid/view/View;
    :cond_985
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    goto/16 :goto_aa

    .line 3799
    .end local v26           #motionPosition:I
    .end local v33           #x:I
    .end local v34           #y:I
    :pswitch_98a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    .line 3800
    .local v20, index:I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 3801
    .local v18, id:I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v33, v0

    .line 3802
    .restart local v33       #x:I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3803
    .restart local v34       #y:I
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionCorrection:I

    .line 3804
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mActivePointerId:I

    .line 3805
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionX:I

    .line 3806
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionY:I

    .line 3807
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v26

    .line 3808
    .restart local v26       #motionPosition:I
    if-ltz v26, :cond_9f6

    .line 3810
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v35, v0

    sub-int v35, v26, v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    .line 3811
    .restart local v31       #v:Landroid/view/View;
    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v35

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    .line 3812
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    .line 3814
    .end local v31           #v:Landroid/view/View;
    :cond_9f6
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastY:I

    goto/16 :goto_aa

    .line 3371
    :pswitch_data_9fe
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_42b
        :pswitch_29e
        :pswitch_87c
        :pswitch_aa
        :pswitch_98a
        :pswitch_92d
    .end packed-switch

    .line 3373
    :pswitch_data_a10
    .packed-switch 0x6
        :pswitch_1e8
    .end packed-switch

    .line 3467
    :pswitch_data_a16
    .packed-switch 0x0
        :pswitch_2f5
        :pswitch_2f5
        :pswitch_2f5
        :pswitch_422
        :pswitch_2f3
        :pswitch_422
    .end packed-switch

    .line 3533
    :pswitch_data_a26
    .packed-switch 0x0
        :pswitch_49c
        :pswitch_49c
        :pswitch_49c
        :pswitch_658
        :pswitch_43d
        :pswitch_7ea
    .end packed-switch

    .line 3732
    :pswitch_data_a36
    .packed-switch 0x5
        :pswitch_8f4
        :pswitch_8d0
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .registers 4
    .parameter "isInTouchMode"

    .prologue
    .line 3296
    if-eqz p1, :cond_18

    .line 3298
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hideSelector()V

    .line 3303
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_14

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_14

    .line 3308
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 3310
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 3329
    :cond_17
    :goto_17
    return-void

    .line 3312
    :cond_18
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3313
    .local v0, touchMode:I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_20

    const/4 v1, 0x6

    if-ne v0, v1, :cond_17

    .line 3314
    :cond_20
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v1, :cond_29

    .line 3315
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 3317
    :cond_29
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-eqz v1, :cond_32

    .line 3318
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 3321
    :cond_32
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v1, :cond_17

    .line 3322
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 3323
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidateParentCaches()V

    .line 3324
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->finishGlows()V

    .line 3325
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    goto :goto_17
.end method

.method public onWindowFocusChanged(Z)V
    .registers 7
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2676
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->onWindowFocusChanged(Z)V

    .line 2678
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_43

    move v0, v1

    .line 2680
    .local v0, touchMode:I
    :goto_c
    if-nez p1, :cond_45

    .line 2681
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2682
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v3, :cond_37

    .line 2683
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2686
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 2687
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-eqz v3, :cond_28

    .line 2688
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 2690
    :cond_28
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    if-eqz v3, :cond_37

    .line 2691
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollY:I

    .line 2692
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidateParentCaches()V

    .line 2693
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->finishGlows()V

    .line 2694
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 2698
    :cond_37
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->dismissPopup()V

    .line 2700
    if-ne v0, v2, :cond_40

    .line 2702
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 2728
    :cond_40
    :goto_40
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    .line 2729
    return-void

    .end local v0           #touchMode:I
    :cond_43
    move v0, v2

    .line 2678
    goto :goto_c

    .line 2705
    .restart local v0       #touchMode:I
    :cond_45
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v3, :cond_50

    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_50

    .line 2707
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->showPopup()V

    .line 2711
    :cond_50
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_40

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_40

    .line 2714
    if-ne v0, v2, :cond_5f

    .line 2716
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    goto :goto_40

    .line 2721
    :cond_5f
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hideSelector()V

    .line 2722
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 2723
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    goto :goto_40
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 14
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 1164
    const/4 v7, 0x0

    .line 1165
    .local v7, handled:Z
    const/4 v6, 0x1

    .line 1167
    .local v6, dispatchItemClick:Z
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v1, :cond_60

    .line 1168
    const/4 v7, 0x1

    .line 1170
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_17

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7d

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7d

    .line 1172
    :cond_17
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_68

    move v5, v8

    .line 1173
    .local v5, newValue:Z
    :goto_20
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1174
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1175
    if-eqz v5, :cond_6a

    .line 1176
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1181
    :cond_42
    :goto_42
    if-eqz v5, :cond_76

    .line 1182
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1186
    :goto_4a
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_58

    .line 1187
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1189
    const/4 v6, 0x0

    .line 1206
    .end local v5           #newValue:Z
    :cond_58
    :goto_58
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1207
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->rememberSyncState()V

    .line 1208
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 1211
    :cond_60
    if-eqz v6, :cond_67

    .line 1212
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    or-int/2addr v7, v0

    .line 1215
    :cond_67
    return v7

    :cond_68
    move v5, v0

    .line 1172
    goto :goto_20

    .line 1178
    .restart local v5       #newValue:Z
    :cond_6a
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_42

    .line 1184
    :cond_76
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_4a

    .line 1191
    .end local v5           #newValue:Z
    :cond_7d
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v1, v8, :cond_58

    .line 1192
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-nez v1, :cond_b9

    move v5, v8

    .line 1193
    .restart local v5       #newValue:Z
    :goto_8a
    if-eqz v5, :cond_bb

    .line 1194
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1195
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1196
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 1197
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1198
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1200
    :cond_b6
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_58

    .end local v5           #newValue:Z
    :cond_b9
    move v5, v0

    .line 1192
    goto :goto_8a

    .line 1201
    .restart local v5       #newValue:Z
    :cond_bb
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_cb

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_58

    .line 1202
    :cond_cb
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_58
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .registers 13
    .parameter "child"
    .parameter "longPressPosition"
    .parameter "longPressId"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2836
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    .line 2837
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1b

    .line 2839
    invoke-virtual {p0, p2, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setItemChecked(IZ)V

    .line 2840
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performHapticFeedback(I)Z

    .line 2857
    :cond_1b
    :goto_1b
    return v6

    .line 2845
    :cond_1c
    const/4 v6, 0x0

    .line 2846
    .local v6, handled:Z
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_2b

    .line 2847
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2850
    :cond_2b
    if-nez v6, :cond_37

    .line 2851
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2852
    invoke-super {p0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2854
    :cond_37
    if-eqz v6, :cond_1b

    .line 2855
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->performHapticFeedback(I)Z

    goto :goto_1b
.end method

.method public pointToPosition(II)I
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2960
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2961
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_d

    .line 2962
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2963
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2966
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 2967
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_13
    if-ltz v3, :cond_2f

    .line 2968
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2969
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 2970
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2971
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 2972
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 2976
    .end local v0           #child:Landroid/view/View;
    :goto_2b
    return v4

    .line 2967
    .restart local v0       #child:Landroid/view/View;
    :cond_2c
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 2976
    .end local v0           #child:Landroid/view/View;
    :cond_2f
    const/4 v4, -0x1

    goto :goto_2b
.end method

.method public pointToRowId(II)J
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3031
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v0

    .line 3032
    .local v0, position:I
    if-ltz v0, :cond_d

    .line 3033
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 3035
    :goto_c
    return-wide v1

    :cond_d
    const-wide/high16 v1, -0x8000

    goto :goto_c
.end method

.method public positionOfOverLappingView(Landroid/graphics/Rect;Z)I
    .registers 10
    .parameter "rect"
    .parameter "down"

    .prologue
    .line 2980
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2981
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_d

    .line 2982
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2983
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 2986
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 2987
    .local v1, count:I
    const/4 v5, 0x1

    if-ne p2, v5, :cond_32

    .line 2988
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_16
    if-ltz v3, :cond_4f

    .line 2989
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2990
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2f

    .line 2991
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2992
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2993
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v3

    .line 3019
    .end local v0           #child:Landroid/view/View;
    :goto_2e
    return v5

    .line 2988
    .restart local v0       #child:Landroid/view/View;
    :cond_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 2998
    .end local v0           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_32
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_33
    if-ge v3, v1, :cond_4f

    .line 2999
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3000
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4c

    .line 3001
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3002
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 3003
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v3

    goto :goto_2e

    .line 2998
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 3008
    .end local v0           #child:Landroid/view/View;
    :cond_4f
    const/4 v4, 0x0

    .line 3009
    .local v4, lastVisible:I
    const/4 v3, 0x0

    :goto_51
    if-ge v3, v1, :cond_72

    .line 3010
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3011
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6f

    .line 3012
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3013
    move v4, v3

    .line 3014
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    if-le v5, v6, :cond_6f

    .line 3015
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v3

    goto :goto_2e

    .line 3009
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 3019
    .end local v0           #child:Landroid/view/View;
    :cond_72
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v5, v4

    goto :goto_2e
.end method

.method positionSelector(ILandroid/view/View;)V
    .registers 10
    .parameter "position"
    .parameter "sel"

    .prologue
    const/4 v6, -0x1

    .line 2308
    if-eq p1, v6, :cond_5

    .line 2309
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 2312
    :cond_5
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 2313
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2314
    instance-of v2, p2, Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;

    if-eqz v2, :cond_24

    move-object v2, p2

    .line 2315
    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;

    invoke-interface {v2, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 2317
    :cond_24
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(IIII)V

    .line 2320
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsChildViewEnabled:Z

    .line 2321
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_45

    .line 2322
    if-nez v0, :cond_46

    const/4 v2, 0x1

    :goto_3a
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mIsChildViewEnabled:Z

    .line 2323
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v6, :cond_45

    .line 2324
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->refreshDrawableState()V

    .line 2327
    :cond_45
    return-void

    .line 2322
    :cond_46
    const/4 v2, 0x0

    goto :goto_3a
.end method

.method public reclaimViews(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6291
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 6292
    .local v1, childCount:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->access$4200(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    move-result-object v3

    .line 6295
    .local v3, listener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v1, :cond_2e

    .line 6296
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6297
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;

    .line 6300
    .local v4, lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    if-eqz v4, :cond_2b

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    iget v6, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 6301
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6302
    if-eqz v3, :cond_2b

    .line 6304
    invoke-interface {v3, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 6295
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6308
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/sec/android/touchwiz/widget/TwAbsListView$LayoutParams;
    :cond_2e
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 6309
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeAllViewsInLayout()V

    .line 6310
    return-void
.end method

.method reconcileSelectedPosition()I
    .registers 3

    .prologue
    .line 5464
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    .line 5465
    .local v0, position:I
    if-gez v0, :cond_6

    .line 5466
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 5468
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5469
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5470
    return v0
.end method

.method reportScrollStateChange(I)V
    .registers 3
    .parameter "newState"

    .prologue
    .line 4111
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_f

    .line 4112
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    if-eqz v0, :cond_f

    .line 4113
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastScrollState:I

    .line 4114
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V

    .line 4117
    :cond_f
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .parameter "disallowIntercept"

    .prologue
    .line 3971
    if-eqz p1, :cond_5

    .line 3972
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recycleVelocityTracker()V

    .line 3974
    :cond_5
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 3975
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1887
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    if-nez v0, :cond_b

    .line 1888
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->requestLayout()V

    .line 1890
    :cond_b
    return-void
.end method

.method requestLayoutIfNecessary()V
    .registers 2

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 1566
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resetList()V

    .line 1567
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    .line 1568
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 1570
    :cond_f
    return-void
.end method

.method resetList()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1896
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeAllViewsInLayout()V

    .line 1897
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 1898
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1899
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mNeedSync:Z

    .line 1900
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedPosition:I

    .line 1901
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOldSelectedRowId:J

    .line 1902
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectedPositionInt(I)V

    .line 1903
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setNextSelectedPositionInt(I)V

    .line 1904
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectedTop:I

    .line 1905
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    .line 1906
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1907
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 1908
    return-void
.end method

.method resurrectSelection()Z
    .registers 20

    .prologue
    .line 5535
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    .line 5537
    .local v3, childCount:I
    if-gtz v3, :cond_9

    .line 5538
    const/16 v17, 0x0

    .line 5633
    :goto_8
    return v17

    .line 5541
    :cond_9
    const/4 v13, 0x0

    .line 5543
    .local v13, selectedTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 5544
    .local v5, childrenTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 5545
    .local v4, childrenBottom:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 5546
    .local v7, firstPosition:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 5547
    .local v14, toPosition:I
    const/4 v6, 0x1

    .line 5549
    .local v6, down:Z
    if-lt v14, v7, :cond_d8

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_d8

    .line 5550
    move v12, v14

    .line 5552
    .local v12, selectedPos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 5553
    .local v10, selected:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 5554
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 5557
    .local v11, selectedBottom:I
    if-ge v13, v5, :cond_c9

    .line 5558
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 5614
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    :cond_62
    :goto_62
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mResurrectToPosition:I

    .line 5615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_88

    .line 5617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 5619
    :cond_88
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 5620
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 5621
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSpecificTop:I

    .line 5622
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 5623
    if-lt v12, v7, :cond_139

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_139

    .line 5624
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 5625
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 5626
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelectionInt(I)V

    .line 5627
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 5631
    :goto_ba
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 5633
    if-ltz v12, :cond_13b

    const/16 v17, 0x1

    goto/16 :goto_8

    .line 5559
    .restart local v10       #selected:Landroid/view/View;
    .restart local v11       #selectedBottom:I
    :cond_c9
    if-le v11, v4, :cond_62

    .line 5560
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_62

    .line 5564
    .end local v10           #selected:Landroid/view/View;
    .end local v11           #selectedBottom:I
    .end local v12           #selectedPos:I
    :cond_d8
    if-ge v14, v7, :cond_ff

    .line 5566
    move v12, v7

    .line 5567
    .restart local v12       #selectedPos:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_dc
    if-ge v8, v3, :cond_62

    .line 5568
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5569
    .local v16, v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5571
    .local v15, top:I
    if-nez v8, :cond_f5

    .line 5573
    move v13, v15

    .line 5575
    if-gtz v7, :cond_ef

    if-ge v15, v5, :cond_f5

    .line 5578
    :cond_ef
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 5581
    :cond_f5
    if-lt v15, v5, :cond_fc

    .line 5583
    add-int v12, v7, v8

    .line 5584
    move v13, v15

    .line 5585
    goto/16 :goto_62

    .line 5567
    :cond_fc
    add-int/lit8 v8, v8, 0x1

    goto :goto_dc

    .line 5589
    .end local v8           #i:I
    .end local v12           #selectedPos:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_ff
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    .line 5590
    .local v9, itemCount:I
    const/4 v6, 0x0

    .line 5591
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 5593
    .restart local v12       #selectedPos:I
    add-int/lit8 v8, v3, -0x1

    .restart local v8       #i:I
    :goto_10a
    if-ltz v8, :cond_62

    .line 5594
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 5595
    .restart local v16       #v:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 5596
    .restart local v15       #top:I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 5598
    .local v2, bottom:I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_12f

    .line 5599
    move v13, v15

    .line 5600
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_129

    if-le v2, v4, :cond_12f

    .line 5601
    :cond_129
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 5605
    :cond_12f
    if-gt v2, v4, :cond_136

    .line 5606
    add-int v12, v7, v8

    .line 5607
    move v13, v15

    .line 5608
    goto/16 :goto_62

    .line 5593
    :cond_136
    add-int/lit8 v8, v8, -0x1

    goto :goto_10a

    .line 5629
    .end local v2           #bottom:I
    .end local v8           #i:I
    .end local v9           #itemCount:I
    .end local v15           #top:I
    .end local v16           #v:Landroid/view/View;
    :cond_139
    const/4 v12, -0x1

    goto :goto_ba

    .line 5633
    :cond_13b
    const/16 v17, 0x0

    goto/16 :goto_8
.end method

.method resurrectSelectionIfNeeded()Z
    .registers 2

    .prologue
    .line 5514
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    if-gez v0, :cond_f

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5515
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 5516
    const/4 v0, 0x1

    .line 5518
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public sendAccessibilityEvent(I)V
    .registers 5
    .parameter "eventType"

    .prologue
    .line 1448
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_19

    .line 1449
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1450
    .local v0, firstVisiblePosition:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 1451
    .local v1, lastVisiblePosition:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_15

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_15

    .line 1460
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :goto_14
    return-void

    .line 1455
    .restart local v0       #firstVisiblePosition:I
    .restart local v1       #lastVisiblePosition:I
    :cond_15
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1456
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1459
    .end local v0           #firstVisiblePosition:I
    .end local v1           #lastVisiblePosition:I
    :cond_19
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->sendAccessibilityEvent(I)V

    goto :goto_14
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 5957
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_a

    move v2, v5

    .line 6017
    :cond_9
    :goto_9
    return v2

    .line 5961
    :cond_a
    const/4 v2, 0x0

    .line 5962
    .local v2, handled:Z
    const/4 v3, 0x1

    .line 5963
    .local v3, okToSend:Z
    sparse-switch p1, :sswitch_data_88

    .line 5994
    :goto_f
    if-eqz v3, :cond_9

    .line 5995
    invoke-direct {p0, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 5997
    move-object v1, p3

    .line 5998
    .local v1, forwardEvent:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_23

    .line 5999
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 6002
    :cond_23
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 6003
    .local v0, action:I
    packed-switch v0, :pswitch_data_aa

    goto :goto_9

    .line 6005
    :pswitch_2b
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 6006
    goto :goto_9

    .line 5970
    .end local v0           #action:I
    .end local v1           #forwardEvent:Landroid/view/KeyEvent;
    :sswitch_32
    const/4 v3, 0x0

    .line 5971
    goto :goto_f

    .line 5973
    :sswitch_34
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v6, :cond_5a

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_5a

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 5974
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_5c

    .line 5975
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 5976
    .local v4, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_59

    .line 5977
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 5979
    :cond_59
    const/4 v2, 0x1

    .line 5986
    .end local v4           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_5a
    :goto_5a
    const/4 v3, 0x0

    .line 5987
    goto :goto_f

    .line 5980
    :cond_5c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_5a

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_5a

    .line 5982
    const/4 v2, 0x1

    .line 5983
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5a

    .line 5990
    :sswitch_77
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    goto :goto_f

    .line 6009
    .restart local v0       #action:I
    .restart local v1       #forwardEvent:Landroid/view/KeyEvent;
    :pswitch_7a
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 6010
    goto :goto_9

    .line 6013
    :pswitch_81
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_9

    .line 5963
    :sswitch_data_88
    .sparse-switch
        0x4 -> :sswitch_34
        0x13 -> :sswitch_32
        0x14 -> :sswitch_32
        0x15 -> :sswitch_32
        0x16 -> :sswitch_32
        0x17 -> :sswitch_32
        0x3e -> :sswitch_77
        0x42 -> :sswitch_32
    .end sparse-switch

    .line 6003
    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_7a
        :pswitch_81
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 969
    if-eqz p1, :cond_19

    .line 970
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_19

    .line 972
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 976
    :cond_19
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_22

    .line 977
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 980
    :cond_22
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2b

    .line 981
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 983
    :cond_2b
    return-void
.end method

.method public setCacheColorHint(I)V
    .registers 5
    .parameter "color"

    .prologue
    .line 6262
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1c

    .line 6263
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCacheColorHint:I

    .line 6264
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v0

    .line 6265
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_17

    .line 6266
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 6265
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 6268
    :cond_17
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 6270
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1c
    return-void
.end method

.method public setChoiceMode(I)V
    .registers 4
    .parameter "choiceMode"

    .prologue
    .line 1238
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    .line 1239
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_e

    .line 1240
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1243
    :cond_e
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_40

    .line 1244
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1d

    .line 1245
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1247
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1248
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1252
    :cond_34
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    .line 1253
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearChoices()V

    .line 1254
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setLongClickable(Z)V

    .line 1257
    :cond_40
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .registers 2
    .parameter "onTop"

    .prologue
    .line 2444
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDrawSelectorOnTop:Z

    .line 2445
    return-void
.end method

.method public setEnableExcessScroll(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-eqz v0, :cond_c

    .line 829
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 830
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 833
    :cond_c
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    .line 835
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    if-eqz v0, :cond_20

    .line 836
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEnableBounce(Z)V

    .line 837
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEdgeEffects(Lcom/sec/android/touchwiz/widget/TwEdgeEffect;Lcom/sec/android/touchwiz/widget/TwEdgeEffect;)V

    .line 840
    :cond_20
    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_34

    const/4 v0, 0x1

    :goto_31
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mNeedToInvalidateParent:Z

    .line 842
    return-void

    .line 840
    :cond_34
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .registers 3
    .parameter "alwaysShow"

    .prologue
    .line 1325
    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_a

    .line 1326
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setFastScrollEnabled(Z)V

    .line 1329
    :cond_a
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_13

    .line 1330
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setAlwaysShow(Z)V

    .line 1333
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->computeOpaqueFlags()V

    .line 1334
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->recomputePadding()V

    .line 1335
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 1300
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScrollEnabled:Z

    .line 1301
    if-eqz p1, :cond_14

    .line 1302
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-nez v0, :cond_13

    .line 1303
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    .line 1311
    :cond_13
    :goto_13
    return-void

    .line 1306
    :cond_14
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_13

    .line 1307
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->stop()V

    .line 1308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    goto :goto_13
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 5
    .parameter "filterText"

    .prologue
    .line 1835
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_39

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1836
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createTextFilter(Z)V

    .line 1840
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1841
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1842
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_39

    .line 1845
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_31

    .line 1846
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1847
    .local v0, f:Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1852
    .end local v0           #f:Landroid/widget/Filter;
    :cond_31
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    .line 1853
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDataSetObserver:Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 1856
    :cond_39
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2135
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2137
    .local v0, changed:Z
    if-eqz v0, :cond_22

    .line 2141
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_23

    const/4 v1, 0x1

    .line 2142
    .local v1, visible:Z
    :goto_d
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFiltered:Z

    if-eqz v2, :cond_22

    if-eqz v1, :cond_22

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2143
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionPopup()V

    .line 2147
    .end local v1           #visible:Z
    :cond_22
    return v0

    .line 2141
    :cond_23
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public setFriction(F)V
    .registers 3
    .parameter "friction"

    .prologue
    .line 4996
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-nez v0, :cond_b

    .line 4997
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 4999
    :cond_b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->access$2300(Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;)Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->setFriction(F)V

    .line 5000
    return-void
.end method

.method public setItemChecked(IZ)V
    .registers 12
    .parameter "position"
    .parameter "value"

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 1097
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-nez v1, :cond_8

    .line 1160
    :cond_7
    :goto_7
    return-void

    .line 1103
    :cond_8
    if-eqz p2, :cond_1a

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_1a

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1a

    .line 1104
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1107
    :cond_1a
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_23

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_8c

    .line 1108
    :cond_23
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 1109
    .local v6, oldValue:Z
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1110
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1111
    if-eqz p2, :cond_79

    .line 1112
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1117
    :cond_4b
    :goto_4b
    if-eq v6, p2, :cond_55

    .line 1118
    if-eqz p2, :cond_85

    .line 1119
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    .line 1124
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_68

    .line 1125
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 1126
    .local v3, id:J
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1155
    .end local v3           #id:J
    .end local v6           #oldValue:Z
    :cond_68
    :goto_68
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mInLayout:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_7

    .line 1156
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    .line 1157
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->rememberSyncState()V

    .line 1158
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayout()V

    goto :goto_7

    .line 1114
    .restart local v6       #oldValue:Z
    :cond_79
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_4b

    .line 1121
    :cond_85
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_55

    .line 1130
    .end local v6           #oldValue:Z
    :cond_8c
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_c8

    move v7, v8

    .line 1134
    .local v7, updateIds:Z
    :goto_99
    if-nez p2, :cond_a1

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 1135
    :cond_a1
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1136
    if-eqz v7, :cond_ad

    .line 1137
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1143
    :cond_ad
    if-eqz p2, :cond_ca

    .line 1144
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1145
    if-eqz v7, :cond_c5

    .line 1146
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1148
    :cond_c5
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_68

    .end local v7           #updateIds:Z
    :cond_c8
    move v7, v0

    .line 1130
    goto :goto_99

    .line 1149
    .restart local v7       #updateIds:Z
    :cond_ca
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_da

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_68

    .line 1150
    :cond_da
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mCheckedItemCount:I

    goto :goto_68
.end method

.method public setMultiChoiceModeListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_b

    .line 1269
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    .line 1271
    :cond_b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMultiChoiceModeCallback:Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeWrapper;->setWrapped(Lcom/sec/android/touchwiz/widget/TwAbsListView$MultiChoiceModeListener;)V

    .line 1272
    return-void
.end method

.method public setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mOnScrollListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;

    .line 1424
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 1425
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .registers 3
    .parameter "leftPadding"
    .parameter "rightPadding"

    .prologue
    .line 3944
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingLeft:I

    .line 3945
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGlowPaddingRight:I

    .line 3946
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 947
    const/4 v1, 0x2

    if-eq p1, v1, :cond_22

    .line 948
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-nez v1, :cond_1a

    .line 949
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 950
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 951
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 954
    .end local v0           #context:Landroid/content/Context;
    :cond_1a
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setEnableExcessScroll(Z)V

    .line 961
    :goto_1e
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setOverScrollMode(I)V

    .line 962
    return-void

    .line 956
    :cond_22
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 957
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 959
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setEnableExcessScroll(Z)V

    goto :goto_1e
.end method

.method public setRecyclerListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 6451
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->mRecyclerListener:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->access$4202(Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;)Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;

    .line 6452
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 6390
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    if-eqz v2, :cond_1b

    .line 6391
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6392
    .local v0, fcNew:Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 6394
    .local v1, fcOld:Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 6401
    .end local v0           #fcNew:Landroid/content/Intent$FilterComparison;
    .end local v1           #fcOld:Landroid/content/Intent$FilterComparison;
    :goto_1a
    return-void

    .line 6398
    :cond_1b
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 6400
    new-instance v2, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRemoteAdapter:Lcom/sec/android/touchwiz/widget/TwRemoteViewsAdapter;

    goto :goto_1a
.end method

.method public setScrollDVFS(Z)V
    .registers 2
    .parameter "bSet"

    .prologue
    .line 7047
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .parameter "up"
    .parameter "down"

    .prologue
    .line 2528
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollUp:Landroid/view/View;

    .line 2529
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDown:Landroid/view/View;

    .line 2530
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1488
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 1489
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->clearScrollingCache()V

    .line 1491
    :cond_9
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollingCacheEnabled:Z

    .line 1492
    return-void
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .registers 3
    .parameter "resID"

    .prologue
    .line 2455
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2456
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "sel"

    .prologue
    .line 2459
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 2460
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2461
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2463
    :cond_f
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 2464
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2465
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2466
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionLeftPadding:I

    .line 2467
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionTopPadding:I

    .line 2468
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionRightPadding:I

    .line 2469
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectionBottomPadding:I

    .line 2470
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2471
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->updateSelectorState()V

    .line 2472
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 1402
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSmoothScrollbarEnabled:Z

    .line 1403
    return-void
.end method

.method public setStackFromBottom(Z)V
    .registers 3
    .parameter "stackFromBottom"

    .prologue
    .line 1558
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_9

    .line 1559
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mStackFromBottom:Z

    .line 1560
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->requestLayoutIfNecessary()V

    .line 1562
    :cond_9
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .registers 2
    .parameter "textFilterEnabled"

    .prologue
    .line 1504
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTextFilterEnabled:Z

    .line 1505
    return-void
.end method

.method public setTranscriptMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 6232
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTranscriptMode:I

    .line 6233
    return-void
.end method

.method public setVelocityScale(F)V
    .registers 2
    .parameter "scale"

    .prologue
    .line 5009
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mVelocityScale:F

    .line 5010
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1369
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->setVerticalScrollbarPosition(I)V

    .line 1370
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    if-eqz v0, :cond_c

    .line 1371
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFastScroller:Lcom/sec/android/touchwiz/widget/TwFastScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwFastScroller;->setScrollbarPosition(I)V

    .line 1373
    :cond_c
    return-void
.end method

.method shouldShowSelector()Z
    .registers 2

    .prologue
    .line 2424
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public showContextMenu(FFI)Z
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 2868
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->pointToPosition(II)I

    move-result v3

    .line 2869
    .local v3, position:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    .line 2870
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2871
    .local v1, id:J
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2872
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_24

    .line 2873
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2874
    invoke-super {p0, p0}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 2877
    .end local v0           #child:Landroid/view/View;
    .end local v1           #id:J
    :goto_23
    return v4

    :cond_24
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenu(FFI)Z

    move-result v4

    goto :goto_23
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 9
    .parameter "originalView"

    .prologue
    .line 2882
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 2883
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2e

    .line 2884
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2885
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 2887
    .local v6, handled:Z
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_19

    .line 2888
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mOnItemLongClickListener:Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 2891
    :cond_19
    if-nez v6, :cond_2d

    .line 2892
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2894
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 2899
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_2d
    :goto_2d
    return v6

    :cond_2e
    const/4 v6, 0x0

    goto :goto_2d
.end method

.method public smoothScrollBy(II)V
    .registers 10
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 5086
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    if-nez v5, :cond_67

    .line 5087
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    if-eqz v5, :cond_5f

    .line 5088
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$TwFlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    .line 5098
    :goto_f
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 5099
    .local v2, firstPos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v1

    .line 5100
    .local v1, childCount:I
    add-int v3, v2, v1

    .line 5101
    .local v3, lastPos:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingTop()I

    move-result v4

    .line 5102
    .local v4, topLimit:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 5104
    .local v0, bottomLimit:I
    if-eqz p1, :cond_50

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-eqz v5, :cond_50

    if-eqz v1, :cond_50

    if-nez v2, :cond_3c

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_3c

    if-ltz p1, :cond_50

    :cond_3c
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_6d

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_6d

    if-lez p1, :cond_6d

    .line 5110
    :cond_50
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    .line 5111
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-eqz v5, :cond_5e

    .line 5112
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->stop()V

    .line 5118
    :cond_5e
    :goto_5e
    return-void

    .line 5090
    .end local v0           #bottomLimit:I
    .end local v1           #childCount:I
    .end local v2           #firstPos:I
    .end local v3           #lastPos:I
    .end local v4           #topLimit:I
    :cond_5f
    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    goto :goto_f

    .line 5094
    :cond_67
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->endFling()V

    goto :goto_f

    .line 5115
    .restart local v0       #bottomLimit:I
    .restart local v1       #childCount:I
    .restart local v2       #firstPos:I
    .restart local v3       #lastPos:I
    .restart local v4       #topLimit:I
    :cond_6d
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->reportScrollStateChange(I)V

    .line 5116
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFlingRunnable:Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$FlingRunnable;->startScroll(II)V

    goto :goto_5e
.end method

.method smoothScrollByOffset(I)V
    .registers 12
    .parameter "position"

    .prologue
    const/high16 v9, 0x3f40

    .line 5124
    const/4 v2, -0x1

    .line 5125
    .local v2, index:I
    if-gez p1, :cond_58

    .line 5126
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 5131
    :cond_9
    :goto_9
    const/4 v7, -0x1

    if-le v2, v7, :cond_57

    .line 5132
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5133
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_57

    .line 5134
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 5135
    .local v4, visibleRect:Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 5137
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 5138
    .local v1, childRectArea:I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 5139
    .local v5, visibleRectArea:I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 5140
    .local v3, visibleArea:F
    const/high16 v6, 0x3f40

    .line 5141
    .local v6, visibleThreshold:F
    if-gez p1, :cond_5f

    cmpg-float v7, v3, v9

    if-gez v7, :cond_5f

    .line 5144
    add-int/lit8 v2, v2, 0x1

    .line 5151
    .end local v1           #childRectArea:I
    .end local v3           #visibleArea:F
    .end local v5           #visibleRectArea:I
    .end local v6           #visibleThreshold:F
    :cond_45
    :goto_45
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->smoothScrollToPosition(I)V

    .line 5154
    .end local v0           #child:Landroid/view/View;
    .end local v4           #visibleRect:Landroid/graphics/Rect;
    :cond_57
    return-void

    .line 5127
    :cond_58
    if-lez p1, :cond_9

    .line 5128
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_9

    .line 5145
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childRectArea:I
    .restart local v3       #visibleArea:F
    .restart local v4       #visibleRect:Landroid/graphics/Rect;
    .restart local v5       #visibleRectArea:I
    .restart local v6       #visibleThreshold:F
    :cond_5f
    if-lez p1, :cond_45

    cmpg-float v7, v3, v9

    if-gez v7, :cond_45

    .line 5148
    add-int/lit8 v2, v2, -0x1

    goto :goto_45
.end method

.method public smoothScrollToPosition(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 5019
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_b

    .line 5020
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 5022
    :cond_b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->start(I)V

    .line 5023
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .registers 4
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 5073
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_b

    .line 5074
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 5076
    :cond_b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->start(II)V

    .line 5077
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .registers 4
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 5057
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_b

    .line 5058
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 5060
    :cond_b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->startWithOffset(II)V

    .line 5061
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .registers 5
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    .line 5039
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    if-nez v0, :cond_b

    .line 5040
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    .line 5042
    :cond_b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPositionScroller:Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsListView$PositionScroller;->startWithOffset(III)V

    .line 5043
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .registers 2

    .prologue
    .line 2407
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_a

    .line 2412
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 2410
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 2407
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .registers 33
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 5195
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v6

    .line 5196
    .local v6, childCount:I
    if-nez v6, :cond_9

    .line 5197
    const/16 v27, 0x1

    .line 5409
    :goto_8
    return v27

    .line 5200
    :cond_9
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v14

    .line 5201
    .local v14, firstTop:I
    add-int/lit8 v27, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getBottom()I

    move-result v20

    .line 5203
    .local v20, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 5210
    .local v21, listPadding:Landroid/graphics/Rect;
    const/4 v11, 0x0

    .line 5211
    .local v11, effectivePaddingTop:I
    const/4 v10, 0x0

    .line 5212
    .local v10, effectivePaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x22

    const/16 v28, 0x22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_45

    .line 5213
    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 5214
    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 5218
    :cond_45
    sub-int v23, v11, v14

    .line 5219
    .local v23, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v27

    sub-int v12, v27, v10

    .line 5220
    .local v12, end:I
    sub-int v24, v20, v12

    .line 5222
    .local v24, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingBottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPaddingTop:I

    move/from16 v28, v0

    sub-int v17, v27, v28

    .line 5223
    .local v17, height:I
    if-gez p1, :cond_10b

    .line 5224
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5229
    :goto_74
    if-gez p2, :cond_117

    .line 5230
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5235
    :goto_85
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 5238
    .local v13, firstPosition:I
    if-nez v13, :cond_123

    .line 5239
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    sub-int v27, v14, v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    .line 5243
    :goto_99
    add-int v27, v13, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_133

    .line 5244
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    add-int v27, v27, v20

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    .line 5249
    :goto_b5
    if-nez v13, :cond_156

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v14, v0, :cond_156

    if-ltz p2, :cond_156

    .line 5253
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_143

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    move/from16 v27, v0

    if-nez v27, :cond_143

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    move/from16 v27, v0

    if-nez v27, :cond_143

    .line 5254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 5255
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->awakenScrollBars()Z

    move-result v27

    if-nez v27, :cond_fd

    .line 5256
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 5262
    :cond_fd
    :goto_fd
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 5265
    if-eqz p2, :cond_152

    const/16 v27, 0x1

    goto/16 :goto_8

    .line 5226
    .end local v13           #firstPosition:I
    :cond_10b
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_74

    .line 5232
    :cond_117
    add-int/lit8 v27, v17, -0x1

    move/from16 v0, v27

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_85

    .line 5241
    .restart local v13       #firstPosition:I
    :cond_123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v27, v0

    add-int v27, v27, p2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_99

    .line 5246
    :cond_133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    move/from16 v27, v0

    add-int v27, v27, p2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_b5

    .line 5259
    :cond_143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    goto :goto_fd

    .line 5265
    :cond_152
    const/16 v27, 0x0

    goto/16 :goto_8

    .line 5268
    :cond_156
    add-int v27, v13, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v27

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v0, v20

    move/from16 v1, v27

    if-gt v0, v1, :cond_1d3

    if-gtz p2, :cond_1d3

    .line 5273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1c0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceBlocked:Z

    move/from16 v27, v0

    if-nez v27, :cond_1c0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    move/from16 v27, v0

    if-nez v27, :cond_1c0

    .line 5274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 5275
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->awakenScrollBars()Z

    move-result v27

    if-nez v27, :cond_1b2

    .line 5276
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 5282
    :cond_1b2
    :goto_1b2
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 5285
    if-eqz p2, :cond_1cf

    const/16 v27, 0x1

    goto/16 :goto_8

    .line 5279
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    goto :goto_1b2

    .line 5285
    :cond_1cf
    const/16 v27, 0x0

    goto/16 :goto_8

    .line 5292
    :cond_1d3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    move/from16 v27, v0

    if-nez v27, :cond_276

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_276

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_276

    .line 5293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_238

    .line 5294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 5295
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->awakenScrollBars()Z

    move-result v27

    if-nez v27, :cond_234

    .line 5296
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 5298
    :cond_234
    const/16 v27, 0x0

    goto/16 :goto_8

    .line 5300
    :cond_238
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 p2, v0

    .line 5301
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 p1, v0

    .line 5302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 5308
    :cond_276
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isActionScroll:Z

    .line 5310
    if-gez p2, :cond_36d

    const/4 v9, 0x1

    .line 5312
    .local v9, down:Z
    :goto_281
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isInTouchMode()Z

    move-result v19

    .line 5313
    .local v19, inTouchMode:Z
    if-eqz v19, :cond_28a

    .line 5314
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->hideSelector()V

    .line 5317
    :cond_28a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeaderViewsCount()I

    move-result v16

    .line 5318
    .local v16, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getFooterViewsCount()I

    move-result v28

    sub-int v15, v27, v28

    .line 5320
    .local v15, footerViewsStart:I
    const/16 v25, 0x0

    .line 5321
    .local v25, start:I
    const/4 v8, 0x0

    .line 5323
    .local v8, count:I
    if-eqz v9, :cond_38f

    .line 5324
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v26, v0

    .line 5325
    .local v26, top:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x22

    const/16 v28, 0x22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2bc

    .line 5326
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    add-int v26, v26, v27

    .line 5328
    :cond_2bc
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2be
    move/from16 v0, v18

    if-ge v0, v6, :cond_2d4

    .line 5329
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5330
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v26

    if-lt v0, v1, :cond_370

    .line 5370
    .end local v5           #child:Landroid/view/View;
    .end local v26           #top:I
    :cond_2d4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewOriginalTop:I

    move/from16 v27, v0

    add-int v27, v27, p1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionViewNewTop:I

    .line 5372
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 5374
    if-lez v8, :cond_2f3

    .line 5375
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->detachViewsFromParent(II)V

    .line 5377
    :cond_2f3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->offsetChildrenTopAndBottom(I)V

    .line 5379
    if-eqz v9, :cond_30a

    .line 5380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v27, v0

    add-int v27, v27, v8

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    .line 5383
    :cond_30a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invalidate()V

    .line 5385
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5386
    .local v3, absIncrementalDeltaY:I
    move/from16 v0, v23

    if-lt v0, v3, :cond_319

    move/from16 v0, v24

    if-ge v0, v3, :cond_31e

    .line 5387
    :cond_319
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->fillGap(Z)V

    .line 5390
    :cond_31e
    if-nez v19, :cond_3e1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_3e1

    .line 5391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v28, v0

    sub-int v7, v27, v28

    .line 5392
    .local v7, childIndex:I
    if-ltz v7, :cond_35b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v7, v0, :cond_35b

    .line 5393
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mSelectedPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5404
    .end local v7           #childIndex:I
    :cond_35b
    :goto_35b
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBlockLayoutRequests:Z

    .line 5406
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->invokeOnItemScrollListener()V

    .line 5407
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->awakenScrollBars()Z

    .line 5409
    const/16 v27, 0x0

    goto/16 :goto_8

    .line 5310
    .end local v3           #absIncrementalDeltaY:I
    .end local v8           #count:I
    .end local v9           #down:Z
    .end local v15           #footerViewsStart:I
    .end local v16           #headerViewsCount:I
    .end local v18           #i:I
    .end local v19           #inTouchMode:Z
    .end local v25           #start:I
    :cond_36d
    const/4 v9, 0x0

    goto/16 :goto_281

    .line 5333
    .restart local v5       #child:Landroid/view/View;
    .restart local v8       #count:I
    .restart local v9       #down:Z
    .restart local v15       #footerViewsStart:I
    .restart local v16       #headerViewsCount:I
    .restart local v18       #i:I
    .restart local v19       #inTouchMode:Z
    .restart local v25       #start:I
    .restart local v26       #top:I
    :cond_370
    add-int/lit8 v8, v8, 0x1

    .line 5334
    add-int v22, v13, v18

    .line 5335
    .local v22, position:I
    move/from16 v0, v22

    move/from16 v1, v16

    if-lt v0, v1, :cond_38b

    move/from16 v0, v22

    if-ge v0, v15, :cond_38b

    .line 5336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5328
    :cond_38b
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2be

    .line 5346
    .end local v5           #child:Landroid/view/View;
    .end local v18           #i:I
    .end local v22           #position:I
    .end local v26           #top:I
    :cond_38f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getHeight()I

    move-result v27

    sub-int v4, v27, p2

    .line 5347
    .local v4, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mGroupFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0x22

    const/16 v28, 0x22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3ad

    .line 5348
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v4, v4, v27

    .line 5350
    :cond_3ad
    add-int/lit8 v18, v6, -0x1

    .restart local v18       #i:I
    :goto_3af
    if-ltz v18, :cond_2d4

    .line 5351
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5352
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v27

    move/from16 v0, v27

    if-le v0, v4, :cond_2d4

    .line 5355
    move/from16 v25, v18

    .line 5356
    add-int/lit8 v8, v8, 0x1

    .line 5357
    add-int v22, v13, v18

    .line 5358
    .restart local v22       #position:I
    move/from16 v0, v22

    move/from16 v1, v16

    if-lt v0, v1, :cond_3de

    move/from16 v0, v22

    if-ge v0, v15, :cond_3de

    .line 5359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mRecycler:Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/touchwiz/widget/TwAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 5350
    :cond_3de
    add-int/lit8 v18, v18, -0x1

    goto :goto_3af

    .line 5395
    .end local v4           #bottom:I
    .end local v5           #child:Landroid/view/View;
    .end local v22           #position:I
    .restart local v3       #absIncrementalDeltaY:I
    :cond_3e1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_41a

    .line 5396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    move/from16 v28, v0

    sub-int v7, v27, v28

    .line 5397
    .restart local v7       #childIndex:I
    if-ltz v7, :cond_35b

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v27

    move/from16 v0, v27

    if-ge v7, v0, :cond_35b

    .line 5398
    const/16 v27, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_35b

    .line 5401
    .end local v7           #childIndex:I
    :cond_41a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_35b
.end method

.method updateScrollIndicators()V
    .registers 11

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2157
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v6, :cond_2b

    .line 2160
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    if-lez v6, :cond_5b

    move v1, v4

    .line 2163
    .local v1, canScrollUp:Z
    :goto_c
    if-nez v1, :cond_23

    .line 2164
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_23

    .line 2165
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2166
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_5d

    move v1, v4

    .line 2170
    .end local v2           #child:Landroid/view/View;
    :cond_23
    :goto_23
    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v1, :cond_5f

    move v6, v5

    :goto_28
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2173
    .end local v1           #canScrollUp:Z
    :cond_2b
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v6, :cond_5a

    .line 2175
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildCount()I

    move-result v3

    .line 2178
    .local v3, count:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mItemCount:I

    if-ge v6, v8, :cond_61

    move v0, v4

    .line 2181
    .local v0, canScrollDown:Z
    :goto_3b
    if-nez v0, :cond_53

    if-lez v3, :cond_53

    .line 2182
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2183
    .restart local v2       #child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mBottom:I

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_63

    move v0, v4

    .line 2186
    .end local v2           #child:Landroid/view/View;
    :cond_53
    :goto_53
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_65

    :goto_57
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2188
    .end local v0           #canScrollDown:Z
    .end local v3           #count:I
    :cond_5a
    return-void

    :cond_5b
    move v1, v5

    .line 2160
    goto :goto_c

    .restart local v1       #canScrollUp:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_5d
    move v1, v5

    .line 2166
    goto :goto_23

    .end local v2           #child:Landroid/view/View;
    :cond_5f
    move v6, v7

    .line 2170
    goto :goto_28

    .end local v1           #canScrollUp:Z
    .restart local v3       #count:I
    :cond_61
    move v0, v5

    .line 2178
    goto :goto_3b

    .restart local v0       #canScrollDown:Z
    .restart local v2       #child:Landroid/view/View;
    :cond_63
    move v0, v5

    .line 2183
    goto :goto_53

    .end local v2           #child:Landroid/view/View;
    :cond_65
    move v5, v7

    .line 2186
    goto :goto_57
.end method

.method updateSelectorState()V
    .registers 3

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 2534
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->shouldShowSelector()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2535
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2540
    :cond_13
    :goto_13
    return-void

    .line 2537
    :cond_14
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_13
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "dr"

    .prologue
    .line 2587
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_a

    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
