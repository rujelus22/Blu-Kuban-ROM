.class public Lcom/android/calendar/DayView;
.super Landroid/view/View;
.source "DayView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DayView$ScrollInterpolator;,
        Lcom/android/calendar/DayView$CalendarGestureListener;,
        Lcom/android/calendar/DayView$UpdateCurrentTime;,
        Lcom/android/calendar/DayView$DismissPopup;,
        Lcom/android/calendar/DayView$ContinueScroll;,
        Lcom/android/calendar/DayView$ContextMenuHandler;,
        Lcom/android/calendar/DayView$GotoBroadcaster;,
        Lcom/android/calendar/DayView$TodayAnimatorListener;
    }
.end annotation


# static fields
.field private static ALLDAY_TOP_MARGIN:I

.field private static ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

.field private static AMPM_TEXT_SIZE:F

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field private static CALENDAR_COLOR_SQUARE_SIZE:I

.field private static CURRENT_TIME_LINE_BORDER_WIDTH:I

.field private static CURRENT_TIME_LINE_HEIGHT:I

.field private static CURRENT_TIME_LINE_SIDE_BUFFER:I

.field private static CURRENT_TIME_LINE_TOP_OFFSET:I

.field private static DATE_HEADER_FONT_SIZE:F

.field private static DAY_HEADER_BOTTOM_MARGIN:I

.field private static DAY_HEADER_FONT_SIZE:F

.field private static DAY_HEADER_HEIGHT:I

.field private static DAY_HEADER_LEFT_MARGIN:I

.field private static DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

.field private static DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

.field private static DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

.field private static DAY_HEADER_RIGHT_MARGIN:I

.field private static DEBUG:Z

.field private static DEBUG_SCALING:Z

.field private static DEFAULT_CELL_HEIGHT:I

.field private static EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

.field private static EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

.field private static EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

.field private static EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

.field private static EVENT_LINE_PADDING:I

.field private static EVENT_RECT_BOTTOM_MARGIN:I

.field private static EVENT_RECT_LEFT_MARGIN:I

.field private static EVENT_RECT_RIGHT_MARGIN:I

.field private static EVENT_RECT_STROKE_WIDTH:I

.field private static EVENT_RECT_TOP_MARGIN:I

.field private static EVENT_SQUARE_WIDTH:I

.field private static EVENT_TEXT_BOTTOM_MARGIN:I

.field private static EVENT_TEXT_FONT_SIZE:F

.field private static EVENT_TEXT_LEFT_MARGIN:I

.field private static EVENT_TEXT_RIGHT_MARGIN:I

.field private static EVENT_TEXT_TOP_MARGIN:I

.field private static EXPAND_ALL_DAY_BOTTOM_MARGIN:I

.field private static GRID_LINE_LEFT_MARGIN:F

.field private static HOURS_LEFT_MARGIN:I

.field private static HOURS_MARGIN:I

.field private static HOURS_RIGHT_MARGIN:I

.field private static HOURS_TEXT_SIZE:F

.field private static HOURS_TOP_MARGIN:I

.field private static MAX_CELL_HEIGHT:I

.field private static MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

.field private static MAX_UNEXPANDED_ALLDAY_HEIGHT:I

.field private static MIN_CELL_WIDTH_FOR_TEXT:I

.field private static MIN_EVENT_HEIGHT:F

.field private static MIN_HOURS_HEIGHT:I

.field private static MIN_HOURS_WIDTH:I

.field private static MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

.field private static MIN_Y_SPAN:I

.field private static MULTI_DAY_HEADER_HEIGHT:I

.field private static NEW_EVENT_HINT_FONT_SIZE:I

.field private static NEW_EVENT_MARGIN:I

.field private static NEW_EVENT_MAX_LENGTH:I

.field private static NEW_EVENT_WIDTH:I

.field private static NORMAL_FONT_SIZE:F

.field private static ONE_DAY_HEADER_HEIGHT:I

.field private static SINGLE_ALLDAY_HEIGHT:I

.field private static TAG:Ljava/lang/String;

.field private static mBgColor:I

.field private static mCalendarAmPmLabel:I

.field private static mCalendarDateBannerTextColor:I

.field private static mCalendarGridAreaSelected:I

.field private static mCalendarGridLineInnerHorizontalColor:I

.field private static mCalendarGridLineInnerVerticalColor:I

.field private static mCalendarHourLabelColor:I

.field private static mCellHeight:I

.field private static mEventTextColor:I

.field protected static mFormatter:Ljava/util/Formatter;

.field private static mFutureBgColor:I

.field private static mFutureBgColorRes:I

.field private static mHorizontalSnapBackThreshold:I

.field private static mMinCellHeight:I

.field private static mMoreAlldayEventsTextAlpha:I

.field private static mMoreEventsTextColor:I

.field private static mNewEventHintColor:I

.field private static mPressedColor:I

.field private static mScale:F

.field private static mShowAllAllDayEvents:Z

.field protected static mStringBuilder:Ljava/lang/StringBuilder;

.field private static mUseExpandIcon:Z

.field private static mWeek_saturdayColor:I

.field private static mWeek_sundayColor:I

.field private static sCounter:I


# instance fields
.field private final OVERFLING_DISTANCE:I

.field private drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field protected mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

.field private mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private mAllDayEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mAllDayLayouts:[Landroid/text/StaticLayout;

.field mAlldayAnimator:Landroid/animation/ObjectAnimator;

.field mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

.field private mAlldayHeight:I

.field private mAmString:Ljava/lang/String;

.field private mAnimateDayEventHeight:I

.field private mAnimateDayHeight:I

.field private mAnimateToday:Z

.field private mAnimateTodayAlpha:I

.field private mAnimationDistance:F

.field mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field mBaseDate:Landroid/text/format/Time;

.field private mBold:Landroid/graphics/Typeface;

.field private mCallEdgeEffectOnAbsorb:Z

.field private mCancelCallback:Ljava/lang/Runnable;

.field private mCancellingAnimations:Z

.field private mCellHeightBeforeScaleGesture:I

.field private mCellWidth:I

.field protected final mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

.field private mComputeSelectedEvents:Z

.field protected mContext:Landroid/content/Context;

.field private mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

.field private mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mCreateNewEventString:Ljava/lang/String;

.field private mCurrentTime:Landroid/text/format/Time;

.field protected final mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

.field protected final mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

.field private mDateStrWidth:I

.field private mDayStrs:[Ljava/lang/String;

.field private mDayStrs2Letter:[Ljava/lang/String;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDestRect:Landroid/graphics/Rect;

.field private mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

.field private mEarliestStartHour:[I

.field private mEdgeEffectBottom:Landroid/widget/EdgeEffect;

.field private mEdgeEffectTop:Landroid/widget/EdgeEffect;

.field private mEventCountTemplate:Ljava/lang/String;

.field protected final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEventTextPaint:Landroid/graphics/Paint;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandAllDayRect:Landroid/graphics/Rect;

.field protected final mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstCell:I

.field private mFirstDayOfWeek:I

.field private mFirstHour:I

.field private mFirstHourOffset:I

.field private mFirstJulianDay:I

.field private mFirstVisibleDate:I

.field private mFirstVisibleDayOfWeek:I

.field private mGestureCenterHour:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridAreaHeight:I

.field private mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

.field private mHandleActionUp:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasAllDayEvent:[Z

.field private mHourStrs:[Ljava/lang/String;

.field private mHoursTextHeight:I

.field private mHoursWidth:I

.field private mInitialScrollX:F

.field private mInitialScrollY:F

.field private mIs24HourFormat:Z

.field private mIsAccessibilityEnabled:Z

.field private mLastJulianDay:I

.field private mLastPopupEventID:J

.field private mLastReloadMillis:J

.field private mLastSelectedEvent:Lcom/android/calendar/Event;

.field private mLastSelectionDay:I

.field private mLastSelectionHour:I

.field private mLastVelocity:F

.field private mLayouts:[Landroid/text/StaticLayout;

.field private mLines:[F

.field private mLongPressItems:[Ljava/lang/CharSequence;

.field private mLongPressTitle:Ljava/lang/String;

.field private mMaxAlldayEvents:I

.field private mMaxUnexpandedAlldayEventCount:I

.field private mMaxViewStartY:I

.field private mMonthLength:I

.field mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

.field private mNewEventHintString:Ljava/lang/String;

.field protected mNumDays:I

.field private mNumHours:I

.field private mOnFlingCalled:Z

.field private mPaint:Landroid/graphics/Paint;

.field protected mPaused:Z

.field private mPmString:Ljava/lang/String;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupView:Landroid/view/View;

.field private mPrevBox:Landroid/graphics/Rect;

.field private mPrevSelectedEvent:Lcom/android/calendar/Event;

.field private mPreviousDirection:I

.field private mRect:Landroid/graphics/Rect;

.field private mRemeasure:Z

.field protected final mResources:Landroid/content/res/Resources;

.field mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollStartY:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mScrolling:Z

.field private mSelectedEvent:Lcom/android/calendar/Event;

.field private mSelectedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field mSelectionAllday:Z

.field private mSelectionDay:I

.field private mSelectionHour:I

.field private mSelectionMode:I

.field private mSelectionPaint:Landroid/graphics/Paint;

.field private mSelectionRect:Landroid/graphics/Rect;

.field private mSkippedAlldayEvents:[I

.field private mStartingScroll:Z

.field private mStartingSpanY:F

.field private mTZUpdater:Ljava/lang/Runnable;

.field mTodayAnimator:Landroid/animation/ObjectAnimator;

.field private mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

.field protected final mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

.field private mTodayJulianDay:I

.field private mTouchExplorationEnabled:Z

.field private mTouchMode:I

.field private mTouchStartedInAlldayArea:Z

.field private mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

.field private mUpdateToast:Z

.field private mViewHeight:I

.field private mViewStartX:I

.field private mViewStartY:I

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/high16 v7, 0x4140

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 97
    const-string v0, "DayView"

    sput-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    .line 98
    sput-boolean v3, Lcom/android/calendar/DayView;->DEBUG:Z

    .line 99
    sput-boolean v3, Lcom/android/calendar/DayView;->DEBUG_SCALING:Z

    .line 102
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/DayView;->mScale:F

    .line 118
    const/16 v0, 0x40

    sput v0, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    .line 119
    const/16 v0, 0x96

    sput v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    .line 120
    const/16 v0, 0x64

    sput v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    .line 138
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_access_level"

    aput-object v1, v0, v5

    const-string v1, "ownerAccount"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/DayView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 157
    const/16 v0, 0x80

    sput v0, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 184
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    .line 314
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    .line 320
    const/16 v0, 0x22

    sput v0, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 327
    const/high16 v0, 0x41e0

    sput v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    .line 332
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 338
    const/16 v0, 0xb4

    sput v0, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    .line 339
    sput v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    .line 341
    const/16 v0, 0x22

    sput v0, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    .line 343
    sput v4, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    .line 344
    sput v4, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    .line 345
    sput v6, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    .line 346
    sget v0, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    sget v1, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    .line 347
    sput v6, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    .line 348
    sput v4, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    .line 349
    const/16 v0, 0x10

    sput v0, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    .line 351
    sput v4, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_HEIGHT:I

    .line 352
    sput v5, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    .line 353
    sput v6, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 354
    sput v4, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    .line 364
    sput v3, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    .line 365
    const/4 v0, 0x5

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    .line 366
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    .line 367
    const/4 v0, 0x5

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_LEFT_MARGIN:I

    .line 368
    sput v6, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    .line 369
    const/4 v0, 0x3

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    .line 370
    const/high16 v0, 0x4160

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    .line 371
    const/high16 v0, 0x4200

    sput v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    .line 372
    sput v7, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    .line 373
    sput v7, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    .line 374
    sput v7, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    .line 375
    const/high16 v0, 0x4110

    sput v0, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    .line 376
    const/16 v0, 0x60

    sput v0, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    .line 377
    const/16 v0, 0x14

    sput v0, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 380
    const/high16 v0, 0x41c0

    sput v0, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    .line 381
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    .line 382
    sput v5, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    .line 383
    sput v3, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    .line 384
    sput v5, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    .line 385
    sput v3, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    .line 386
    sput v4, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    .line 387
    sput v4, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    .line 388
    sput v4, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    .line 389
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    .line 390
    const/4 v0, 0x6

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    .line 391
    sput v5, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    .line 392
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    .line 393
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    .line 394
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    .line 395
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    .line 397
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    .line 399
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    .line 400
    sput v6, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    .line 401
    const/16 v0, 0xc

    sput v0, Lcom/android/calendar/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    .line 419
    const/16 v0, 0x4c

    sput v0, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    .line 428
    sput v3, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 429
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    .line 465
    sput-boolean v5, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    .line 469
    const/16 v0, 0x2d

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 473
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sput v0, Lcom/android/calendar/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    .line 477
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sput v0, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    .line 493
    sput-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    .line 528
    sput v3, Lcom/android/calendar/DayView;->sCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/CalendarController;Landroid/widget/ViewSwitcher;Lcom/android/calendar/EventLoader;I)V
    .registers 14
    .parameter "context"
    .parameter "controller"
    .parameter "viewSwitcher"
    .parameter "eventLoader"
    .parameter "numDays"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 607
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 123
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 124
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mPaused:Z

    .line 159
    new-instance v1, Lcom/android/calendar/DayView$ContinueScroll;

    invoke-direct {v1, p0, v5}, Lcom/android/calendar/DayView$ContinueScroll;-><init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    .line 166
    new-instance v1, Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$UpdateCurrentTime;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    .line 169
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    .line 186
    new-instance v1, Lcom/android/calendar/DayView$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$1;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    .line 197
    new-instance v1, Lcom/android/calendar/DayView$TodayAnimatorListener;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$TodayAnimatorListener;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    .line 244
    new-instance v1, Lcom/android/calendar/DayView$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$2;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    .line 274
    iput-object v5, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    .line 275
    iput-object v5, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    .line 289
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 290
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    .line 291
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mSelectionRect:Landroid/graphics/Rect;

    .line 293
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    .line 295
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 296
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 297
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 307
    new-instance v1, Lcom/android/calendar/DayView$DismissPopup;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$DismissPopup;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    .line 309
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 421
    iput v6, p0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    .line 427
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    .line 437
    iput v6, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 441
    iput v6, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 447
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 457
    iput v4, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 461
    sget v1, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 489
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    .line 495
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    .line 496
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    .line 504
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 512
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    .line 517
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    .line 530
    new-instance v1, Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-direct {v1, p0, v5}, Lcom/android/calendar/DayView$ContextMenuHandler;-><init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    .line 555
    iput v4, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 565
    iput v4, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 567
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 572
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    .line 573
    iput v4, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    .line 584
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 586
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    .line 599
    iput-object v5, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 600
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    .line 601
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    .line 1931
    new-instance v1, Lcom/android/calendar/DayView$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$3;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mCancelCallback:Ljava/lang/Runnable;

    .line 3415
    const-string v1, "[\t\n],"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    .line 608
    iput-object p1, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    .line 609
    invoke-direct {p0}, Lcom/android/calendar/DayView;->initAccessibilityVariables()V

    .line 611
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    .line 612
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mCreateNewEventString:Ljava/lang/String;

    .line 613
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mNewEventHintString:Ljava/lang/String;

    .line 614
    iput p5, p0, Lcom/android/calendar/DayView;->mNumDays:I

    .line 616
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    .line 617
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    .line 618
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    .line 619
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    .line 620
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    .line 621
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    .line 622
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    .line 623
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    .line 624
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    .line 625
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    .line 626
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    .line 628
    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v1, v3, :cond_40d

    .line 629
    const v0, 0x7f0a0008

    .line 633
    .local v0, eventTextSizeId:I
    :goto_188
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    .line 634
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    .line 635
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    .line 636
    sget v1, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    sput v1, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    .line 637
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    .line 638
    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v1, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    .line 639
    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    .line 640
    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    .line 642
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    .line 644
    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v1, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    .line 645
    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    .line 646
    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    .line 648
    sget v1, Lcom/android/calendar/DayView;->mScale:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_31d

    .line 650
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/calendar/DayView;->mScale:F

    .line 651
    sget v1, Lcom/android/calendar/DayView;->mScale:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_31d

    .line 652
    sget v1, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 653
    sget v1, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    .line 654
    sget v1, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    .line 656
    sget v1, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    sput v1, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    .line 657
    sget v1, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    sput v1, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    .line 658
    sget v1, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    .line 659
    sget v1, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 660
    sget v1, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 661
    sget v1, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 663
    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_HEIGHT:I

    .line 664
    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    .line 665
    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 666
    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    .line 668
    sget v1, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    .line 669
    sget v1, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    .line 670
    sget v1, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    .line 671
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 672
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_LEFT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_LEFT_MARGIN:I

    .line 673
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    .line 674
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    .line 675
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    .line 676
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    .line 677
    sget v1, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    .line 678
    sget v1, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    .line 679
    sget v1, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    .line 680
    sget v1, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    .line 681
    sget v1, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    .line 682
    sget v1, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    .line 683
    sget v1, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    .line 684
    sget v1, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    .line 685
    sget v1, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    .line 686
    sget v1, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    .line 687
    sget v1, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    .line 688
    sget v1, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    .line 691
    :cond_31d
    sget v1, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    .line 692
    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v1, v3, :cond_412

    sget v1, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    :goto_32a
    sput v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 694
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    .line 695
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    .line 697
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

    .line 698
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 699
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 700
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/android/calendar/DayView;->mNewEventHintColor:I

    .line 701
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 704
    iput-object p4, p0, Lcom/android/calendar/DayView;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 705
    new-instance v1, Lcom/android/calendar/EventGeometry;

    invoke-direct {v1}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 706
    iget-object v1, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    sget v2, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    invoke-virtual {v1, v2}, Lcom/android/calendar/EventGeometry;->setMinEventHeight(F)V

    .line 707
    iget-object v1, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    invoke-virtual {v1, v7}, Lcom/android/calendar/EventGeometry;->setHourGap(F)V

    .line 708
    iget-object v1, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    invoke-virtual {v1, v3}, Lcom/android/calendar/EventGeometry;->setCellMargin(I)V

    .line 709
    new-array v1, v3, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0c005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/calendar/DayView;->mLongPressItems:[Ljava/lang/CharSequence;

    .line 712
    iget-object v1, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0c005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mLongPressTitle:Ljava/lang/String;

    .line 713
    new-instance v1, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v1, p1, v5, v4}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 714
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 715
    iput-object p2, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    .line 716
    iput-object p3, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 717
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/calendar/DayView$CalendarGestureListener;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayView$CalendarGestureListener;-><init>(Lcom/android/calendar/DayView;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 718
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 719
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    if-nez v1, :cond_3e3

    .line 720
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v2, "preferences_default_cell_height"

    sget v3, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    invoke-static {v1, v2, v3}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 723
    :cond_3e3
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    .line 724
    new-instance v1, Lcom/android/calendar/DayView$ScrollInterpolator;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$ScrollInterpolator;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    .line 725
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    .line 726
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    .line 727
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/DayView;->OVERFLING_DISTANCE:I

    .line 729
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->init(Landroid/content/Context;)V

    .line 730
    return-void

    .line 631
    .end local v0           #eventTextSizeId:I
    :cond_40d
    const v0, 0x7f0a0009

    .restart local v0       #eventTextSizeId:I
    goto/16 :goto_188

    .line 692
    :cond_412
    sget v1, Lcom/android/calendar/DayView;->MULTI_DAY_HEADER_HEIGHT:I

    goto/16 :goto_32a
.end method

.method static synthetic access$100(Lcom/android/calendar/DayView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/calendar/DayView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/calendar/DayView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeEventRelations()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/calendar/DayView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/calendar/DayView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/calendar/DayView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/calendar/DayView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/calendar/DayView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/calendar/DayView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    return p1
.end method

.method static synthetic access$2102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    sput-boolean p0, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    return p0
.end method

.method static synthetic access$2200()Z
    .registers 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/DayView;)Landroid/widget/OverScroller;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/calendar/DayView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/calendar/DayView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/calendar/DayView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/calendar/DayView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/calendar/DayView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mLastVelocity:F

    return v0
.end method

.method static synthetic access$2702(Lcom/android/calendar/DayView;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mLastVelocity:F

    return p1
.end method

.method static synthetic access$2800(Lcom/android/calendar/DayView;)Landroid/widget/EdgeEffect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/calendar/DayView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/calendar/DayView;)Landroid/widget/EdgeEffect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/calendar/DayView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/calendar/DayView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/calendar/DayView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/calendar/DayView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/calendar/DayView;)Landroid/widget/PopupWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/calendar/DayView;)Lcom/android/calendar/DayView$UpdateCurrentTime;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/calendar/DayView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    return p1
.end method

.method static synthetic access$3700()Z
    .registers 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doSingleTapUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/DayView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/calendar/DayView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/calendar/DayView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/calendar/DayView;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    return v0
.end method

.method static synthetic access$4600(Lcom/android/calendar/DayView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/DayView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    return-void
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 94
    sget v0, Lcom/android/calendar/DayView;->sCounter:I

    return v0
.end method

.method static synthetic access$704()I
    .registers 1

    .prologue
    .line 94
    sget v0, Lcom/android/calendar/DayView;->sCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/DayView;->sCounter:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/DayView;)Landroid/widget/ViewSwitcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/calendar/DayView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    return p1
.end method

.method private adjustHourSelection()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x17

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1872
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-gez v1, :cond_13

    .line 1873
    iput v3, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1874
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-lez v1, :cond_13

    .line 1875
    iput-object v5, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1876
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1880
    :cond_13
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v1, v2, :cond_19

    .line 1881
    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1886
    :cond_19
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_62

    .line 1894
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v0, v1, v2

    .line 1895
    .local v0, daynum:I
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-lez v1, :cond_48

    iget-object v1, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v1, v2, :cond_48

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lez v1, :cond_48

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_48

    .line 1897
    iput-object v5, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1898
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1899
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1925
    .end local v0           #daynum:I
    :cond_47
    :goto_47
    return-void

    .line 1903
    .restart local v0       #daynum:I
    :cond_48
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lez v1, :cond_62

    .line 1904
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1905
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1906
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v1, :cond_47

    .line 1907
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_47

    .line 1913
    .end local v0           #daynum:I
    :cond_62
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3

    if-le v1, v2, :cond_47

    .line 1914
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ge v1, v2, :cond_8f

    .line 1915
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1916
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1917
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v1, v2, :cond_47

    .line 1918
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_47

    .line 1921
    :cond_8f
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ne v1, v2, :cond_47

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    if-lez v1, :cond_47

    .line 1922
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_47
.end method

.method private adjustToBeginningOfWeek(Landroid/text/format/Time;)V
    .registers 5
    .parameter "time"

    .prologue
    .line 1147
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    .line 1148
    .local v0, dayOfWeek:I
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    sub-int v1, v0, v2

    .line 1149
    .local v1, diff:I
    if-eqz v1, :cond_15

    .line 1150
    if-gez v1, :cond_c

    .line 1151
    add-int/lit8 v1, v1, 0x7

    .line 1153
    :cond_c
    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/text/format/Time;->monthDay:I

    .line 1154
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1156
    :cond_15
    return-void
.end method

.method private appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 1706
    invoke-virtual {p2}, Lcom/android/calendar/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    iget-boolean v0, p2, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v0, :cond_25

    .line 1711
    const/16 v5, 0x2012

    .line 1718
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-wide v1, p2, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, p2, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 1719
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    return-void

    .line 1713
    :cond_25
    const/16 v5, 0x11

    .line 1714
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1715
    const/16 v5, 0x91

    goto :goto_12
.end method

.method private calculateDuration(FFF)J
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4750
    const/high16 v0, 0x4000

    div-float v0, p2, v0

    .line 4751
    div-float v1, p1, p2

    .line 4752
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    .line 4753
    mul-float v3, v0, v2

    add-float/2addr v3, v0

    .line 4755
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 4756
    const v5, 0x45098000

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 4764
    const/high16 v5, 0x447a

    div-float v6, v3, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    int-to-long v5, v5

    .line 4765
    sget-boolean v7, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v7, :cond_80

    .line 4766
    sget-object v7, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "halfScreenSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " delta:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " distanceRatio:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " distance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " velocity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " distanceInfluenceForSnapDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    :cond_80
    return-wide v5
.end method

.method private cancelAnimation()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3891
    iget-object v2, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 3892
    .local v0, in:Landroid/view/animation/Animation;
    if-eqz v0, :cond_c

    .line 3894
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 3896
    :cond_c
    iget-object v2, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 3897
    .local v1, out:Landroid/view/animation/Animation;
    if-eqz v1, :cond_17

    .line 3899
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 3901
    :cond_17
    return-void
.end method

.method private computeAllDayNeighbors()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 2931
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2932
    .local v3, len:I
    if-eqz v3, :cond_d

    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_e

    .line 2986
    :cond_d
    :goto_d
    return-void

    .line 2937
    :cond_e
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_f
    if-ge v1, v3, :cond_24

    .line 2938
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 2939
    .local v0, ev:Lcom/android/calendar/Event;
    iput-object v12, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 2940
    iput-object v12, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 2941
    iput-object v12, v0, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 2942
    iput-object v12, v0, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 2937
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2952
    .end local v0           #ev:Lcom/android/calendar/Event;
    :cond_24
    const/4 v10, -0x1

    .line 2953
    .local v10, startPosition:I
    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_37

    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v11}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v11

    if-eqz v11, :cond_37

    .line 2954
    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v11}, Lcom/android/calendar/Event;->getColumn()I

    move-result v10

    .line 2956
    :cond_37
    const/4 v4, -0x1

    .line 2957
    .local v4, maxPosition:I
    const/4 v9, 0x0

    .line 2958
    .local v9, startEvent:Lcom/android/calendar/Event;
    const/4 v5, 0x0

    .line 2959
    .local v5, maxPositionEvent:Lcom/android/calendar/Event;
    const/4 v1, 0x0

    :goto_3b
    if-ge v1, v3, :cond_76

    .line 2960
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 2961
    .restart local v0       #ev:Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v8

    .line 2962
    .local v8, position:I
    if-ne v8, v10, :cond_54

    .line 2963
    move-object v9, v0

    .line 2968
    :cond_4c
    :goto_4c
    const/4 v2, 0x0

    .local v2, jj:I
    :goto_4d
    if-ge v2, v3, :cond_73

    .line 2969
    if-ne v2, v1, :cond_59

    .line 2968
    :cond_51
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 2964
    .end local v2           #jj:I
    :cond_54
    if-le v8, v4, :cond_4c

    .line 2965
    move-object v5, v0

    .line 2966
    move v4, v8

    goto :goto_4c

    .line 2972
    .restart local v2       #jj:I
    :cond_59
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/Event;

    .line 2973
    .local v6, neighbor:Lcom/android/calendar/Event;
    invoke-virtual {v6}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    .line 2974
    .local v7, neighborPosition:I
    add-int/lit8 v11, v8, -0x1

    if-ne v7, v11, :cond_6c

    .line 2975
    iput-object v6, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    goto :goto_51

    .line 2976
    :cond_6c
    add-int/lit8 v11, v8, 0x1

    if-ne v7, v11, :cond_51

    .line 2977
    iput-object v6, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    goto :goto_51

    .line 2959
    .end local v6           #neighbor:Lcom/android/calendar/Event;
    .end local v7           #neighborPosition:I
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 2981
    .end local v0           #ev:Lcom/android/calendar/Event;
    .end local v2           #jj:I
    .end local v8           #position:I
    :cond_76
    if-eqz v9, :cond_7b

    .line 2982
    iput-object v9, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto :goto_d

    .line 2984
    :cond_7b
    iput-object v5, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto :goto_d
.end method

.method private computeDayLeftPosition(I)I
    .registers 5
    .parameter "day"

    .prologue
    .line 2205
    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v0, v1, v2

    .line 2206
    .local v0, effectiveWidth:I
    mul-int v1, p1, v0

    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    add-int/2addr v1, v2

    return v1
.end method

.method private computeEventRelations()V
    .registers 16

    .prologue
    .line 2021
    const/4 v12, 0x0

    .line 2022
    .local v12, maxAllDayEvents:I
    iget-object v5, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 2023
    .local v5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2025
    .local v11, len:I
    iget v13, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    new-array v6, v13, [I

    .line 2026
    .local v6, eventsCount:[I
    const/4 v13, 0x0

    invoke-static {v6, v13}, Ljava/util/Arrays;->fill([II)V

    .line 2027
    const/4 v9, 0x0

    .local v9, ii:I
    :goto_15
    if-ge v9, v11, :cond_ad

    .line 2028
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/Event;

    .line 2029
    .local v4, event:Lcom/android/calendar/Event;
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    if-gt v13, v14, :cond_29

    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    if-ge v13, v14, :cond_2c

    .line 2027
    :cond_29
    :goto_29
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    .line 2032
    :cond_2c
    invoke-virtual {v4}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v13

    if-eqz v13, :cond_7d

    .line 2034
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2035
    .local v7, firstDay:I
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2036
    .local v10, lastDay:I
    move v1, v7

    .local v1, day:I
    :goto_43
    if-gt v1, v10, :cond_55

    .line 2037
    iget v13, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v13, v1, v13

    aget v14, v6, v13

    add-int/lit8 v0, v14, 0x1

    aput v0, v6, v13

    .line 2038
    .local v0, count:I
    if-ge v12, v0, :cond_52

    .line 2039
    move v12, v0

    .line 2036
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 2043
    .end local v0           #count:I
    :cond_55
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2044
    .local v2, daynum:I
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, v4, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    .line 2045
    .local v3, durationDays:I
    if-gez v2, :cond_66

    .line 2046
    add-int/2addr v3, v2

    .line 2047
    const/4 v2, 0x0

    .line 2049
    :cond_66
    add-int v13, v2, v3

    iget v14, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-le v13, v14, :cond_70

    .line 2050
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int v3, v13, v2

    .line 2052
    :cond_70
    move v1, v2

    :goto_71
    if-lez v3, :cond_29

    .line 2053
    iget-object v13, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    const/4 v14, 0x1

    aput-boolean v14, v13, v1

    .line 2052
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_71

    .line 2056
    .end local v1           #day:I
    .end local v2           #daynum:I
    .end local v3           #durationDays:I
    .end local v7           #firstDay:I
    .end local v10           #lastDay:I
    :cond_7d
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2057
    .restart local v2       #daynum:I
    iget v13, v4, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v8, v13, 0x3c

    .line 2058
    .local v8, hour:I
    if-ltz v2, :cond_93

    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v8, v13, :cond_93

    .line 2059
    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aput v8, v13, v2

    .line 2064
    :cond_93
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2065
    iget v13, v4, Lcom/android/calendar/Event;->endTime:I

    div-int/lit8 v8, v13, 0x3c

    .line 2066
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v13, :cond_29

    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v8, v13, :cond_29

    .line 2067
    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aput v8, v13, v2

    goto/16 :goto_29

    .line 2071
    .end local v2           #daynum:I
    .end local v4           #event:Lcom/android/calendar/Event;
    .end local v8           #hour:I
    :cond_ad
    iput v12, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    .line 2072
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->initAllDayHeights()V

    .line 2073
    return-void
.end method

.method private computeFirstHour()V
    .registers 3

    .prologue
    .line 1867
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1868
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1869
    return-void
.end method

.method private computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I
    .registers 13
    .parameter "currentMax"
    .parameter "strings"
    .parameter "p"

    .prologue
    .line 2643
    const/4 v3, 0x0

    .line 2645
    .local v3, maxWidthF:F
    array-length v1, p2

    .line 2646
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v1, :cond_12

    .line 2647
    aget-object v5, p2, v0

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 2648
    .local v4, width:F
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2646
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2650
    .end local v4           #width:F
    :cond_12
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v2, v5

    .line 2651
    .local v2, maxWidth:I
    if-ge v2, p1, :cond_1a

    .line 2652
    move v2, p1

    .line 2654
    :cond_1a
    return v2
.end method

.method private computeNeighbors()V
    .registers 40

    .prologue
    .line 3044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 3045
    if-eqz v28, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_11

    .line 3326
    :cond_10
    :goto_10
    return-void

    .line 3050
    :cond_11
    const/4 v2, 0x0

    move v3, v2

    :goto_13
    move/from16 v0, v28

    if-ge v3, v0, :cond_31

    .line 3051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 3052
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 3053
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 3054
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 3055
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 3050
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_13

    .line 3058
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 3059
    const v12, 0x186a0

    .line 3060
    const v11, 0x186a0

    .line 3061
    const/4 v9, 0x0

    .line 3066
    const/4 v8, 0x0

    .line 3067
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->getCurrentSelectionPosition()Landroid/graphics/Rect;

    move-result-object v29

    .line 3068
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v3, :cond_189

    .line 3069
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v3, v3, Lcom/android/calendar/Event;->top:F

    float-to-int v3, v3

    .line 3070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->bottom:F

    float-to-int v6, v4

    .line 3071
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->left:F

    float-to-int v5, v4

    .line 3072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->right:F

    float-to-int v4, v4

    .line 3076
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v7, :cond_8a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_8a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-le v4, v7, :cond_8a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-lt v5, v7, :cond_16a

    .line 3078
    :cond_8a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 3080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 3081
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 3082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    .line 3101
    :goto_ab
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-lt v5, v3, :cond_1a7

    .line 3103
    const/16 v8, 0x8

    .line 3104
    add-int v3, v7, v6

    div-int/lit8 v3, v3, 0x2

    move v9, v8

    move v8, v3

    .line 3122
    :cond_b9
    :goto_b9
    const/4 v3, 0x0

    move/from16 v27, v3

    move-object v14, v2

    :goto_bd
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_43d

    .line 3123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 3125
    iget v0, v2, Lcom/android/calendar/Event;->startTime:I

    move/from16 v30, v0

    .line 3126
    iget v0, v2, Lcom/android/calendar/Event;->endTime:I

    move/from16 v31, v0

    .line 3127
    iget v3, v2, Lcom/android/calendar/Event;->left:F

    float-to-int v0, v3

    move/from16 v32, v0

    .line 3128
    iget v3, v2, Lcom/android/calendar/Event;->right:F

    float-to-int v0, v3

    move/from16 v33, v0

    .line 3129
    iget v3, v2, Lcom/android/calendar/Event;->top:F

    float-to-int v3, v3

    .line 3130
    move-object/from16 v0, v29

    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-ge v3, v10, :cond_474

    .line 3131
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move v10, v3

    .line 3133
    :goto_ef
    iget v3, v2, Lcom/android/calendar/Event;->bottom:F

    float-to-int v3, v3

    .line 3134
    move-object/from16 v0, v29

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v3, v13, :cond_470

    .line 3135
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v3

    .line 3148
    :goto_fe
    const/16 v22, 0x2710

    .line 3149
    const/16 v21, 0x2710

    .line 3150
    const/16 v20, 0x2710

    .line 3151
    const/16 v19, 0x2710

    .line 3152
    const/16 v18, 0x0

    .line 3153
    const/16 v17, 0x0

    .line 3154
    const/16 v16, 0x0

    .line 3155
    const/4 v15, 0x0

    .line 3159
    const/4 v3, 0x0

    .line 3160
    const/4 v13, 0x0

    .line 3161
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_1dc

    .line 3162
    move/from16 v0, v32

    if-lt v0, v8, :cond_1d4

    .line 3163
    sub-int v3, v32, v8

    .line 3167
    :cond_11b
    :goto_11b
    sub-int v13, v10, v6

    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    .line 3190
    :goto_122
    if-lt v13, v12, :cond_128

    if-ne v13, v12, :cond_466

    if-ge v3, v11, :cond_466

    :cond_128
    move v11, v3

    move v12, v13

    move-object v13, v2

    .line 3199
    :goto_12b
    const/4 v3, 0x0

    move/from16 v25, v3

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    :goto_13d
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_42a

    .line 3200
    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_22c

    move-object v3, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    .line 3199
    :goto_157
    add-int/lit8 v21, v25, 0x1

    move/from16 v25, v21

    move/from16 v21, v20

    move/from16 v20, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v3

    goto :goto_13d

    .line 3085
    :cond_16a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_178

    .line 3086
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 3088
    :cond_178
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_477

    .line 3089
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move v7, v3

    goto/16 :goto_ab

    .line 3094
    :cond_189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    .line 3095
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 3096
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 3097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    goto/16 :goto_ab

    .line 3105
    :cond_1a7
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-gt v4, v3, :cond_1b6

    .line 3107
    const/4 v8, 0x4

    .line 3108
    add-int v3, v7, v6

    div-int/lit8 v3, v3, 0x2

    move v9, v8

    move v8, v3

    goto/16 :goto_b9

    .line 3109
    :cond_1b6
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-gt v6, v3, :cond_1c5

    .line 3111
    const/4 v8, 0x1

    .line 3112
    add-int v3, v5, v4

    div-int/lit8 v3, v3, 0x2

    move v9, v8

    move v8, v3

    goto/16 :goto_b9

    .line 3113
    :cond_1c5
    move-object/from16 v0, v29

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v3, :cond_b9

    .line 3115
    const/4 v8, 0x2

    .line 3116
    add-int v3, v5, v4

    div-int/lit8 v3, v3, 0x2

    move v9, v8

    move v8, v3

    goto/16 :goto_b9

    .line 3164
    :cond_1d4
    move/from16 v0, v33

    if-gt v0, v8, :cond_11b

    .line 3165
    sub-int v3, v8, v33

    goto/16 :goto_11b

    .line 3168
    :cond_1dc
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v9, v0, :cond_1f8

    .line 3169
    move/from16 v0, v32

    if-lt v0, v8, :cond_1f1

    .line 3170
    sub-int v3, v32, v8

    .line 3174
    :cond_1e8
    :goto_1e8
    sub-int v13, v7, v26

    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    goto/16 :goto_122

    .line 3171
    :cond_1f1
    move/from16 v0, v33

    if-gt v0, v8, :cond_1e8

    .line 3172
    sub-int v3, v8, v33

    goto :goto_1e8

    .line 3175
    :cond_1f8
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v9, v0, :cond_212

    .line 3176
    move/from16 v0, v26

    if-gt v0, v8, :cond_20d

    .line 3177
    sub-int v3, v8, v26

    .line 3181
    :cond_204
    :goto_204
    sub-int v13, v32, v4

    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    goto/16 :goto_122

    .line 3178
    :cond_20d
    if-lt v10, v8, :cond_204

    .line 3179
    sub-int v3, v10, v8

    goto :goto_204

    .line 3182
    :cond_212
    const/16 v23, 0x8

    move/from16 v0, v23

    if-ne v9, v0, :cond_469

    .line 3183
    move/from16 v0, v26

    if-gt v0, v8, :cond_227

    .line 3184
    sub-int v3, v8, v26

    .line 3188
    :cond_21e
    :goto_21e
    sub-int v13, v5, v33

    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    goto/16 :goto_122

    .line 3185
    :cond_227
    if-lt v10, v8, :cond_21e

    .line 3186
    sub-int v3, v10, v8

    goto :goto_21e

    .line 3203
    :cond_22c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 3204
    iget v0, v3, Lcom/android/calendar/Event;->left:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3205
    iget v0, v3, Lcom/android/calendar/Event;->right:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v35, v0

    .line 3206
    iget v0, v3, Lcom/android/calendar/Event;->endTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v30

    if-gt v0, v1, :cond_309

    .line 3209
    move/from16 v0, v34

    move/from16 v1, v33

    if-ge v0, v1, :cond_458

    move/from16 v0, v35

    move/from16 v1, v32

    if-le v0, v1, :cond_458

    .line 3210
    iget v0, v3, Lcom/android/calendar/Event;->endTime:I

    move/from16 v22, v0

    sub-int v22, v30, v22

    .line 3211
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_2b3

    move-object/from16 v17, v3

    move/from16 v21, v22

    :cond_270
    :goto_270
    move/from16 v22, v21

    move/from16 v21, v20

    .line 3270
    :goto_274
    move/from16 v0, v34

    move/from16 v1, v33

    if-lt v0, v1, :cond_3b6

    .line 3273
    add-int v20, v10, v26

    div-int/lit8 v23, v20, 0x2

    .line 3274
    const/16 v20, 0x0

    .line 3275
    iget v0, v3, Lcom/android/calendar/Event;->bottom:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3276
    iget v0, v3, Lcom/android/calendar/Event;->top:F

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    .line 3277
    move/from16 v0, v24

    move/from16 v1, v23

    if-gt v0, v1, :cond_38f

    .line 3278
    sub-int v20, v23, v24

    .line 3282
    :cond_29a
    :goto_29a
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_399

    move/from16 v14, v20

    :goto_2a2
    move/from16 v18, v19

    move/from16 v20, v22

    move/from16 v19, v21

    move/from16 v38, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v38

    .line 3294
    goto/16 :goto_157

    .line 3214
    :cond_2b3
    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_270

    .line 3215
    add-int v23, v32, v33

    div-int/lit8 v36, v23, 0x2

    .line 3216
    const/16 v23, 0x0

    .line 3217
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3218
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v37, v0

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    .line 3219
    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_2f5

    .line 3220
    sub-int v23, v36, v37

    move/from16 v24, v23

    .line 3225
    :goto_2df
    const/16 v23, 0x0

    .line 3226
    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_300

    .line 3227
    sub-int v23, v36, v35

    .line 3231
    :cond_2e9
    :goto_2e9
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_270

    move-object/from16 v17, v3

    move/from16 v21, v22

    .line 3233
    goto/16 :goto_270

    .line 3221
    :cond_2f5
    move/from16 v0, v24

    move/from16 v1, v36

    if-lt v0, v1, :cond_462

    .line 3222
    sub-int v23, v24, v36

    move/from16 v24, v23

    goto :goto_2df

    .line 3228
    :cond_300
    move/from16 v0, v34

    move/from16 v1, v36

    if-lt v0, v1, :cond_2e9

    .line 3229
    sub-int v23, v34, v36

    goto :goto_2e9

    .line 3237
    :cond_309
    iget v0, v3, Lcom/android/calendar/Event;->startTime:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v31

    if-lt v0, v1, :cond_458

    .line 3240
    move/from16 v0, v34

    move/from16 v1, v33

    if-ge v0, v1, :cond_458

    move/from16 v0, v35

    move/from16 v1, v32

    if-le v0, v1, :cond_458

    .line 3241
    iget v0, v3, Lcom/android/calendar/Event;->startTime:I

    move/from16 v22, v0

    sub-int v22, v22, v31

    .line 3242
    move/from16 v0, v22

    move/from16 v1, v20

    if-ge v0, v1, :cond_335

    move-object/from16 v16, v3

    move/from16 v38, v22

    move/from16 v22, v21

    move/from16 v21, v38

    .line 3244
    goto/16 :goto_274

    .line 3245
    :cond_335
    move/from16 v0, v22

    move/from16 v1, v20

    if-ne v0, v1, :cond_458

    .line 3246
    add-int v23, v32, v33

    div-int/lit8 v36, v23, 0x2

    .line 3247
    const/16 v23, 0x0

    .line 3248
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3249
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v37, v0

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    .line 3250
    move/from16 v0, v37

    move/from16 v1, v36

    if-gt v0, v1, :cond_37b

    .line 3251
    sub-int v23, v36, v37

    move/from16 v24, v23

    .line 3256
    :goto_361
    const/16 v23, 0x0

    .line 3257
    move/from16 v0, v35

    move/from16 v1, v36

    if-gt v0, v1, :cond_386

    .line 3258
    sub-int v23, v36, v35

    .line 3262
    :cond_36b
    :goto_36b
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_458

    move-object/from16 v16, v3

    move/from16 v38, v22

    move/from16 v22, v21

    move/from16 v21, v38

    .line 3264
    goto/16 :goto_274

    .line 3252
    :cond_37b
    move/from16 v0, v24

    move/from16 v1, v36

    if-lt v0, v1, :cond_45e

    .line 3253
    sub-int v23, v24, v36

    move/from16 v24, v23

    goto :goto_361

    .line 3259
    :cond_386
    move/from16 v0, v34

    move/from16 v1, v36

    if-lt v0, v1, :cond_36b

    .line 3260
    sub-int v23, v34, v36

    goto :goto_36b

    .line 3279
    :cond_38f
    move/from16 v0, v35

    move/from16 v1, v23

    if-lt v0, v1, :cond_29a

    .line 3280
    sub-int v20, v35, v23

    goto/16 :goto_29a

    .line 3285
    :cond_399
    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_453

    .line 3287
    sub-int v23, v34, v33

    .line 3288
    iget v0, v14, Lcom/android/calendar/Event;->left:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v33

    .line 3289
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_453

    move/from16 v14, v20

    .line 3291
    goto/16 :goto_2a2

    .line 3294
    :cond_3b6
    move/from16 v0, v35

    move/from16 v1, v32

    if-gt v0, v1, :cond_443

    .line 3297
    add-int v20, v10, v26

    div-int/lit8 v23, v20, 0x2

    .line 3298
    const/16 v20, 0x0

    .line 3299
    iget v0, v3, Lcom/android/calendar/Event;->bottom:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3300
    iget v0, v3, Lcom/android/calendar/Event;->top:F

    move/from16 v34, v0

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3301
    move/from16 v0, v24

    move/from16 v1, v23

    if-gt v0, v1, :cond_3f5

    .line 3302
    sub-int v20, v23, v24

    .line 3306
    :cond_3dc
    :goto_3dc
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_3fe

    move-object/from16 v15, v16

    move/from16 v19, v21

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v22

    move-object/from16 v38, v3

    move-object v3, v14

    move-object/from16 v14, v38

    .line 3308
    goto/16 :goto_157

    .line 3303
    :cond_3f5
    move/from16 v0, v34

    move/from16 v1, v23

    if-lt v0, v1, :cond_3dc

    .line 3304
    sub-int v20, v34, v23

    goto :goto_3dc

    .line 3309
    :cond_3fe
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_443

    .line 3311
    sub-int v23, v32, v35

    .line 3312
    iget v0, v15, Lcom/android/calendar/Event;->right:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    sub-int v24, v32, v24

    .line 3313
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_443

    move-object/from16 v15, v16

    move/from16 v19, v21

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    move/from16 v20, v22

    move-object/from16 v38, v3

    move-object v3, v14

    move-object/from16 v14, v38

    .line 3315
    goto/16 :goto_157

    .line 3320
    :cond_42a
    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 3321
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 3322
    iput-object v15, v2, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 3323
    iput-object v14, v2, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 3122
    add-int/lit8 v2, v27, 0x1

    move/from16 v27, v2

    move-object v14, v13

    goto/16 :goto_bd

    .line 3325
    :cond_43d
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto/16 :goto_10

    :cond_443
    move-object v3, v14

    move/from16 v20, v22

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v21

    goto/16 :goto_157

    :cond_453
    move-object v3, v14

    move/from16 v14, v18

    goto/16 :goto_2a2

    :cond_458
    move/from16 v22, v21

    move/from16 v21, v20

    goto/16 :goto_274

    :cond_45e
    move/from16 v24, v23

    goto/16 :goto_361

    :cond_462
    move/from16 v24, v23

    goto/16 :goto_2df

    :cond_466
    move-object v13, v14

    goto/16 :goto_12b

    :cond_469
    move/from16 v38, v13

    move v13, v3

    move/from16 v3, v38

    goto/16 :goto_122

    :cond_470
    move/from16 v26, v3

    goto/16 :goto_fe

    :cond_474
    move v10, v3

    goto/16 :goto_ef

    :cond_477
    move v7, v3

    goto/16 :goto_ab
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 6
    .parameter

    .prologue
    .line 4782
    const/high16 v0, 0x3f00

    sub-float v0, p1, v0

    .line 4783
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 4784
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 3561
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3562
    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3563
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    .line 3564
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3565
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    const/4 v3, 0x1

    .line 2359
    iget-object v5, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 2360
    .local v5, p:Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 2362
    .local v7, r:Landroid/graphics/Rect;
    sget v0, Lcom/android/calendar/DayView;->mFutureBgColor:I

    if-eqz v0, :cond_c

    .line 2363
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawBgColors(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2365
    :cond_c
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2366
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2369
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 2370
    .local v1, cell:I
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2371
    const/4 v2, 0x0

    .local v2, day:I
    :goto_19
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v0, :cond_54

    move-object v0, p0

    move-object v4, p1

    .line 2374
    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/DayView;->drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2376
    iget v0, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    if-ne v1, v0, :cond_4f

    .line 2377
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->minute:I

    sget v6, Lcom/android/calendar/DayView;->mCellHeight:I

    mul-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x3c

    add-int/2addr v0, v4

    add-int/lit8 v9, v0, 0x1

    .line 2381
    .local v9, lineY:I
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-lt v9, v0, :cond_4f

    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x2

    if-ge v9, v0, :cond_4f

    move-object v6, p0

    move v8, v2

    move-object v10, p1

    move-object v11, v5

    .line 2382
    invoke-direct/range {v6 .. v11}, Lcom/android/calendar/DayView;->drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2371
    .end local v9           #lineY:I
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 2386
    :cond_54
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2388
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawSelectedRect(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2389
    return-void
.end method

.method private doExpandAllDayClick()V
    .registers 11

    .prologue
    const/16 v3, 0x4c

    const-wide/16 v4, 0xc8

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 3569
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v0, :cond_9b

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    .line 3571
    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 3574
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-nez v0, :cond_22

    .line 3575
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_9e

    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sget v8, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v8, v8

    sub-int/2addr v0, v8

    :goto_20
    iput v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3579
    :cond_22
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 3580
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2d

    .line 3581
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3583
    :cond_2d
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_36

    .line 3584
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3586
    :cond_36
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3f

    .line 3587
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3589
    :cond_3f
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 3591
    invoke-direct {p0}, Lcom/android/calendar/DayView;->getAllDayAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    .line 3592
    invoke-direct {p0}, Lcom/android/calendar/DayView;->getAllDayEventAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    .line 3593
    const-string v8, "moreAllDayEventsTextAlpha"

    const/4 v0, 0x2

    new-array v9, v0, [I

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_a1

    move v0, v3

    :goto_57
    aput v0, v9, v2

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_a3

    :goto_5d
    aput v2, v9, v1

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    .line 3599
    iget-object v2, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_a5

    move-wide v0, v4

    :goto_6c
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3600
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3601
    iget-object v2, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_a7

    move-wide v0, v6

    :goto_7b
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3602
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3603
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3604
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9a

    .line 3606
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_aa

    :goto_92
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3608
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3610
    :cond_9a
    return-void

    :cond_9b
    move v0, v2

    .line 3569
    goto/16 :goto_d

    .line 3575
    :cond_9e
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    goto :goto_20

    :cond_a1
    move v0, v2

    .line 3593
    goto :goto_57

    :cond_a3
    move v2, v3

    goto :goto_5d

    :cond_a5
    move-wide v0, v6

    .line 3599
    goto :goto_6c

    .line 3601
    :cond_a7
    const-wide/16 v0, 0x190

    goto :goto_7b

    :cond_aa
    move-wide v4, v6

    .line 3606
    goto :goto_92
.end method

.method private doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3904
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    .line 3906
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    .line 3909
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_4b

    .line 3912
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3913
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFling: velocityX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3914
    :cond_2e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 3915
    if-gez v0, :cond_49

    const/4 v0, 0x1

    :goto_3c
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/android/calendar/DayView;->switchViews(ZFFF)Landroid/view/View;

    .line 3916
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3950
    :cond_48
    :goto_48
    return-void

    .line 3915
    :cond_49
    const/4 v0, 0x0

    goto :goto_3c

    .line 3920
    :cond_4b
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_5d

    .line 3921
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_48

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "doFling: no fling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 3926
    :cond_5d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3927
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3929
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_8b

    .line 3930
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFling: mViewStartY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " velocityY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    :cond_8b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 3935
    iget-object v0, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    const/4 v3, 0x0

    neg-float v4, p4

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iget v9, p0, Lcom/android/calendar/DayView;->OVERFLING_DISTANCE:I

    iget v10, p0, Lcom/android/calendar/DayView;->OVERFLING_DISTANCE:I

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 3941
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_b6

    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-eqz v0, :cond_b6

    .line 3942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    .line 3949
    :cond_ae
    :goto_ae
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_48

    .line 3946
    :cond_b6
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_ae

    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-eq v0, v1, :cond_ae

    .line 3947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z

    goto :goto_ae
.end method

.method private doLongPress(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "ev"

    .prologue
    .line 3792
    iget-boolean v3, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v3, :cond_5

    .line 3813
    :cond_4
    :goto_4
    return-void

    .line 3797
    :cond_5
    iget v3, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    .line 3801
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 3802
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 3804
    .local v2, y:I
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/DayView;->setSelectionFromPosition(II)Z

    move-result v0

    .line 3805
    .local v0, validPosition:Z
    if-eqz v0, :cond_4

    .line 3810
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3811
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3812
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->performLongClick()Z

    goto :goto_4
.end method

.method private doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 15
    .parameter "e1"
    .parameter "e2"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 3816
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    .line 3817
    iget-boolean v7, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    if-eqz v7, :cond_10

    .line 3818
    iput v8, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 3819
    iput v8, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 3820
    iput-boolean v9, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 3823
    :cond_10
    iget v7, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    add-float/2addr v7, p3

    iput v7, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 3824
    iget v7, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    add-float/2addr v7, p4

    iput v7, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 3825
    iget v7, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    float-to-int v3, v7

    .line 3826
    .local v3, distanceX:I
    iget v7, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    float-to-int v4, v7

    .line 3830
    .local v4, distanceY:I
    iget v7, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    if-ne v7, v6, :cond_7f

    .line 3831
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3832
    .local v0, absDistanceX:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3833
    .local v1, absDistanceY:I
    iget v7, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iput v7, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    .line 3834
    iput v9, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    .line 3836
    if-le v0, v1, :cond_7a

    .line 3837
    const/16 v7, 0x40

    iput v7, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3838
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3839
    iget v7, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v7, v7

    invoke-direct {p0, v7}, Lcom/android/calendar/DayView;->initNextView(I)Z

    .line 3859
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_40
    :goto_40
    iget v7, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_72

    .line 3860
    iget v7, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 3863
    iget v7, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    int-to-float v7, v7

    add-float/2addr v7, p4

    float-to-int v5, v7

    .line 3864
    .local v5, pulledToY:I
    if-gez v5, :cond_9b

    .line 3865
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    iget v8, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    int-to-float v8, v8

    div-float v8, p4, v8

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3866
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_69

    .line 3867
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 3876
    :cond_69
    :goto_69
    iget v7, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v7, :cond_b7

    .line 3877
    iput v9, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 3881
    :cond_6f
    :goto_6f
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 3884
    .end local v5           #pulledToY:I
    :cond_72
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 3886
    iput v9, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3887
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3888
    return-void

    .line 3841
    .restart local v0       #absDistanceX:I
    .restart local v1       #absDistanceY:I
    :cond_7a
    const/16 v7, 0x20

    iput v7, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    goto :goto_40

    .line 3843
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_7f
    iget v7, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_40

    .line 3847
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3848
    if-eqz v3, :cond_40

    .line 3849
    if-lez v3, :cond_99

    move v2, v6

    .line 3850
    .local v2, direction:I
    :goto_8c
    iget v7, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    if-eq v2, v7, :cond_40

    .line 3853
    iget v7, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v7, v7

    invoke-direct {p0, v7}, Lcom/android/calendar/DayView;->initNextView(I)Z

    .line 3854
    iput v2, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    goto :goto_40

    .line 3849
    .end local v2           #direction:I
    :cond_99
    const/4 v2, -0x1

    goto :goto_8c

    .line 3869
    .restart local v5       #pulledToY:I
    :cond_9b
    iget v7, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v5, v7, :cond_69

    .line 3870
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    iget v8, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    int-to-float v8, v8

    div-float v8, p4, v8

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3871
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_69

    .line 3872
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_69

    .line 3878
    :cond_b7
    iget v7, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v8, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v7, v8, :cond_6f

    .line 3879
    iget v7, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v7, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_6f
.end method

.method private doSingleTapUp(Landroid/view/MotionEvent;)V
    .registers 59
    .parameter "ev"

    .prologue
    .line 3707
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v3, :cond_d

    .line 3789
    :cond_c
    :goto_c
    return-void

    .line 3711
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v55, v0

    .line 3712
    .local v55, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v56, v0

    .line 3713
    .local v56, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v52, v0

    .line 3714
    .local v52, selectedDay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move/from16 v53, v0

    .line 3716
    .local v53, selectedHour:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v4, :cond_71

    .line 3718
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mFirstCell:I

    move/from16 v49, v0

    .line 3719
    .local v49, bottom:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    move/from16 v0, v55

    if-ge v0, v3, :cond_50

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move/from16 v0, v56

    if-le v0, v3, :cond_50

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v3, v4

    move/from16 v0, v56

    if-lt v0, v3, :cond_6d

    :cond_50
    sget-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v3, :cond_71

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-nez v3, :cond_71

    move/from16 v0, v56

    move/from16 v1, v49

    if-ge v0, v1, :cond_71

    move/from16 v0, v56

    int-to-float v3, v0

    move/from16 v0, v49

    int-to-float v4, v0

    sget v5, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_71

    .line 3722
    :cond_6d
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->doExpandAllDayClick()V

    goto :goto_c

    .line 3727
    .end local v49           #bottom:I
    :cond_71
    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/DayView;->setSelectionFromPosition(II)Z

    move-result v54

    .line 3728
    .local v54, validPosition:Z
    if-nez v54, :cond_b4

    .line 3729
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move/from16 v0, v56

    if-ge v0, v3, :cond_c

    .line 3730
    new-instance v9, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v9, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3731
    .local v9, selectedTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-virtual {v9, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 3732
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v3, v9, Landroid/text/format/Time;->hour:I

    .line 3733
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3734
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v5, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x2

    const-wide/16 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v16}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_c

    .line 3740
    .end local v9           #selectedTime:Landroid/text/format/Time;
    :cond_b4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_10f

    const/16 v50, 0x1

    .line 3741
    .local v50, hasSelection:Z
    :goto_bc
    if-nez v50, :cond_c4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    if-eqz v3, :cond_112

    :cond_c4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v52

    if-ne v0, v3, :cond_112

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move/from16 v0, v53

    if-ne v0, v3, :cond_112

    const/16 v51, 0x1

    .line 3744
    .local v51, pressedSelected:Z
    :goto_d6
    if-eqz v51, :cond_115

    .line 3747
    const-wide/16 v22, 0x0

    .line 3748
    .local v22, extraLong:J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_e2

    .line 3749
    const-wide/16 v22, 0x10

    .line 3751
    :cond_e2
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3752
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v12, 0x1

    const-wide/16 v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v21, v0

    const-wide/16 v24, -0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v25}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 3788
    .end local v22           #extraLong:J
    :goto_10a
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->invalidate()V

    goto/16 :goto_c

    .line 3740
    .end local v50           #hasSelection:Z
    .end local v51           #pressedSelected:Z
    :cond_10f
    const/16 v50, 0x0

    goto :goto_bc

    .line 3741
    .restart local v50       #hasSelection:Z
    :cond_112
    const/16 v51, 0x0

    goto :goto_d6

    .line 3755
    .restart local v51       #pressedSelected:Z
    :cond_115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v3, :cond_191

    .line 3757
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v3, :cond_128

    .line 3758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 3761
    :cond_128
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v3, v3, Lcom/android/calendar/Event;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->bottom:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v35, v0

    .line 3767
    .local v35, yLocation:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v3, v3, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_153

    .line 3768
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mFirstCell:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    sub-int/2addr v3, v4

    add-int v35, v35, v3

    .line 3770
    :cond_153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v0, v3, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v0, v3, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v0, v3, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v3, v3, Lcom/android/calendar/Event;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->right:F

    add-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v34, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v36

    move-object/from16 v25, p0

    invoke-virtual/range {v24 .. v37}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_10a

    .line 3776
    .end local v35           #yLocation:I
    :cond_191
    new-instance v40, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3777
    .local v40, startTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 3778
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move-object/from16 v0, v40

    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 3779
    const/4 v3, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3781
    new-instance v41, Landroid/text/format/Time;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3782
    .local v41, endTime:Landroid/text/format/Time;
    move-object/from16 v0, v41

    iget v3, v0, Landroid/text/format/Time;->hour:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v41

    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 3784
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v36, v0

    const-wide/16 v38, 0x20

    const-wide/16 v42, -0x1

    const/16 v44, 0x0

    const-wide/16 v45, 0x2

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v37, p0

    invoke-virtual/range {v36 .. v48}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_10a
.end method

.method private drawAfterScroll(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 2155
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 2156
    .local v0, p:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 2158
    .local v1, r:Landroid/graphics/Rect;
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawAllDayHighlights(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2159
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-eqz v2, :cond_15

    .line 2160
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/android/calendar/DayView;->drawAllDayEvents(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2161
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2164
    :cond_15
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawScrollLine(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2165
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2168
    iget-boolean v2, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-nez v2, :cond_22

    .line 2169
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/DayView;->drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2171
    :cond_22
    return-void
.end method

.method private drawAllDayEvents(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 41
    .parameter "firstDay"
    .parameter "numDays"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2762
    sget v3, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2763
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2764
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 2766
    .local v7, eventTextPaint:Landroid/graphics/Paint;
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v0, v3

    move/from16 v32, v0

    .line 2767
    .local v32, startY:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v3, v3

    add-float v3, v3, v32

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v5, v5

    add-float v33, v3, v5

    .line 2768
    .local v33, stopY:F
    const/16 v34, 0x0

    .line 2769
    .local v34, x:F
    const/16 v26, 0x0

    .line 2772
    .local v26, linesIndex:I
    sget v3, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2773
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    int-to-float v0, v3

    move/from16 v34, v0

    .line 2774
    const/high16 v3, 0x3f80

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v27, v26, 0x1

    .end local v26           #linesIndex:I
    .local v27, linesIndex:I
    sget v5, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v5, v3, v26

    .line 2777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v26, v27, 0x1

    .end local v27           #linesIndex:I
    .restart local v26       #linesIndex:I
    aput v32, v3, v27

    .line 2778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v27, v26, 0x1

    .end local v26           #linesIndex:I
    .restart local v27       #linesIndex:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v26

    .line 2779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v26, v27, 0x1

    .end local v27           #linesIndex:I
    .restart local v26       #linesIndex:I
    aput v32, v3, v27

    .line 2781
    const/16 v18, 0x0

    .local v18, day:I
    :goto_6d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move/from16 v0, v18

    if-gt v0, v3, :cond_a3

    .line 2782
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v34, v0

    .line 2783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v27, v26, 0x1

    .end local v26           #linesIndex:I
    .restart local v27       #linesIndex:I
    aput v34, v3, v26

    .line 2784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v26, v27, 0x1

    .end local v27           #linesIndex:I
    .restart local v26       #linesIndex:I
    aput v32, v3, v27

    .line 2785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v27, v26, 0x1

    .end local v26           #linesIndex:I
    .restart local v27       #linesIndex:I
    aput v34, v3, v26

    .line 2786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v26, v27, 0x1

    .end local v27           #linesIndex:I
    .restart local v26       #linesIndex:I
    aput v33, v3, v27

    .line 2781
    add-int/lit8 v18, v18, 0x1

    goto :goto_6d

    .line 2788
    :cond_a3
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    move-object/from16 v2, p4

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2790
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2792
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v35, v3, v5

    .line 2793
    .local v35, y:I
    add-int v3, p1, p2

    add-int/lit8 v25, v3, -0x1

    .line 2794
    .local v25, lastDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 2795
    .local v22, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 2797
    .local v28, numEvents:I
    const/16 v23, 0x0

    .line 2799
    .local v23, hasMoreEvents:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v0, v3

    move/from16 v19, v0

    .line 2801
    .local v19, drawHeight:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v0, v3

    move/from16 v29, v0

    .line 2803
    .local v29, numRectangles:F
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v17, v3, v5

    .line 2805
    .local v17, allDayEventClip:I
    move/from16 v0, p2

    new-array v3, v0, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    .line 2806
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v5, :cond_141

    sget-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v3, :cond_141

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-nez v3, :cond_141

    .line 2810
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v0, v3

    move/from16 v29, v0

    .line 2812
    move/from16 v0, v17

    int-to-float v3, v0

    sget v5, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v17, v0

    .line 2813
    const/16 v23, 0x1

    .line 2818
    :cond_11d
    :goto_11d
    const/4 v10, 0x0

    .local v10, i:I
    :goto_11e
    move/from16 v0, v28

    if-ge v10, v0, :cond_24a

    .line 2819
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/Event;

    .line 2820
    .local v4, event:Lcom/android/calendar/Event;
    iget v0, v4, Lcom/android/calendar/Event;->startDay:I

    move/from16 v30, v0

    .line 2821
    .local v30, startDay:I
    iget v0, v4, Lcom/android/calendar/Event;->endDay:I

    move/from16 v20, v0

    .line 2822
    .local v20, endDay:I
    move/from16 v0, v30

    move/from16 v1, v25

    if-gt v0, v1, :cond_13e

    move/from16 v0, v20

    move/from16 v1, p1

    if-ge v0, v1, :cond_153

    .line 2818
    :cond_13e
    :goto_13e
    add-int/lit8 v10, v10, 0x1

    goto :goto_11e

    .line 2814
    .end local v4           #event:Lcom/android/calendar/Event;
    .end local v10           #i:I
    .end local v20           #endDay:I
    .end local v30           #startDay:I
    :cond_141
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v3, :cond_11d

    .line 2816
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v17, v3, v5

    goto :goto_11d

    .line 2825
    .restart local v4       #event:Lcom/android/calendar/Event;
    .restart local v10       #i:I
    .restart local v20       #endDay:I
    .restart local v30       #startDay:I
    :cond_153
    move/from16 v0, v30

    move/from16 v1, p1

    if-ge v0, v1, :cond_15b

    .line 2826
    move/from16 v30, p1

    .line 2828
    :cond_15b
    move/from16 v0, v20

    move/from16 v1, v25

    if-le v0, v1, :cond_163

    .line 2829
    move/from16 v20, v25

    .line 2831
    :cond_163
    sub-int v31, v30, p1

    .line 2832
    .local v31, startIndex:I
    sub-int v21, v20, p1

    .line 2833
    .local v21, endIndex:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v5, :cond_1d5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    int-to-float v0, v3

    move/from16 v24, v0

    .line 2837
    .local v24, height:F
    :goto_178
    sget v3, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v3, v3

    cmpl-float v3, v24, v3

    if-lez v3, :cond_184

    .line 2838
    sget v3, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v0, v3

    move/from16 v24, v0

    .line 2843
    :cond_184
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v4, Lcom/android/calendar/Event;->left:F

    .line 2844
    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iput v3, v4, Lcom/android/calendar/Event;->right:F

    .line 2845
    move/from16 v0, v35

    int-to-float v3, v0

    invoke-virtual {v4}, Lcom/android/calendar/Event;->getColumn()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v24

    add-float/2addr v3, v5

    iput v3, v4, Lcom/android/calendar/Event;->top:F

    .line 2846
    iget v3, v4, Lcom/android/calendar/Event;->top:F

    add-float v3, v3, v24

    sget v5, Lcom/android/calendar/DayView;->ALL_DAY_EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    iput v3, v4, Lcom/android/calendar/Event;->bottom:F

    .line 2847
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v3, v5, :cond_1f7

    .line 2851
    iget v3, v4, Lcom/android/calendar/Event;->top:F

    move/from16 v0, v17

    int-to-float v5, v0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1d8

    .line 2852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/android/calendar/DayView;->incrementSkipCount([III)V

    goto/16 :goto_13e

    .line 2833
    .end local v24           #height:F
    :cond_1d5
    div-float v24, v19, v29

    goto :goto_178

    .line 2854
    .restart local v24       #height:F
    :cond_1d8
    iget v3, v4, Lcom/android/calendar/Event;->bottom:F

    move/from16 v0, v17

    int-to-float v5, v0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1f7

    .line 2855
    if-eqz v23, :cond_1f2

    .line 2856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/android/calendar/DayView;->incrementSkipCount([III)V

    goto/16 :goto_13e

    .line 2859
    :cond_1f2
    move/from16 v0, v17

    int-to-float v3, v0

    iput v3, v4, Lcom/android/calendar/Event;->bottom:F

    .line 2862
    :cond_1f7
    iget v3, v4, Lcom/android/calendar/Event;->top:F

    float-to-int v8, v3

    iget v3, v4, Lcom/android/calendar/Event;->bottom:F

    float-to-int v9, v3

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/calendar/DayView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;II)Landroid/graphics/Rect;

    move-result-object v13

    .line 2864
    .local v13, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/calendar/DayView;->setupAllDayTextRect(Landroid/graphics/Rect;)V

    .line 2865
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    move-object/from16 v8, p0

    move-object v11, v4

    move-object v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/DayView;->getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    move-result-object v12

    .line 2866
    .local v12, layout:Landroid/text/StaticLayout;
    iget v15, v13, Landroid/graphics/Rect;->top:I

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v11, p0

    move-object/from16 v14, p3

    invoke-direct/range {v11 .. v16}, Lcom/android/calendar/DayView;->drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;II)V

    .line 2869
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_13e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    if-eqz v3, :cond_13e

    .line 2870
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v30

    if-gt v0, v3, :cond_13e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v20

    if-lt v0, v3, :cond_13e

    .line 2871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13e

    .line 2875
    .end local v4           #event:Lcom/android/calendar/Event;
    .end local v12           #layout:Landroid/text/StaticLayout;
    .end local v13           #r:Landroid/graphics/Rect;
    .end local v20           #endDay:I
    .end local v21           #endIndex:I
    .end local v24           #height:F
    .end local v30           #startDay:I
    .end local v31           #startIndex:I
    :cond_24a
    sget v3, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    if-eqz v3, :cond_282

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    if-eqz v3, :cond_282

    .line 2877
    sget v3, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    shl-int/lit8 v3, v3, 0x18

    sget v5, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    and-int/2addr v3, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2878
    const/4 v10, 0x0

    :goto_261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    array-length v3, v3

    if-ge v10, v3, :cond_282

    .line 2879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    aget v3, v3, v10

    if-lez v3, :cond_27f

    .line 2880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    aget v3, v3, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v3, v10, v2}, Lcom/android/calendar/DayView;->drawMoreAlldayEvents(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 2878
    :cond_27f
    add-int/lit8 v10, v10, 0x1

    goto :goto_261

    .line 2885
    :cond_282
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_294

    .line 2888
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->computeAllDayNeighbors()V

    .line 2892
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6, v8}, Lcom/android/calendar/DayView;->saveSelectionPosition(FFFF)V

    .line 2894
    :cond_294
    return-void
.end method

.method private drawAllDayHighlights(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 10
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    .line 2210
    sget v3, Lcom/android/calendar/DayView;->mFutureBgColor:I

    if-eqz v3, :cond_64

    .line 2212
    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 2213
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2214
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 2215
    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2216
    sget v3, Lcom/android/calendar/DayView;->mBgColor:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2217
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2218
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2220
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 2221
    iget v3, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2222
    iput v5, p1, Landroid/graphics/Rect;->left:I

    .line 2223
    iget v3, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2224
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2226
    const/4 v1, -0x1

    .line 2228
    .local v1, startIndex:I
    iget v3, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v3, v4

    .line 2229
    .local v2, todayIndex:I
    if-gez v2, :cond_a9

    .line 2231
    const/4 v1, 0x0

    .line 2237
    :cond_3b
    :goto_3b
    if-ltz v1, :cond_64

    .line 2239
    iput v5, p1, Landroid/graphics/Rect;->top:I

    .line 2240
    iget v3, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2241
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 2242
    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 2243
    sget v3, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2244
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2245
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2249
    .end local v1           #startIndex:I
    .end local v2           #todayIndex:I
    :cond_64
    iget-boolean v3, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v3, :cond_a8

    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_a8

    .line 2251
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 2252
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 2253
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v0, v3, v4

    .line 2254
    .local v0, daynum:I
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 2255
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 2256
    sget v3, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2257
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v3, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2259
    .end local v0           #daynum:I
    :cond_a8
    return-void

    .line 2232
    .restart local v1       #startIndex:I
    .restart local v2       #todayIndex:I
    :cond_a9
    const/4 v3, 0x1

    if-lt v2, v3, :cond_3b

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v3, v4, :cond_3b

    .line 2234
    add-int/lit8 v1, v2, 0x1

    goto :goto_3b
.end method

.method private drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 8
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/16 v4, 0xc

    .line 2320
    sget v2, Lcom/android/calendar/DayView;->mCalendarAmPmLabel:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2321
    sget v2, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2322
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2323
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2324
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2325
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    .line 2326
    .local v0, text:Ljava/lang/String;
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lt v2, v4, :cond_22

    .line 2327
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 2329
    :cond_22
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 2330
    .local v1, y:I
    sget v2, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2332
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-ge v2, v4, :cond_5f

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v2, v3

    if-le v2, v4, :cond_5f

    .line 2334
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 2335
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    rsub-int/lit8 v3, v3, 0xc

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 2337
    sget v2, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2339
    :cond_5f
    return-void
.end method

.method private drawBgColors(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 10
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2552
    iget v2, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 2554
    .local v1, todayIndex:I
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2555
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2556
    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 2557
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2558
    sget v2, Lcom/android/calendar/DayView;->mBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2559
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2560
    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2561
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2564
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v2, v5, :cond_6f

    if-nez v1, :cond_6f

    .line 2566
    iget-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 2568
    .local v0, lineY:I
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_6b

    .line 2569
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2570
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2571
    iget v2, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2572
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2573
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2574
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2575
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2609
    .end local v0           #lineY:I
    :cond_6b
    :goto_6b
    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2610
    return-void

    .line 2577
    :cond_6f
    if-ltz v1, :cond_e7

    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v1, v2, :cond_e7

    .line 2579
    iget-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x1

    .line 2581
    .restart local v0       #lineY:I
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_b8

    .line 2582
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2583
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2584
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2585
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2586
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2587
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2588
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2592
    :cond_b8
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v3, :cond_6b

    .line 2593
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2594
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2595
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2596
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2597
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2598
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6b

    .line 2600
    .end local v0           #lineY:I
    :cond_e7
    if-gez v1, :cond_6b

    .line 2602
    invoke-direct {p0, v4}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2603
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2604
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2605
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2606
    sget v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2607
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_6b
.end method

.method private drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 8
    .parameter "r"
    .parameter "day"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2343
    invoke-direct {p0, p2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2344
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2346
    sget v0, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_TOP_OFFSET:I

    sub-int v0, p3, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2347
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2349
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2350
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2351
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    if-eqz v0, :cond_48

    .line 2352
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2353
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2354
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeAnimateLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2356
    :cond_48
    return-void
.end method

.method private drawDayHeader(Ljava/lang/String;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2456
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstVisibleDate:I

    add-int/2addr v0, p2

    .line 2458
    iget v1, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    if-le v0, v1, :cond_b

    .line 2459
    iget v1, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    sub-int/2addr v0, v1

    .line 2461
    :cond_b
    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2463
    iget v1, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int/2addr v1, v2

    .line 2465
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2466
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-le v0, v3, :cond_6c

    .line 2467
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    .line 2470
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:I

    sub-int v4, v0, v4

    .line 2471
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2472
    sget v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2474
    if-ne v1, p2, :cond_69

    iget-object v0, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    :goto_39
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2475
    int-to-float v0, v4

    invoke-virtual {p4, v2, v0, v3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2478
    int-to-float v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 2479
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2480
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2481
    int-to-float v0, v0

    invoke-virtual {p4, p1, v0, v3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2499
    :goto_68
    return-void

    .line 2474
    :cond_69
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_39

    .line 2483
    :cond_6c
    sget v0, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    .line 2484
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2488
    invoke-direct {p0, p2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:I

    add-int/2addr v0, v4

    .line 2489
    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2490
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2491
    int-to-float v4, v0

    invoke-virtual {p4, p1, v4, v3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2494
    int-to-float v0, v0

    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v4, v0

    .line 2495
    sget v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2496
    if-ne v1, p2, :cond_a8

    iget-object v0, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    :goto_a0
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2497
    int-to-float v0, v4

    invoke-virtual {p4, v2, v0, v3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_68

    .line 2496
    :cond_a8
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_a0
.end method

.method private drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 15
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v10, 0x1

    .line 2275
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v0, v10, :cond_a

    sget v0, Lcom/android/calendar/DayView;->ONE_DAY_HEADER_HEIGHT:I

    if-nez v0, :cond_a

    .line 2317
    :goto_9
    return-void

    .line 2279
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2280
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2281
    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 2284
    .local v3, cell:I
    iget v0, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    iget v1, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    if-ge v0, v1, :cond_4b

    .line 2285
    iget-object v8, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    .line 2290
    .local v8, dayNames:[Ljava/lang/String;
    :goto_1e
    invoke-virtual {p3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2291
    const/4 v2, 0x0

    .local v2, day:I
    :goto_22
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v0, :cond_6b

    .line 2292
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstVisibleDayOfWeek:I

    add-int v9, v2, v0

    .line 2293
    .local v9, dayOfWeek:I
    const/16 v0, 0xe

    if-lt v9, v0, :cond_30

    .line 2294
    add-int/lit8 v9, v9, -0xe

    .line 2297
    :cond_30
    sget v6, Lcom/android/calendar/DayView;->mCalendarDateBannerTextColor:I

    .line 2298
    .local v6, color:I
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v0, v10, :cond_53

    .line 2299
    const/4 v0, 0x6

    if-ne v9, v0, :cond_4e

    .line 2300
    sget v6, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    .line 2313
    :cond_3b
    :goto_3b
    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2314
    aget-object v1, v8, v9

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/DayView;->drawDayHeader(Ljava/lang/String;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2291
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 2287
    .end local v2           #day:I
    .end local v6           #color:I
    .end local v8           #dayNames:[Ljava/lang/String;
    .end local v9           #dayOfWeek:I
    :cond_4b
    iget-object v8, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    .restart local v8       #dayNames:[Ljava/lang/String;
    goto :goto_1e

    .line 2301
    .restart local v2       #day:I
    .restart local v6       #color:I
    .restart local v9       #dayOfWeek:I
    :cond_4e
    if-nez v9, :cond_3b

    .line 2302
    sget v6, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    goto :goto_3b

    .line 2305
    :cond_53
    rem-int/lit8 v7, v2, 0x7

    .line 2306
    .local v7, column:I
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    invoke-static {v7, v0}, Lcom/android/calendar/Utils;->isSaturday(II)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2307
    sget v6, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    goto :goto_3b

    .line 2308
    :cond_60
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    invoke-static {v7, v0}, Lcom/android/calendar/Utils;->isSunday(II)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2309
    sget v6, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    goto :goto_3b

    .line 2316
    .end local v6           #color:I
    .end local v7           #column:I
    .end local v9           #dayOfWeek:I
    :cond_6b
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_9
.end method

.method private drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;II)Landroid/graphics/Rect;
    .registers 16
    .parameter "event"
    .parameter "canvas"
    .parameter "p"
    .parameter "eventTextPaint"
    .parameter "visibleTop"
    .parameter "visibleBot"

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x4000

    .line 3331
    iget-object v4, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 3332
    .local v4, r:Landroid/graphics/Rect;
    iget v5, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v5, v6

    invoke-static {v5, p5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3333
    iget v5, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v5, v6

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3334
    iget v5, p1, Lcom/android/calendar/Event;->left:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3335
    iget v5, p1, Lcom/android/calendar/Event;->right:F

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3337
    iget v1, p1, Lcom/android/calendar/Event;->color:I

    .line 3338
    .local v1, color:I
    iget v5, p1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    packed-switch v5, :pswitch_data_d6

    .line 3348
    :goto_31
    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3352
    :goto_36
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3354
    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 3355
    .local v2, floorHalfStroke:I
    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 3356
    .local v0, ceilHalfStroke:I
    iget v5, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    invoke-static {v5, p5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3357
    iget v5, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3359
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3360
    iget v5, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3361
    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v5, v5

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3362
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3363
    invoke-virtual {p2, v4, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3365
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3368
    iget-object v5, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v5, p1, :cond_9d

    .line 3369
    const/4 v3, 0x0

    .line 3370
    .local v3, paintIt:Z
    const/4 v1, 0x0

    .line 3371
    iget v5, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-ne v5, v8, :cond_cb

    .line 3373
    iput-object p1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3374
    sget v1, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 3375
    const/4 v3, 0x1

    .line 3383
    :cond_92
    :goto_92
    if-eqz v3, :cond_9a

    .line 3384
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3385
    invoke-virtual {p2, v4, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3388
    :cond_9a
    invoke-virtual {p3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3408
    .end local v3           #paintIt:Z
    :cond_9d
    iget v5, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3409
    iget v5, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3410
    iget v5, p1, Lcom/android/calendar/Event;->left:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3411
    iget v5, p1, Lcom/android/calendar/Event;->right:F

    float-to-int v5, v5

    sget v6, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3412
    return-object v4

    .line 3340
    .end local v0           #ceilHalfStroke:I
    .end local v2           #floorHalfStroke:I
    :pswitch_be
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_36

    .line 3343
    :pswitch_c5
    invoke-static {v1}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v1

    goto/16 :goto_31

    .line 3376
    .restart local v0       #ceilHalfStroke:I
    .restart local v2       #floorHalfStroke:I
    .restart local v3       #paintIt:Z
    :cond_cb
    iget v5, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_92

    .line 3378
    iput-object p1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3379
    sget v1, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 3380
    const/4 v3, 0x1

    goto :goto_92

    .line 3338
    :pswitch_data_d6
    .packed-switch 0x2
        :pswitch_c5
        :pswitch_be
    .end packed-switch
.end method

.method private drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;II)V
    .registers 15
    .parameter "eventLayout"
    .parameter "rect"
    .parameter "canvas"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x0

    .line 3440
    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->left:I

    sub-int v5, v6, v7

    .line 3441
    .local v5, width:I
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v6, v7

    .line 3444
    .local v0, height:I
    if-eqz p1, :cond_13

    sget v6, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    if-ge v5, v6, :cond_14

    .line 3478
    :cond_13
    :goto_13
    return-void

    .line 3448
    :cond_14
    const/4 v4, 0x0

    .line 3449
    .local v4, totalLineHeight:I
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    .line 3450
    .local v3, lineCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    if-ge v1, v3, :cond_26

    .line 3451
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    .line 3452
    .local v2, lineBottom:I
    if-gt v2, v0, :cond_26

    .line 3453
    move v4, v2

    .line 3450
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 3459
    .end local v2           #lineBottom:I
    :cond_26
    if-eqz v4, :cond_13

    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-gt v6, p5, :cond_13

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    if-lt v6, p4, :cond_13

    .line 3464
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 3465
    iget v6, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p3, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3466
    iput v8, p2, Landroid/graphics/Rect;->left:I

    .line 3467
    iput v5, p2, Landroid/graphics/Rect;->right:I

    .line 3468
    iput v8, p2, Landroid/graphics/Rect;->top:I

    .line 3469
    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 3475
    invoke-virtual {p3, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3476
    invoke-virtual {p1, p3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3477
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_13
.end method

.method private drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 32
    .parameter "date"
    .parameter "dayIndex"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2989
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 2990
    .local v12, eventTextPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 2991
    .local v4, left:I
    add-int/lit8 v3, p2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    sub-int/2addr v3, v4

    add-int/lit8 v6, v3, 0x1

    .line 2992
    .local v6, cellWidth:I
    sget v21, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 2995
    .local v21, cellHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectionRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    .line 2996
    .local v25, selectionArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v5, v21, 0x1

    mul-int/2addr v3, v5

    add-int v3, v3, p3

    move-object/from16 v0, v25

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2997
    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v21

    move-object/from16 v0, v25

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2998
    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 2999
    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, v25

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 3001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 3002
    .local v22, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 3003
    .local v24, numEvents:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 3005
    .local v2, geometry:Lcom/android/calendar/EventGeometry;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sub-int v14, v3, v5

    .line 3006
    .local v14, viewEndY:I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_67
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_105

    .line 3007
    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    .local v7, event:Lcom/android/calendar/Event;
    move/from16 v3, p1

    move/from16 v5, p3

    .line 3008
    invoke-virtual/range {v2 .. v7}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 3006
    :cond_7d
    :goto_7d
    add-int/lit8 v23, v23, 0x1

    goto :goto_67

    .line 3013
    :cond_80
    iget v3, v7, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_7d

    iget v3, v7, Lcom/android/calendar/Event;->top:F

    int-to-float v5, v14

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_7d

    .line 3017
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_b5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_b5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    if-eqz v3, :cond_b5

    move-object/from16 v0, v25

    invoke-virtual {v2, v7, v0}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 3019
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3022
    :cond_b5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v8 .. v14}, Lcom/android/calendar/DayView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;II)Landroid/graphics/Rect;

    move-result-object v13

    .line 3023
    .local v13, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/calendar/DayView;->setupTextRect(Landroid/graphics/Rect;)V

    .line 3026
    iget v3, v13, Landroid/graphics/Rect;->top:I

    if-gt v3, v14, :cond_7d

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-lt v3, v5, :cond_7d

    .line 3029
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    move-object/from16 v8, p0

    move/from16 v10, v23

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/DayView;->getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    move-result-object v16

    .line 3031
    .local v16, layout:Landroid/text/StaticLayout;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/lit8 v19, v3, 0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v3, v5

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sub-int v20, v3, v5

    move-object/from16 v15, p0

    move-object/from16 v17, v13

    move-object/from16 v18, p4

    invoke-direct/range {v15 .. v20}, Lcom/android/calendar/DayView;->drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;II)V

    goto/16 :goto_7d

    .line 3035
    .end local v7           #event:Lcom/android/calendar/Event;
    .end local v13           #r:Landroid/graphics/Rect;
    .end local v16           #layout:Landroid/text/StaticLayout;
    :cond_105
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_122

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_122

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_122

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_122

    .line 3037
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->computeNeighbors()V

    .line 3039
    :cond_122
    return-void
.end method

.method private drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 19
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2502
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 2504
    .local v7, savedStyle:Landroid/graphics/Paint$Style;
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v13, v13, 0x1

    invoke-direct {p0, v13}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v13

    int-to-float v9, v13

    .line 2505
    .local v9, stopX:F
    const/4 v12, 0x0

    .line 2506
    .local v12, y:F
    sget v13, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v13, v13, 0x1

    int-to-float v3, v13

    .line 2507
    .local v3, deltaY:F
    const/4 v5, 0x0

    .line 2508
    .local v5, linesIndex:I
    const/4 v8, 0x0

    .line 2509
    .local v8, startY:F
    sget v13, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v13, v13, 0x1

    mul-int/lit8 v13, v13, 0x18

    add-int/lit8 v13, v13, 0x1

    int-to-float v10, v13

    .line 2510
    .local v10, stopY:F
    iget v13, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    int-to-float v11, v13

    .line 2513
    .local v11, x:F
    sget v13, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 2514
    const/high16 v13, 0x3f80

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2515
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2516
    const/4 v12, 0x0

    .line 2517
    const/4 v5, 0x0

    .line 2518
    const/4 v4, 0x0

    .local v4, hour:I
    move v6, v5

    .end local v5           #linesIndex:I
    .local v6, linesIndex:I
    :goto_39
    const/16 v13, 0x18

    if-gt v4, v13, :cond_5b

    .line 2519
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    sget v14, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v14, v13, v6

    .line 2520
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    aput v12, v13, v5

    .line 2521
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    aput v9, v13, v6

    .line 2522
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    aput v12, v13, v5

    .line 2523
    add-float/2addr v12, v3

    .line 2518
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 2525
    :cond_5b
    sget v13, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    sget v14, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    if-eq v13, v14, :cond_af

    .line 2526
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v14, v6, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2527
    const/4 v5, 0x0

    .line 2528
    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    sget v13, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 2532
    :goto_73
    const/4 v2, 0x0

    .local v2, day:I
    :goto_74
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-gt v2, v13, :cond_99

    .line 2533
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v13

    int-to-float v11, v13

    .line 2534
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    aput v11, v13, v5

    .line 2535
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    const/4 v14, 0x0

    aput v14, v13, v6

    .line 2536
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    aput v11, v13, v5

    .line 2537
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v5, v6, 0x1

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    aput v10, v13, v6

    .line 2532
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 2539
    :cond_99
    iget-object v13, p0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v14, v5, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2542
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2543
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2544
    return-void

    .end local v2           #day:I
    .end local v5           #linesIndex:I
    .restart local v6       #linesIndex:I
    :cond_af
    move v5, v6

    .end local v6           #linesIndex:I
    .restart local v5       #linesIndex:I
    goto :goto_73
.end method

.method private drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2436
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 2438
    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    add-int/lit8 v3, v3, 0x1

    sget v4, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    add-int v2, v3, v4

    .line 2440
    .local v2, y:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    const/16 v3, 0x18

    if-ge v0, v3, :cond_23

    .line 2441
    iget-object v3, p0, Lcom/android/calendar/DayView;->mHourStrs:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 2442
    .local v1, time:Ljava/lang/String;
    sget v3, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v3, v3

    int-to-float v4, v2

    invoke-virtual {p2, v1, v3, v4, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2443
    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 2440
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2445
    .end local v1           #time:Ljava/lang/String;
    :cond_23
    return-void
.end method

.method private drawScrollLine(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 12
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2191
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v6

    .line 2192
    .local v6, right:I
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    add-int/lit8 v7, v0, -0x1

    .line 2194
    .local v7, y:I
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2195
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2197
    sget v0, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2198
    const/high16 v0, 0x3f80

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2199
    sget v1, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    int-to-float v2, v7

    int-to-float v3, v6

    int-to-float v4, v7

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2200
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2201
    return-void
.end method

.method private drawSelectedRect(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 20
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2393
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v3, :cond_104

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v3, :cond_104

    .line 2394
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v9, v3, v4

    .line 2395
    .local v9, daynum:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2396
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2397
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2398
    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2400
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/calendar/DayView;->saveSelectionPosition(FFFF)V

    .line 2403
    sget v3, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2404
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2405
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2406
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2407
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2411
    sget v3, Lcom/android/calendar/DayView;->mNewEventHintColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2412
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_105

    .line 2413
    sget v3, Lcom/android/calendar/DayView;->NEW_EVENT_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2414
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v15, v3, v4

    .line 2415
    .local v15, width:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v15, 0x2

    add-int v12, v3, v4

    .line 2416
    .local v12, midX:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int v13, v3, v4

    .line 2417
    .local v13, midY:I
    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-static {v3, v15}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget v4, Lcom/android/calendar/DayView;->NEW_EVENT_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v11, v3, v4

    .line 2418
    .local v11, length:I
    sget v3, Lcom/android/calendar/DayView;->NEW_EVENT_MAX_LENGTH:I

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 2419
    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    sub-int/2addr v3, v11

    div-int/lit8 v14, v3, 0x2

    .line 2420
    .local v14, verticalPadding:I
    sub-int v3, v15, v11

    div-int/lit8 v10, v3, 0x2

    .line 2421
    .local v10, horizontalPadding:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v10

    int-to-float v4, v3

    int-to-float v5, v13

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v10

    int-to-float v6, v3

    int-to-float v7, v13

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2423
    int-to-float v4, v12

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v14

    int-to-float v5, v3

    int-to-float v6, v12

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v14

    int-to-float v7, v3

    move-object/from16 v3, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2433
    .end local v9           #daynum:I
    .end local v10           #horizontalPadding:I
    .end local v11           #length:I
    .end local v12           #midX:I
    .end local v13           #midY:I
    .end local v14           #verticalPadding:I
    .end local v15           #width:I
    :cond_104
    :goto_104
    return-void

    .line 2425
    .restart local v9       #daynum:I
    :cond_105
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2426
    sget v3, Lcom/android/calendar/DayView;->NEW_EVENT_HINT_FONT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2427
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2428
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mNewEventHintString:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    sget v6, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_104
.end method

.method private drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3421
    iget-object v0, p0, Lcom/android/calendar/DayView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3422
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3424
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3425
    if-gtz p2, :cond_1d

    .line 3426
    const-string v0, ""

    .line 3433
    :cond_14
    :goto_14
    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3428
    :cond_1d
    if-le v1, p2, :cond_14

    .line 3429
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method private drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 6
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2177
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 2178
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v1, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v0, v1, :cond_19

    .line 2180
    sget-boolean v0, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    if-eqz v0, :cond_1a

    .line 2181
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2182
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2188
    :cond_19
    :goto_19
    return-void

    .line 2184
    :cond_1a
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2185
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_19
.end method

.method private findSelectedEvent(II)V
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 4407
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4408
    iget v4, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    .line 4409
    iget-object v7, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 4410
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 4411
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    .line 4412
    const/4 v3, 0x0

    .line 4413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4415
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4416
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v0, :cond_b0

    .line 4418
    const v3, 0x461c4000

    .line 4419
    const/4 v2, 0x0

    .line 4420
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v6, v0

    .line 4421
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v1, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v7, v0, v1

    .line 4422
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    .line 4423
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v4, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v1, v4, :cond_177

    .line 4425
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 4427
    :goto_38
    iget-object v8, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    .line 4428
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4429
    const/4 v0, 0x0

    move v5, v0

    :goto_40
    if-ge v5, v9, :cond_174

    .line 4430
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 4431
    invoke-virtual {v0}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v4

    if-eqz v4, :cond_170

    sget-boolean v4, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v4, :cond_60

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v4

    if-lt v4, v1, :cond_60

    move-object v0, v2

    move v2, v3

    .line 4429
    :goto_5a
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    move-object v2, v0

    goto :goto_40

    .line 4437
    :cond_60
    iget v4, v0, Lcom/android/calendar/Event;->startDay:I

    iget v10, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-gt v4, v10, :cond_170

    iget v4, v0, Lcom/android/calendar/Event;->endDay:I

    iget v10, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-lt v4, v10, :cond_170

    .line 4438
    sget-boolean v4, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v4, :cond_9a

    iget v4, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v4, v4

    .line 4440
    :goto_73
    div-float v4, v6, v4

    .line 4441
    sget v10, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v10, v10

    cmpl-float v10, v4, v10

    if-lez v10, :cond_7f

    .line 4442
    sget v4, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v4, v4

    .line 4444
    :cond_7f
    int-to-float v10, v7

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    add-float/2addr v10, v11

    .line 4445
    add-float/2addr v4, v10

    .line 4446
    int-to-float v11, p2

    cmpg-float v11, v10, v11

    if-gez v11, :cond_9e

    int-to-float v11, p2

    cmpl-float v11, v4, v11

    if-lez v11, :cond_9e

    .line 4449
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4466
    :goto_97
    iput-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4538
    :cond_99
    :goto_99
    return-void

    .line 4438
    :cond_9a
    iget v4, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    int-to-float v4, v4

    goto :goto_73

    .line 4454
    :cond_9e
    int-to-float v11, p2

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_ac

    .line 4455
    int-to-float v4, p2

    sub-float v4, v10, v4

    .line 4459
    :goto_a6
    cmpg-float v10, v4, v3

    if-gez v10, :cond_170

    move v2, v4

    .line 4461
    goto :goto_5a

    .line 4457
    :cond_ac
    int-to-float v10, p2

    sub-float v4, v10, v4

    goto :goto_a6

    .line 4471
    :cond_b0
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int/2addr v0, v5

    add-int v9, p2, v0

    .line 4474
    iget-object v10, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 4475
    add-int/lit8 v0, p1, -0xa

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 4476
    add-int/lit8 v0, p1, 0xa

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 4477
    add-int/lit8 v0, v9, -0xa

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 4478
    add-int/lit8 v0, v9, 0xa

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 4480
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 4482
    const/4 v5, 0x0

    move v6, v5

    :goto_cd
    if-ge v6, v8, :cond_eb

    .line 4483
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Event;

    .line 4485
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v11

    if-nez v11, :cond_df

    .line 4482
    :cond_db
    :goto_db
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_cd

    .line 4491
    :cond_df
    invoke-virtual {v0, v5, v10}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_db

    .line 4492
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_db

    .line 4498
    :cond_eb
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_99

    .line 4499
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4500
    const/4 v4, 0x0

    .line 4501
    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v2, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v1, v2

    int-to-float v3, v1

    .line 4502
    const/4 v1, 0x0

    move v5, v1

    :goto_102
    if-ge v5, v6, :cond_11f

    .line 4503
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 4504
    int-to-float v2, p1

    int-to-float v7, v9

    invoke-virtual {v0, v2, v7, v1}, Lcom/android/calendar/EventGeometry;->pointToEvent(FFLcom/android/calendar/Event;)F

    move-result v2

    .line 4505
    cmpg-float v7, v2, v3

    if-gez v7, :cond_16d

    move v12, v2

    move-object v2, v1

    move v1, v12

    .line 4502
    :goto_119
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    move v3, v1

    goto :goto_102

    .line 4510
    :cond_11f
    iput-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4516
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v1, v0, Lcom/android/calendar/Event;->startDay:I

    .line 4517
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v0, Lcom/android/calendar/Event;->endDay:I

    .line 4518
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ge v0, v1, :cond_153

    .line 4519
    iput v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4524
    :cond_12f
    :goto_12f
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v3, v0, 0x3c

    .line 4526
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    iget-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->endTime:I

    if-ge v0, v4, :cond_15a

    .line 4527
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3c

    .line 4532
    :goto_147
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-ge v4, v3, :cond_161

    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ne v4, v1, :cond_161

    .line 4533
    iput v3, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    goto/16 :goto_99

    .line 4520
    :cond_153
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-le v0, v2, :cond_12f

    .line 4521
    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    goto :goto_12f

    .line 4529
    :cond_15a
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    div-int/lit8 v0, v0, 0x3c

    goto :goto_147

    .line 4534
    :cond_161
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v1, v0, :cond_99

    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ne v1, v2, :cond_99

    .line 4535
    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    goto/16 :goto_99

    :cond_16d
    move v1, v3

    move-object v2, v4

    goto :goto_119

    :cond_170
    move-object v0, v2

    move v2, v3

    goto/16 :goto_5a

    :cond_174
    move-object v0, v2

    goto/16 :goto_97

    :cond_177
    move v1, v0

    goto/16 :goto_38
.end method

.method private getAllDayAnimator()Landroid/animation/ObjectAnimator;
    .registers 6

    .prologue
    .line 3657
    iget v0, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int/2addr v0, v1

    .line 3659
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3662
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v0, :cond_3a

    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3663
    :goto_19
    sget-boolean v2, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v2, :cond_3d

    .line 3667
    :goto_1d
    const-string v2, "animateDayHeight"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3669
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3671
    new-instance v1, Lcom/android/calendar/DayView$5;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$5;-><init>(Lcom/android/calendar/DayView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3683
    return-object v0

    .line 3662
    :cond_3a
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    goto :goto_19

    .line 3663
    :cond_3d
    sget v1, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1d
.end method

.method private getAllDayEventAnimator()Landroid/animation/ObjectAnimator;
    .registers 6

    .prologue
    .line 3633
    iget v0, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int/2addr v0, v1

    .line 3635
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3638
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    div-int/2addr v0, v1

    .line 3639
    iget v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 3640
    sget-boolean v2, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v2, :cond_20

    .line 3643
    :goto_1c
    if-ne v1, v0, :cond_24

    .line 3644
    const/4 v0, 0x0

    .line 3651
    :goto_1f
    return-object v0

    .line 3640
    :cond_20
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v0, v0

    goto :goto_1c

    .line 3648
    :cond_24
    const-string v2, "animateDayEventHeight"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v0, v3, v1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3650
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1f
.end method

.method private getCurrentSelectionPosition()Landroid/graphics/Rect;
    .registers 5

    .prologue
    .line 2665
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2666
    .local v0, box:Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2667
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2668
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 2669
    .local v1, daynum:I
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2670
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2671
    return-object v0
.end method

.method private static getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 4291
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4296
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/calendar/Event;->id:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/String;

    const-string v4, "calendar_id"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4302
    if-nez v1, :cond_20

    move v0, v10

    .line 4340
    :goto_1f
    return v0

    .line 4306
    :cond_20
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2b

    .line 4307
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 4308
    goto :goto_1f

    .line 4311
    :cond_2b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4312
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4313
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4315
    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 4316
    const-string v1, "_id=%d"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4317
    sget-object v6, Lcom/android/calendar/DayView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v4, v0

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4320
    if-eqz v1, :cond_7c

    .line 4321
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4322
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 4323
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4324
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4327
    :goto_5e
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_64

    move v0, v10

    .line 4328
    goto :goto_1f

    .line 4331
    :cond_64
    iget-boolean v0, p1, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v0, :cond_6a

    move v0, v11

    .line 4332
    goto :goto_1f

    .line 4335
    :cond_6a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7a

    move v0, v11

    .line 4337
    goto :goto_1f

    :cond_7a
    move v0, v12

    .line 4340
    goto :goto_1f

    :cond_7c
    move v0, v10

    goto :goto_5e
.end method

.method private getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;
    .registers 19
    .parameter "layouts"
    .parameter "i"
    .parameter "event"
    .parameter "paint"
    .parameter "r"

    .prologue
    .line 2713
    if-ltz p2, :cond_5

    array-length v3, p1

    if-lt p2, v3, :cond_7

    .line 2714
    :cond_5
    const/4 v1, 0x0

    .line 2757
    :cond_6
    :goto_6
    return-object v1

    .line 2717
    :cond_7
    aget-object v1, p1, p2

    .line 2721
    .local v1, layout:Landroid/text/StaticLayout;
    if-eqz v1, :cond_15

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 2722
    :cond_15
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2723
    .local v2, bob:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_45

    .line 2725
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f3

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/DayView;->drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2726
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2727
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 2729
    :cond_45
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v3, :cond_60

    .line 2730
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    rsub-int v4, v4, 0x1f4

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/DayView;->drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2734
    :cond_60
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    packed-switch v3, :pswitch_data_ac

    .line 2746
    sget v3, Lcom/android/calendar/DayView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2751
    :goto_6e
    new-instance v1, Landroid/text/StaticLayout;

    .end local v1           #layout:Landroid/text/StaticLayout;
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    new-instance v5, Landroid/text/TextPaint;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-direct/range {v1 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 2754
    .restart local v1       #layout:Landroid/text/StaticLayout;
    aput-object v1, p1, p2

    goto/16 :goto_6

    .line 2736
    :pswitch_92
    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/calendar/Event;->color:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_6e

    .line 2739
    :pswitch_9c
    sget v3, Lcom/android/calendar/DayView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2740
    const/16 v3, 0xc0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_6e

    .line 2734
    nop

    :pswitch_data_ac
    .packed-switch 0x2
        :pswitch_9c
        :pswitch_92
    .end packed-switch
.end method

.method private incrementSkipCount([III)V
    .registers 6
    .parameter "counts"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 2898
    if-eqz p1, :cond_7

    if-ltz p2, :cond_7

    array-length v1, p1

    if-le p3, v1, :cond_8

    .line 2904
    :cond_7
    return-void

    .line 2901
    :cond_8
    move v0, p2

    .local v0, i:I
    :goto_9
    if-gt v0, p3, :cond_7

    .line 2902
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 2901
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private init(Landroid/content/Context;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x0

    const/16 v6, 0xe

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 741
    invoke-virtual {p0, v1}, Lcom/android/calendar/DayView;->setFocusable(Z)V

    .line 745
    invoke-virtual {p0, v1}, Lcom/android/calendar/DayView;->setFocusableInTouchMode(Z)V

    .line 746
    invoke-virtual {p0, v1}, Lcom/android/calendar/DayView;->setClickable(Z)V

    .line 747
    invoke-virtual {p0, p0}, Lcom/android/calendar/DayView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 749
    invoke-static {p1}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 751
    new-instance v0, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    .line 752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 753
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 754
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    .line 756
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    .line 757
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    .line 758
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarDateBannerTextColor:I

    .line 759
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mFutureBgColorRes:I

    .line 760
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mBgColor:I

    .line 761
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarAmPmLabel:I

    .line 762
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    .line 763
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    .line 765
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    .line 767
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarHourLabelColor:I

    .line 768
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const/high16 v2, 0x7f08

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 769
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mEventTextColor:I

    .line 770
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    .line 772
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 773
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 774
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 776
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 777
    iget-object v2, p0, Lcom/android/calendar/DayView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 778
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 779
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 780
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 782
    iget-object v2, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 783
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 787
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    .line 790
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move v0, v1

    .line 792
    :goto_fd
    const/4 v3, 0x7

    if-gt v0, v3, :cond_14d

    .line 793
    add-int/lit8 v3, v0, -0x1

    .line 795
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    const/16 v5, 0x14

    invoke-static {v0, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 797
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x7

    iget-object v6, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    aget-object v6, v6, v3

    aput-object v6, v4, v5

    .line 799
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    const/16 v5, 0x1e

    invoke-static {v0, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 803
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_140

    .line 804
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    const/16 v5, 0x32

    invoke-static {v0, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 807
    :cond_140
    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x7

    iget-object v6, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    aget-object v3, v6, v3

    aput-object v3, v4, v5

    .line 792
    add-int/lit8 v0, v0, 0x1

    goto :goto_fd

    .line 812
    :cond_14d
    sget v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 813
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 814
    new-array v0, v8, [Ljava/lang/String;

    const-string v3, " 28"

    aput-object v3, v0, v7

    const-string v3, " 30"

    aput-object v3, v0, v1

    .line 815
    invoke-direct {p0, v7, v0, v2}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    .line 816
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 817
    iget v0, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    iget-object v3, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    invoke-direct {p0, v7, v3, v2}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    .line 819
    sget v0, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 820
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 821
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->handleOnResume()V

    .line 823
    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    .line 824
    invoke-static {v1}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 825
    new-array v0, v8, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    aput-object v3, v0, v7

    iget-object v3, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 826
    sget v3, Lcom/android/calendar/DayView;->AMPM_TEXT_SIZE:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 827
    sget v3, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    iget v4, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    invoke-direct {p0, v4, v0, v2}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    sget v2, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 829
    sget v0, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 832
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 833
    const v2, 0x7f040010

    invoke-virtual {v0, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    .line 834
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    .line 838
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 839
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 840
    const v2, 0x103000b

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 841
    new-array v1, v1, [I

    const v2, 0x1010054

    aput v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 843
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 844
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 847
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    invoke-virtual {p0, p0}, Lcom/android/calendar/DayView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 851
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 852
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 853
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 855
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    .line 856
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    .line 862
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x19

    .line 864
    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLines:[F

    .line 865
    return-void
.end method

.method private initAccessibilityVariables()V
    .registers 3

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 897
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_19
    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    .line 898
    invoke-direct {p0}, Lcom/android/calendar/DayView;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    .line 899
    return-void

    .line 897
    :cond_22
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private initFirstHour()V
    .registers 3

    .prologue
    .line 1853
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1854
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-gez v0, :cond_11

    .line 1855
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1859
    :cond_10
    :goto_10
    return-void

    .line 1856
    :cond_11
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v0, v1

    const/16 v1, 0x18

    if-le v0, v1, :cond_10

    .line 1857
    iget v0, p0, Lcom/android/calendar/DayView;->mNumHours:I

    rsub-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    goto :goto_10
.end method

.method private initNextView(I)Z
    .registers 9
    .parameter "deltaX"

    .prologue
    .line 3954
    iget-object v3, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/DayView;

    .line 3955
    .local v2, view:Lcom/android/calendar/DayView;
    iget-object v0, v2, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 3956
    .local v0, date:Landroid/text/format/Time;
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 3958
    if-lez p1, :cond_3e

    .line 3959
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 3960
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 3961
    const/4 v1, 0x0

    .line 3967
    .local v1, switchForward:Z
    :goto_20
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3968
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->initView(Lcom/android/calendar/DayView;)V

    .line 3969
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/calendar/DayView;->layout(IIII)V

    .line 3970
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 3971
    return v1

    .line 3963
    .end local v1           #switchForward:Z
    :cond_3e
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 3964
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 3965
    const/4 v1, 0x1

    .restart local v1       #switchForward:Z
    goto :goto_20
.end method

.method private initView(Lcom/android/calendar/DayView;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 1308
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v0, p1, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1309
    iget-object v0, p1, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1310
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1311
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1312
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1313
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 1314
    invoke-virtual {p1}, Lcom/android/calendar/DayView;->initAllDayHeights()V

    .line 1316
    iput-object v2, p1, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1317
    iput-object v2, p1, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1318
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 1319
    iget-object v0, p1, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3b

    .line 1320
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1328
    :goto_37
    invoke-direct {p1}, Lcom/android/calendar/DayView;->recalc()V

    .line 1329
    return-void

    .line 1322
    :cond_3b
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    goto :goto_37
.end method

.method private isTouchExplorationEnabled()Z
    .registers 2

    .prologue
    .line 1628
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private recalc()V
    .registers 5

    .prologue
    .line 1133
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_a

    .line 1134
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->adjustToBeginningOfWeek(Landroid/text/format/Time;)V

    .line 1137
    :cond_a
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1138
    .local v0, start:J
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 1139
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    .line 1141
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    .line 1142
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstVisibleDate:I

    .line 1143
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstVisibleDayOfWeek:I

    .line 1144
    return-void
.end method

.method private remeasure(II)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1182
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    const/high16 v2, 0x4080

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1183
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    div-int/lit8 v2, p2, 0x6

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1184
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1186
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v0, v0

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    move v0, v1

    .line 1191
    :goto_2a
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v0, v2, :cond_3b

    .line 1192
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    const/16 v3, 0x19

    aput v3, v2, v0

    .line 1193
    iget-object v2, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    aput-boolean v1, v2, v0

    .line 1191
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 1196
    :cond_3b
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    .line 1199
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x18

    sget v3, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    float-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    .line 1200
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v3, Lcom/android/calendar/DayView;->mMinCellHeight:I

    if-ge v0, v3, :cond_56

    .line 1201
    sget v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    sput v0, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 1205
    :cond_56
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    .line 1207
    if-lez v2, :cond_1b3

    .line 1208
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int v0, p2, v0

    sget v3, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int/2addr v0, v3

    .line 1211
    const/4 v3, 0x1

    if-ne v2, v3, :cond_17b

    .line 1212
    sget v0, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 1240
    :cond_68
    :goto_68
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v2, v0

    sget v3, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    .line 1244
    :goto_70
    iput v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    .line 1246
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    .line 1249
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1250
    iget-object v2, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sget v4, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1252
    iget-object v2, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sget v4, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1254
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sget v3, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1255
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1258
    iget v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v0, v2

    iput v0, p0, Lcom/android/calendar/DayView;->mNumHours:I

    .line 1259
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/EventGeometry;->setHourHeight(F)V

    .line 1261
    sget v0, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    const v2, 0x476a6000

    mul-float/2addr v0, v2

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4270

    div-float/2addr v2, v3

    div-float/2addr v0, v2

    float-to-long v2, v0

    .line 1263
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    invoke-static {v0, v2, v3}, Lcom/android/calendar/Event;->computePositions(Ljava/util/ArrayList;J)V

    .line 1266
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 1267
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_120

    .line 1268
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mViewStartY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxViewStartY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_120
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v0, v2, :cond_12d

    .line 1272
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1273
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 1276
    :cond_12d
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_137

    .line 1277
    invoke-direct {p0}, Lcom/android/calendar/DayView;->initFirstHour()V

    .line 1278
    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1285
    :cond_137
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_147

    .line 1286
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1288
    :cond_147
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1290
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    iget v1, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    .line 1292
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v1, :cond_16d

    iget-wide v1, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    iget-object v3, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v3, v3, Lcom/android/calendar/Event;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16d

    .line 1293
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1295
    :cond_16d
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1296
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1297
    return-void

    .line 1213
    :cond_17b
    iget v3, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-gt v2, v3, :cond_18a

    .line 1216
    sget v0, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    mul-int/2addr v0, v2

    .line 1217
    sget v2, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    if-le v0, v2, :cond_68

    .line 1218
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    goto/16 :goto_68

    .line 1223
    :cond_18a
    iget v3, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v3, :cond_198

    .line 1227
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    sget v2, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_68

    .line 1230
    :cond_198
    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1232
    sget-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v3, :cond_1ae

    sget v3, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    if-le v2, v3, :cond_1ae

    .line 1233
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    int-to-float v0, v0

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto/16 :goto_68

    .line 1235
    :cond_1ae
    if-gt v2, v0, :cond_68

    move v0, v2

    goto/16 :goto_68

    .line 1242
    :cond_1b3
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    move v0, v1

    goto/16 :goto_70
.end method

.method private resetSelectedHour()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1839
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1a

    .line 1840
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1841
    iput-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1842
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1843
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1850
    :cond_19
    :goto_19
    return-void

    .line 1844
    :cond_1a
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    if-le v0, v1, :cond_19

    .line 1845
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1846
    iput-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1847
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1848
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    goto :goto_19
.end method

.method private saveSelectionPosition(FFFF)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2658
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2659
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2660
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2661
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2662
    return-void
.end method

.method private sendAccessibilityEventAsNeeded(Z)V
    .registers 16
    .parameter

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1632
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-nez v0, :cond_8

    .line 1699
    :cond_7
    :goto_7
    return-void

    .line 1635
    :cond_8
    iget v0, p0, Lcom/android/calendar/DayView;->mLastSelectionDay:I

    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-eq v0, v1, :cond_b8

    move v1, v2

    .line 1636
    :goto_f
    iget v0, p0, Lcom/android/calendar/DayView;->mLastSelectionHour:I

    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-eq v0, v4, :cond_bb

    move v6, v2

    .line 1637
    :goto_16
    if-nez v1, :cond_20

    if-nez v6, :cond_20

    iget-object v0, p0, Lcom/android/calendar/DayView;->mLastSelectedEvent:Lcom/android/calendar/Event;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eq v0, v4, :cond_7

    .line 1638
    :cond_20
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iput v0, p0, Lcom/android/calendar/DayView;->mLastSelectionDay:I

    .line 1639
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v0, p0, Lcom/android/calendar/DayView;->mLastSelectionHour:I

    .line 1640
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLastSelectedEvent:Lcom/android/calendar/Event;

    .line 1642
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1645
    if-eqz v1, :cond_40

    .line 1646
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v0

    const-string v4, "%A "

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    :cond_40
    if-eqz v6, :cond_53

    .line 1649
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-eqz v0, :cond_be

    const-string v0, "%k"

    :goto_4c
    invoke-virtual {v4, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    :cond_53
    if-nez v1, :cond_57

    if-eqz v6, :cond_5c

    .line 1652
    :cond_57
    const-string v0, ". "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    :cond_5c
    if-eqz p1, :cond_f5

    .line 1656
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    if-nez v0, :cond_6d

    .line 1657
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0096

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    .line 1661
    :cond_6d
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1662
    if-lez v8, :cond_118

    .line 1663
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v0, :cond_c1

    .line 1666
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v2

    :goto_80
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 1667
    if-le v8, v2, :cond_b4

    .line 1669
    sget-object v5, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1670
    sget-object v10, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    iget-object v11, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    new-array v12, v13, [Ljava/lang/Object;

    add-int/lit8 v5, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v2

    invoke-virtual {v10, v11, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1671
    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v5

    .line 1673
    :cond_b4
    invoke-direct {p0, v7, v0}, Lcom/android/calendar/DayView;->appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V

    goto :goto_80

    :cond_b8
    move v1, v3

    .line 1635
    goto/16 :goto_f

    :cond_bb
    move v6, v3

    .line 1636
    goto/16 :goto_16

    .line 1649
    :cond_be
    const-string v0, "%l%p"

    goto :goto_4c

    .line 1676
    :cond_c1
    if-le v8, v2, :cond_f0

    .line 1678
    sget-object v0, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1679
    sget-object v0, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    new-array v5, v13, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1681
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    :cond_f0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-direct {p0, v7, v0}, Lcom/android/calendar/DayView;->appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V

    .line 1690
    :cond_f5
    :goto_f5
    if-nez v1, :cond_fb

    if-nez v6, :cond_fb

    if-eqz p1, :cond_7

    .line 1691
    :cond_fb
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1693
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1694
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1695
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 1696
    invoke-virtual {p0, v0}, Lcom/android/calendar/DayView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_7

    .line 1686
    :cond_118
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCreateNewEventString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f5
.end method

.method private setSelectionFromPosition(II)Z
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4353
    iget v4, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    if-ge p1, v4, :cond_8

    .line 4354
    iget p1, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 4357
    :cond_8
    iget v4, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v5, v5, 0x1

    div-int v1, v4, v5

    .line 4358
    .local v1, day:I
    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-lt v1, v4, :cond_1a

    .line 4359
    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v1, v4, -0x1

    .line 4361
    :cond_1a
    iget v4, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    add-int/2addr v1, v4

    .line 4362
    iput v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4364
    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    if-ge p2, v4, :cond_27

    .line 4365
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->sendAccessibilityEventAsNeeded(Z)V

    .line 4403
    :goto_26
    return v2

    .line 4369
    :cond_27
    iget v4, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iput v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 4371
    iget v4, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    if-ge p2, v4, :cond_39

    .line 4372
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 4386
    :goto_31
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/DayView;->findSelectedEvent(II)V

    .line 4402
    invoke-direct {p0, v3}, Lcom/android/calendar/DayView;->sendAccessibilityEventAsNeeded(Z)V

    move v2, v3

    .line 4403
    goto :goto_26

    .line 4375
    :cond_39
    iget v4, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int v0, p2, v4

    .line 4377
    .local v0, adjustedY:I
    iget v4, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    if-ge v0, v4, :cond_4a

    .line 4378
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 4383
    :goto_47
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    goto :goto_31

    .line 4380
    :cond_4a
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v5, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int v5, v0, v5

    sget v6, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v6, v6, 0x1

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    goto :goto_47
.end method

.method private setupAllDayTextRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 2692
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_c

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_15

    .line 2693
    :cond_c
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2694
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2706
    :cond_14
    :goto_14
    return-void

    .line 2698
    :cond_15
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_2f

    .line 2699
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2700
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2702
    :cond_2f
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_14

    .line 2703
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2704
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_14
.end method

.method private setupHourTextPaint(Landroid/graphics/Paint;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 2448
    sget v0, Lcom/android/calendar/DayView;->mCalendarHourLabelColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2449
    sget v0, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2450
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2451
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2452
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2453
    return-void
.end method

.method private setupTextRect(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 2675
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_c

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_15

    .line 2676
    :cond_c
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2677
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2689
    :cond_14
    :goto_14
    return-void

    .line 2681
    :cond_15
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_2f

    .line 2682
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2683
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2685
    :cond_2f
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_14

    .line 2686
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2687
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_14
.end method

.method private switchViews(ZFFF)Landroid/view/View;
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1757
    sub-float v3, p3, p2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    .line 1758
    sget-boolean v3, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v3, :cond_3e

    .line 1759
    sget-object v3, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchViews("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") O:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Dist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_3e
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v4, v3, p3

    .line 1763
    const/high16 v3, 0x3f80

    cmpl-float v3, v4, v3

    if-lez v3, :cond_4c

    .line 1764
    const/high16 v4, 0x3f80

    .line 1769
    :cond_4c
    if-eqz p1, :cond_145

    .line 1770
    const/high16 v3, 0x3f80

    sub-float v5, v3, v4

    .line 1771
    const/4 v7, 0x0

    .line 1772
    neg-float v4, v4

    .line 1773
    const/high16 v3, -0x4080

    move v13, v3

    move v14, v4

    .line 1781
    :goto_58
    new-instance v16, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1783
    if-eqz p1, :cond_150

    .line 1784
    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1788
    :goto_81
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 1792
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_15f

    .line 1793
    new-instance v3, Landroid/text/format/Time;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1794
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->adjustToBeginningOfWeek(Landroid/text/format/Time;)V

    move-object v15, v3

    .line 1797
    :goto_a5
    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1798
    move-object/from16 v0, v17

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v3, v4

    move-object/from16 v0, v17

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1802
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1808
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, v14

    move v8, v13

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1814
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, p3, v5

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/calendar/DayView;->calculateDuration(FFF)J

    move-result-wide v5

    .line 1815
    invoke-virtual {v3, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1816
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    invoke-virtual {v3, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1817
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1818
    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1819
    new-instance v5, Lcom/android/calendar/DayView$GotoBroadcaster;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v5, v0, v1, v2}, Lcom/android/calendar/DayView$GotoBroadcaster;-><init>(Lcom/android/calendar/DayView;Landroid/text/format/Time;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/DayView;

    .line 1824
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->cleanup()V

    .line 1825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 1826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/DayView;

    .line 1827
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v15, v4, v5}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    .line 1828
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->requestFocus()Z

    .line 1829
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 1830
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->updateTitle()V

    .line 1831
    invoke-virtual {v3}, Lcom/android/calendar/DayView;->restartCurrentTimeUpdates()V

    .line 1833
    return-object v3

    .line 1775
    :cond_145
    const/high16 v3, 0x3f80

    sub-float v5, v4, v3

    .line 1776
    const/4 v7, 0x0

    .line 1778
    const/high16 v3, 0x3f80

    move v13, v3

    move v14, v4

    goto/16 :goto_58

    .line 1786
    :cond_150
    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_81

    :cond_15f
    move-object/from16 v15, v16

    goto/16 :goto_a5
.end method

.method private switchViews(Z)V
    .registers 33
    .parameter "trackBallSelection"

    .prologue
    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v30, v0

    .line 1341
    .local v30, selectedEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1342
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1343
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_b8

    .line 1348
    if-eqz p1, :cond_78

    .line 1349
    if-nez v30, :cond_43

    .line 1351
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v8

    .line 1352
    .local v8, startMillis:J
    const-wide/32 v2, 0x36ee80

    add-long v10, v8, v2

    .line 1353
    .local v10, endMillis:J
    const-wide/16 v14, 0x0

    .line 1354
    .local v14, extraLong:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v2, :cond_31

    .line 1355
    const-wide/16 v14, 0x10

    .line 1357
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const-wide/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v17}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 1404
    .end local v8           #startMillis:J
    .end local v10           #endMillis:J
    .end local v14           #extraLong:J
    :cond_42
    :goto_42
    return-void

    .line 1360
    :cond_43
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v2, :cond_50

    .line 1361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1364
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x2

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v28

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v29}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_42

    .line 1372
    :cond_78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_42

    .line 1373
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v2, :cond_90

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1376
    :cond_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x2

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v28

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v29}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_42

    .line 1385
    :cond_b8
    if-nez v30, :cond_e0

    .line 1387
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v8

    .line 1388
    .restart local v8       #startMillis:J
    const-wide/32 v2, 0x36ee80

    add-long v10, v8, v2

    .line 1389
    .restart local v10       #endMillis:J
    const-wide/16 v14, 0x0

    .line 1390
    .restart local v14       #extraLong:J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v2, :cond_cd

    .line 1391
    const-wide/16 v14, 0x10

    .line 1393
    :cond_cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v4, 0x1

    const-wide/16 v6, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const-wide/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v17}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    goto/16 :goto_42

    .line 1396
    .end local v8           #startMillis:J
    .end local v10           #endMillis:J
    .end local v14           #extraLong:J
    :cond_e0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mIsAccessibilityEnabled:Z

    if-eqz v2, :cond_ed

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1399
    :cond_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object/from16 v16, v0

    const-wide/16 v18, 0x2

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v28

    move-object/from16 v17, p0

    invoke-virtual/range {v16 .. v29}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_42
.end method

.method private updateEventDetails()V
    .registers 10

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 3508
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 3510
    :cond_10
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3556
    :cond_15
    :goto_15
    return-void

    .line 3513
    :cond_16
    iget-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    iget-object v2, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v2, v2, Lcom/android/calendar/Event;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 3517
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 3520
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3522
    iget-object v8, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 3523
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f10001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3524
    iget-object v1, v8, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3526
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f100016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3527
    iget-boolean v1, v8, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v1, :cond_c0

    move v1, v6

    :goto_4f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3529
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f10001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3530
    iget-boolean v1, v8, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v1, :cond_c2

    move v1, v6

    :goto_62
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3533
    iget-boolean v0, v8, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v0, :cond_c4

    .line 3534
    const v0, 0x82012

    .line 3541
    :goto_6c
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 3542
    or-int/lit16 v5, v0, 0x80

    .line 3544
    :goto_76
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-wide v1, v8, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, v8, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    .line 3546
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v2, 0x7f10002f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3547
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3549
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f100014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3550
    iget-object v1, v8, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 3551
    if-eqz v1, :cond_c8

    :goto_a1
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3552
    if-nez v1, :cond_ab

    iget-object v1, v8, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3554
    :cond_ab
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x53

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    const/4 v3, 0x5

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3555
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_15

    :cond_c0
    move v1, v7

    .line 3527
    goto :goto_4f

    :cond_c2
    move v1, v7

    .line 3530
    goto :goto_62

    .line 3537
    :cond_c4
    const v0, 0x81413

    goto :goto_6c

    :cond_c8
    move v7, v6

    .line 3551
    goto :goto_a1

    :cond_ca
    move v5, v0

    goto :goto_76
.end method


# virtual methods
.method public cleanup()V
    .registers 4

    .prologue
    .line 4586
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 4587
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4589
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mPaused:Z

    .line 4590
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 4591
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_22

    .line 4592
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4593
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4596
    :cond_22
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v1, "preferences_default_cell_height"

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 4601
    return-void
.end method

.method clearCachedEvents()V
    .registers 3

    .prologue
    .line 1928
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    .line 1929
    return-void
.end method

.method public compareToVisibleTimeRange(Landroid/text/format/Time;)I
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1088
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->hour:I

    .line 1089
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v2, Landroid/text/format/Time;->minute:I

    .line 1090
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v5, v2, Landroid/text/format/Time;->second:I

    .line 1092
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v0, v2, Landroid/text/format/Time;->hour:I

    .line 1093
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v0, v2, Landroid/text/format/Time;->minute:I

    .line 1094
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v0, v2, Landroid/text/format/Time;->second:I

    .line 1096
    sget-boolean v2, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v2, :cond_58

    .line 1097
    sget-object v2, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Begin "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v7}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    sget-object v2, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Diff  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_58
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {p1, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v2

    .line 1103
    if-lez v2, :cond_d3

    .line 1105
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    iget v7, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/text/format/Time;->monthDay:I

    .line 1106
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1107
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {p1, v2}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v2

    .line 1109
    sget-boolean v6, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v6, :cond_96

    sget-object v6, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v8}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_96
    iget-object v6, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v7, v6, Landroid/text/format/Time;->monthDay:I

    iget v8, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v7, v8

    iput v7, v6, Landroid/text/format/Time;->monthDay:I

    .line 1112
    iget-object v6, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v6, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1113
    if-gez v2, :cond_cf

    .line 1122
    :goto_a6
    sget-boolean v1, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v1, :cond_c2

    sget-object v1, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Diff: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_c2
    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v3, v1, Landroid/text/format/Time;->hour:I

    .line 1125
    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v4, v1, Landroid/text/format/Time;->minute:I

    .line 1126
    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v5, v1, Landroid/text/format/Time;->second:I

    .line 1127
    return v0

    .line 1116
    :cond_cf
    if-nez v2, :cond_d3

    move v0, v1

    .line 1118
    goto :goto_a6

    :cond_d3
    move v0, v2

    goto :goto_a6
.end method

.method protected drawMoreAlldayEvents(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v3, 0x3f00

    .line 2908
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->computeDayLeftPosition(I)I

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    .line 2909
    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 2911
    iget-object v2, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 2912
    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 2913
    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 2914
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2915
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2916
    sget v3, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2917
    sget v3, Lcom/android/calendar/DayView;->EVENT_RECT_STROKE_WIDTH:I

    int-to-float v3, v3

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2918
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2919
    invoke-virtual {p4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2920
    invoke-virtual {p1, v2, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2921
    invoke-virtual {p4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2922
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2923
    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2924
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d0005

    invoke-virtual {v2, v3, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 2925
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v1, v3

    .line 2926
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    sget v4, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 2927
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v2, v0, v1, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2928
    return-void
.end method

.method getFirstVisibleHour()I
    .registers 2

    .prologue
    .line 939
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    return v0
.end method

.method getSelectedTime()Landroid/text/format/Time;
    .registers 3

    .prologue
    .line 918
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 919
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 920
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 925
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 926
    return-object v0
.end method

.method getSelectedTimeInMillis()J
    .registers 4

    .prologue
    .line 907
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 908
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 909
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 914
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public handleOnResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 879
    invoke-direct {p0}, Lcom/android/calendar/DayView;->initAccessibilityVariables()V

    .line 880
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v1, "preferences_tardis_1"

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 881
    sput v2, Lcom/android/calendar/DayView;->mFutureBgColor:I

    .line 885
    :goto_10
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    .line 886
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-eqz v0, :cond_37

    sget-object v0, Lcom/android/calendar/CalendarData;->s24Hours:[Ljava/lang/String;

    :goto_1e
    iput-object v0, p0, Lcom/android/calendar/DayView;->mHourStrs:[Ljava/lang/String;

    .line 887
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 888
    iput v2, p0, Lcom/android/calendar/DayView;->mLastSelectionDay:I

    .line 889
    iput v2, p0, Lcom/android/calendar/DayView;->mLastSelectionHour:I

    .line 890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLastSelectedEvent:Lcom/android/calendar/Event;

    .line 891
    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 892
    return-void

    .line 883
    :cond_32
    sget v0, Lcom/android/calendar/DayView;->mFutureBgColorRes:I

    sput v0, Lcom/android/calendar/DayView;->mFutureBgColor:I

    goto :goto_10

    .line 886
    :cond_37
    sget-object v0, Lcom/android/calendar/CalendarData;->s12HoursNoAmPm:[Ljava/lang/String;

    goto :goto_1e
.end method

.method public initAllDayHeights()V
    .registers 4

    .prologue
    .line 3617
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-gt v1, v2, :cond_7

    .line 3628
    :goto_6
    return-void

    .line 3620
    :cond_7
    sget-boolean v1, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_26

    .line 3621
    iget v1, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int v0, v1, v2

    .line 3622
    .local v0, maxADHeight:I
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3624
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    div-int v1, v0, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    goto :goto_6

    .line 3626
    .end local v0           #maxADHeight:I
    :cond_26
    sget v1, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    goto :goto_6
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_11

    .line 735
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    .line 736
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 738
    :cond_11
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 874
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->switchViews(Z)V

    .line 876
    :cond_8
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x6e

    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4147
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eq v0, v8, :cond_f

    .line 4148
    iput v8, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 4149
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 4152
    :cond_f
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 4153
    const/16 v5, 0x1403

    .line 4156
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 4157
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 4159
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4160
    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v1, v7, :cond_a8

    .line 4165
    if-lt v0, v7, :cond_92

    .line 4166
    const/4 v0, 0x5

    const v1, 0x7f0c000e

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4167
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4168
    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4170
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I

    move-result v0

    .line 4171
    const/4 v1, 0x2

    if-ne v0, v1, :cond_61

    .line 4172
    const/4 v1, 0x7

    const v2, 0x7f0c0010

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4173
    iget-object v2, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4174
    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4175
    const/16 v2, 0x65

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4178
    :cond_61
    if-lt v0, v7, :cond_77

    .line 4179
    const/16 v0, 0x8

    const v1, 0x7f0c0011

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4180
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4181
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4184
    :cond_77
    const v0, 0x7f0c000f

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4185
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4186
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4187
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4232
    :goto_8c
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4233
    return-void

    .line 4191
    :cond_92
    const v0, 0x7f0c000f

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4192
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4193
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4194
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_8c

    .line 4201
    :cond_a8
    if-lt v0, v7, :cond_f6

    .line 4202
    const/4 v0, 0x5

    const v1, 0x7f0c000e

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4203
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4204
    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4206
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I

    move-result v0

    .line 4207
    const/4 v1, 0x2

    if-ne v0, v1, :cond_e0

    .line 4208
    const/4 v1, 0x7

    const v2, 0x7f0c0010

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4209
    iget-object v2, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4210
    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4211
    const/16 v2, 0x65

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4214
    :cond_e0
    if-lt v0, v7, :cond_f6

    .line 4215
    const/16 v0, 0x8

    const v1, 0x7f0c0011

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4216
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4217
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4221
    :cond_f6
    const v0, 0x7f0c000f

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4222
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4223
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4224
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4226
    const v0, 0x7f0c0009

    invoke-interface {p1, v6, v8, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4227
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4228
    const v1, 0x108003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4229
    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_8c
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 4616
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->cleanup()V

    .line 4617
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4618
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2077
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    if-eqz v0, :cond_13

    .line 2078
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 2079
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 2081
    :cond_13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2083
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    neg-int v0, v0

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    .line 2085
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2087
    iget-object v0, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    .line 2088
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2089
    iget v1, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2090
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2091
    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2092
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2093
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 2095
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doDraw(Landroid/graphics/Canvas;)V

    .line 2097
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2099
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_d2

    .line 2101
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    if-lez v0, :cond_cc

    .line 2102
    iget v0, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v0, v0

    move v1, v0

    .line 2109
    :goto_57
    neg-float v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2110
    iget-object v0, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 2113
    iput v3, v0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 2115
    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2117
    neg-float v0, v1

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2126
    :goto_6c
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->drawAfterScroll(Landroid/graphics/Canvas;)V

    .line 2127
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    if-eqz v0, :cond_7c

    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    if-eqz v0, :cond_7c

    .line 2128
    invoke-direct {p0}, Lcom/android/calendar/DayView;->updateEventDetails()V

    .line 2129
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    .line 2131
    :cond_7c
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 2134
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_a6

    .line 2135
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    if-eqz v0, :cond_90

    .line 2136
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2138
    :cond_90
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 2139
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 2141
    :cond_9b
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    if-eqz v0, :cond_a6

    .line 2142
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2145
    :cond_a6
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c8

    .line 2146
    const/high16 v0, 0x4334

    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2147
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 2148
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 2151
    :cond_c8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 2152
    return-void

    .line 2104
    :cond_cc
    iget v0, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    move v1, v0

    goto :goto_57

    .line 2122
    :cond_d2
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v0, v0

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6c
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter

    .prologue
    .line 1598
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 1599
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1600
    packed-switch v0, :pswitch_data_5e

    .line 1611
    :pswitch_b
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown hover event action. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_23
    :goto_23
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mTouchExplorationEnabled:Z

    if-nez v0, :cond_44

    .line 1618
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1624
    :goto_2b
    return v0

    .line 1602
    :pswitch_2c
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "ACTION_HOVER_ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1605
    :pswitch_34
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "ACTION_HOVER_MOVE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1608
    :pswitch_3c
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "ACTION_HOVER_EXIT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1620
    :cond_44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5c

    .line 1621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/DayView;->setSelectionFromPosition(II)Z

    .line 1622
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1624
    :cond_5c
    const/4 v0, 0x1

    goto :goto_2b

    .line 1600
    :pswitch_data_5e
    .packed-switch 0x7
        :pswitch_34
        :pswitch_b
        :pswitch_2c
        :pswitch_3c
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 25
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1450
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-nez v2, :cond_3e

    .line 1451
    const/16 v2, 0x42

    move/from16 v0, p1

    if-eq v0, v2, :cond_24

    const/16 v2, 0x16

    move/from16 v0, p1

    if-eq v0, v2, :cond_24

    const/16 v2, 0x15

    move/from16 v0, p1

    if-eq v0, v2, :cond_24

    const/16 v2, 0x13

    move/from16 v0, p1

    if-eq v0, v2, :cond_24

    const/16 v2, 0x14

    move/from16 v0, p1

    if-ne v0, v2, :cond_2e

    .line 1456
    :cond_24
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1457
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1458
    const/4 v2, 0x1

    .line 1592
    :goto_2d
    return v2

    .line 1459
    :cond_2e
    const/16 v2, 0x17

    move/from16 v0, p1

    if-ne v0, v2, :cond_3e

    .line 1462
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1463
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1464
    const/4 v2, 0x1

    goto :goto_2d

    .line 1468
    :cond_3e
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1469
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 1471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v20, v0

    .line 1473
    .local v20, selectionDay:I
    sparse-switch p1, :sswitch_data_228

    .line 1554
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2d

    .line 1476
    :sswitch_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v19, v0

    .line 1477
    .local v19, selectedEvent:Lcom/android/calendar/Event;
    if-nez v19, :cond_60

    .line 1478
    const/4 v2, 0x0

    goto :goto_2d

    .line 1480
    :cond_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1481
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1483
    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 1484
    .local v3, begin:J
    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 1485
    .local v5, end:J
    move-object/from16 v0, v19

    iget-wide v7, v0, Lcom/android/calendar/Event;->id:J

    .line 1486
    .local v7, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    const/4 v9, -0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 1487
    const/4 v2, 0x1

    goto :goto_2d

    .line 1489
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v7           #id:J
    .end local v19           #selectedEvent:Lcom/android/calendar/Event;
    :sswitch_83
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/DayView;->switchViews(Z)V

    .line 1490
    const/4 v2, 0x1

    goto :goto_2d

    .line 1492
    :sswitch_8b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_96

    .line 1493
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1494
    const/4 v2, 0x1

    goto :goto_2d

    .line 1496
    :cond_96
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_2d

    .line 1498
    :sswitch_9b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_ab

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1501
    :cond_ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_b9

    .line 1502
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1503
    add-int/lit8 v20, v20, -0x1

    .line 1505
    :cond_b9
    const/16 v18, 0x1

    .line 1557
    .local v18, redraw:Z
    :goto_bb
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    move/from16 v0, v20

    if-lt v0, v2, :cond_cb

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    move/from16 v0, v20

    if-le v0, v2, :cond_1d6

    .line 1558
    :cond_cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/calendar/DayView;

    .line 1559
    .local v21, view:Lcom/android/calendar/DayView;
    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 1560
    .local v13, date:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1561
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_1cb

    .line 1562
    iget v2, v13, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v2, v9

    iput v2, v13, Landroid/text/format/Time;->monthDay:I

    .line 1566
    :goto_f1
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1567
    move/from16 v0, v20

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 1569
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->initView(Lcom/android/calendar/DayView;)V

    .line 1571
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v13}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1572
    .local v5, end:Landroid/text/format/Time;
    iget v2, v5, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v2, v9

    iput v2, v5, Landroid/text/format/Time;->monthDay:I

    .line 1573
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v11, 0x20

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object v14, v5

    invoke-virtual/range {v9 .. v17}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1574
    const/4 v2, 0x1

    goto/16 :goto_2d

    .line 1509
    .end local v5           #end:Landroid/text/format/Time;
    .end local v13           #date:Landroid/text/format/Time;
    .end local v18           #redraw:Z
    .end local v21           #view:Lcom/android/calendar/DayView;
    :sswitch_125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_135

    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1512
    :cond_135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_143

    .line 1513
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1514
    add-int/lit8 v20, v20, 0x1

    .line 1516
    :cond_143
    const/16 v18, 0x1

    .line 1517
    .restart local v18       #redraw:Z
    goto/16 :goto_bb

    .line 1520
    .end local v18           #redraw:Z
    :sswitch_147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_157

    .line 1521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1523
    :cond_157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_182

    .line 1524
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1525
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v2, :cond_182

    .line 1526
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1527
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->adjustHourSelection()V

    .line 1528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1529
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1532
    :cond_182
    const/16 v18, 0x1

    .line 1533
    .restart local v18       #redraw:Z
    goto/16 :goto_bb

    .line 1536
    .end local v18           #redraw:Z
    :sswitch_186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v2, :cond_196

    .line 1537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1539
    :cond_196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v2, :cond_1ad

    .line 1540
    const-wide/16 v9, -0x1

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1541
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v2, :cond_1b1

    .line 1542
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1550
    :cond_1ad
    :goto_1ad
    const/16 v18, 0x1

    .line 1551
    .restart local v18       #redraw:Z
    goto/16 :goto_bb

    .line 1544
    .end local v18           #redraw:Z
    :cond_1b1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1545
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->adjustHourSelection()V

    .line 1546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1547
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    goto :goto_1ad

    .line 1564
    .restart local v13       #date:Landroid/text/format/Time;
    .restart local v18       #redraw:Z
    .restart local v21       #view:Lcom/android/calendar/DayView;
    :cond_1cb
    iget v2, v13, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v2, v9

    iput v2, v13, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_f1

    .line 1576
    .end local v13           #date:Landroid/text/format/Time;
    .end local v21           #view:Lcom/android/calendar/DayView;
    :cond_1d6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v0, v20

    if-eq v2, v0, :cond_202

    .line 1577
    new-instance v13, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v13, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1578
    .restart local v13       #date:Landroid/text/format/Time;
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1579
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v2, v13, Landroid/text/format/Time;->hour:I

    .line 1580
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v11, 0x20

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-object v14, v13

    invoke-virtual/range {v9 .. v17}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1582
    .end local v13           #date:Landroid/text/format/Time;
    :cond_202
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 1583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1584
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1585
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    .line 1587
    if-eqz v18, :cond_221

    .line 1588
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1589
    const/4 v2, 0x1

    goto/16 :goto_2d

    .line 1592
    :cond_221
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_2d

    .line 1473
    nop

    :sswitch_data_228
    .sparse-switch
        0x4 -> :sswitch_8b
        0x13 -> :sswitch_147
        0x14 -> :sswitch_186
        0x15 -> :sswitch_9b
        0x16 -> :sswitch_125
        0x42 -> :sswitch_83
        0x43 -> :sswitch_56
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 1408
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 1409
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1411
    .local v0, duration:J
    packed-switch p1, :pswitch_data_3c

    .line 1445
    :cond_11
    :goto_11
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1413
    :pswitch_16
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v2, :cond_11

    .line 1418
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-ne v2, v6, :cond_25

    .line 1423
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1424
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    goto :goto_11

    .line 1429
    :cond_25
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_32

    .line 1430
    invoke-direct {p0, v6}, Lcom/android/calendar/DayView;->switchViews(Z)V

    goto :goto_11

    .line 1432
    :cond_32
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1433
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1434
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->performLongClick()Z

    goto :goto_11

    .line 1411
    :pswitch_data_3c
    .packed-switch 0x17
        :pswitch_16
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 4696
    const/4 v5, 0x2

    .line 4697
    .local v5, flags:I
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 4698
    .local v1, time:J
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v0, :cond_c

    .line 4699
    or-int/lit8 v5, v5, 0x1

    .line 4701
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4702
    or-int/lit16 v5, v5, 0x80

    .line 4704
    :cond_16
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLongPressTitle:Ljava/lang/String;

    .line 4705
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/calendar/DayView;->mLongPressTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/DayView;->mLongPressItems:[Ljava/lang/CharSequence;

    new-instance v4, Lcom/android/calendar/DayView$6;

    invoke-direct {v4, p0}, Lcom/android/calendar/DayView$6;-><init>(Lcom/android/calendar/DayView;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 4720
    return v6
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 3995
    sget v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 3997
    iget v1, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 3999
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v2, Lcom/android/calendar/DayView;->mMinCellHeight:I

    if-ge v1, v2, :cond_c1

    .line 4002
    iput v0, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4003
    sget v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    sput v0, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 4004
    sget v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    iput v0, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    .line 4011
    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sub-int/2addr v0, v1

    .line 4012
    iget v1, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4013
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x18

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 4015
    sget-boolean v1, Lcom/android/calendar/DayView;->DEBUG_SCALING:Z

    if-eqz v1, :cond_a5

    .line 4016
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 4017
    sget-object v2, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScale: mGestureCenterHour:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tViewStartHour: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\tmViewStartY:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\tmCellHeight:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " SpanY:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    :cond_a5
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v1, :cond_d3

    .line 4023
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4024
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 4031
    :cond_b8
    :goto_b8
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 4033
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 4034
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 4035
    return v5

    .line 4005
    :cond_c1
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v2, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    if-le v1, v2, :cond_2a

    .line 4006
    iput v0, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4007
    sget v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    sput v0, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 4008
    sget v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    iput v0, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    goto/16 :goto_2a

    .line 4026
    :cond_d3
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v1, v2, :cond_b8

    .line 4027
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 4028
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    goto :goto_b8
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 6
    .parameter

    .prologue
    .line 3976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 3977
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 3978
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 3980
    sget v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 3981
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    iput v0, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    .line 3983
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG_SCALING:Z

    if-eqz v0, :cond_87

    .line 3984
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3985
    sget-object v1, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScaleBegin: mGestureCenterHour:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tViewStartHour: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tmViewStartY:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tmCellHeight:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " SpanY:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    :cond_87
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 4
    .parameter "detector"

    .prologue
    const/4 v1, 0x0

    .line 4040
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iput v0, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    .line 4041
    iput v1, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 4042
    iput v1, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 4043
    iput v1, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 4044
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1160
    iput p1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    .line 1161
    iput p2, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    .line 1162
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1163
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1164
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v0, p1, v2

    .line 1165
    .local v0, gridAreaWidth:I
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    mul-int/lit8 v2, v2, 0x1

    sub-int v2, v0, v2

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    .line 1168
    div-int/lit8 v2, p1, 0x7

    sput v2, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    .line 1170
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1171
    .local v1, p:Landroid/graphics/Paint;
    sget v2, Lcom/android/calendar/DayView;->HOURS_TEXT_SIZE:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1172
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    .line 1173
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 1174
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4048
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4049
    sget-boolean v3, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v3, :cond_30

    sget-object v3, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ev.getPointerCount() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    :cond_30
    iget v3, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_44

    .line 4052
    iget-object v3, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4053
    iget-object v3, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 4137
    :cond_43
    :goto_43
    return v1

    .line 4058
    :cond_44
    packed-switch v0, :pswitch_data_1a0

    .line 4133
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_67

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not MotionEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4134
    :cond_67
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 4137
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_43

    .line 4060
    :pswitch_74
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 4061
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_a4

    .line 4062
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DOWN ev.getDownTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    :cond_a4
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v0, v3

    sget v3, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v0, v3

    .line 4067
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_bf

    .line 4068
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    .line 4072
    :goto_b7
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 4073
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_43

    .line 4070
    :cond_bf
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    goto :goto_b7

    .line 4077
    :pswitch_c2
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_e6

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_MOVE Cnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    :cond_e6
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_43

    .line 4082
    :pswitch_ed
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_113

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_UP Cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    :cond_113
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4084
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4085
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 4086
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4087
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    if-nez v0, :cond_131

    .line 4088
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 4089
    iput v2, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 4090
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    goto/16 :goto_43

    .line 4093
    :cond_131
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    if-nez v0, :cond_43

    .line 4096
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_17a

    .line 4097
    iput v2, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 4098
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v3, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    if-le v0, v3, :cond_167

    .line 4100
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_152

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v3, "- horizontal scroll: switch views"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4101
    :cond_152
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    if-lez v0, :cond_165

    move v0, v1

    :goto_157
    iget v3, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/calendar/DayView;->switchViews(ZFFF)Landroid/view/View;

    .line 4102
    iput v2, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    goto/16 :goto_43

    :cond_165
    move v0, v2

    .line 4101
    goto :goto_157

    .line 4108
    :cond_167
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_172

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v3, "- horizontal scroll: snap back"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    :cond_172
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    .line 4110
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 4111
    iput v2, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 4117
    :cond_17a
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v0, :cond_43

    .line 4118
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4119
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    .line 4120
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    goto/16 :goto_43

    .line 4126
    :pswitch_188
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_193

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v3, "ACTION_CANCEL"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4127
    :cond_193
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4128
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 4129
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    goto/16 :goto_43

    .line 4058
    nop

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_74
        :pswitch_ed
        :pswitch_c2
        :pswitch_188
    .end packed-switch
.end method

.method reloadEvents()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1945
    iget-object v0, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1947
    iput-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1948
    iput-object v1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1949
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1952
    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1953
    .local v8, weekStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1954
    iput v3, v8, Landroid/text/format/Time;->hour:I

    .line 1955
    iput v3, v8, Landroid/text/format/Time;->minute:I

    .line 1956
    iput v3, v8, Landroid/text/format/Time;->second:I

    .line 1957
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    .line 1960
    .local v6, millis:J
    iget-wide v0, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_34

    .line 2006
    :goto_33
    return-void

    .line 1963
    :cond_34
    iput-wide v6, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    .line 1967
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1968
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventLoader:Lcom/android/calendar/EventLoader;

    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    new-instance v4, Lcom/android/calendar/DayView$4;

    invoke-direct {v4, p0, v2}, Lcom/android/calendar/DayView$4;-><init>(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/calendar/DayView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_33
.end method

.method public restartCurrentTimeUpdates()V
    .registers 3

    .prologue
    .line 4607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mPaused:Z

    .line 4608
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 4609
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4610
    iget-object v0, p0, Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4612
    :cond_15
    return-void
.end method

.method public setAnimateDayEventHeight(I)V
    .registers 3
    .parameter "height"

    .prologue
    .line 3701
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 3702
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 3703
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3704
    return-void
.end method

.method public setAnimateDayHeight(I)V
    .registers 3
    .parameter "height"

    .prologue
    .line 3694
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 3696
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3697
    return-void
.end method

.method public setAnimateTodayAlpha(I)V
    .registers 2
    .parameter "todayAlpha"

    .prologue
    .line 1041
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    .line 1042
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1043
    return-void
.end method

.method setFirstVisibleHour(I)V
    .registers 3
    .parameter "firstHour"

    .prologue
    .line 943
    iput p1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 944
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 945
    return-void
.end method

.method public setMoreAllDayEventsTextAlpha(I)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 3688
    sput p1, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    .line 3689
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3690
    return-void
.end method

.method public setSelected(Landroid/text/format/Time;ZZ)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    const/high16 v3, -0x8000

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 948
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 949
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 950
    iput-object v2, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 951
    iput-object v2, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 952
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 953
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v7, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 954
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 955
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 959
    if-nez p2, :cond_177

    iget v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_177

    .line 962
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-ge v0, v2, :cond_137

    .line 964
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    move v2, v0

    move v0, v1

    .line 980
    :goto_46
    sget-boolean v5, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v5, :cond_aa

    .line 981
    sget-object v5, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Go "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " 1st "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CH "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lh "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " gh "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " ymax "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_aa
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v2, v0, :cond_167

    .line 987
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 993
    :cond_b0
    :goto_b0
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    .line 995
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 996
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 999
    if-eq v2, v3, :cond_171

    .line 1000
    const-string v0, "viewStartY"

    new-array v3, v9, [I

    iget v5, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    aput v5, v3, v1

    aput v2, v3, v4

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1001
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1002
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1003
    iget-object v2, p0, Lcom/android/calendar/DayView;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1004
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    move v0, v4

    .line 1007
    :goto_de
    if-eqz p3, :cond_133

    .line 1008
    iget-object v2, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    monitor-enter v2

    .line 1009
    :try_start_e3
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_f1

    .line 1010
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 1011
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1013
    :cond_f1
    const-string v3, "animateTodayAlpha"

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/calendar/DayView;->mAnimateTodayAlpha:I

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0xff

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 1015
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mAnimateToday:Z

    .line 1016
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/calendar/DayView$TodayAnimatorListener;->setFadingIn(Z)V

    .line 1017
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v4}, Lcom/android/calendar/DayView$TodayAnimatorListener;->setAnimator(Landroid/animation/Animator;)V

    .line 1018
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/calendar/DayView;->mTodayAnimatorListener:Lcom/android/calendar/DayView$TodayAnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1019
    iget-object v3, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1020
    if-eqz v0, :cond_12d

    .line 1021
    iget-object v0, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1023
    :cond_12d
    iget-object v0, p0, Lcom/android/calendar/DayView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1024
    monitor-exit v2
    :try_end_133
    .catchall {:try_start_e3 .. :try_end_133} :catchall_16e

    .line 1026
    :cond_133
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->sendAccessibilityEventAsNeeded(Z)V

    .line 1027
    return-void

    .line 966
    :cond_137
    iget v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int/2addr v0, v2

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v0, v2

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/2addr v0, v2

    .line 969
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-lt v2, v0, :cond_174

    .line 975
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->minute:I

    int-to-float v5, v5

    const/high16 v6, 0x4270

    div-float/2addr v5, v6

    add-float/2addr v2, v5

    sget v5, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float/2addr v2, v5

    iget v5, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    goto/16 :goto_46

    .line 988
    :cond_167
    if-gez v2, :cond_b0

    if-eq v2, v3, :cond_b0

    move v2, v1

    .line 989
    goto/16 :goto_b0

    .line 1024
    :catchall_16e
    move-exception v0

    :try_start_16f
    monitor-exit v2
    :try_end_170
    .catchall {:try_start_16f .. :try_end_170} :catchall_16e

    throw v0

    :cond_171
    move v0, v1

    goto/16 :goto_de

    :cond_174
    move v2, v3

    goto/16 :goto_46

    :cond_177
    move v2, v3

    goto/16 :goto_b0
.end method

.method public setViewStartY(I)V
    .registers 3
    .parameter "viewStartY"

    .prologue
    .line 1030
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le p1, v0, :cond_6

    .line 1031
    iget p1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 1034
    :cond_6
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1036
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 1037
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1038
    return-void
.end method

.method public updateTitle()V
    .registers 15

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1058
    new-instance v4, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v4, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1059
    .local v4, start:Landroid/text/format/Time;
    invoke-virtual {v4, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1060
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v4}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1061
    .local v5, end:Landroid/text/format/Time;
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 1063
    iget v0, v5, Landroid/text/format/Time;->minute:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Landroid/text/format/Time;->minute:I

    .line 1064
    invoke-virtual {v5, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1066
    const-wide/16 v10, 0x14

    .line 1067
    .local v10, formatFlags:J
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-eq v0, v2, :cond_36

    .line 1069
    const-wide/16 v0, 0x20

    or-long/2addr v10, v0

    .line 1072
    iget v0, v4, Landroid/text/format/Time;->month:I

    iget v1, v5, Landroid/text/format/Time;->month:I

    if-eq v0, v1, :cond_36

    .line 1073
    const-wide/32 v0, 0x10000

    or-long/2addr v10, v0

    .line 1077
    :cond_36
    iget-object v0, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x400

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v12, v6

    move-object v13, v6

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 1079
    return-void
.end method
