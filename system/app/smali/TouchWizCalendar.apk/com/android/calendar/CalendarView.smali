.class public Lcom/android/calendar/CalendarView;
.super Landroid/view/View;
.source "CalendarView.java"

# interfaces
.implements Lcom/android/calendar/CalendarInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarView$UpdateCurrentTime;,
        Lcom/android/calendar/CalendarView$LaunchToCreateEvent;,
        Lcom/android/calendar/CalendarView$ScrollToSelectedHour;,
        Lcom/android/calendar/CalendarView$ContinueScroll;,
        Lcom/android/calendar/CalendarView$DragRunnable;,
        Lcom/android/calendar/CalendarView$CalendarDoubleGestureListener;,
        Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;,
        Lcom/android/calendar/CalendarView$DayHeader;
    }
.end annotation


# static fields
.field private static AMPM_FONT_SIZE:I

.field private static CURRENT_TIME_LINE_BORDER_WIDTH:I

.field private static CURRENT_TIME_LINE_HEIGHT:I

.field private static CURRENT_TIME_LINE_SIDE_BUFFER:I

.field private static CURRENT_TIME_MARKER_HEIGHT:I

.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static HOURS_FONT_SIZE:I

.field private static MIN_CELL_WIDTH_FOR_TEXT:I

.field private static MIN_EVENT_HEIGHT:F

.field private static mCalendarGridAreaSelected:I

.field private static mCalendarGridLineHorizontalColor:I

.field private static mCalendarHourLabel:I

.field private static mEventTextColor:I

.field private static mScale:F

.field private static mWeekDayColor:I


# instance fields
.field private final EVENT_INDEX_ACCESS_LEVEL:I

.field private final EVENT_INDEX_DTSTART:I

.field private final EVENT_INDEX_RRULE:I

.field private final EVENT_INDEX_TIMEZONE:I

.field private TAG:Ljava/lang/String;

.field private final WEEK_ALLDAY_EVENT_NUM:I

.field private dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

.field private drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field private mAllDayBottomMargin:I

.field private mAllDayDivider:Landroid/graphics/drawable/Drawable;

.field private mAllDayDividerHeight:I

.field private mAllDayTitleTextSize:I

.field private mAmString:Ljava/lang/String;

.field mBaseDate:Landroid/text/format/Time;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBlurMaskfilter:Landroid/graphics/BlurMaskFilter;

.field private mBottomGap:I

.field private mBrief:Z

.field private mBriefBitmap:Landroid/graphics/Bitmap;

.field private mBriefBottomMargin:F

.field private mBriefCanvas:Landroid/graphics/Canvas;

.field private mBriefHourMargin:F

.field private mBriefHourTextSize:I

.field protected mCalendarApp:Lcom/android/calendar/CalendarApplication;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mChangeFirstHour:Z

.field private mCharWidths:[F

.field private mComputeSelectedEvents:Z

.field private mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

.field private mCurrentTime:Landroid/text/format/Time;

.field private mCurrentTimeLineColor:I

.field private mCurrentTimeMarkerBorderColor:I

.field private mDateRange:Ljava/lang/String;

.field private mDateStrWidth:I

.field private mDayAllDayColorWidth:I

.field private mDayAllDayHeight:I

.field private mDayAllDayTitleMarginLeft:I

.field private mDayAllDaysHeight:I

.field private mDayBgColor:I

.field private mDayCellHeight:I

.field private mDayCellWidth:I

.field private mDayFirstHourOffset:I

.field private mDayGap:F

.field private mDayGridColor:I

.field private mDayHourGap:I

.field private mDayHourWidth:I

.field private mDayStrs:[Ljava/lang/String;

.field private mDayStrs2Letter:[Ljava/lang/String;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDestRect:Landroid/graphics/Rect;

.field private mDetailedView:Ljava/lang/String;

.field private mDistanceY:I

.field private mDragEventInitTop:F

.field private mDragEventOrgRect:Landroid/graphics/Rect;

.field private mDragEventRectShadow:F

.field private mDragEventRectSpan:F

.field private mDragEventRectStroke:F

.field private mDragRunnable:Lcom/android/calendar/CalendarView$DragRunnable;

.field private mDragScrollStartY:I

.field private mDraggingMotionEvent:Landroid/view/MotionEvent;

.field private mDrawMoreIcon:Z

.field protected mDrawTextInEventRect:Z

.field private mDurationDay:I

.field private mEarliestStartHour:[I

.field private mEventAgendaTextSize:I

.field protected final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEventRectRoundRadiusLarge:F

.field private mEventRectRoundRadiusSmall:F

.field private mEventRectStroke:F

.field private mEventTextAscent:I

.field private mEventTextHeight:I

.field private mEventTextMargin:I

.field private mEventTextPaint:Landroid/graphics/Paint;

.field private mEventTextSize:I

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

.field private mFirstCell:I

.field private mFirstDate:I

.field private mFirstHour:I

.field private mFirstHourOffset:I

.field private mFirstJulianDay:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridAreaHeight:I

.field private mHasAllDayEvent:[[I

.field private mHourGap:I

.field private mHourStrs:[Ljava/lang/String;

.field private mHourTextSize:I

.field private mHoursWidth:I

.field private mIgnoreEvent:Z

.field private mLastJulianDay:I

.field private mLastMotionY:I

.field private mLaunchToCreateEvent:Lcom/android/calendar/CalendarView$LaunchToCreateEvent;

.field private mMaxAllDayEvents:I

.field private mMaxViewStartY:I

.field private mMonthLength:I

.field private mMoreEventIndex:I

.field private mMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mMoreIconPressed:Landroid/graphics/drawable/Drawable;

.field private mMoreIconRect:Landroid/graphics/Rect;

.field private mNormalTextSize:I

.field private mNormalTextTopMargin:F

.field protected mNumDays:I

.field private mNumHours:I

.field private mOnFlingCalled:Z

.field private mOrdinaryWeekString:[Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBorder:Landroid/graphics/Paint;

.field private mPaintShadow:Landroid/graphics/Paint;

.field protected mParentActivity:Lcom/android/calendar/CalendarActivity;

.field private mPmString:Ljava/lang/String;

.field private mPrevBox:Landroid/graphics/Rect;

.field private mPrevSelectedEvent:Lcom/android/calendar/Event;

.field private mPrevSelectionDay:I

.field private mPrevSelectionHour:I

.field private mRect:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/RectF;

.field private mRedrawScreen:Z

.field private mRemeasure:Z

.field protected final mResources:Landroid/content/res/Resources;

.field private mSameTimeEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStartY:I

.field private mScrollToHour:Lcom/android/calendar/CalendarView$ScrollToSelectedHour;

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

.field private mSelectionAllDay:Z

.field private mSelectionDay:I

.field private mSelectionDayofWeek:Z

.field private mSelectionHour:I

.field private mSelectionMode:I

.field private mSelectionPaint:Landroid/graphics/Paint;

.field private mSolarLunarConverter:Lcom/android/calendar/lunar/SolarLunarConverter;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mStartDay:I

.field mTempDate:Landroid/text/format/Time;

.field private mTitleTextViewLeft:Landroid/widget/TextView;

.field private mTitleTextViewRight:Landroid/widget/TextView;

.field private mTodayJulianDay:I

.field private mTouchMode:I

.field private mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mViewHeight:I

.field private mViewStartY:I

.field private mViewWidth:I

.field private mWeekAllDayBg:Landroid/graphics/drawable/Drawable;

.field private mWeekAllDayHeight:I

.field private mWeekAllDayWidth:I

.field private mWeekBannerHeight:I

.field private mWeekBannerTextSize:I

.field private mWeekCellHeight:I

.field private mWeekCellWidth:I

.field private mWeekEventRectRoundRadius:F

.field private mWeekFocus:Landroid/graphics/drawable/Drawable;

.field private mWeekFocusDay:Landroid/graphics/drawable/Drawable;

.field private mWeekHeaderBg:Landroid/graphics/drawable/Drawable;

.field private mWeekHourGap:I

.field private mWeekHourTextSize:I

.field private mWeekHourWidth:I

.field private mWeekSaturdayColor:I

.field private mWeekSundayColor:I

.field private mWeekToday:Landroid/graphics/drawable/Drawable;

.field private mhasAllDayEvents:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    const/high16 v0, 0x3f80

    sput v0, Lcom/android/calendar/CalendarView;->mScale:F

    .line 126
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "hasAlarm"

    aput-object v1, v0, v4

    const-string v1, "dtstart"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const-string v1, "eventTimezone"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/calendar/CalendarView;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 160
    sput v5, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    .line 162
    sput v3, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    .line 166
    sput v6, Lcom/android/calendar/CalendarView;->CURRENT_TIME_MARKER_HEIGHT:I

    .line 170
    sput v4, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 373
    const/16 v0, 0xc

    sput v0, Lcom/android/calendar/CalendarView;->HOURS_FONT_SIZE:I

    .line 375
    const/16 v0, 0x9

    sput v0, Lcom/android/calendar/CalendarView;->AMPM_FONT_SIZE:I

    .line 377
    const/16 v0, 0x1b

    sput v0, Lcom/android/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 381
    const/high16 v0, 0x4170

    sput v0, Lcom/android/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .registers 10
    .parameter "activity"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 684
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 97
    const-string v0, "CalendarView"

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->TAG:Ljava/lang/String;

    .line 136
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/CalendarView;->EVENT_INDEX_DTSTART:I

    .line 138
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/calendar/CalendarView;->EVENT_INDEX_RRULE:I

    .line 140
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/calendar/CalendarView;->EVENT_INDEX_TIMEZONE:I

    .line 142
    iput v3, p0, Lcom/android/calendar/CalendarView;->EVENT_INDEX_ACCESS_LEVEL:I

    .line 158
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/calendar/CalendarView;->WEEK_ALLDAY_EVENT_NUM:I

    .line 172
    new-instance v0, Lcom/android/calendar/CalendarView$ContinueScroll;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/CalendarView$ContinueScroll;-><init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    .line 174
    new-instance v0, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/CalendarView$ScrollToSelectedHour;-><init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mScrollToHour:Lcom/android/calendar/CalendarView$ScrollToSelectedHour;

    .line 176
    new-instance v0, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/CalendarView$LaunchToCreateEvent;-><init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mLaunchToCreateEvent:Lcom/android/calendar/CalendarView$LaunchToCreateEvent;

    .line 186
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/calendar/CalendarView$DayHeader;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    .line 199
    new-instance v0, Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarView$UpdateCurrentTime;-><init>(Lcom/android/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    .line 223
    sget-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 243
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 245
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    .line 247
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSrcRect:Landroid/graphics/Rect;

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDestRect:Landroid/graphics/Rect;

    .line 251
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mMoreIconRect:Landroid/graphics/Rect;

    .line 253
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 255
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    .line 257
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintShadow:Landroid/graphics/Paint;

    .line 259
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40a0

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mBlurMaskfilter:Landroid/graphics/BlurMaskFilter;

    .line 261
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 263
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 274
    iput-boolean v7, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 276
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 278
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    .line 280
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 282
    iput-boolean v7, p0, Lcom/android/calendar/CalendarView;->mChangeFirstHour:Z

    .line 316
    iput v6, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    .line 421
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    .line 439
    iput v6, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 449
    const/16 v0, 0x1f4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    .line 459
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSameTimeEvents:Ljava/util/ArrayList;

    .line 482
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    .line 484
    new-instance v0, Lcom/android/calendar/CalendarView$DragRunnable;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/CalendarView$DragRunnable;-><init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDragRunnable:Lcom/android/calendar/CalendarView$DragRunnable;

    .line 488
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    .line 490
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mIgnoreEvent:Z

    .line 514
    iput v3, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 527
    iput v3, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 529
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 534
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    .line 586
    new-instance v0, Lcom/android/calendar/CalendarView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarView$1;-><init>(Lcom/android/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    .line 3918
    const-string v0, "[\t\n],"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    .line 685
    sget v0, Lcom/android/calendar/CalendarView;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_151

    .line 686
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/calendar/CalendarView;->mScale:F

    .line 688
    sget v0, Lcom/android/calendar/CalendarView;->mScale:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_151

    .line 689
    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayHeight:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayHeight:I

    .line 691
    iget v0, p0, Lcom/android/calendar/CalendarView;->mAllDayBottomMargin:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mAllDayBottomMargin:I

    .line 694
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNormalTextSize:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNormalTextSize:I

    .line 695
    iget v0, p0, Lcom/android/calendar/CalendarView;->mEventTextSize:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventTextSize:I

    .line 696
    sget v0, Lcom/android/calendar/CalendarView;->HOURS_FONT_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->HOURS_FONT_SIZE:I

    .line 697
    sget v0, Lcom/android/calendar/CalendarView;->AMPM_FONT_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->AMPM_FONT_SIZE:I

    .line 698
    sget v0, Lcom/android/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 699
    sget v0, Lcom/android/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    sget v1, Lcom/android/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    .line 704
    :cond_151
    invoke-virtual {p1}, Lcom/android/calendar/CalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    .line 705
    iget-object v0, p1, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 706
    new-instance v0, Lcom/android/calendar/EventGeometry;

    invoke-direct {v0}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 707
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    sget v1, Lcom/android/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setMinEventHeight(F)V

    .line 708
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    invoke-virtual {v0, v5}, Lcom/android/calendar/EventGeometry;->setHourGap(F)V

    .line 709
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    .line 710
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarApplication;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCalendarApp:Lcom/android/calendar/CalendarApplication;

    .line 711
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v0, p1, v3}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 716
    instance-of v0, p1, Lcom/android/calendar/WeekActivity;

    if-eqz v0, :cond_195

    .line 717
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;

    invoke-direct {v1, p0}, Lcom/android/calendar/CalendarView$CalendarSimpleGestureListener;-><init>(Lcom/android/calendar/CalendarView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 722
    :goto_191
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->init(Landroid/content/Context;)V

    .line 723
    return-void

    .line 719
    :cond_195
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/CalendarView$CalendarDoubleGestureListener;

    invoke-direct {v1, p0}, Lcom/android/calendar/CalendarView$CalendarDoubleGestureListener;-><init>(Lcom/android/calendar/CalendarView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    goto :goto_191
.end method

.method static synthetic access$1000(Lcom/android/calendar/CalendarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/CalendarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/CalendarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/CalendarView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/calendar/CalendarView;)Landroid/view/MotionEvent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mDraggingMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/CalendarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/CalendarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/calendar/CalendarView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return p1
.end method

.method static synthetic access$1612(Lcom/android/calendar/CalendarView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1620(Lcom/android/calendar/CalendarView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/CalendarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/CalendarView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->computeFirstHour()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/calendar/CalendarView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/calendar/CalendarView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->resetSelectedHour()V

    return-void
.end method

.method static synthetic access$2102(Lcom/android/calendar/CalendarView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mChangeFirstHour:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/calendar/CalendarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/CalendarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/CalendarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/calendar/CalendarView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/calendar/CalendarView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/calendar/CalendarView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/calendar/CalendarView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/CalendarView$UpdateCurrentTime;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/calendar/CalendarView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/calendar/CalendarView;->mTodayJulianDay:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/calendar/CalendarView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/CalendarView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/CalendarView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/calendar/CalendarView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/calendar/CalendarView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/calendar/CalendarView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    return p1
.end method

.method private adjustHourSelection()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x0

    .line 1743
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-gez v1, :cond_10

    .line 1744
    iput v3, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1745
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mhasAllDayEvents:Z

    if-eqz v1, :cond_10

    .line 1746
    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1750
    :cond_10
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-le v1, v2, :cond_16

    .line 1751
    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1759
    :cond_16
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_5c

    .line 1767
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v0, v1, v2

    .line 1768
    .local v0, daynum:I
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mhasAllDayEvents:Z

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-le v1, v2, :cond_42

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-lez v1, :cond_42

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_42

    .line 1770
    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1771
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1797
    .end local v0           #daynum:I
    :cond_41
    :goto_41
    return-void

    .line 1775
    .restart local v0       #daynum:I
    :cond_42
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-lez v1, :cond_5c

    .line 1776
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1777
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 1778
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    if-gez v1, :cond_41

    .line 1779
    iput v3, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_41

    .line 1785
    .end local v0           #daynum:I
    :cond_5c
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3

    if-le v1, v2, :cond_41

    .line 1786
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ge v1, v2, :cond_8f

    .line 1787
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1788
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 1789
    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_41

    .line 1790
    iget v1, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_41

    .line 1793
    :cond_8f
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ne v1, v2, :cond_41

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    if-lez v1, :cond_41

    .line 1794
    iget v1, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_41
.end method

.method private computeFirstHour()V
    .registers 3

    .prologue
    .line 1728
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-lt v0, v1, :cond_29

    .line 1729
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1731
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 1737
    :goto_28
    return-void

    .line 1734
    :cond_29
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1735
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_28
.end method

.method private computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I
    .registers 13
    .parameter "currentMax"
    .parameter "strings"
    .parameter "p"

    .prologue
    .line 3887
    const/4 v3, 0x0

    .line 3889
    .local v3, maxWidthF:F
    array-length v1, p2

    .line 3890
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v1, :cond_12

    .line 3891
    aget-object v5, p2, v0

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 3892
    .local v4, width:F
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 3890
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3894
    .end local v4           #width:F
    :cond_12
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v2, v5

    .line 3895
    .local v2, maxWidth:I
    if-ge v2, p1, :cond_1a

    .line 3896
    move v2, p1

    .line 3898
    :cond_1a
    return v2
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 2110
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 2111
    .local v5, p:Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 2112
    .local v7, r:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int v9, v0, v3

    .line 2115
    .local v9, lineY:I
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/CalendarView;->drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2116
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/CalendarView;->drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2117
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2f

    iget v0, p0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-lez v0, :cond_2f

    .line 2118
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/CalendarView;->drawAllDayEvents(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2122
    :cond_2f
    iget v2, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 2123
    .local v2, x:I
    iget v13, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    .line 2124
    .local v13, deltaX:I
    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    .line 2126
    .local v1, cell:I
    const/4 v12, 0x0

    .local v12, day:I
    :goto_36
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ge v12, v0, :cond_64

    .line 2127
    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/lit8 v3, v0, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/CalendarView;->drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2129
    iget v0, p0, Lcom/android/calendar/CalendarView;->mTodayJulianDay:I

    if-ne v1, v0, :cond_5e

    .line 2131
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    if-lt v9, v0, :cond_5e

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    if-ge v9, v0, :cond_5e

    .line 2133
    invoke-direct {p0, v9, p1, v5}, Lcom/android/calendar/CalendarView;->drawCurrentTimeMarker(ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    move-object v6, p0

    move v8, v2

    move-object v10, p1

    move-object v11, v5

    .line 2134
    invoke-direct/range {v6 .. v11}, Lcom/android/calendar/CalendarView;->drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2137
    :cond_5e
    add-int/2addr v2, v13

    .line 2126
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 2139
    :cond_64
    return-void
.end method

.method private drawAfterScroll(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 3657
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 3658
    .local v0, p:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 3660
    .local v1, r:Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_17

    .line 3661
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/CalendarView;->drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 3663
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 3664
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->drawAmPm(Landroid/graphics/Canvas;)V

    .line 3668
    :cond_17
    return-void
.end method

.method private drawAllDayEvents(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 26
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 2475
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2476
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 2478
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2479
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2480
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2482
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2484
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 2485
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2487
    const/4 v10, 0x0

    .line 2488
    const/4 v2, 0x0

    move v12, v2

    :goto_2e
    if-ge v12, v14, :cond_1ca

    .line 2489
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 2490
    iget-boolean v3, v2, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_40

    move v2, v10

    .line 2488
    :goto_3b
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    move v10, v2

    goto :goto_2e

    .line 2493
    :cond_40
    iget v3, v2, Lcom/android/calendar/Event;->startDay:I

    .line 2494
    iget v4, v2, Lcom/android/calendar/Event;->endDay:I

    .line 2495
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    if-gt v3, v5, :cond_1f9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-ge v4, v3, :cond_52

    move v2, v10

    .line 2496
    goto :goto_3b

    .line 2498
    :cond_52
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mAllDayDividerHeight:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v10

    int-to-float v3, v3

    iput v3, v2, Lcom/android/calendar/Event;->top:F

    .line 2499
    iget v3, v2, Lcom/android/calendar/Event;->top:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/calendar/Event;->bottom:F

    .line 2500
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/calendar/Event;->left:F

    .line 2501
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    int-to-float v3, v3

    iput v3, v2, Lcom/android/calendar/Event;->right:F

    .line 2503
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    if-eqz v3, :cond_a7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v3, v2, :cond_a7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a7

    .line 2504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0200b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    .line 2506
    iget v4, v2, Lcom/android/calendar/Event;->left:F

    float-to-int v4, v4

    iget v5, v2, Lcom/android/calendar/Event;->top:F

    float-to-int v5, v5

    iget v6, v2, Lcom/android/calendar/Event;->right:F

    float-to-int v6, v6

    iget v7, v2, Lcom/android/calendar/Event;->bottom:F

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 2508
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2511
    :cond_a7
    iget v3, v2, Lcom/android/calendar/Event;->top:F

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2512
    iget v3, v2, Lcom/android/calendar/Event;->bottom:F

    float-to-int v3, v3

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2513
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2514
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mDayAllDayColorWidth:I

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2516
    iget v3, v2, Lcom/android/calendar/Event;->color:I

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2517
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2520
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mAllDayTitleTextSize:I

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/CalendarView;->mAllDayDividerHeight:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v10

    add-int v16, v3, v4

    .line 2522
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mAllDayTitleTextSize:I

    int-to-float v3, v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2524
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDayColorWidth:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDayTitleMarginLeft:I

    sub-int v7, v3, v4

    .line 2527
    const/4 v6, 0x0

    .line 2528
    const/4 v9, 0x0

    .line 2529
    const/4 v3, 0x0

    .line 2531
    const/4 v4, 0x1

    new-array v4, v4, [F

    .line 2532
    const-string v5, "."

    invoke-virtual {v8, v5, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 2533
    const/4 v5, 0x0

    aget v4, v4, v5

    const/high16 v5, 0x4040

    mul-float v11, v4, v5

    .line 2620
    iget-object v4, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v17

    .line 2621
    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 2622
    iget-object v4, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v8, v4, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 2627
    const/4 v4, 0x0

    .line 2629
    const/4 v5, 0x0

    move/from16 v21, v3

    move v3, v6

    move/from16 v6, v21

    :goto_13c
    move/from16 v0, v17

    if-ge v5, v0, :cond_1f6

    .line 2630
    aget v19, v18, v5

    add-float v6, v6, v19

    .line 2631
    add-float v19, v6, v11

    int-to-float v0, v7

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_15a

    if-nez v4, :cond_15a

    .line 2633
    aget v3, v18, v5

    sub-float v4, v6, v3

    .line 2634
    const/4 v3, 0x1

    move v9, v5

    move/from16 v21, v3

    move v3, v4

    move/from16 v4, v21

    .line 2636
    :cond_15a
    int-to-float v0, v7

    move/from16 v19, v0

    cmpl-float v19, v6, v19

    if-ltz v19, :cond_1c4

    move v11, v3

    .line 2640
    :goto_162
    add-int/lit8 v3, v17, -0x1

    if-lt v5, v3, :cond_1c8

    .line 2645
    :goto_166
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mDayAllDayColorWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDayTitleMarginLeft:I

    add-int v17, v3, v4

    .line 2651
    iget-object v2, v2, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2652
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/CalendarView;->drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2653
    const/4 v4, 0x0

    move/from16 v0, v17

    int-to-float v6, v0

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2656
    if-ne v5, v9, :cond_198

    .line 2657
    const-string v2, "..."

    move/from16 v0, v17

    int-to-float v3, v0

    add-float/2addr v3, v11

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2659
    :cond_198
    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-ge v2, v3, :cond_1c0

    .line 2660
    const/4 v2, 0x0

    .line 2661
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    .line 2662
    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 2663
    sget v3, Lcom/android/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2664
    int-to-float v3, v2

    int-to-float v4, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mAllDayDividerHeight:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2670
    :cond_1c0
    add-int/lit8 v2, v10, 0x1

    goto/16 :goto_3b

    .line 2629
    :cond_1c4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_13c

    :cond_1c8
    move v5, v9

    .line 2643
    goto :goto_166

    .line 2673
    :cond_1ca
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-lez v2, :cond_1f5

    .line 2674
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mDayBgColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2676
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mAllDayBottomMargin:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    int-to-float v6, v2

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2680
    :cond_1f5
    return-void

    :cond_1f6
    move v11, v3

    goto/16 :goto_162

    :cond_1f9
    move v2, v10

    goto/16 :goto_3b
.end method

.method private drawAmPm(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    const/16 v8, 0xc

    .line 3671
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 3673
    .local v2, p:Landroid/graphics/Paint;
    sget v6, Lcom/android/calendar/CalendarView;->mCalendarHourLabel:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 3674
    iget v6, p0, Lcom/android/calendar/CalendarView;->mWeekHourTextSize:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3675
    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3676
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3677
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 3678
    .local v4, text:Ljava/lang/String;
    iget v6, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-lt v6, v8, :cond_28

    .line 3679
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 3681
    :cond_28
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v1, v6

    .line 3682
    .local v1, hoursTextHeight:I
    iget v6, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v5, v6, 0x1

    .line 3683
    .local v5, y:I
    iget v6, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-nez v6, :cond_46

    .line 3684
    iget v6, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 3685
    :cond_46
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_89

    iget v6, p0, Lcom/android/calendar/CalendarView;->mHourGap:I

    div-int/lit8 v0, v6, 0x2

    .line 3687
    .local v0, gap:I
    :goto_53
    iget v6, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    sub-int v3, v6, v0

    .line 3688
    .local v3, right:I
    int-to-float v6, v3

    int-to-float v7, v5

    invoke-virtual {p1, v4, v6, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3690
    iget v6, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    if-ge v6, v8, :cond_88

    iget v6, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v6, v7

    if-le v6, v8, :cond_88

    .line 3692
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 3693
    iget v6, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    rsub-int/lit8 v7, v7, 0xc

    iget v8, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v5, v6, 0x1

    .line 3695
    int-to-float v6, v3

    int-to-float v7, v5

    invoke-virtual {p1, v4, v6, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3697
    :cond_88
    return-void

    .line 3685
    .end local v0           #gap:I
    .end local v3           #right:I
    :cond_89
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHourGap:I

    goto :goto_53
.end method

.method private drawBriefDayView(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2f7

    .line 3477
    :try_start_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_18} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_24

    .line 3484
    :goto_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_29

    .line 3639
    :goto_1e
    return-void

    .line 3479
    :catch_1f
    move-exception v3

    .line 3480
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_18

    .line 3481
    :catch_24
    move-exception v3

    .line 3482
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 3488
    :cond_29
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    .line 3490
    const/4 v3, 0x0

    .line 3497
    const/4 v12, 0x0

    .line 3498
    const/4 v4, 0x0

    move-object/from16 v0, p3

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 3499
    const/4 v4, 0x0

    move-object/from16 v0, p3

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 3500
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 3502
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-lez v4, :cond_83

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-lez v4, :cond_83

    .line 3503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3505
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    move-object/from16 v0, p2

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 3506
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    move-object/from16 v0, p3

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 3507
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v3, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3510
    :cond_83
    const v15, 0x7f0c0002

    .line 3511
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 3512
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3513
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3514
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBriefHourTextSize:I

    int-to-float v4, v4

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3515
    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v0, v4

    move/from16 v16, v0

    .line 3516
    const/4 v13, 0x0

    move-object v8, v3

    :goto_a9
    move/from16 v0, p4

    if-ge v13, v0, :cond_2df

    .line 3517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 3518
    iget-boolean v4, v3, Lcom/android/calendar/Event;->bedrawed:Z

    if-eqz v4, :cond_347

    iget-boolean v4, v3, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v4, :cond_c4

    move-object v3, v8

    .line 3516
    :goto_c0
    add-int/lit8 v13, v13, 0x1

    move-object v8, v3

    goto :goto_a9

    .line 3521
    :cond_c4
    iget v4, v3, Lcom/android/calendar/Event;->startDay:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-gt v4, v5, :cond_347

    iget v4, v3, Lcom/android/calendar/Event;->endDay:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-ge v4, v5, :cond_d6

    move-object v3, v8

    .line 3522
    goto :goto_c0

    .line 3525
    :cond_d6
    const/4 v4, 0x0

    iget v5, v3, Lcom/android/calendar/Event;->top:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 3526
    iget v3, v3, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    add-float/2addr v3, v4

    float-to-int v4, v3

    .line 3528
    add-int/lit8 v6, v13, 0x1

    :goto_ed
    move/from16 v0, p4

    if-ge v6, v0, :cond_126

    .line 3529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 3530
    iget-boolean v7, v3, Lcom/android/calendar/Event;->bedrawed:Z

    if-eqz v7, :cond_344

    iget-boolean v7, v3, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v7, :cond_108

    move v3, v12

    .line 3528
    :goto_104
    add-int/lit8 v6, v6, 0x1

    move v12, v3

    goto :goto_ed

    .line 3533
    :cond_108
    int-to-float v7, v4

    iget v9, v3, Lcom/android/calendar/Event;->top:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_344

    .line 3534
    int-to-float v7, v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    sub-float/2addr v7, v9

    iget v9, v3, Lcom/android/calendar/Event;->bottom:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_341

    .line 3535
    iget v3, v3, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    :goto_123
    move v4, v3

    move v3, v6

    .line 3537
    goto :goto_104

    .line 3540
    :cond_126
    sub-int v3, v4, v5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    sub-float/2addr v4, v6

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-int v7, v3

    .line 3543
    if-eqz v8, :cond_147

    .line 3544
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 3545
    :cond_147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 3547
    move-object/from16 v0, p2

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 3548
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 3549
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v7

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 3551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 3555
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-le v3, v4, :cond_286

    .line 3556
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 3557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    add-float/2addr v8, v9

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    add-int/lit8 v4, v13, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 3560
    add-int/lit8 v4, v13, -0x1

    move v6, v4

    :goto_1c2
    if-ltz v6, :cond_33e

    .line 3561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/Event;

    .line 3562
    iget-boolean v7, v4, Lcom/android/calendar/Event;->bedrawed:Z

    if-eqz v7, :cond_2da

    iget-boolean v7, v4, Lcom/android/calendar/Event;->allDay:Z

    if-nez v7, :cond_2da

    .line 3567
    :goto_1d6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 3571
    iget v4, v4, Lcom/android/calendar/Event;->endTime:I

    div-int/lit8 v4, v4, 0x3c

    .line 3572
    iget v3, v3, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v3, v3, 0x3c

    .line 3573
    sub-int/2addr v3, v4

    .line 3576
    sget v4, Lcom/android/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3577
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    const/4 v7, 0x0

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v4, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    sub-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v8, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/calendar/CalendarView;->mHourGap:I

    sub-int/2addr v4, v9

    int-to-float v9, v4

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    const/high16 v17, 0x4000

    div-float v10, v10, v17

    add-float/2addr v4, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    sub-float/2addr v4, v10

    float-to-int v4, v4

    int-to-float v10, v4

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3583
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v15, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    .line 3584
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3586
    sget v4, Lcom/android/calendar/CalendarView;->mCalendarHourLabel:I

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3587
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    div-int/lit8 v8, v16, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v4, v3, v6, v7, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3591
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    sub-float/2addr v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 3593
    :cond_286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 3594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 3595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v14, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 3599
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    move v4, v13

    .line 3602
    :goto_2b6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 3603
    iget v6, v3, Lcom/android/calendar/Event;->top:F

    int-to-float v7, v5

    sub-float/2addr v6, v7

    iput v6, v3, Lcom/android/calendar/Event;->top:F

    .line 3604
    iget v6, v3, Lcom/android/calendar/Event;->bottom:F

    int-to-float v7, v5

    sub-float/2addr v6, v7

    iput v6, v3, Lcom/android/calendar/Event;->bottom:F

    .line 3605
    add-int/lit8 v3, v4, 0x1

    .line 3606
    if-le v3, v12, :cond_33b

    .line 3608
    add-int/lit8 v3, p4, -0x1

    if-ge v12, v3, :cond_2e0

    .line 3609
    if-le v12, v13, :cond_338

    move v13, v12

    move-object v3, v14

    .line 3610
    goto/16 :goto_c0

    .line 3560
    :cond_2da
    add-int/lit8 v4, v6, -0x1

    move v6, v4

    goto/16 :goto_1c2

    :cond_2df
    move-object v14, v8

    .line 3615
    :cond_2e0
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    .line 3617
    if-eqz v14, :cond_2f7

    .line 3618
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 3621
    :cond_2f7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 3622
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 3624
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 3625
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    add-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 3635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/CalendarView;->drawMoreIcon(Landroid/graphics/Canvas;)V

    .line 3637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3638
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1e

    :cond_338
    move-object v3, v14

    goto/16 :goto_c0

    :cond_33b
    move v4, v3

    goto/16 :goto_2b6

    :cond_33e
    move-object v4, v3

    goto/16 :goto_1d6

    :cond_341
    move v3, v4

    goto/16 :goto_123

    :cond_344
    move v3, v12

    goto/16 :goto_104

    :cond_347
    move-object v3, v8

    goto/16 :goto_c0
.end method

.method private drawCalendarView(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 3435
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mSrcRect:Landroid/graphics/Rect;

    .line 3436
    .local v3, src:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDestRect:Landroid/graphics/Rect;

    .line 3438
    .local v1, dest:Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 3439
    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 3440
    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 3441
    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 3444
    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayBgColor:I

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 3447
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 3448
    .local v2, p:Landroid/graphics/Paint;
    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayGridColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3449
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3451
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3453
    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 3454
    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 3455
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3458
    .local v0, count:I
    iget-boolean v4, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-eqz v4, :cond_3f

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->getNormalEventCount()I

    move-result v4

    if-lez v4, :cond_3f

    .line 3459
    invoke-direct {p0, p1, v3, v1, v0}, Lcom/android/calendar/CalendarView;->drawBriefDayView(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 3471
    :goto_3e
    return-void

    .line 3463
    :cond_3f
    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 3464
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3467
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v4}, Lcom/android/calendar/CalendarView;->drawMoreIcon(Landroid/graphics/Canvas;)V

    .line 3469
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v3, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3470
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3e
.end method

.method private drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 8
    .parameter "r"
    .parameter "left"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 3125
    iget v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTimeMarkerBorderColor:I

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3126
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    sget v1, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3127
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    sget v1, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3128
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3129
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3130
    invoke-virtual {p4, p1, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3132
    iget v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTimeLineColor:I

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3133
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3134
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3135
    invoke-virtual {p4, p1, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3136
    return-void
.end method

.method private drawCurrentTimeMarker(ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3109
    sget v0, Lcom/android/calendar/CalendarView;->CURRENT_TIME_MARKER_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    .line 3111
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 3112
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f02008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3114
    add-int/lit8 v0, v0, -0x3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 3115
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    add-int/lit8 v0, v0, -0x8

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 3116
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 3117
    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 3119
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3120
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3121
    return-void
.end method

.method private drawDayHeader(Ljava/lang/String;IIILandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3766
    int-to-float v0, p4

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 3768
    const v0, 0x259d23

    if-gt p3, v0, :cond_12

    const v0, 0x24dc87

    if-ge p3, v0, :cond_8c

    .line 3769
    :cond_12
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3770
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3782
    :cond_20
    :goto_20
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstDate:I

    add-int/2addr v0, p2

    .line 3783
    iget v2, p0, Lcom/android/calendar/CalendarView;->mMonthLength:I

    if-le v0, v2, :cond_2a

    .line 3784
    iget v2, p0, Lcom/android/calendar/CalendarView;->mMonthLength:I

    sub-int/2addr v0, v2

    .line 3787
    :cond_2a
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3788
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v2, v2, p2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v2, v2, p2

    iget v2, v2, Lcom/android/calendar/CalendarView$DayHeader;->cell:I

    if-eq v2, p3, :cond_58

    .line 3794
    :cond_3c
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    new-instance v3, Lcom/android/calendar/CalendarView$DayHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/calendar/CalendarView$DayHeader;-><init>(Lcom/android/calendar/CalendarView$1;)V

    aput-object v3, v2, p2

    .line 3795
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v2, v2, p2

    iput p3, v2, Lcom/android/calendar/CalendarView$DayHeader;->cell:I

    .line 3796
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v2, v2, p2

    iput-object p1, v2, Lcom/android/calendar/CalendarView$DayHeader;->dayName:Ljava/lang/String;

    .line 3797
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v2, v2, p2

    iput-object v0, v2, Lcom/android/calendar/CalendarView$DayHeader;->dayNum:Ljava/lang/String;

    .line 3800
    :cond_58
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3802
    iget v2, p0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/calendar/CalendarView;->mWeekBannerTextSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 3803
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/android/calendar/CalendarView$DayHeader;->dayName:Ljava/lang/String;

    invoke-virtual {p5, v3, v1, v2, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3804
    iget v2, p0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    iget v3, p0, Lcom/android/calendar/CalendarView;->mWeekBannerTextSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 3805
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->dayHeaders:[Lcom/android/calendar/CalendarView$DayHeader;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/android/calendar/CalendarView$DayHeader;->dayNum:Ljava/lang/String;

    invoke-virtual {p5, v2, v1, v0, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3806
    return-void

    .line 3772
    :cond_8c
    invoke-direct {p0, p2, p6}, Lcom/android/calendar/CalendarView;->getDayPaint(ILandroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p6

    .line 3773
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a2

    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-eqz v0, :cond_a2

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ne v0, p3, :cond_a2

    .line 3775
    sget v0, Lcom/android/calendar/CalendarView;->mWeekDayColor:I

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3777
    :cond_a2
    const/4 v0, 0x1

    if-ne p7, v0, :cond_20

    .line 3778
    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekSundayColor:I

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_20
.end method

.method private drawDayHeaderAllDayIcon(ILandroid/graphics/Rect;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9
    .parameter "day"
    .parameter "r"
    .parameter "x"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 3814
    const/4 v0, 0x5

    .line 3815
    .local v0, i:I
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3816
    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 3817
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayHeight:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 3818
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayWidth:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 3820
    :cond_1a
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v1, v1, p1

    aget v1, v1, v0

    if-eqz v1, :cond_3b

    .line 3821
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v1, v1, p1

    aget v1, v1, v0

    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3822
    invoke-virtual {p4, p2, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3823
    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 3824
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayWidth:I

    sub-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 3826
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    .line 3827
    if-gez v0, :cond_1a

    .line 3835
    return-void
.end method

.method private drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 21
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 3700
    const/4 v12, 0x0

    .line 3701
    .local v12, isHoliday:Z
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3702
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3703
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3704
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->getWidth()I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekHeaderBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3706
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekHeaderBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3708
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekAllDayBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    .line 3709
    .local v16, weekEventBgHeight:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/CalendarView;->mhasAllDayEvents:Z

    if-eqz v1, :cond_5f

    .line 3710
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3711
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v1, v16

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3712
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekAllDayBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3713
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekAllDayBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3716
    :cond_5f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mWeekBannerTextSize:I

    int-to-float v1, v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3717
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3718
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 3719
    .local v4, x:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    .line 3720
    .local v14, deltaX:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    .line 3721
    .local v8, cell:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v9, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v9, v10}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v15

    .line 3722
    .local v15, today:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    .line 3724
    .local v13, dayNames:[Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3726
    const/4 v2, 0x0

    .local v2, day:I
    :goto_95
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ge v2, v1, :cond_185

    .line 3730
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_e3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-eqz v1, :cond_e3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ne v1, v8, :cond_e3

    .line 3732
    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 3733
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    add-int/2addr v1, v3

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3734
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3735
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    add-int/2addr v1, v3

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3736
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekFocusDay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3737
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekFocusDay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3739
    :cond_e3
    if-ne v8, v15, :cond_153

    .line 3742
    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 3743
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    add-int/2addr v1, v3

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3744
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3745
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    add-int/2addr v1, v3

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3746
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekToday:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3747
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mWeekToday:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3749
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v1, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    if-eqz v1, :cond_13a

    .line 3750
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int v1, v1, v16

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 3751
    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/CalendarView;->drawDayHeaderAllDayIcon(ILandroid/graphics/Rect;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 3760
    :cond_13a
    :goto_13a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mStartDay:I

    add-int/2addr v1, v2

    aget-object v6, v13, v1

    move-object/from16 v5, p0

    move v7, v2

    move v9, v4

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v5 .. v12}, Lcom/android/calendar/CalendarView;->drawDayHeader(Ljava/lang/String;IIILandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    .line 3761
    add-int/2addr v4, v14

    .line 3726
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_95

    .line 3753
    :cond_153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v1, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    if-eqz v1, :cond_13a

    .line 3754
    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 3755
    move-object/from16 v0, p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    add-int/2addr v1, v3

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3756
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    add-int v1, v1, v16

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 3757
    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/CalendarView;->drawDayHeaderAllDayIcon(ILandroid/graphics/Rect;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_13a

    .line 3763
    :cond_185
    return-void
.end method

.method private drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    .line 2786
    iget v0, p1, Lcom/android/calendar/Event;->color:I

    .line 2787
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v6

    .line 2789
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2792
    iget v1, p1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    if-ne v1, v8, :cond_120

    const/4 v1, 0x1

    .line 2793
    :goto_11
    if-eqz v1, :cond_38

    .line 2794
    const/high16 v1, -0x100

    and-int/2addr v1, v0

    .line 2795
    const v2, 0xffffff

    and-int/2addr v0, v2

    .line 2796
    const/high16 v2, 0xff

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    .line 2797
    const v3, 0xff00

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    .line 2798
    and-int/lit16 v0, v0, 0xff

    .line 2799
    shr-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x10

    shr-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    shr-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v2

    .line 2800
    const v2, 0x7f7f7f

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 2816
    :cond_38
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2817
    sget v0, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2819
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    .line 2820
    iget v0, p1, Lcom/android/calendar/Event;->top:F

    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 2821
    iget v0, p1, Lcom/android/calendar/Event;->bottom:F

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    .line 2822
    iget v0, p1, Lcom/android/calendar/Event;->left:F

    iput v0, v7, Landroid/graphics/RectF;->left:F

    .line 2823
    iget v0, p1, Lcom/android/calendar/Event;->right:F

    iput v0, v7, Landroid/graphics/RectF;->right:F

    .line 2825
    if-nez p5, :cond_c6

    .line 2826
    iget v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_123

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v0

    if-eqz v0, :cond_123

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v0, p1, :cond_123

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v0, :cond_123

    .line 2828
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDragEventRectSpan:F

    sub-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->left:F

    .line 2829
    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDragEventRectSpan:F

    sub-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 2830
    iget v0, v7, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDragEventRectSpan:F

    add-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->right:F

    .line 2831
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDragEventRectSpan:F

    add-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    .line 2833
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintShadow:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBlurMaskfilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 2834
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintShadow:Landroid/graphics/Paint;

    const/high16 v1, -0x8000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2836
    iget v1, v7, Landroid/graphics/RectF;->right:F

    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDragEventRectShadow:F

    add-float/2addr v2, v0

    iget v0, v7, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/android/calendar/CalendarView;->mDragEventRectShadow:F

    add-float/2addr v3, v0

    iget v4, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mPaintShadow:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2838
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDragEventRectShadow:F

    add-float/2addr v1, v0

    iget v2, v7, Landroid/graphics/RectF;->bottom:F

    iget v0, v7, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/android/calendar/CalendarView;->mDragEventRectShadow:F

    add-float/2addr v3, v0

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDragEventRectShadow:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mPaintShadow:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2841
    iget v0, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    invoke-virtual {p2, v7, v0, v1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2848
    :cond_c6
    :goto_c6
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v0, p1, :cond_12b

    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-ne v0, v8, :cond_12b

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v0, :cond_12b

    .line 2850
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2851
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 2856
    :goto_e6
    iget v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_133

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v0

    if-eqz v0, :cond_133

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v0, p1, :cond_133

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v0, :cond_133

    .line 2858
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDragEventRectStroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2859
    iget v0, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusLarge:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusLarge:F

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p2, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2867
    :goto_10c
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventTextMargin:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->left:F

    .line 2868
    iget v0, v7, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventTextMargin:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->right:F

    .line 2870
    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2872
    return-object v7

    .line 2792
    :cond_120
    const/4 v1, 0x0

    goto/16 :goto_11

    .line 2843
    :cond_123
    iget v0, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    invoke-virtual {p2, v7, v0, v1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_c6

    .line 2853
    :cond_12b
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    iget v1, p1, Lcom/android/calendar/Event;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_e6

    .line 2862
    :cond_133
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventRectStroke:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2863
    iget v0, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p2, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_10c
.end method

.method private drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2876
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/CalendarView;->mDrawTextInEventRect:Z

    if-nez v2, :cond_7

    .line 3100
    :cond_6
    :goto_6
    return-void

    .line 2880
    :cond_7
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float v3, v2, v3

    .line 2881
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float v11, v2, v4

    .line 2882
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mEventTextAscent:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mNormalTextTopMargin:F

    add-float v10, v2, v4

    .line 2884
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mEventTextHeight:I

    .line 2886
    int-to-float v2, v14

    cmpg-float v2, v11, v2

    if-ltz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/Event;->getMaxColumns()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_42

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v4, 0x7

    if-eq v2, v4, :cond_6

    .line 2891
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v2, v2, Lcom/android/calendar/CalendarActivity;->mCalendarIcons:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/Event;->calendarId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2893
    if-eqz v2, :cond_331

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_331

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_331

    .line 2894
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2895
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/Event;->left:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/CalendarView;->mBottomGap:I

    add-int/2addr v4, v5

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/calendar/Event;->top:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mBottomGap:I

    add-int/2addr v5, v6

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/calendar/Event;->left:F

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/CalendarView;->mBottomGap:I

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v6, v7

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/calendar/Event;->top:F

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mBottomGap:I

    add-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2898
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2899
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v3, v2

    move v8, v2

    .line 2902
    :goto_b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2903
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 2904
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "_id=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/calendar/Event;->calendarId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2905
    const/4 v9, 0x0

    .line 2907
    :try_start_d4
    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_db
    .catchall {:try_start_d4 .. :try_end_db} :catchall_320

    move-result-object v3

    .line 2909
    if-nez v3, :cond_f9

    .line 2910
    :try_start_de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarView;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 2911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarView;->TAG:Ljava/lang/String;

    const-string v4, "Query has some problem. The calendarCursor is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catchall {:try_start_de .. :try_end_f2} :catchall_1e6

    .line 2943
    :cond_f2
    if-eqz v3, :cond_6

    .line 2944
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 2916
    :cond_f9
    :try_start_f9
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1ed

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1ed

    .line 2917
    const-string v2, ""

    .line 2918
    const-string v2, ""

    .line 2919
    const/4 v2, 0x4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2921
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2922
    if-nez v2, :cond_117

    .line 2923
    const-string v2, ""

    .line 2924
    :cond_117
    invoke-static {v4, v2}, Lcom/android/calendar/Utils;->getCalendarType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2925
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2933
    const/4 v4, 0x6

    if-eq v2, v4, :cond_124

    const/4 v4, 0x4

    if-ne v2, v4, :cond_1de

    .line 2935
    :cond_124
    sget v2, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_12b
    .catchall {:try_start_f9 .. :try_end_12b} :catchall_1e6

    .line 2943
    :goto_12b
    if-eqz v3, :cond_130

    .line 2944
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2950
    :cond_130
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2951
    const/4 v3, 0x1

    new-array v3, v3, [F

    .line 2952
    const-string v4, "."

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 2953
    const/4 v4, 0x0

    aget v3, v3, v4

    const/high16 v4, 0x4040

    mul-float v15, v3, v4

    .line 2955
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/CalendarView;->drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2957
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 2958
    const/16 v4, 0x1f4

    if-le v2, v4, :cond_160

    .line 2959
    const/4 v2, 0x0

    const/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2960
    const/16 v2, 0x1f4

    .line 2966
    :cond_160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 2969
    const/4 v4, 0x0

    .line 2970
    const/4 v6, 0x0

    move v7, v2

    move v12, v11

    move v13, v8

    move-object v8, v3

    move v11, v10

    move-object v10, v3

    move v3, v4

    .line 2973
    :goto_172
    if-ge v3, v7, :cond_314

    add-int/lit8 v2, v14, 0x1

    int-to-float v2, v2

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_314

    .line 2974
    mul-int/lit8 v2, v14, 0x2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gez v2, :cond_1f5

    const/4 v2, 0x1

    .line 2977
    :cond_185
    :goto_185
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2978
    const/16 v5, 0x20

    if-eq v4, v5, :cond_1f7

    .line 2983
    :goto_18d
    const/4 v9, 0x0

    move v5, v3

    move v4, v3

    .line 2987
    :goto_190
    if-ge v5, v7, :cond_32d

    .line 2988
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 2992
    const/16 v17, 0x20

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_19f

    move v4, v5

    .line 2995
    :cond_19f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    move-object/from16 v16, v0

    aget v16, v16, v5

    add-float v9, v9, v16

    .line 2999
    cmpl-float v16, v9, v13

    if-lez v16, :cond_201

    .line 3000
    if-le v4, v3, :cond_1fc

    if-nez v2, :cond_1fc

    .line 3002
    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move/from16 v18, v4

    move-object v4, v5

    move/from16 v5, v18

    .line 3018
    :goto_1ba
    cmpg-float v10, v9, v13

    if-gtz v10, :cond_1c3

    .line 3019
    invoke-virtual {v8, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v5, v7

    .line 3023
    :cond_1c3
    if-eqz v2, :cond_32a

    cmpl-float v9, v9, v13

    if-lez v9, :cond_32a

    if-lez v5, :cond_32a

    .line 3024
    add-int/lit8 v9, v5, -0x1

    .line 3027
    const/4 v4, 0x0

    .line 3028
    :goto_1ce
    cmpg-float v10, v4, v15

    if-gtz v10, :cond_204

    if-ltz v9, :cond_204

    .line 3029
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    aget v10, v10, v9

    add-float/2addr v4, v10

    .line 3030
    add-int/lit8 v9, v9, -0x1

    goto :goto_1ce

    .line 2937
    :cond_1de
    const/4 v2, -0x1

    :try_start_1df
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_1e4
    .catchall {:try_start_1df .. :try_end_1e4} :catchall_1e6

    goto/16 :goto_12b

    .line 2943
    :catchall_1e6
    move-exception v2

    :goto_1e7
    if-eqz v3, :cond_1ec

    .line 2944
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1ec
    throw v2

    .line 2940
    :cond_1ed
    const/4 v2, -0x1

    :try_start_1ee
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_1f3
    .catchall {:try_start_1ee .. :try_end_1f3} :catchall_1e6

    goto/16 :goto_12b

    .line 2974
    :cond_1f5
    const/4 v2, 0x0

    goto :goto_185

    .line 2980
    :cond_1f7
    add-int/lit8 v3, v3, 0x1

    .line 2981
    if-lt v3, v7, :cond_185

    goto :goto_18d

    .line 3010
    :cond_1fc
    invoke-virtual {v8, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1ba

    .line 2987
    :cond_201
    add-int/lit8 v5, v5, 0x1

    goto :goto_190

    .line 3035
    :cond_204
    :try_start_204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_21a
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_204 .. :try_end_21a} :catch_2f5

    move-result-object v3

    .line 3041
    :goto_21b
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v9

    cmpl-float v4, v13, v4

    if-nez v4, :cond_2fa

    .line 3042
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x3f80

    add-float/2addr v4, v9

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v4, v11, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3046
    :goto_236
    int-to-float v4, v14

    add-float v9, v11, v4

    .line 3047
    int-to-float v4, v14

    sub-float v10, v12, v4

    .line 3050
    if-lt v5, v7, :cond_324

    if-nez v2, :cond_324

    if-nez v6, :cond_324

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_324

    .line 3051
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v2, :cond_25d

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_271

    :cond_25d
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    if-eqz v2, :cond_324

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_324

    .line 3053
    :cond_271
    const/16 v2, 0xb

    new-array v11, v2, [F

    .line 3061
    const-string v2, "A..."

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v11}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 3062
    const/4 v4, 0x0

    .line 3063
    const/4 v2, 0x0

    .line 3065
    :cond_27e
    aget v12, v11, v2

    add-float/2addr v4, v12

    .line 3066
    add-int/lit8 v2, v2, 0x1

    .line 3067
    const/16 v12, 0xb

    if-lt v2, v12, :cond_27e

    .line 3069
    cmpg-float v2, v4, v13

    if-gez v2, :cond_324

    .line 3070
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v2, :cond_30b

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_30b

    .line 3071
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3074
    :goto_2a7
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/calendar/CalendarView;->drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3076
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 3077
    const/16 v4, 0x1f4

    if-le v2, v4, :cond_2be

    .line 3078
    const/4 v2, 0x0

    const/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3079
    const/16 v2, 0x1f4

    .line 3087
    :cond_2be
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/CalendarView;->mCharWidths:[F

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 3089
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/CalendarView;->mEventAgendaTextSize:I

    int-to-float v4, v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3090
    const/16 v4, 0xcc

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3092
    const/4 v5, 0x0

    .line 3093
    const/4 v4, 0x1

    move-object v6, v3

    move/from16 v18, v5

    move v5, v2

    move v2, v4

    move-object v4, v3

    move/from16 v3, v18

    .line 3097
    :goto_2e2
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    sub-float v8, v7, v8

    move v7, v5

    move v11, v9

    move v12, v10

    move v13, v8

    move-object v10, v4

    move-object v8, v6

    move v6, v2

    .line 3098
    goto/16 :goto_172

    .line 3036
    :catch_2f5
    move-exception v3

    .line 3037
    const-string v3, "..."

    goto/16 :goto_21b

    .line 3044
    :cond_2fa
    const/high16 v4, 0x3f80

    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v9

    sub-float/2addr v4, v13

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v4, v11, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_236

    .line 3073
    :cond_30b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/Event;->description:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a7

    .line 3099
    :cond_314
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarView;->mEventTextSize:I

    int-to-float v2, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_6

    .line 2943
    :catchall_320
    move-exception v2

    move-object v3, v9

    goto/16 :goto_1e7

    :cond_324
    move v2, v6

    move-object v4, v3

    move v3, v5

    move-object v6, v8

    move v5, v7

    goto :goto_2e2

    :cond_32a
    move-object v3, v4

    goto/16 :goto_21b

    :cond_32d
    move v5, v3

    move-object v4, v10

    goto/16 :goto_1ba

    :cond_331
    move v8, v3

    goto/16 :goto_b3
.end method

.method private drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 29
    .parameter "date"
    .parameter "left"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2683
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 2684
    .local v12, eventTextPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    .line 2685
    .local v6, cellWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    move/from16 v19, v0

    .line 2694
    .local v19, cellHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 2695
    .local v20, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 2697
    .local v22, numEvents:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 2699
    .local v2, geometry:Lcom/android/calendar/EventGeometry;
    const/16 v21, 0x0

    .local v21, i:I
    :goto_1e
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c2

    .line 2700
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    .line 2702
    .local v7, event:Lcom/android/calendar/Event;
    iget-boolean v3, v7, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v3, :cond_31

    .line 2699
    :cond_2e
    :goto_2e
    add-int/lit8 v21, v21, 0x1

    goto :goto_1e

    .line 2707
    :cond_31
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_45

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v3

    if-eqz v3, :cond_45

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eq v7, v3, :cond_b4

    :cond_45
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_51

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v3, :cond_b4

    .line 2709
    :cond_51
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2720
    :cond_61
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8d

    invoke-virtual {v7}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_8d

    add-int/lit8 v3, v21, 0x1

    move/from16 v0, v22

    if-ge v3, v0, :cond_8d

    add-int/lit8 v3, v21, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    invoke-virtual {v3}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8d

    .line 2723
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v7, v1}, Lcom/android/calendar/CalendarView;->drawMoreIcon(Lcom/android/calendar/Event;Landroid/graphics/Canvas;)V

    .line 2727
    :cond_8d
    invoke-virtual {v7}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2e

    .line 2736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eq v3, v7, :cond_af

    .line 2737
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/CalendarView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;

    move-result-object v10

    .line 2738
    .local v10, rf:Landroid/graphics/RectF;
    const/4 v13, 0x2

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v11, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/CalendarView;->drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 2741
    .end local v10           #rf:Landroid/graphics/RectF;
    :cond_af
    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/android/calendar/Event;->bedrawed:Z

    goto/16 :goto_2e

    .line 2713
    :cond_b4
    iget v3, v7, Lcom/android/calendar/Event;->startDay:I

    move/from16 v0, p1

    if-gt v3, v0, :cond_2e

    iget v3, v7, Lcom/android/calendar/Event;->endDay:I

    move/from16 v0, p1

    if-ge v3, v0, :cond_61

    goto/16 :goto_2e

    .line 2745
    .end local v7           #event:Lcom/android/calendar/Event;
    :cond_c2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v3, :cond_f5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v3, v3, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_f5

    .line 2751
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    const/16 v18, 0x0

    move-object/from16 v13, p0

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, v12

    invoke-direct/range {v13 .. v18}, Lcom/android/calendar/CalendarView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;

    move-result-object v10

    .line 2752
    .restart local v10       #rf:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    const/4 v13, 0x2

    move-object/from16 v8, p0

    move-object/from16 v11, p4

    invoke-direct/range {v8 .. v13}, Lcom/android/calendar/CalendarView;->drawEventText(Lcom/android/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 2753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/calendar/Event;->bedrawed:Z

    .line 2756
    .end local v10           #rf:Landroid/graphics/RectF;
    :cond_f5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_128

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_128

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v3, :cond_128

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v3

    if-eqz v3, :cond_128

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v3, v3, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_128

    .line 2758
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    const/16 v18, 0x1

    move-object/from16 v13, p0

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, v12

    invoke-direct/range {v13 .. v18}, Lcom/android/calendar/CalendarView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;

    .line 2762
    :cond_128
    return-void
.end method

.method private drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 14
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2142
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v8

    .line 2145
    .local v8, savedStyle:Landroid/graphics/Paint$Style;
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2146
    iget v0, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2147
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2148
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2149
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDayGridColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2152
    sget v0, Lcom/android/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2153
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2154
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2155
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2156
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    int-to-float v1, v0

    .line 2158
    .local v1, startX:F
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    int-to-float v3, v0

    .line 2159
    .local v3, stopX:F
    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    int-to-float v9, v0

    .line 2160
    .local v9, y:F
    iget v0, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    .line 2164
    .local v6, deltaY:F
    const/4 v7, 0x0

    .local v7, hour:I
    :goto_3a
    const/16 v0, 0x18

    if-ge v7, v0, :cond_74

    .line 2165
    add-float/2addr v9, v6

    .line 2166
    const/high16 v0, 0x3f80

    sub-float v2, v9, v0

    const/high16 v0, 0x3f80

    sub-float v4, v9, v0

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2167
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_71

    move-object v0, p2

    move v2, v9

    move v4, v9

    move-object v5, p3

    .line 2168
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2169
    const/high16 v0, 0x4000

    div-float v0, v6, v0

    sub-float v0, v9, v0

    const/high16 v2, 0x3f80

    sub-float v2, v0, v2

    const/high16 v0, 0x4000

    div-float v0, v6, v0

    sub-float v0, v9, v0

    const/high16 v4, 0x3f80

    sub-float v4, v0, v4

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2164
    :cond_71
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 2174
    :cond_74
    invoke-virtual {p3, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2175
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2176
    return-void
.end method

.method private drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2182
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6a

    .line 2184
    sget v0, Lcom/android/calendar/CalendarView;->mCalendarGridAreaSelected:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2185
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int/2addr v0, v1

    .line 2186
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 2187
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2189
    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_bf

    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayGap:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    :goto_31
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2191
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c7

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayGap:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :goto_43
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2193
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekFocus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2194
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekFocus:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2197
    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2198
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2199
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->saveSelectionPosition(FFFF)V

    .line 2202
    :cond_6a
    sget v0, Lcom/android/calendar/CalendarView;->mCalendarHourLabel:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2203
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_ce

    .line 2204
    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekHourTextSize:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2208
    :goto_7a
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2209
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2211
    invoke-virtual {p3}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 2213
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mHourGap:I

    sub-int v7, v1, v2

    .line 2215
    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v6, v0, -0x1

    .line 2221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2223
    iget v0, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v8, v0, 0x1

    .line 2225
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 2228
    const/4 v0, 0x1

    :goto_ae
    const/16 v1, 0x18

    if-gt v0, v1, :cond_1d8

    .line 2229
    sget-object v1, Lcom/android/calendar/CalendarData;->s24Hours:[Ljava/lang/String;

    aget-object v1, v1, v0

    int-to-float v2, v7

    int-to-float v3, v6

    invoke-virtual {p2, v1, v2, v3, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2230
    add-int/2addr v6, v8

    .line 2228
    add-int/lit8 v0, v0, 0x1

    goto :goto_ae

    .line 2189
    :cond_bf
    iget v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    goto/16 :goto_31

    .line 2191
    :cond_c7
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v0, v1

    goto/16 :goto_43

    .line 2206
    :cond_ce
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHourTextSize:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_7a

    .line 2234
    :cond_d5
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_ec

    .line 2237
    const/4 v0, 0x1

    :goto_db
    const/16 v1, 0x18

    if-gt v0, v1, :cond_1d8

    .line 2239
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    aget-object v1, v1, v0

    int-to-float v2, v7

    int-to-float v3, v6

    invoke-virtual {p2, v1, v2, v3, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2240
    add-int/2addr v6, v8

    .line 2237
    add-int/lit8 v0, v0, 0x1

    goto :goto_db

    .line 2246
    :cond_ec
    const-string v3, ""

    .line 2247
    const-string v2, ""

    .line 2248
    const-string v1, ""

    .line 2249
    const-string v0, ""

    .line 2253
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_160

    .line 2256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2268
    :goto_13a
    const/4 v4, 0x1

    :goto_13b
    const/16 v9, 0xc

    if-ge v4, v9, :cond_193

    .line 2270
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2271
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2272
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2273
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2275
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    int-to-float v10, v7

    int-to-float v11, v6

    invoke-virtual {p2, v9, v10, v11, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2276
    add-int/2addr v6, v8

    .line 2268
    add-int/lit8 v4, v4, 0x1

    goto :goto_13b

    .line 2262
    :cond_160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13a

    .line 2280
    :cond_193
    const/16 v4, 0xc

    :goto_195
    const/16 v9, 0x18

    if-ge v4, v9, :cond_1ba

    .line 2282
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2283
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2284
    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2285
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2287
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    int-to-float v10, v7

    int-to-float v11, v6

    invoke-virtual {p2, v9, v10, v11, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2288
    add-int/2addr v6, v8

    .line 2280
    add-int/lit8 v4, v4, 0x1

    goto :goto_195

    .line 2293
    :cond_1ba
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2294
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2295
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2296
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v7

    int-to-float v2, v6

    invoke-virtual {p2, v0, v1, v2, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2335
    :cond_1d8
    return-void
.end method

.method private drawMoreIcon(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    .line 3643
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    if-ne v1, v2, :cond_1b

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v1, v2, :cond_1b

    .line 3645
    iget v1, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    .line 3646
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mMoreIconPressed:Landroid/graphics/drawable/Drawable;

    .line 3650
    .local v0, moreIcon:Landroid/graphics/drawable/Drawable;
    :goto_10
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mMoreIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3651
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3652
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    .line 3654
    .end local v0           #moreIcon:Landroid/graphics/drawable/Drawable;
    :cond_1b
    return-void

    .line 3648
    :cond_1c
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    .restart local v0       #moreIcon:Landroid/graphics/drawable/Drawable;
    goto :goto_10
.end method

.method private drawMoreIcon(Lcom/android/calendar/Event;Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "event"
    .parameter "canvas"

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 2767
    .local v0, rect:Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v1, p1, :cond_3d

    .line 2768
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2769
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2770
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2771
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2779
    :goto_32
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2780
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2781
    return-void

    .line 2773
    :cond_3d
    iget v1, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2774
    iget v1, p1, Lcom/android/calendar/Event;->right:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2775
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2776
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_32
.end method

.method private drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x20

    const/16 v2, 0xa

    .line 3924
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3925
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 3926
    return-object v0
.end method

.method private findPressedEvent(II)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4678
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    if-ge p1, v0, :cond_8

    move v0, v1

    .line 4713
    :goto_7
    return v0

    .line 4682
    :cond_8
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    sub-int v0, p1, v0

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    div-int/2addr v0, v3

    .line 4683
    iget v3, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-lt v0, v3, :cond_17

    .line 4684
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/lit8 v0, v0, -0x1

    .line 4686
    :cond_17
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    add-int/2addr v3, v0

    .line 4687
    const v0, 0x259d23

    if-gt v3, v0, :cond_24

    const v0, 0x24dc87

    if-ge v3, v0, :cond_26

    :cond_24
    move v0, v1

    .line 4688
    goto :goto_7

    .line 4691
    :cond_26
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-le v0, v2, :cond_37

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v0, v4

    if-ge p2, v0, :cond_37

    .line 4692
    iput v3, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 4693
    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    move v0, v1

    .line 4694
    goto :goto_7

    .line 4696
    :cond_37
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    .line 4697
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v2, :cond_4b

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v0, p2

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-ge v0, v4, :cond_4b

    .line 4698
    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 4712
    :cond_46
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/calendar/CalendarView;->findSelectedEvent(IIIZ)V

    move v0, v2

    .line 4713
    goto :goto_7

    .line 4700
    :cond_4b
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-ge v0, v4, :cond_69

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v2, :cond_69

    .line 4701
    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, v4

    sub-int v0, p2, v0

    iget v4, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v0, v4

    .line 4706
    :goto_61
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 4707
    const/16 v4, 0x18

    if-lt v0, v4, :cond_46

    move v0, v1

    .line 4708
    goto :goto_7

    .line 4703
    :cond_69
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    sub-int v0, p2, v0

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v0, v4

    .line 4704
    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/2addr v0, v4

    goto :goto_61
.end method

.method private findPressedMoreIcon(II)I
    .registers 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, -0x1

    .line 4803
    iget v7, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v9, 0x7

    if-ne v7, v9, :cond_8

    move v7, v8

    .line 4837
    :goto_7
    return v7

    .line 4806
    :cond_8
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 4807
    .local v0, date:I
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 4808
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4809
    .local v5, numEvents:I
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 4811
    .local v4, iconHeight:I
    iget v7, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v9, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    sub-int/2addr v7, v9

    add-int/2addr p2, v7

    .line 4813
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1d
    if-ge v3, v5, :cond_93

    .line 4814
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 4816
    .local v1, event:Lcom/android/calendar/Event;
    iget-boolean v7, v1, Lcom/android/calendar/Event;->allDay:Z

    const/4 v9, 0x1

    if-eq v7, v9, :cond_32

    iget v7, v1, Lcom/android/calendar/Event;->startDay:I

    if-gt v7, v0, :cond_32

    iget v7, v1, Lcom/android/calendar/Event;->endDay:I

    if-ge v7, v0, :cond_35

    .line 4813
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 4821
    :cond_35
    invoke-virtual {v1}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_32

    add-int/lit8 v7, v3, 0x1

    if-ge v7, v5, :cond_32

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    invoke-virtual {v7}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    const/4 v9, 0x4

    if-ne v7, v9, :cond_32

    .line 4825
    iget v7, v1, Lcom/android/calendar/Event;->right:F

    const/high16 v9, 0x3f80

    add-float/2addr v7, v9

    int-to-float v9, p1

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_32

    iget v7, v1, Lcom/android/calendar/Event;->top:F

    int-to-float v9, p2

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_32

    iget v7, v1, Lcom/android/calendar/Event;->top:F

    int-to-float v9, v4

    add-float/2addr v7, v9

    int-to-float v9, p2

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_32

    .line 4826
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mMoreIconRect:Landroid/graphics/Rect;

    .line 4827
    .local v6, rect:Landroid/graphics/Rect;
    iget v7, v1, Lcom/android/calendar/Event;->top:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 4829
    iget v7, v1, Lcom/android/calendar/Event;->right:F

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 4830
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 4831
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 4833
    add-int/lit8 v7, v3, 0x1

    goto/16 :goto_7

    .end local v1           #event:Lcom/android/calendar/Event;
    .end local v6           #rect:Landroid/graphics/Rect;
    :cond_93
    move v7, v8

    .line 4837
    goto/16 :goto_7
.end method

.method private findSelectedEvent(IIIZ)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4841
    .line 4842
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 4843
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4846
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4848
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    if-eqz v0, :cond_77

    .line 4850
    const v2, 0x461c4000

    .line 4851
    const/4 v1, 0x0

    .line 4852
    const/4 v0, 0x0

    move v4, v0

    :goto_18
    if-ge v4, v6, :cond_12a

    .line 4853
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 4854
    iget-boolean v3, v0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v3, :cond_2c

    move-object v0, v1

    move v1, v2

    .line 4852
    :goto_26
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_18

    .line 4858
    :cond_2c
    iget v3, v0, Lcom/android/calendar/Event;->startDay:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-gt v3, v7, :cond_126

    iget v3, v0, Lcom/android/calendar/Event;->endDay:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-lt v3, v7, :cond_126

    .line 4859
    iget v3, v0, Lcom/android/calendar/Event;->top:F

    iget v7, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v7, p2

    int-to-float v7, v7

    cmpg-float v3, v3, v7

    if-gez v3, :cond_5e

    iget v3, v0, Lcom/android/calendar/Event;->bottom:F

    iget v7, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v7, p2

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-lez v3, :cond_5e

    .line 4862
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4879
    :goto_51
    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4882
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-nez v0, :cond_5d

    .line 4883
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getNewEvent()Lcom/android/calendar/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4951
    :cond_5d
    :goto_5d
    return-void

    .line 4867
    :cond_5e
    iget v3, v0, Lcom/android/calendar/Event;->top:F

    iget v7, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v7, p2

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_72

    .line 4868
    iget v3, v0, Lcom/android/calendar/Event;->top:F

    int-to-float v7, p2

    sub-float/2addr v3, v7

    .line 4872
    :goto_6c
    cmpg-float v7, v3, v2

    if-gez v7, :cond_126

    move v1, v3

    .line 4874
    goto :goto_26

    .line 4870
    :cond_72
    int-to-float v3, p2

    iget v7, v0, Lcom/android/calendar/Event;->bottom:F

    sub-float/2addr v3, v7

    goto :goto_6c

    .line 4890
    :cond_77
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    sub-int/2addr v0, v1

    add-int v7, p2, v0

    .line 4893
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 4894
    add-int/lit8 v0, p1, -0xa

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 4895
    add-int/lit8 v0, p1, 0xa

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 4896
    add-int/lit8 v0, v7, -0xa

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 4897
    add-int/lit8 v0, v7, 0xa

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 4899
    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 4901
    const/4 v0, 0x0

    move v1, v0

    :goto_94
    if-ge v1, v6, :cond_c0

    .line 4902
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 4904
    iget v3, v0, Lcom/android/calendar/Event;->startDay:I

    if-gt v3, p3, :cond_a4

    iget v3, v0, Lcom/android/calendar/Event;->endDay:I

    if-ge v3, p3, :cond_a8

    .line 4901
    :cond_a4
    :goto_a4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_94

    .line 4908
    :cond_a8
    iget v3, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b4

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_a4

    .line 4913
    :cond_b4
    invoke-virtual {v8, v0, v2}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 4914
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    .line 4920
    :cond_c0
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5d

    .line 4921
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4922
    const/4 v4, 0x0

    .line 4923
    const/4 v3, 0x0

    .line 4924
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    .line 4925
    const/4 v0, 0x0

    move v5, v0

    :goto_d8
    if-ge v5, v6, :cond_110

    .line 4926
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 4927
    int-to-float v2, p1

    int-to-float v9, v7

    invoke-virtual {v8, v2, v9, v0}, Lcom/android/calendar/EventGeometry;->pointToEvent(FFLcom/android/calendar/Event;)F

    move-result v2

    .line 4928
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-nez v9, :cond_102

    if-eqz v3, :cond_102

    .line 4929
    iget v9, v0, Lcom/android/calendar/Event;->top:F

    iget v10, v3, Lcom/android/calendar/Event;->top:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_102

    move-object v2, v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    .line 4925
    :goto_fb
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_d8

    .line 4935
    :cond_102
    cmpg-float v9, v2, v1

    if-gez v9, :cond_122

    .line 4938
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-nez v1, :cond_11d

    move-object v1, v0

    move v11, v2

    move-object v2, v0

    move v0, v11

    .line 4939
    goto :goto_fb

    .line 4942
    :cond_110
    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4948
    if-eqz p4, :cond_5d

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_5d

    .line 4949
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->setSelectionbySelectedEvent()V

    goto/16 :goto_5d

    :cond_11d
    move-object v1, v3

    move v11, v2

    move-object v2, v0

    move v0, v11

    goto :goto_fb

    :cond_122
    move v0, v1

    move-object v2, v4

    move-object v1, v3

    goto :goto_fb

    :cond_126
    move-object v0, v1

    move v1, v2

    goto/16 :goto_26

    :cond_12a
    move-object v0, v1

    goto/16 :goto_51
.end method

.method private getDayPaint(ILandroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 7
    .parameter "day"
    .parameter "p"

    .prologue
    const/4 v3, 0x6

    .line 5492
    move-object v0, p2

    .line 5496
    .local v0, result:Landroid/graphics/Paint;
    iget v1, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 5497
    const/4 v1, 0x5

    if-ne p1, v1, :cond_10

    .line 5498
    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekSaturdayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5548
    :goto_f
    return-object v0

    .line 5499
    :cond_10
    if-ne p1, v3, :cond_18

    .line 5500
    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekSaturdayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_f

    .line 5502
    :cond_18
    sget v1, Lcom/android/calendar/CalendarView;->mWeekDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_f

    .line 5504
    :cond_1e
    if-nez p1, :cond_26

    .line 5505
    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekSaturdayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_f

    .line 5506
    :cond_26
    if-ne p1, v3, :cond_2e

    .line 5507
    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekSaturdayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_f

    .line 5509
    :cond_2e
    sget v1, Lcom/android/calendar/CalendarView;->mWeekDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_f
.end method

.method static getNewEvent(IJI)Lcom/android/calendar/Event;
    .registers 9
    .parameter "julianDay"
    .parameter "utcMillis"
    .parameter "minutesSinceMidnight"

    .prologue
    .line 3856
    invoke-static {}, Lcom/android/calendar/Event;->newInstance()Lcom/android/calendar/Event;

    move-result-object v0

    .line 3857
    .local v0, event:Lcom/android/calendar/Event;
    iput p0, v0, Lcom/android/calendar/Event;->startDay:I

    .line 3858
    iput p0, v0, Lcom/android/calendar/Event;->endDay:I

    .line 3859
    iput-wide p1, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 3860
    iget-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 3861
    iput p3, v0, Lcom/android/calendar/Event;->startTime:I

    .line 3862
    iget v1, v0, Lcom/android/calendar/Event;->startTime:I

    add-int/lit8 v1, v1, 0x3c

    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 3863
    return-object v0
.end method

.method private getNormalEventCount()I
    .registers 7

    .prologue
    .line 4788
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4789
    .local v0, all:I
    const/4 v1, 0x0

    .line 4790
    .local v1, count:I
    if-lez v0, :cond_2e

    .line 4791
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 4792
    .local v2, event:Lcom/android/calendar/Event;
    iget v4, v2, Lcom/android/calendar/Event;->startDay:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-gt v4, v5, :cond_f

    iget v4, v2, Lcom/android/calendar/Event;->endDay:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-lt v4, v5, :cond_f

    .line 4795
    iget-boolean v4, v2, Lcom/android/calendar/Event;->allDay:Z

    if-nez v4, :cond_f

    .line 4796
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 4799
    .end local v2           #event:Lcom/android/calendar/Event;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2e
    return v1
.end method

.method private goMoreEventList()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1313
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    if-gt v0, v1, :cond_d

    .line 1335
    :goto_c
    return-void

    .line 1316
    :cond_d
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iget-wide v1, v0, Lcom/android/calendar/Event;->id:J

    .line 1317
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getGroupId()I

    move-result v0

    .line 1318
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    .line 1319
    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    .line 1320
    iput v4, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1321
    iput v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 1322
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1323
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 1324
    invoke-virtual {p0, v4}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    .line 1325
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedDayInMillis()J

    move-result-wide v3

    .line 1326
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1327
    const-string v6, "eventlist_type"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1328
    const-string v6, "more_event_id"

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1329
    const-string v1, "more_event_group"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1330
    const-string v0, "beginTime"

    invoke-virtual {v5, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1331
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/calendar/EventListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1332
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v5}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 1334
    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mIgnoreEvent:Z

    goto :goto_c
.end method

.method private init(Landroid/content/Context;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x2

    const/high16 v5, 0x4000

    const v3, 0x7f09003a

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 726
    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarView;->setFocusable(Z)V

    .line 730
    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarView;->setFocusableInTouchMode(Z)V

    .line 731
    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarView;->setClickable(Z)V

    .line 734
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget v0, v0, Lcom/android/calendar/CalendarActivity;->mStartDay:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    .line 735
    iget v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_27a

    .line 736
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    .line 743
    :goto_1f
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    .line 745
    const v0, 0x7f080017

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayGridColor:I

    .line 746
    const v0, 0x7f080016

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayBgColor:I

    .line 747
    const v0, 0x7f080007

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/CalendarView;->mCalendarGridAreaSelected:I

    .line 748
    const v0, -0xb4b4b5

    sput v0, Lcom/android/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    .line 749
    const v0, 0x7f080006

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/CalendarView;->mCalendarHourLabel:I

    .line 750
    const/high16 v0, 0x7f08

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    .line 751
    const v0, 0x7f080002

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/CalendarView;->mWeekDayColor:I

    .line 753
    const v0, 0x7f080023

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTimeLineColor:I

    .line 754
    const v0, 0x7f080024

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTimeMarkerBorderColor:I

    .line 756
    const v0, 0x7f0b003c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    .line 757
    const v0, 0x7f0b003d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekCellHeight:I

    .line 758
    const v0, 0x7f0b003e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    .line 759
    const v0, 0x7f0b003f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekHourWidth:I

    .line 760
    const v0, 0x7f0b0040

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekBannerTextSize:I

    .line 761
    const v0, 0x7f0b0041

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekHourTextSize:I

    .line 763
    const v0, 0x7f0b0038

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNormalTextSize:I

    .line 765
    const v0, 0x7f0b001a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayCellHeight:I

    .line 766
    const v0, 0x7f0b001b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayCellWidth:I

    .line 767
    const v0, 0x7f0b001c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayHourWidth:I

    .line 769
    const v0, 0x7f0b001d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mHourGap:I

    .line 770
    const v0, 0x7f0b001d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayHourGap:I

    .line 771
    const v0, 0x7f0b003b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekHourGap:I

    .line 772
    const v0, 0x7f0b0020

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mBottomGap:I

    .line 774
    const v0, 0x7f0b001e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayFirstHourOffset:I

    .line 775
    const v0, 0x7f09002a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayGap:F

    .line 777
    const v0, 0x7f0b0021

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    .line 778
    const v0, 0x7f0b0043

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayHeight:I

    .line 779
    const v0, 0x7f0b0042

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayWidth:I

    .line 780
    const v0, 0x7f0b0018

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDayColorWidth:I

    .line 781
    const v0, 0x7f0b0023

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mAllDayBottomMargin:I

    .line 783
    const v0, 0x7f0b002f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventAgendaTextSize:I

    .line 784
    const v0, 0x7f0b0030

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mHourTextSize:I

    .line 786
    const v0, 0x7f0b0027

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mAllDayTitleTextSize:I

    .line 787
    const v0, 0x7f0b0028

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDayTitleMarginLeft:I

    .line 789
    const v0, 0x7f090037

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventRectStroke:F

    .line 790
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDragEventRectSpan:F

    .line 791
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDragEventRectShadow:F

    .line 792
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDragEventRectStroke:F

    .line 793
    const v0, 0x7f09002b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    .line 794
    const v0, 0x7f09002c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusLarge:F

    .line 795
    const v0, 0x7f09002d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekEventRectRoundRadius:F

    .line 796
    const v0, 0x7f09003b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNormalTextTopMargin:F

    .line 798
    const v0, 0x7f02008e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekFocus:Landroid/graphics/drawable/Drawable;

    .line 799
    const v0, 0x7f020028

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 800
    const v0, 0x7f020029

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mMoreIconPressed:Landroid/graphics/drawable/Drawable;

    .line 801
    const v0, 0x7f02008f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekHeaderBg:Landroid/graphics/drawable/Drawable;

    .line 802
    const v0, 0x7f020090

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekAllDayBg:Landroid/graphics/drawable/Drawable;

    .line 803
    const v0, 0x7f020094

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekToday:Landroid/graphics/drawable/Drawable;

    .line 804
    const v0, 0x7f020093

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mWeekFocusDay:Landroid/graphics/drawable/Drawable;

    .line 806
    const v0, 0x7f09002e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mBriefBottomMargin:F

    .line 808
    const v0, 0x7f090030

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mBriefHourMargin:F

    .line 809
    const v0, 0x7f0b004c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mBriefHourTextSize:I

    .line 816
    const v0, 0x7f07001f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mOrdinaryWeekString:[Ljava/lang/String;

    .line 818
    const v0, 0x7f080008

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 819
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 820
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 821
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 822
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 823
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 825
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 826
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 828
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    const v4, -0x373738

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 829
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 830
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 831
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 835
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    .line 838
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move v0, v1

    .line 840
    :goto_232
    const/4 v4, 0x7

    if-gt v0, v4, :cond_286

    .line 841
    add-int/lit8 v4, v0, -0x1

    .line 843
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    const/16 v6, 0x14

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 844
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    add-int/lit8 v6, v4, 0x7

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    aget-object v7, v7, v4

    aput-object v7, v5, v6

    .line 846
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    const/16 v6, 0x1e

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 849
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26d

    .line 850
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    const/16 v6, 0x32

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 853
    :cond_26d
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    add-int/lit8 v6, v4, 0x7

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    aget-object v4, v7, v4

    aput-object v4, v5, v6

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_232

    .line 737
    :cond_27a
    iget v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    if-ne v0, v9, :cond_282

    .line 738
    iput v1, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    goto/16 :goto_1f

    .line 740
    :cond_282
    iput v8, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    goto/16 :goto_1f

    .line 858
    :cond_286
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNormalTextSize:I

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 859
    new-array v0, v9, [Ljava/lang/String;

    const-string v4, " 28"

    aput-object v4, v0, v8

    const-string v4, " 30"

    aput-object v4, v0, v1

    .line 862
    invoke-direct {p0, v8, v0, v3}, Lcom/android/calendar/CalendarView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    .line 863
    iget v0, p0, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    invoke-direct {p0, v8, v4, v3}, Lcom/android/calendar/CalendarView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/calendar/CalendarView;->mDateStrWidth:I

    .line 865
    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekHourTextSize:I

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 868
    sget-object v0, Lcom/android/calendar/CalendarData;->s12HoursNoAmPm:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    .line 869
    invoke-static {v8}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mAmString:Ljava/lang/String;

    .line 870
    invoke-static {v1}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPmString:Ljava/lang/String;

    .line 872
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    .line 873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 874
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 876
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p1, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mTempDate:Landroid/text/format/Time;

    .line 877
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mTempDate:Landroid/text/format/Time;

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 879
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    .line 880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 881
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 886
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mTodayJulianDay:I

    .line 888
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    .line 889
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    .line 891
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    .line 892
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0032

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewLeft:Landroid/widget/TextView;

    .line 894
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0033

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewRight:Landroid/widget/TextView;

    .line 896
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mBottomGap:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setBottomGap(I)V

    .line 903
    const v0, 0x1080012

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mAllDayDivider:Landroid/graphics/drawable/Drawable;

    .line 904
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mAllDayDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mAllDayDividerHeight:I

    .line 906
    const v0, 0x7f08000c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekSundayColor:I

    .line 907
    const v0, 0x7f08000d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mWeekSaturdayColor:I

    .line 909
    new-instance v0, Lcom/android/calendar/lunar/SolarLunarConverter;

    invoke-direct {v0}, Lcom/android/calendar/lunar/SolarLunarConverter;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSolarLunarConverter:Lcom/android/calendar/lunar/SolarLunarConverter;

    .line 910
    return-void
.end method

.method private initView(Lcom/android/calendar/CalendarView;)V
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1289
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1290
    iget-object v0, p1, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1291
    iput-boolean v2, p1, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1292
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1293
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 1294
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/calendar/CalendarView;->remeasure(II)V

    .line 1296
    iput-object v3, p1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1297
    iput-object v3, p1, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1298
    iget v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mStartDay:I

    .line 1303
    iput-boolean v2, p1, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1305
    iput v2, p1, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1306
    invoke-direct {p1}, Lcom/android/calendar/CalendarView;->recalc()V

    .line 1307
    invoke-virtual {p1}, Lcom/android/calendar/CalendarView;->updateTitle()V

    .line 1308
    return-void
.end method

.method private isEventEditable(Landroid/content/Context;Lcom/android/calendar/Event;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4613
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4638
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 4639
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "_id=%d"

    new-array v5, v7, [Ljava/lang/Object;

    iget v8, p2, Lcom/android/calendar/Event;->calendarId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4640
    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4645
    if-eqz v1, :cond_53

    .line 4646
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4647
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4648
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 4649
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4655
    :goto_34
    iget-object v1, p2, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    if-eqz v1, :cond_51

    if-eqz v4, :cond_51

    .line 4656
    iget-object v1, p2, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 4660
    :goto_40
    const/16 v2, 0x1f4

    if-lt v0, v2, :cond_4f

    move v0, v7

    .line 4662
    :goto_45
    if-eqz v0, :cond_4e

    if-nez v1, :cond_4d

    iget-boolean v0, p2, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v0, :cond_4e

    :cond_4d
    move v6, v7

    .line 4666
    :cond_4e
    return v6

    :cond_4f
    move v0, v6

    .line 4660
    goto :goto_45

    :cond_51
    move v1, v6

    goto :goto_40

    :cond_53
    move v0, v6

    goto :goto_34
.end method

.method private recalc()V
    .registers 11

    .prologue
    const/4 v9, 0x6

    const/4 v4, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x7

    const/4 v6, 0x1

    .line 1117
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget v1, v0, Lcom/android/calendar/CalendarActivity;->mStartDay:I

    .line 1120
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v7, :cond_4b

    .line 1121
    if-ne v1, v7, :cond_117

    .line 1122
    iput v9, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    .line 1129
    :goto_11
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    .line 1130
    iget v2, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    sub-int/2addr v0, v2

    .line 1137
    if-eqz v0, :cond_4b

    .line 1138
    if-gez v0, :cond_1e

    .line 1139
    add-int/lit8 v0, v0, 0x7

    .line 1142
    :cond_1e
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_129

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    const/16 v3, 0x76d

    if-ne v2, v3, :cond_129

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    const/16 v3, 0x1d

    if-eq v2, v3, :cond_3e

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_129

    .line 1144
    :cond_3e
    if-ne v1, v4, :cond_121

    .line 1145
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/16 v2, 0x1e

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 1155
    :goto_46
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 1160
    :cond_4b
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 1162
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    .line 1165
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    .line 1167
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mMonthLength:I

    .line 1168
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstDate:I

    .line 1170
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    .line 1171
    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v2, v7, :cond_81

    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v2, :cond_81

    .line 1172
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v0

    .line 1177
    :cond_81
    iget v2, v0, Landroid/text/format/Time;->month:I

    const/16 v3, 0x14

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    .line 1180
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 1183
    :cond_90
    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v2, v7, :cond_17e

    .line 1184
    new-instance v2, Landroid/util/DayOfMonthCursor;

    iget v3, v0, Landroid/text/format/Time;->year:I

    iget v4, v0, Landroid/text/format/Time;->month:I

    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/util/DayOfMonthCursor;-><init>(IIII)V

    .line 1186
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v2, v1}, Landroid/util/DayOfMonthCursor;->getRowOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 1187
    add-int/lit8 v1, v2, -0x1

    .line 1188
    if-le v2, v9, :cond_ac

    .line 1189
    const/4 v1, 0x5

    .line 1192
    :cond_ac
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    .line 1193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mOrdinaryWeekString:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    .line 1201
    :goto_f0
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    const v1, 0x24dc87

    if-gt v0, v1, :cond_164

    .line 1207
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0030

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1211
    :goto_103
    iget v0, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    const v1, 0x259d23

    if-lt v0, v1, :cond_171

    .line 1216
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0034

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 1230
    :goto_116
    return-void

    .line 1123
    :cond_117
    if-ne v1, v4, :cond_11d

    .line 1124
    iput v6, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    goto/16 :goto_11

    .line 1126
    :cond_11d
    iput v8, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    goto/16 :goto_11

    .line 1147
    :cond_121
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/16 v2, 0x1d

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_46

    .line 1152
    :cond_129
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    sub-int v0, v3, v0

    iput v0, v2, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_46

    .line 1196
    :cond_133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mOrdinaryWeekString:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    goto :goto_f0

    .line 1209
    :cond_164
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0030

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_103

    .line 1218
    :cond_171
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0034

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_116

    .line 1222
    :cond_17e
    invoke-direct {p0, v6}, Lcom/android/calendar/CalendarView;->setDayPrevNextBtnState(Z)V

    goto :goto_116
.end method

.method private remeasure(II)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1912
    iput p1, p0, Lcom/android/calendar/CalendarView;->mViewWidth:I

    .line 1913
    iput p2, p0, Lcom/android/calendar/CalendarView;->mViewHeight:I

    .line 1916
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->computeEarliestStartHour()Z

    .line 1918
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    .line 1919
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1920
    iget v1, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    .line 1921
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/EventGeometry;->setHourHeight(F)V

    .line 1924
    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x18

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    .line 1930
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    if-ne v0, v1, :cond_51

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p1, :cond_7c

    :cond_51
    if-lez p1, :cond_7c

    iget v0, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    if-lez v0, :cond_7c

    .line 1932
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_62

    .line 1933
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1934
    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1937
    :cond_62
    :try_start_62
    iget v0, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1938
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1939
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;
    :try_end_7c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_62 .. :try_end_7c} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7c} :catch_aa

    .line 1946
    :cond_7c
    :goto_7c
    iget v0, p0, Lcom/android/calendar/CalendarView;->mBitmapHeight:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    .line 1948
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mChangeFirstHour:Z

    if-eqz v0, :cond_8c

    .line 1949
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarView;->initFirstHour(Ljava/util/ArrayList;)V

    .line 1950
    :cond_8c
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_af

    .line 1951
    iput v3, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 1958
    :goto_93
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-eqz v0, :cond_99

    .line 1959
    iput v3, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 1961
    :cond_99
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a4

    .line 1962
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1963
    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    .line 1966
    :cond_a4
    return-void

    .line 1940
    :catch_a5
    move-exception v0

    .line 1941
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_7c

    .line 1942
    :catch_aa
    move-exception v0

    .line 1943
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7c

    .line 1953
    :cond_af
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_93
.end method

.method private resetSelectedHour()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1694
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1a

    .line 1695
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1696
    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1697
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1698
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1705
    :cond_19
    :goto_19
    return-void

    .line 1699
    :cond_1a
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    if-le v0, v1, :cond_19

    .line 1700
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1701
    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1702
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1703
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    goto :goto_19
.end method

.method private saveSelectionPosition(FFFF)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 3902
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3903
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 3904
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 3905
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3906
    return-void
.end method

.method private sendAccessibilityEvents()V
    .registers 3

    .prologue
    .line 2339
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2349
    :cond_12
    :goto_12
    return-void

    .line 2343
    :cond_13
    iget v0, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionDay:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ne v0, v1, :cond_1f

    iget v0, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-eq v0, v1, :cond_12

    .line 2345
    :cond_1f
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionDay:I

    .line 2346
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mPrevSelectionHour:I

    .line 2347
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarView;->sendAccessibilityEvent(I)V

    goto :goto_12
.end method

.method private setDayPrevNextBtnState(Z)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1233
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v1, 0x7f0f0030

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1234
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v2, 0x7f0f0034

    invoke-virtual {v1, v2}, Lcom/android/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1235
    if-eqz p1, :cond_33

    .line 1236
    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    const v3, 0x24dc87

    if-gt v2, v3, :cond_2b

    .line 1237
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1241
    :goto_20
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    const v2, 0x259d23

    if-lt v0, v2, :cond_2f

    .line 1242
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1251
    :goto_2a
    return-void

    .line 1239
    :cond_2b
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_20

    .line 1244
    :cond_2f
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2a

    .line 1247
    :cond_33
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1248
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2a
.end method

.method private setSelectionFromPosition(IIZ)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4726
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    if-ge p1, v0, :cond_8

    move v0, v1

    .line 4760
    :goto_7
    return v0

    .line 4730
    :cond_8
    iget v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    sub-int v0, p1, v0

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    div-int/2addr v0, v3

    .line 4731
    iget v3, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-lt v0, v3, :cond_17

    .line 4732
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/lit8 v0, v0, -0x1

    .line 4734
    :cond_17
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    add-int/2addr v3, v0

    .line 4735
    const v0, 0x259d23

    if-gt v3, v0, :cond_24

    const v0, 0x24dc87

    if-ge v3, v0, :cond_26

    :cond_24
    move v0, v1

    .line 4736
    goto :goto_7

    .line 4739
    :cond_26
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-le v0, v2, :cond_40

    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v0, v4

    if-ge p2, v0, :cond_40

    .line 4740
    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    .line 4757
    :goto_33
    iput v3, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 4758
    if-eqz p3, :cond_3e

    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-nez v0, :cond_3e

    .line 4759
    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/calendar/CalendarView;->findSelectedEvent(IIIZ)V

    :cond_3e
    move v0, v2

    .line 4760
    goto :goto_7

    .line 4742
    :cond_40
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v2, :cond_4e

    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v0, p2

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-ge v0, v4, :cond_4e

    .line 4743
    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    goto :goto_33

    .line 4745
    :cond_4e
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-ge v0, v4, :cond_6c

    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v2, :cond_6c

    .line 4746
    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, v4

    sub-int v0, p2, v0

    iget v4, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v0, v4

    .line 4751
    :goto_64
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 4752
    const/16 v4, 0x18

    if-lt v0, v4, :cond_7c

    move v0, v1

    .line 4753
    goto :goto_7

    .line 4748
    :cond_6c
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    sub-int v0, p2, v0

    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v0, v4

    .line 4749
    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    add-int/2addr v0, v4

    goto :goto_64

    .line 4754
    :cond_7c
    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    goto :goto_33
.end method

.method private setSelectionbySelectedEvent()V
    .registers 7

    .prologue
    .line 4764
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v4, Lcom/android/calendar/Event;->startDay:I

    .line 4765
    .local v2, startDay:I
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v4, Lcom/android/calendar/Event;->endDay:I

    .line 4766
    .local v0, endDay:I
    iget v4, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ge v4, v2, :cond_2d

    .line 4767
    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 4772
    :cond_e
    :goto_e
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v3, v4, 0x3c

    .line 4774
    .local v3, startHour:I
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->startTime:I

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v5, v5, Lcom/android/calendar/Event;->endTime:I

    if-ge v4, v5, :cond_34

    .line 4775
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->endTime:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v1, v4, 0x3c

    .line 4780
    .local v1, endHour:I
    :goto_26
    iget v4, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-ge v4, v3, :cond_3b

    .line 4781
    iput v3, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 4785
    :cond_2c
    :goto_2c
    return-void

    .line 4768
    .end local v1           #endHour:I
    .end local v3           #startHour:I
    :cond_2d
    iget v4, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-le v4, v0, :cond_e

    .line 4769
    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    goto :goto_e

    .line 4777
    .restart local v3       #startHour:I
    :cond_34
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->endTime:I

    div-int/lit8 v1, v4, 0x3c

    .restart local v1       #endHour:I
    goto :goto_26

    .line 4782
    :cond_3b
    iget v4, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-le v4, v1, :cond_2c

    .line 4783
    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    goto :goto_2c
.end method

.method private switchViews(Z)V
    .registers 14
    .parameter

    .prologue
    const-wide/32 v10, 0x36ee80

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1345
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1347
    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_165

    .line 1353
    if-eqz p1, :cond_79

    .line 1354
    if-nez v0, :cond_3a

    .line 1356
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v0

    .line 1357
    add-long v2, v0, v10

    .line 1358
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1359
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/calendar/EditEvent;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1360
    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1361
    const-string v0, "endTime"

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1363
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v4, v7}, Lcom/android/calendar/CalendarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1480
    :cond_39
    :goto_39
    return-void

    .line 1366
    :cond_3a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1367
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/calendar/Event;->id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1368
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1369
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    const-string v2, "beginTime"

    iget-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1371
    const-string v2, "endTime"

    iget-wide v3, v0, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1372
    const-string v0, "event_day_time"

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedDayInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1373
    const-string v0, "eventlist_type"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1376
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_39

    .line 1382
    :cond_79
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-eqz v1, :cond_b0

    .line 1383
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    .line 1384
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v0

    .line 1385
    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    .line 1386
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1388
    const-string v3, "beginTime"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1389
    const-string v0, "startDayfromWhere"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1390
    const/high16 v0, 0x2002

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1392
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v2}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 1393
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->finish()V

    goto :goto_39

    .line 1395
    :cond_b0
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v7, :cond_fd

    .line 1396
    if-eqz v0, :cond_39

    .line 1398
    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    .line 1399
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1400
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/calendar/Event;->id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1402
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1403
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1404
    const-string v2, "beginTime"

    iget-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1405
    const-string v2, "endTime"

    iget-wide v3, v0, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1406
    const-string v0, "event_day_time"

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedDayInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1407
    const-string v0, "eventlist_type"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1409
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_39

    .line 1411
    :cond_fd
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_137

    .line 1413
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v0

    .line 1414
    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    .line 1415
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1417
    const-string v3, "beginTime"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1418
    const-string v0, "startDayfromWhere"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1419
    const/high16 v0, 0x2002

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1421
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v2}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 1422
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->finish()V

    goto/16 :goto_39

    .line 1425
    :cond_137
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v0

    .line 1426
    add-long v2, v0, v10

    .line 1427
    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    .line 1428
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/calendar/EditEvent;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1430
    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1431
    const-string v0, "endTime"

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1433
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v4, v7}, Lcom/android/calendar/CalendarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_39

    .line 1441
    :cond_165
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedDayInMillis()J

    move-result-wide v1

    .line 1442
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1444
    iget v4, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1a3

    .line 1446
    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    .line 1447
    const-string v0, "eventlist_type"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1448
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 1449
    iget-wide v4, v0, Lcom/android/calendar/Event;->id:J

    .line 1450
    const-string v0, "more_event_id"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1451
    const-string v0, "beginTime"

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1452
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/calendar/EventListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1453
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_39

    .line 1454
    :cond_1a3
    if-nez v0, :cond_1cf

    .line 1456
    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    .line 1457
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v0

    .line 1458
    add-long v4, v0, v10

    .line 1459
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/calendar/EditEvent;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1461
    const-string v2, "beginTime"

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1462
    const-string v0, "endTime"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1463
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v3, v7}, Lcom/android/calendar/CalendarActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_39

    .line 1465
    :cond_1cf
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    .line 1467
    invoke-virtual {p0, v6}, Lcom/android/calendar/CalendarView;->playSoundEffect(I)V

    .line 1468
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/calendar/Event;->id:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1469
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1470
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1471
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1472
    const-string v1, "beginTime"

    iget-wide v4, v0, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1473
    const-string v1, "endTime"

    iget-wide v4, v0, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1474
    const-string v0, "event_day_time"

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedDayInMillis()J

    move-result-wide v1

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1475
    const-string v0, "eventlist_type"

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1476
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v3}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 1477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto/16 :goto_39
.end method


# virtual methods
.method public addQuickAdd()V
    .registers 3

    .prologue
    .line 3936
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->showDialog(I)V

    .line 3937
    return-void
.end method

.method public checkSwitchView(I)Z
    .registers 12
    .parameter

    .prologue
    const v9, 0x259d23

    const v8, 0x24dc87

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4407
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarActivity;->getNextCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v2

    .line 4408
    iget-object v3, v2, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    .line 4410
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 4411
    iget-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v3

    .line 4412
    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2d

    .line 4413
    if-ge v3, v8, :cond_25

    if-gtz p1, :cond_2c

    :cond_25
    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v3, v4

    if-le v3, v9, :cond_35

    if-gtz p1, :cond_35

    .line 4426
    :cond_2c
    :goto_2c
    return v0

    .line 4418
    :cond_2d
    if-gt v3, v8, :cond_31

    if-gtz p1, :cond_2c

    :cond_31
    if-lt v3, v9, :cond_35

    if-lez p1, :cond_2c

    .line 4424
    :cond_35
    invoke-virtual {p0, v2}, Lcom/android/calendar/CalendarView;->clearView(Lcom/android/calendar/CalendarView;)V

    move v0, v1

    .line 4426
    goto :goto_2c
.end method

.method public cleanup()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5103
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 5104
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_11

    .line 5105
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragRunnable:Lcom/android/calendar/CalendarView$DragRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5106
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mUpdateCurrentTime:Lcom/android/calendar/CalendarView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5110
    :cond_11
    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 5111
    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 5112
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_21

    .line 5113
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 5114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    .line 5116
    :cond_21
    return-void
.end method

.method public cleanupAll()V
    .registers 2

    .prologue
    .line 5126
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->cleanup()V

    .line 5127
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 5128
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5130
    :cond_c
    return-void
.end method

.method public clearScreen()V
    .registers 2

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1277
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 1278
    return-void
.end method

.method public clearView(Lcom/android/calendar/CalendarView;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1258
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1259
    iget-object v0, p1, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1260
    iput-boolean v1, p1, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1261
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1262
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 1263
    iget v0, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 1265
    iput-object v2, p1, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1266
    iput-object v2, p1, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1267
    iget v0, p0, Lcom/android/calendar/CalendarView;->mStartDay:I

    iput v0, p1, Lcom/android/calendar/CalendarView;->mStartDay:I

    .line 1269
    iput-boolean v1, p1, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1270
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1271
    invoke-virtual {p1}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 1272
    return-void
.end method

.method public computeEarliestStartHour()Z
    .registers 18

    .prologue
    .line 1971
    const/4 v1, 0x0

    .local v1, day:I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ge v1, v13, :cond_22

    .line 1972
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    const/16 v14, 0x19

    aput v14, v13, v1

    .line 1973
    const/4 v8, 0x0

    .local v8, i:I
    :goto_10
    const/4 v13, 0x6

    if-ge v8, v13, :cond_1f

    .line 1974
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v13, v13, v1

    const/4 v14, 0x0

    aput v14, v13, v8

    .line 1973
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 1971
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1977
    .end local v8           #i:I
    :cond_22
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    .line 1978
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    .line 1984
    const/4 v6, 0x0

    .line 1985
    .local v6, hasAllDayEvents:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    if-eqz v13, :cond_3d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_3f

    .line 1986
    :cond_3d
    const/4 v13, 0x0

    .line 2062
    :goto_3e
    return v13

    .line 1988
    :cond_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v15, v15, Landroid/text/format/Time;->gmtoff:J

    invoke-static/range {v13 .. v16}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v12

    .line 1989
    .local v12, todayJulian:I
    new-instance v11, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v13, v14}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1990
    .local v11, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 1993
    .local v5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1994
    .local v10, len:I
    const/4 v9, 0x0

    .local v9, ii:I
    :goto_6e
    if-ge v9, v10, :cond_115

    .line 1995
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/Event;

    .line 1996
    .local v4, event:Lcom/android/calendar/Event;
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    if-gt v13, v14, :cond_86

    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-ge v13, v14, :cond_89

    .line 1994
    :cond_86
    :goto_86
    add-int/lit8 v9, v9, 0x1

    goto :goto_6e

    .line 1999
    :cond_89
    iget-boolean v13, v4, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v13, :cond_e7

    .line 2000
    const/4 v6, 0x1

    .line 2001
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2002
    .local v2, daynum:I
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, v4, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    .line 2003
    .local v3, durationDays:I
    if-gez v2, :cond_a1

    .line 2004
    add-int/2addr v3, v2

    .line 2005
    const/4 v2, 0x0

    .line 2007
    :cond_a1
    add-int v13, v2, v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-le v13, v14, :cond_af

    .line 2008
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int v3, v13, v2

    .line 2010
    :cond_af
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_dc

    .line 2011
    move v1, v2

    :goto_b7
    if-lez v3, :cond_86

    .line 2013
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_ba
    const/4 v13, 0x6

    if-ge v8, v13, :cond_c7

    .line 2014
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v13, v13, v1

    aget v13, v13, v8

    if-nez v13, :cond_d9

    .line 2018
    :cond_c7
    const/4 v13, 0x6

    if-ge v8, v13, :cond_d4

    .line 2019
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mHasAllDayEvent:[[I

    aget-object v13, v13, v1

    iget v14, v4, Lcom/android/calendar/Event;->color:I

    aput v14, v13, v8

    .line 2011
    :cond_d4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_b7

    .line 2013
    :cond_d9
    add-int/lit8 v8, v8, 0x1

    goto :goto_ba

    .line 2022
    .end local v8           #i:I
    :cond_dc
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    goto :goto_86

    .line 2029
    .end local v2           #daynum:I
    .end local v3           #durationDays:I
    :cond_e7
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 2030
    .restart local v2       #daynum:I
    iget v13, v4, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v7, v13, 0x3c

    .line 2031
    .local v7, hour:I
    if-ltz v2, :cond_86

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v7, v13, :cond_86

    .line 2032
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    if-ne v12, v13, :cond_10d

    .line 2033
    iget v13, v11, Landroid/text/format/Time;->hour:I

    if-le v7, v13, :cond_86

    .line 2034
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    aput v7, v13, v2

    goto/16 :goto_86

    .line 2037
    :cond_10d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    aput v7, v13, v2

    goto/16 :goto_86

    .line 2043
    .end local v2           #daynum:I
    .end local v4           #event:Lcom/android/calendar/Event;
    .end local v7           #hour:I
    :cond_115
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_160

    .line 2044
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    .line 2045
    if-eqz v6, :cond_13c

    .line 2046
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_143

    .line 2047
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    mul-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mAllDayBottomMargin:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    .line 2061
    :cond_13c
    :goto_13c
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/calendar/CalendarView;->mhasAllDayEvents:Z

    move v13, v6

    .line 2062
    goto/16 :goto_3e

    .line 2049
    :cond_143
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mDayAllDayHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/calendar/CalendarView;->mAllDayDividerHeight:I

    add-int/2addr v14, v15

    mul-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mAllDayDividerHeight:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mAllDayBottomMargin:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    goto :goto_13c

    .line 2055
    :cond_160
    if-eqz v6, :cond_170

    .line 2056
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/CalendarView;->mWeekAllDayHeight:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    goto :goto_13c

    .line 2058
    :cond_170
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    goto :goto_13c
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 2364
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_80

    .line 2366
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v10, :cond_3e

    .line 2449
    :cond_e
    :goto_e
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    mul-int/lit8 v5, v0, 0x3c

    .line 2450
    add-int/lit8 v7, v5, 0x3c

    .line 2451
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v6

    move v2, v6

    move v1, v6

    move v3, v6

    :goto_1e
    if-ge v4, v8, :cond_d8

    .line 2452
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 2453
    iget v6, v0, Lcom/android/calendar/Event;->endDay:I

    iget v9, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ne v6, v9, :cond_e4

    .line 2454
    add-int/lit8 v3, v3, 0x1

    .line 2455
    iget v6, v0, Lcom/android/calendar/Event;->endTime:I

    if-ge v5, v6, :cond_e4

    iget v6, v0, Lcom/android/calendar/Event;->startTime:I

    if-gt v7, v6, :cond_cd

    move v0, v3

    .line 2451
    :goto_39
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_1e

    .line 2372
    :cond_3e
    const v5, 0x11416

    .line 2375
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2376
    const v5, 0x11496

    .line 2379
    :cond_4c
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 2380
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    .line 2381
    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 2383
    new-instance v3, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v3, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 2384
    invoke-virtual {v3, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 2385
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 2386
    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 2387
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 2389
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 2391
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 2393
    :cond_80
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 2396
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v10, :cond_ca

    .line 2398
    const/16 v0, 0x1401

    .line 2405
    :goto_8d
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTime()Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 2408
    const-wide/32 v3, 0x36ee80

    add-long/2addr v3, v1

    .line 2409
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 2410
    or-int/lit16 v5, v0, 0x80

    .line 2412
    :goto_a3
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 2414
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeRange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 2400
    :cond_ca
    const/16 v0, 0x1413

    goto :goto_8d

    .line 2459
    :cond_cd
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v0, v6, :cond_e2

    move v0, v1

    .line 2462
    :goto_d2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    move v0, v3

    goto/16 :goto_39

    .line 2465
    :cond_d8
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 2466
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2467
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2469
    return v10

    :cond_e2
    move v0, v2

    goto :goto_d2

    :cond_e4
    move v0, v3

    goto/16 :goto_39

    :cond_e7
    move v5, v0

    goto :goto_a3
.end method

.method doDoubleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4051
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v1, :cond_2a

    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->getNormalEventCount()I

    move-result v0

    if-lez v0, :cond_2a

    .line 4052
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    invoke-direct {p0, v0}, Lcom/android/calendar/CalendarView;->setDayPrevNextBtnState(Z)V

    .line 4053
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v0, :cond_28

    move v0, v1

    :goto_16
    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    .line 4054
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 4055
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 4056
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    .line 4057
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4058
    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 4059
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 4063
    :goto_27
    return v1

    :cond_28
    move v0, v2

    .line 4053
    goto :goto_16

    :cond_2a
    move v1, v2

    .line 4063
    goto :goto_27
.end method

.method doDown(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter "ev"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3943
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 3944
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 3946
    .local v2, y:I
    iput v5, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 3947
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mOnFlingCalled:Z

    .line 3949
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3951
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/CalendarView;->findPressedMoreIcon(II)I

    move-result v0

    .line 3952
    .local v0, eventIndex:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2a

    .line 3953
    iput v0, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    .line 3954
    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    .line 3955
    iput v6, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 3956
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 3967
    :cond_29
    :goto_29
    return-void

    .line 3960
    :cond_2a
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/CalendarView;->findPressedEvent(II)Z

    .line 3961
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v3

    if-nez v3, :cond_37

    iget-boolean v3, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-eqz v3, :cond_29

    .line 3963
    :cond_37
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 3964
    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 3965
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_29
.end method

.method doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 14
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4192
    iput v7, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 4193
    iput v7, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 4194
    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mOnFlingCalled:Z

    .line 4195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int v0, v5, v6

    .line 4196
    .local v0, deltaX:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4197
    .local v2, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v1, v5, v6

    .line 4198
    .local v1, deltaY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4200
    .local v3, distanceY:I
    iget-boolean v5, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v5, :cond_66

    sget v5, Lcom/android/calendar/Utils;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v2, v5, :cond_66

    if-le v2, v3, :cond_66

    .line 4201
    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarView;->checkSwitchView(I)Z

    move-result v5

    if-nez v5, :cond_39

    .line 4218
    :cond_38
    :goto_38
    return-void

    .line 4204
    :cond_39
    iget v5, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_38

    .line 4205
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 4206
    .local v4, time:Landroid/text/format/Time;
    if-lez v0, :cond_5c

    .line 4207
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v5, v7}, Lcom/android/calendar/CalendarActivity;->getNextDay(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 4210
    :goto_56
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v5, v4, v8, v7}, Lcom/android/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_38

    .line 4209
    :cond_5c
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v5, v8}, Lcom/android/calendar/CalendarActivity;->getNextDay(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    goto :goto_56

    .line 4216
    .end local v4           #time:Landroid/text/format/Time;
    :cond_66
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    float-to-int v6, p4

    div-int/lit8 v6, v6, 0x14

    invoke-virtual {v5, v6}, Lcom/android/calendar/CalendarView$ContinueScroll;->init(I)V

    .line 4217
    iget-object v5, p0, Lcom/android/calendar/CalendarView;->mContinueScroll:Lcom/android/calendar/CalendarView$ContinueScroll;

    invoke-virtual {p0, v5}, Lcom/android/calendar/CalendarView;->post(Ljava/lang/Runnable;)Z

    goto :goto_38
.end method

.method doLongPress(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4067
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 4068
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 4072
    iget v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_14

    .line 4140
    :cond_13
    :goto_13
    return v0

    .line 4075
    :cond_14
    iget v4, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_21

    .line 4076
    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-eqz v1, :cond_13

    .line 4077
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->goMoreEventList()V

    goto :goto_13

    .line 4082
    :cond_21
    invoke-direct {p0, v2, v3, v0}, Lcom/android/calendar/CalendarView;->setSelectionFromPosition(IIZ)Z

    move-result v2

    .line 4083
    if-nez v2, :cond_29

    move v0, v1

    .line 4085
    goto :goto_13

    .line 4088
    :cond_29
    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v2, v6, :cond_37

    iget-boolean v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-eqz v2, :cond_37

    .line 4090
    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 4091
    iput v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    move v0, v1

    .line 4092
    goto :goto_13

    .line 4095
    :cond_37
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-eqz v2, :cond_54

    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_54

    .line 4096
    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v2, v0, :cond_9d

    .line 4097
    iget-boolean v2, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-eqz v2, :cond_73

    .line 4098
    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 4099
    iput v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 4100
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 4101
    invoke-direct {p0, v1}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    .line 4128
    :cond_54
    :goto_54
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v1

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v1, :cond_13

    .line 4129
    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 4130
    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 4131
    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v1, v6, :cond_6c

    .line 4132
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    .line 4133
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->updateTitle()V

    .line 4135
    :cond_6c
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 4136
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->addQuickAdd()V

    goto :goto_13

    .line 4103
    :cond_73
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-direct {p0, v2, v3}, Lcom/android/calendar/CalendarView;->isEventEditable(Landroid/content/Context;Lcom/android/calendar/Event;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 4104
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/CalendarView;->mDraggingMotionEvent:Landroid/view/MotionEvent;

    .line 4105
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->readyToDragEvent()V

    goto :goto_54

    .line 4107
    :cond_87
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v3, 0x7f0a00b4

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->showToast(Landroid/app/Activity;I)V

    .line 4108
    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 4109
    iput v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 4110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4111
    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 4112
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto/16 :goto_13

    .line 4118
    :cond_9d
    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 4119
    iput v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 4120
    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 4121
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 4122
    invoke-direct {p0, v1}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    goto :goto_54
.end method

.method doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 14
    .parameter "e1"
    .parameter "e2"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 4147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    sub-int v2, v4, v5

    .line 4148
    .local v2, distanceX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int v3, v4, v5

    .line 4154
    .local v3, distanceY:I
    iget v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_35

    .line 4155
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4156
    .local v0, absDistanceX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 4157
    .local v1, absDistanceY:I
    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iput v4, p0, Lcom/android/calendar/CalendarView;->mScrollStartY:I

    .line 4161
    mul-int/lit8 v4, v0, 0x2

    if-lt v1, v4, :cond_35

    .line 4162
    const/16 v4, 0x20

    iput v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 4166
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_35
    iget v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_49

    .line 4167
    iget v4, p0, Lcom/android/calendar/CalendarView;->mScrollStartY:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 4168
    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    if-gez v4, :cond_5f

    .line 4169
    iput v8, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 4173
    :cond_46
    :goto_46
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->computeFirstHour()V

    .line 4176
    :cond_49
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 4178
    iget v4, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v4, :cond_53

    .line 4179
    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 4180
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 4183
    :cond_53
    iget v4, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    if-eq v4, v7, :cond_5b

    .line 4184
    iput v7, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    .line 4185
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    .line 4188
    :cond_5b
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 4189
    return-void

    .line 4170
    :cond_5f
    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    if-le v4, v5, :cond_46

    .line 4171
    iget v4, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    iput v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_46
.end method

.method doSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "ev"

    .prologue
    const/4 v11, 0x7

    const/4 v10, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3978
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 3979
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 3980
    .local v5, y:I
    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 3981
    .local v1, selectedDay:I
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 3983
    .local v2, selectedHour:I
    iget-boolean v8, p0, Lcom/android/calendar/CalendarView;->mIgnoreEvent:Z

    if-eqz v8, :cond_19

    .line 3985
    iput-boolean v7, p0, Lcom/android/calendar/CalendarView;->mIgnoreEvent:Z

    .line 4046
    :cond_18
    :goto_18
    return v6

    .line 3989
    :cond_19
    iget v8, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    if-eq v8, v10, :cond_21

    .line 3990
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->goMoreEventList()V

    goto :goto_18

    .line 3994
    :cond_21
    invoke-direct {p0, v4, v5, v6}, Lcom/android/calendar/CalendarView;->setSelectionFromPosition(IIZ)Z

    move-result v3

    .line 3995
    .local v3, validPosition:Z
    if-nez v3, :cond_29

    move v6, v7

    .line 3997
    goto :goto_18

    .line 4000
    :cond_29
    const/4 v0, 0x0

    .line 4001
    .local v0, launchNewView:Z
    iget-boolean v8, p0, Lcom/android/calendar/CalendarView;->mSelectionDayofWeek:Z

    if-eqz v8, :cond_39

    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v8, v11, :cond_39

    .line 4002
    const/4 v0, 0x1

    .line 4033
    :cond_33
    :goto_33
    if-eqz v0, :cond_6e

    .line 4038
    invoke-direct {p0, v7}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    goto :goto_18

    .line 4003
    :cond_39
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v8

    if-eqz v8, :cond_46

    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_46

    .line 4005
    const/4 v0, 0x1

    goto :goto_33

    .line 4014
    :cond_46
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v8

    if-nez v8, :cond_5e

    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-ne v8, v6, :cond_5e

    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    if-ne v1, v8, :cond_5e

    iget v8, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    if-ne v2, v8, :cond_5e

    iget-boolean v8, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v8, :cond_5e

    .line 4018
    const/4 v0, 0x1

    goto :goto_33

    .line 4021
    :cond_5e
    iget-boolean v8, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v8, :cond_33

    .line 4023
    if-ge v2, v10, :cond_66

    move v6, v7

    .line 4024
    goto :goto_18

    .line 4026
    :cond_66
    iput v6, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 4027
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 4030
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_33

    .line 4040
    :cond_6e
    iget v7, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v7, v11, :cond_18

    .line 4041
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    .line 4042
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->updateTitle()V

    goto :goto_18
.end method

.method dragEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 4235
    const/4 v1, 0x0

    .line 4237
    .local v1, handle:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 4239
    .local v2, y:I
    iget v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_a2

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v4

    if-eqz v4, :cond_a2

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v4, v3, :cond_a2

    .line 4241
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4243
    .local v0, event:Lcom/android/calendar/Event;
    iget v4, p0, Lcom/android/calendar/CalendarView;->mLastMotionY:I

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    .line 4245
    iget v4, v0, Lcom/android/calendar/Event;->top:F

    iget v5, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    add-int/lit8 v5, v5, 0x5

    iget v6, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_30

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    if-gtz v4, :cond_44

    :cond_30
    iget v4, v0, Lcom/android/calendar/Event;->bottom:F

    iget v5, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x18

    iget v6, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_45

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    if-gez v4, :cond_45

    .line 4293
    .end local v0           #event:Lcom/android/calendar/Event;
    :cond_44
    :goto_44
    return v3

    .line 4250
    .restart local v0       #event:Lcom/android/calendar/Event;
    :cond_45
    iget v4, v0, Lcom/android/calendar/Event;->top:F

    iget v5, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v0, Lcom/android/calendar/Event;->top:F

    .line 4251
    iget v4, v0, Lcom/android/calendar/Event;->bottom:F

    iget v5, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v0, Lcom/android/calendar/Event;->bottom:F

    .line 4253
    iget v4, v0, Lcom/android/calendar/Event;->top:F

    iget v5, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_62

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    if-gtz v4, :cond_72

    :cond_62
    iget v4, v0, Lcom/android/calendar/Event;->bottom:F

    iget v5, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v6, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_c2

    iget v4, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    if-gez v4, :cond_c2

    .line 4255
    :cond_72
    iget v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_80

    .line 4256
    iput v2, p0, Lcom/android/calendar/CalendarView;->mDragScrollStartY:I

    .line 4257
    iget v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 4259
    :cond_80
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarView;->mDraggingMotionEvent:Landroid/view/MotionEvent;

    .line 4260
    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 4261
    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    if-ge v4, v5, :cond_a4

    .line 4262
    iget v4, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    iput v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    .line 4281
    :goto_97
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->computeFirstHour()V

    .line 4287
    :goto_9a
    iput v2, p0, Lcom/android/calendar/CalendarView;->mLastMotionY:I

    .line 4289
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 4290
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 4291
    const/4 v1, 0x1

    .end local v0           #event:Lcom/android/calendar/Event;
    :cond_a2
    move v3, v1

    .line 4293
    goto :goto_44

    .line 4263
    .restart local v0       #event:Lcom/android/calendar/Event;
    :cond_a4
    iget v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    if-le v4, v5, :cond_af

    .line 4264
    iget v4, p0, Lcom/android/calendar/CalendarView;->mMaxViewStartY:I

    iput v4, p0, Lcom/android/calendar/CalendarView;->mViewStartY:I

    goto :goto_97

    .line 4266
    :cond_af
    iput v2, p0, Lcom/android/calendar/CalendarView;->mLastMotionY:I

    .line 4267
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->computeFirstHour()V

    .line 4269
    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 4270
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 4271
    const/4 v1, 0x1

    .line 4278
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mDragRunnable:Lcom/android/calendar/CalendarView$DragRunnable;

    const-wide/16 v5, 0xa

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_44

    .line 4284
    :cond_c2
    const/16 v4, 0x80

    iput v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    goto :goto_9a
.end method

.method dropEvent(Landroid/view/MotionEvent;)V
    .registers 16
    .parameter

    .prologue
    .line 4297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 4298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 4300
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-nez v2, :cond_11

    .line 4404
    :goto_10
    return-void

    .line 4304
    :cond_11
    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4306
    iget v2, p0, Lcom/android/calendar/CalendarView;->mDragEventInitTop:F

    iget v3, v6, Lcom/android/calendar/Event;->top:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    div-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_32

    .line 4307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 4309
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 4310
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_10

    .line 4314
    :cond_32
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/CalendarView;->setSelectionFromPosition(IIZ)Z

    .line 4316
    iget v0, v6, Lcom/android/calendar/Event;->top:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    add-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4e

    .line 4317
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, v6, Lcom/android/calendar/Event;->top:F

    .line 4320
    :cond_4e
    iget v0, v6, Lcom/android/calendar/Event;->bottom:F

    iget v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_71

    .line 4321
    iget v0, v6, Lcom/android/calendar/Event;->top:F

    iget v1, v6, Lcom/android/calendar/Event;->bottom:F

    iget v2, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v6, Lcom/android/calendar/Event;->top:F

    .line 4324
    :cond_71
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    iget v1, v6, Lcom/android/calendar/Event;->top:F

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDayAllDaysHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->computeNewStartTime(F)I

    move-result v7

    .line 4326
    iget-wide v0, v6, Lcom/android/calendar/Event;->id:J

    .line 4327
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 4334
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/calendar/CalendarView;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4335
    if-eqz v0, :cond_9c

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_aa

    .line 4336
    :cond_9c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 4338
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 4339
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto/16 :goto_10

    .line 4343
    :cond_aa
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4344
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4345
    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4347
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4349
    if-eqz v2, :cond_15e

    .line 4350
    new-instance v5, Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v8, v9}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 4351
    iget-wide v8, v6, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v5, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 4355
    div-int/lit8 v6, v7, 0x3c

    int-to-long v8, v6

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v8, v10

    rem-int/lit8 v6, v7, 0x3c

    rem-int/lit8 v7, v7, 0x3c

    rem-int/lit8 v7, v7, 0xa

    sub-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v10, 0xea60

    mul-long/2addr v6, v10

    add-long/2addr v6, v8

    iget v8, v5, Landroid/text/format/Time;->hour:I

    int-to-long v8, v8

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v8, v10

    iget v5, v5, Landroid/text/format/Time;->minute:I

    int-to-long v10, v5

    const-wide/32 v12, 0xea60

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    sub-long v5, v6, v8

    .line 4360
    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 4362
    new-instance v9, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v9}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 4363
    invoke-virtual {v9, v2}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 4364
    iget-object v2, v9, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_150

    .line 4365
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 4366
    iget-object v10, v9, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 4367
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    add-long/2addr v5, v10

    .line 4368
    invoke-virtual {v2, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 4370
    invoke-virtual {v2}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 4372
    const-string v2, "rrule"

    invoke-virtual {v9}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4377
    :cond_12d
    :goto_12d
    const-string v2, "dtstart"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4378
    const-string v2, "eventTimezone"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4398
    :goto_13b
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v2, v0}, Lcom/android/calendar/CalendarActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 4400
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4402
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_10

    .line 4373
    :cond_150
    iget v2, v9, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v2, :cond_12d

    .line 4374
    const-string v2, "rrule"

    invoke-virtual {v9}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12d

    .line 4381
    :cond_15e
    iget-wide v8, v6, Lcom/android/calendar/Event;->startMillis:J

    .line 4382
    new-instance v5, Landroid/text/format/Time;

    iget-object v10, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v11, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v10, v11}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 4384
    invoke-virtual {v5, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 4385
    div-int/lit8 v10, v7, 0x3c

    iput v10, v5, Landroid/text/format/Time;->hour:I

    .line 4387
    rem-int/lit8 v10, v7, 0x3c

    rem-int/lit8 v7, v7, 0x3c

    rem-int/lit8 v7, v7, 0xa

    sub-int v7, v10, v7

    iput v7, v5, Landroid/text/format/Time;->minute:I

    .line 4388
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    .line 4390
    iget-wide v5, v6, Lcom/android/calendar/Event;->endMillis:J

    sub-long v7, v10, v8

    add-long/2addr v5, v7

    .line 4392
    const-string v7, "dtstart"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4393
    const-string v7, "dtend"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4394
    const-string v5, "rrule"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4395
    const-string v2, "eventTimezone"

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13b
.end method

.method public getEventHour()I
    .registers 14

    .prologue
    const/16 v12, 0x19

    const/4 v7, 0x0

    .line 5281
    iget v3, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 5282
    .local v3, scrollToHour:I
    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_5c

    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekHourTextSize:I

    .line 5284
    .local v1, hourOffset:I
    :goto_c
    new-instance v4, Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v9, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v8, v9}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 5285
    .local v4, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 5287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v10, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v6

    .line 5288
    .local v6, todayJulian:I
    iget v8, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    iget v9, v4, Landroid/text/format/Time;->hour:I

    mul-int/2addr v8, v9

    iget v9, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    iget v10, v4, Landroid/text/format/Time;->minute:I

    mul-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x3c

    add-int v5, v8, v9

    .line 5291
    .local v5, todayHeight:I
    iget v8, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-lt v6, v8, :cond_a7

    iget v8, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    if-gt v6, v8, :cond_a7

    .line 5292
    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    iget v9, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v9, v6, v9

    aget v0, v8, v9

    .line 5293
    .local v0, eventHour:I
    if-eq v0, v12, :cond_52

    iget v8, v4, Landroid/text/format/Time;->hour:I

    if-ge v0, v8, :cond_91

    .line 5294
    :cond_52
    iget v8, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    div-int/lit8 v8, v8, 0x2

    if-gt v5, v8, :cond_5f

    .line 5295
    const/4 v3, 0x0

    .line 5296
    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 5362
    .end local v0           #eventHour:I
    .end local v1           #hourOffset:I
    :cond_5b
    :goto_5b
    return v3

    .line 5282
    .end local v4           #time:Landroid/text/format/Time;
    .end local v5           #todayHeight:I
    .end local v6           #todayJulian:I
    :cond_5c
    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayFirstHourOffset:I

    goto :goto_c

    .line 5297
    .restart local v0       #eventHour:I
    .restart local v1       #hourOffset:I
    .restart local v4       #time:Landroid/text/format/Time;
    .restart local v5       #todayHeight:I
    .restart local v6       #todayJulian:I
    :cond_5f
    iget v8, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    mul-int/lit8 v8, v8, 0x18

    sub-int/2addr v8, v5

    iget v9, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    div-int/lit8 v9, v9, 0x2

    if-gt v8, v9, :cond_73

    .line 5298
    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v3, v8, 0x18

    .line 5299
    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_5b

    .line 5301
    :cond_73
    iget v7, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v5, v7

    iget v8, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    div-int/2addr v7, v8

    add-int/lit8 v3, v7, 0x1

    .line 5303
    iget v7, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    iget v8, p0, Lcom/android/calendar/CalendarView;->mGridAreaHeight:I

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    iget v9, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v9, v9, 0x1

    rem-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_5b

    .line 5317
    :cond_91
    rsub-int/lit8 v8, v0, 0x18

    iget v9, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    if-ge v8, v9, :cond_a5

    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v3, v8, 0x18

    .line 5318
    :goto_9b
    rsub-int/lit8 v8, v0, 0x18

    iget v9, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    if-ge v8, v9, :cond_a2

    move v1, v7

    .end local v1           #hourOffset:I
    :cond_a2
    iput v1, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_5b

    .restart local v1       #hourOffset:I
    :cond_a5
    move v3, v0

    .line 5317
    goto :goto_9b

    .line 5321
    .end local v0           #eventHour:I
    :cond_a7
    const/16 v3, 0x19

    .line 5322
    const/4 v2, 0x0

    .local v2, i:I
    :goto_aa
    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ge v2, v8, :cond_b9

    .line 5323
    iget-object v8, p0, Lcom/android/calendar/CalendarView;->mEarliestStartHour:[I

    aget v8, v8, v2

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5322
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 5325
    :cond_b9
    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c5

    iget v8, p0, Lcom/android/calendar/CalendarView;->mMaxAllDayEvents:I

    if-lez v8, :cond_c5

    .line 5326
    const/4 v3, -0x2

    .line 5327
    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 5329
    :cond_c5
    if-ne v3, v12, :cond_d3

    .line 5347
    const/16 v3, 0x8

    .line 5352
    if-nez v3, :cond_ce

    .line 5353
    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_5b

    .line 5355
    :cond_ce
    iget v7, p0, Lcom/android/calendar/CalendarView;->mDayFirstHourOffset:I

    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_5b

    .line 5357
    :cond_d3
    rsub-int/lit8 v8, v3, 0x18

    iget v9, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    if-ge v8, v9, :cond_5b

    .line 5358
    iget v8, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v3, v8, 0x18

    .line 5359
    iput v7, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto/16 :goto_5b
.end method

.method getEventList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFirstJulianDay()I
    .registers 2

    .prologue
    .line 5269
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    return v0
.end method

.method public getLastJulianDay()I
    .registers 2

    .prologue
    .line 5273
    iget v0, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    return v0
.end method

.method getNewEvent()Lcom/android/calendar/Event;
    .registers 5

    .prologue
    .line 3851
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedMinutesSinceMidnight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/CalendarView;->getNewEvent(IJI)Lcom/android/calendar/Event;

    move-result-object v0

    return-object v0
.end method

.method public getNextDay(Z)Landroid/text/format/Time;
    .registers 5
    .parameter "isNext"

    .prologue
    .line 4430
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 4431
    .local v0, time:Landroid/text/format/Time;
    if-eqz p1, :cond_15

    .line 4432
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 4436
    :goto_10
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 4439
    return-object v0

    .line 4434
    :cond_15
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    goto :goto_10
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .registers 5

    .prologue
    const v1, 0x259d23

    const v0, 0x24dc87

    .line 968
    new-instance v3, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v3, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 969
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 970
    if-ge v2, v0, :cond_1c

    .line 974
    :goto_11
    invoke-static {v3, v0}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 975
    invoke-static {v3}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 976
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 977
    return-object v3

    .line 972
    :cond_1c
    if-le v2, v1, :cond_20

    move v0, v1

    .line 973
    goto :goto_11

    :cond_20
    move v0, v2

    goto :goto_11
.end method

.method getSelectedDayInMillis()J
    .registers 3

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedHourTime()Landroid/text/format/Time;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1006
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1007
    .local v2, time:Landroid/text/format/Time;
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 1008
    iget v3, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    iput v3, v2, Landroid/text/format/Time;->hour:I

    .line 1009
    iput v6, v2, Landroid/text/format/Time;->minute:I

    .line 1010
    iput v6, v2, Landroid/text/format/Time;->second:I

    .line 1015
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1018
    .local v0, millis:J
    return-object v2
.end method

.method public getSelectedHourTimeinMillis()J
    .registers 3

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTime()Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method getSelectedMinutesSinceMidnight()I
    .registers 2

    .prologue
    .line 1031
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    mul-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public getSelectedTime()Landroid/text/format/Time;
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 981
    new-instance v4, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v6, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 982
    .local v4, today:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 983
    invoke-static {v4}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 984
    invoke-virtual {v4, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    iget-wide v8, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    .line 986
    .local v5, todayJulian:I
    new-instance v3, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v3, v6}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 987
    .local v3, time:Landroid/text/format/Time;
    iget v6, v3, Landroid/text/format/Time;->monthDay:I

    iget v7, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    iget v8, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v3, Landroid/text/format/Time;->monthDay:I

    .line 988
    invoke-static {v3}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 989
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v6

    iget-wide v8, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    .line 990
    .local v2, selectJulian:I
    if-ne v5, v2, :cond_54

    .line 991
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 992
    iget v6, v4, Landroid/text/format/Time;->hour:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/text/format/Time;->hour:I

    .line 999
    :goto_4f
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1002
    .local v0, millis:J
    return-object v3

    .line 994
    .end local v0           #millis:J
    :cond_54
    const/16 v6, 0x8

    iput v6, v3, Landroid/text/format/Time;->hour:I

    goto :goto_4f
.end method

.method public getSelectedTimeInMillis()J
    .registers 3

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public initFirstHour(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1708
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 1709
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->TAG:Ljava/lang/String;

    const-string v1, "init first hour "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getEventHour()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1711
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1718
    :cond_17
    :goto_17
    return-void

    .line 1712
    :cond_18
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    add-int/2addr v0, v1

    const/16 v1, 0x18

    if-le v0, v1, :cond_2a

    .line 1713
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1714
    iput v2, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_17

    .line 1715
    :cond_2a
    iget v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_17

    .line 1716
    iput v2, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    goto :goto_17
.end method

.method public isBriefMode()Z
    .registers 2

    .prologue
    .line 3867
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    return v0
.end method

.method isEventSelected()Z
    .registers 2

    .prologue
    .line 3847
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 5120
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5121
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->cleanupAll()V

    .line 5123
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 2067
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2070
    .local v2, resources:Landroid/content/res/Resources;
    iget-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    if-eqz v3, :cond_16

    .line 2071
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/CalendarView;->remeasure(II)V

    .line 2072
    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 2075
    :cond_16
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1b

    .line 2107
    :goto_1a
    return-void

    .line 2079
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2080
    .local v0, currentTime:J
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2081
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->second:I

    if-nez v3, :cond_3f

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_3f

    .line 2082
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/CalendarView;->mTodayJulianDay:I

    .line 2083
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 2087
    :cond_3f
    iget-boolean v3, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_56

    .line 2088
    iget-boolean v3, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_54

    .line 2089
    :cond_4f
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Lcom/android/calendar/CalendarView;->doDraw(Landroid/graphics/Canvas;)V

    .line 2091
    :cond_54
    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 2095
    :cond_56
    iget-object v3, p0, Lcom/android/calendar/CalendarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5d

    .line 2096
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->drawCalendarView(Landroid/graphics/Canvas;)V

    .line 2100
    :cond_5d
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;->drawAfterScroll(Landroid/graphics/Canvas;)V

    .line 2101
    iput-boolean v5, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 2103
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->sendAccessibilityEvents()V

    .line 2105
    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v3, v4}, Lcom/android/calendar/CalendarView;->postInvalidateDelayed(J)V

    goto :goto_1a
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x17

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1536
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-nez v0, :cond_52

    .line 1537
    const/16 v0, 0x42

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x16

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1e

    if-ne p1, v2, :cond_48

    .line 1543
    :cond_1e
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1544
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v0, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1546
    :cond_2a
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v0

    if-nez v0, :cond_40

    .line 1547
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1548
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->adjustHourSelection()V

    .line 1549
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1550
    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1553
    :cond_40
    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1554
    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1555
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 1688
    :goto_47
    return v8

    .line 1557
    :cond_48
    if-ne p1, v2, :cond_52

    .line 1560
    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1561
    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1562
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_47

    .line 1567
    :cond_52
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1568
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 1570
    iget v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 1572
    sparse-switch p1, :sswitch_data_154

    .line 1655
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v8

    goto :goto_47

    .line 1575
    :sswitch_61
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1576
    if-nez v0, :cond_67

    move v8, v1

    .line 1577
    goto :goto_47

    .line 1580
    :cond_67
    iget-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 1581
    iget-wide v3, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 1582
    iget-wide v5, v0, Lcom/android/calendar/Event;->id:J

    .line 1583
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    const/4 v7, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    goto :goto_47

    .line 1586
    :sswitch_74
    invoke-direct {p0, v8}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    goto :goto_47

    .line 1589
    :sswitch_78
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_82

    .line 1590
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_47

    .line 1593
    :cond_82
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v8

    goto :goto_47

    .line 1595
    :sswitch_87
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-eqz v2, :cond_93

    .line 1596
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    iput-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1598
    :cond_93
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-nez v2, :cond_a0

    .line 1599
    const v2, 0x24dc88

    if-lt v0, v2, :cond_a0

    .line 1601
    add-int/lit8 v0, v0, -0x1

    .line 1606
    :cond_a0
    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1658
    :goto_a2
    iget v2, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-lt v0, v2, :cond_aa

    iget v2, p0, Lcom/android/calendar/CalendarView;->mLastJulianDay:I

    if-le v0, v2, :cond_143

    .line 1660
    :cond_aa
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarActivity;->getNextCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v2

    .line 1661
    iget-object v3, v2, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    .line 1662
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1663
    iget v4, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-ge v0, v4, :cond_13a

    .line 1664
    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    iget v5, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/text/format/Time;->monthDay:I

    .line 1672
    :goto_c2
    invoke-virtual {v3, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 1673
    iput v0, v2, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 1674
    invoke-direct {p0, v2}, Lcom/android/calendar/CalendarView;->initView(Lcom/android/calendar/CalendarView;)V

    .line 1675
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->switchViews(Z)Landroid/view/View;

    goto/16 :goto_47

    .line 1610
    :sswitch_d1
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 1611
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    iput-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1613
    :cond_dd
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-nez v2, :cond_ea

    .line 1614
    const v2, 0x259d22

    if-gt v0, v2, :cond_ea

    .line 1616
    add-int/lit8 v0, v0, 0x1

    .line 1622
    :cond_ea
    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    goto :goto_a2

    .line 1626
    :sswitch_ed
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 1627
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    iput-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1629
    :cond_f9
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-nez v2, :cond_10f

    .line 1630
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1631
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->adjustHourSelection()V

    .line 1632
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1633
    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1635
    :cond_10f
    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 1637
    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    goto :goto_a2

    .line 1641
    :sswitch_114
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 1642
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-object v2, v2, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    iput-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1644
    :cond_120
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v2

    if-nez v2, :cond_136

    .line 1645
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1646
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->adjustHourSelection()V

    .line 1647
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1648
    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1651
    :cond_136
    iput v8, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    goto/16 :goto_a2

    .line 1668
    :cond_13a
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/2addr v1, v4

    iput v1, v3, Landroid/text/format/Time;->monthDay:I

    move v1, v8

    .line 1669
    goto :goto_c2

    .line 1678
    :cond_143
    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 1679
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1680
    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1683
    iput-boolean v8, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1684
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto/16 :goto_47

    .line 1572
    nop

    :sswitch_data_154
    .sparse-switch
        0x4 -> :sswitch_78
        0x13 -> :sswitch_ed
        0x14 -> :sswitch_114
        0x15 -> :sswitch_87
        0x16 -> :sswitch_d1
        0x42 -> :sswitch_74
        0x43 -> :sswitch_61
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 1484
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 1485
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1487
    .local v0, duration:J
    sparse-switch p1, :sswitch_data_4e

    .line 1525
    :cond_11
    :goto_11
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1489
    :sswitch_16
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-eqz v2, :cond_11

    .line 1494
    iget v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    if-ne v2, v6, :cond_27

    .line 1499
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1500
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1501
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_11

    .line 1506
    :cond_27
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_34

    .line 1507
    invoke-direct {p0, v6}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    goto :goto_11

    .line 1509
    :cond_34
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1510
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1511
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 1512
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->performLongClick()Z

    goto :goto_11

    .line 1516
    :sswitch_40
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_11

    .line 1487
    nop

    :sswitch_data_4e
    .sparse-switch
        0x4 -> :sswitch_40
        0x17 -> :sswitch_16
    .end sparse-switch
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v0, 0x1

    .line 5466
    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 5467
    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 5468
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 5469
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 4510
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 4512
    .local v0, action:I
    packed-switch v0, :pswitch_data_de

    .line 4605
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 4608
    :cond_11
    :goto_11
    return v6

    .line 4514
    :pswitch_12
    iget v7, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_11

    .line 4515
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_11

    .line 4520
    :pswitch_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 4521
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 4523
    .local v5, y:I
    iget v7, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    const/16 v8, 0xa0

    if-ne v7, v8, :cond_50

    .line 4524
    iget v7, p0, Lcom/android/calendar/CalendarView;->mDragScrollStartY:I

    sub-int v1, v7, v5

    .line 4525
    .local v1, distanceY:I
    iget v7, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    if-gez v7, :cond_39

    const/4 v7, 0x3

    if-gt v1, v7, :cond_40

    :cond_39
    iget v7, p0, Lcom/android/calendar/CalendarView;->mDistanceY:I

    if-lez v7, :cond_11

    const/4 v7, -0x3

    if-ge v1, v7, :cond_11

    .line 4527
    :cond_40
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDragRunnable:Lcom/android/calendar/CalendarView$DragRunnable;

    invoke-virtual {p0, v7}, Lcom/android/calendar/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4528
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4529
    .local v2, event:Lcom/android/calendar/Event;
    if-eqz v2, :cond_11

    .line 4531
    iput v5, p0, Lcom/android/calendar/CalendarView;->mLastMotionY:I

    .line 4536
    const/16 v7, 0x80

    iput v7, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    goto :goto_11

    .line 4542
    .end local v1           #distanceY:I
    .end local v2           #event:Lcom/android/calendar/Event;
    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarView;->dragEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 4543
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4544
    iget-boolean v7, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    if-nez v7, :cond_11

    iget v7, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v7, v6, :cond_11

    .line 4545
    iget v3, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    .line 4546
    .local v3, moreEventIndex:I
    invoke-direct {p0, v4, v5}, Lcom/android/calendar/CalendarView;->findPressedMoreIcon(II)I

    move-result v7

    iput v7, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    .line 4547
    iget v7, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    if-eq v3, v7, :cond_11

    .line 4548
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mDrawMoreIcon:Z

    .line 4549
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto :goto_11

    .line 4557
    .end local v3           #moreEventIndex:I
    .end local v4           #x:I
    .end local v5           #y:I
    :pswitch_75
    iget v7, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_84

    .line 4560
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mDragRunnable:Lcom/android/calendar/CalendarView$DragRunnable;

    invoke-virtual {p0, v7}, Lcom/android/calendar/CalendarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4561
    invoke-virtual {p0, p1}, Lcom/android/calendar/CalendarView;->dropEvent(Landroid/view/MotionEvent;)V

    goto :goto_11

    .line 4564
    :cond_84
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_b7

    .line 4565
    iget v7, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_96

    .line 4566
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->goMoreEventList()V

    goto/16 :goto_11

    .line 4569
    :cond_96
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v7, :cond_b7

    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-boolean v7, v7, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v7, :cond_b7

    iget-boolean v7, p0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    if-eqz v7, :cond_b7

    iget v7, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b7

    .line 4571
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mIgnoreEvent:Z

    .line 4572
    iput v9, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 4573
    iput v9, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 4574
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 4575
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 4576
    invoke-direct {p0, v9}, Lcom/android/calendar/CalendarView;->switchViews(Z)V

    .line 4580
    :cond_b7
    iget-boolean v7, p0, Lcom/android/calendar/CalendarView;->mOnFlingCalled:Z

    if-nez v7, :cond_11

    .line 4587
    iget-boolean v7, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    if-eqz v7, :cond_11

    .line 4588
    iput-boolean v9, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 4589
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->resetSelectedHour()V

    .line 4590
    iput-boolean v6, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 4591
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    goto/16 :goto_11

    .line 4599
    :pswitch_cb
    iget-object v7, p0, Lcom/android/calendar/CalendarView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4600
    iput-boolean v9, p0, Lcom/android/calendar/CalendarView;->mScrolling:Z

    .line 4601
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->resetSelectedHour()V

    goto/16 :goto_11

    .line 4608
    :cond_d7
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_11

    .line 4512
    nop

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_12
        :pswitch_75
        :pswitch_1e
        :pswitch_cb
    .end packed-switch
.end method

.method readyToDragEvent()V
    .registers 4

    .prologue
    .line 4974
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDraggingMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 4975
    .local v0, y:I
    const/16 v1, 0x80

    iput v1, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 4976
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 4977
    iput v0, p0, Lcom/android/calendar/CalendarView;->mLastMotionY:I

    .line 4978
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v1, v1, Lcom/android/calendar/Event;->top:F

    iput v1, p0, Lcom/android/calendar/CalendarView;->mDragEventInitTop:F

    .line 4985
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v2, Lcom/android/calendar/Event;->top:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 4986
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v2, Lcom/android/calendar/Event;->bottom:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 4987
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v2, Lcom/android/calendar/Event;->left:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 4988
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDragEventOrgRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v2, Lcom/android/calendar/Event;->right:F

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 4990
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 4991
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 4992
    return-void
.end method

.method public releaseBriefMode()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3871
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-eqz v0, :cond_29

    .line 3872
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    invoke-direct {p0, v0}, Lcom/android/calendar/CalendarView;->setDayPrevNextBtnState(Z)V

    .line 3873
    iget-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    if-nez v0, :cond_2a

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    .line 3874
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 3875
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 3876
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mMoreEventIndex:I

    .line 3877
    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 3878
    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 3879
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    .line 3880
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3881
    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mBriefBitmap:Landroid/graphics/Bitmap;

    .line 3884
    :cond_29
    return-void

    :cond_2a
    move v0, v2

    .line 3873
    goto :goto_11
.end method

.method public reloadEventAction(Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1833
    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1834
    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1835
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1836
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 1843
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 1844
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 1845
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1846
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1847
    return-void
.end method

.method public reloadEventActionForScroll(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1850
    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1851
    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1852
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1853
    iput v2, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 1855
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1856
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 1862
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRemeasure:Z

    .line 1863
    iput-boolean v2, p0, Lcom/android/calendar/CalendarView;->mChangeFirstHour:Z

    .line 1864
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1865
    iput-boolean v1, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1866
    return-void
.end method

.method public reloadEvents(Z)V
    .registers 10
    .parameter "doScroll"

    .prologue
    const/4 v6, 0x0

    .line 1802
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    if-nez v0, :cond_6

    .line 1830
    :goto_5
    return-void

    .line 1806
    :cond_6
    iput-object v6, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1807
    iput-object v6, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1808
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1809
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 1812
    new-instance v7, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1813
    .local v7, weekStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1814
    invoke-static {v7}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 1815
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 1818
    .local v3, millis:J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventLoader:Lcom/android/calendar/EventLoader;

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    new-instance v5, Lcom/android/calendar/CalendarView$2;

    invoke-direct {v5, p0, v2}, Lcom/android/calendar/CalendarView$2;-><init>(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)V

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_5
.end method

.method public resetFirstHour()V
    .registers 2

    .prologue
    .line 1721
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 1722
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 5164
    const-string v0, "num_day"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    .line 5165
    const-string v0, "first_cell"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    .line 5166
    const-string v0, "saved_selection_hour"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 5167
    const-string v0, "saved_first_hour"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    .line 5168
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_55

    .line 5169
    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekHourWidth:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 5170
    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekCellHeight:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    .line 5171
    iget v0, p0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    .line 5177
    :goto_34
    const-string v0, "saved_first_hour_offset"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    .line 5178
    const-string v0, "save_brief"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    .line 5179
    const-string v0, "selection_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 5180
    const-string v0, "selection_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 5184
    return-void

    .line 5173
    :cond_55
    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayHourWidth:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 5174
    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayCellHeight:I

    iput v0, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    .line 5175
    iget v0, p0, Lcom/android/calendar/CalendarView;->mDayCellWidth:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    goto :goto_34
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 5153
    const-string v0, "num_day"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5154
    const-string v0, "first_cell"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5155
    const-string v0, "saved_selection_hour"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5156
    const-string v0, "saved_first_hour"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHour:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5157
    const-string v0, "saved_first_hour_offset"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstHourOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5158
    const-string v0, "save_brief"

    iget-boolean v1, p0, Lcom/android/calendar/CalendarView;->mBrief:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5159
    const-string v0, "selection_mode"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5160
    const-string v0, "selection_day"

    iget v1, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5161
    return-void
.end method

.method public saveQuickAddEvent(Landroid/widget/TextView;)V
    .registers 15
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 5191
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 5193
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v7

    .line 5194
    const-wide/32 v0, 0x36ee80

    add-long v9, v7, v0

    .line 5196
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_70

    iget v0, p0, Lcom/android/calendar/CalendarView;->mDurationDay:I

    if-lt v0, v12, :cond_70

    .line 5198
    sub-long v0, v9, v7

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 5199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5200
    const-string v1, "duration"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5202
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getSelectedHourTime()Landroid/text/format/Time;

    move-result-object v0

    .line 5203
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Lcom/android/calendar/CalendarView;->mDurationDay:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 5204
    invoke-virtual {v0, v12}, Landroid/text/format/Time;->normalize(Z)J

    .line 5206
    new-instance v1, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v1}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 5207
    const/4 v2, 0x4

    iput v2, v1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 5208
    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 5209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-static {v0}, Lcom/android/calendarcommon/EventRecurrence;->calendarDay2Day(I)I

    move-result v0

    iput v0, v1, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    .line 5211
    const-string v0, "rrule"

    invoke-virtual {v1}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5214
    :cond_70
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getCalendarsConditions(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 5222
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5224
    if-eqz v0, :cond_8d

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_ac

    .line 5225
    :cond_8d
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "_id=%d"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5228
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5231
    :cond_ac
    if-eqz v0, :cond_149

    .line 5232
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5233
    const-string v1, "calendar_id"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5243
    :goto_be
    const-string v1, "eventTimezone"

    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-static {v2, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5244
    const-string v1, "title"

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5245
    const-string v1, "description"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5246
    const-string v1, "allDay"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5247
    const-string v1, "dtstart"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5248
    const-string v1, "dtend"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5249
    const-string v1, "hasAttendeeData"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5251
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 5253
    if-eqz v1, :cond_133

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_133

    .line 5256
    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>EVENT_CREATED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " </GATE-M>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5260
    :cond_133
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const v2, 0x7f0a00fb

    invoke-static {v1, v2, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5262
    iput v11, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 5263
    iput v11, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 5264
    if-eqz v0, :cond_148

    .line 5265
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5266
    :cond_148
    return-void

    .line 5241
    :cond_149
    const-string v1, "calendar_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_be
.end method

.method public scrollToEventHour()V
    .registers 4

    .prologue
    .line 5366
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mScrollToHour:Lcom/android/calendar/CalendarView$ScrollToSelectedHour;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5367
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .parameter "eventType"

    .prologue
    .line 2356
    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    .line 2360
    :goto_4
    return-void

    .line 2359
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_4
.end method

.method public setCellSize()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 913
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    .line 914
    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-le v1, v2, :cond_61

    .line 915
    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekBannerHeight:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mFirstCell:I

    .line 916
    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekHourWidth:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 917
    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekCellHeight:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    .line 918
    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekCellWidth:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    .line 919
    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekHourGap:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mHourGap:I

    .line 920
    iget v1, p0, Lcom/android/calendar/CalendarView;->mWeekEventRectRoundRadius:F

    iput v1, p0, Lcom/android/calendar/CalendarView;->mEventRectRoundRadiusSmall:F

    .line 921
    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mEventTextSize:I

    .line 922
    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventTextMargin:I

    .line 932
    :goto_31
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 934
    sget v1, Lcom/android/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 935
    iget v1, p0, Lcom/android/calendar/CalendarView;->mEventTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 936
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 937
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 938
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    .line 939
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/CalendarView;->mEventTextAscent:I

    .line 940
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    add-float/2addr v0, v1

    .line 941
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventTextHeight:I

    .line 942
    return-void

    .line 924
    :cond_61
    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayHourWidth:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mHoursWidth:I

    .line 925
    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayCellHeight:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mCellHeight:I

    .line 926
    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayCellWidth:I

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/calendar/CalendarView;->mCellWidth:I

    .line 927
    iget v1, p0, Lcom/android/calendar/CalendarView;->mDayHourGap:I

    iput v1, p0, Lcom/android/calendar/CalendarView;->mHourGap:I

    .line 928
    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/CalendarView;->mEventTextSize:I

    .line 929
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView;->mEventTextMargin:I

    goto :goto_31
.end method

.method setDetailedView(Ljava/lang/String;)V
    .registers 2
    .parameter "detailedView"

    .prologue
    .line 1254
    iput-object p1, p0, Lcom/android/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    .line 1255
    return-void
.end method

.method setDragEvent(I)V
    .registers 10
    .parameter "eventPosition"

    .prologue
    .line 4995
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 4996
    .local v1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mSameTimeEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 4998
    .local v3, target:Lcom/android/calendar/Event;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_25

    .line 4999
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 5000
    .local v0, event:Lcom/android/calendar/Event;
    iget-wide v4, v3, Lcom/android/calendar/Event;->id:J

    iget-wide v6, v0, Lcom/android/calendar/Event;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_26

    .line 5002
    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 5003
    const/16 v4, 0x80

    iput v4, p0, Lcom/android/calendar/CalendarView;->mTouchMode:I

    .line 5008
    .end local v0           #event:Lcom/android/calendar/Event;
    :cond_25
    return-void

    .line 4998
    .restart local v0       #event:Lcom/android/calendar/Event;
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .registers 7
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1035
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1036
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionHour:I

    .line 1037
    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1038
    iput-object v3, p0, Lcom/android/calendar/CalendarView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1039
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 1040
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1041
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionDay:I

    .line 1043
    iget-object v2, p0, Lcom/android/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1044
    iput-boolean v4, p0, Lcom/android/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1047
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 1048
    invoke-direct {p0}, Lcom/android/calendar/CalendarView;->recalc()V

    .line 1049
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->updateTitle()V

    .line 1051
    iput-boolean v4, p0, Lcom/android/calendar/CalendarView;->mRedrawScreen:Z

    .line 1052
    return-void
.end method

.method public setSelectionMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 5472
    iput p1, p0, Lcom/android/calendar/CalendarView;->mSelectionMode:I

    .line 5473
    return-void
.end method

.method public updateTitle()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x7

    const/4 v6, 0x1

    .line 1055
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-eq v0, v5, :cond_64

    .line 1056
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1058
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 1059
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a00e2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1060
    if-eqz v1, :cond_3a

    .line 1073
    const-string v4, "MM-dd-yyyy"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 1074
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1080
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    .line 1082
    iget v0, p0, Lcom/android/calendar/CalendarView;->mTodayJulianDay:I

    iget v1, p0, Lcom/android/calendar/CalendarView;->mFirstJulianDay:I

    if-ne v0, v1, :cond_f1

    .line 1083
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1084
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1085
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1091
    :cond_64
    :goto_64
    iget v0, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v0, v5, :cond_fd

    const-string v0, ","

    .line 1092
    :goto_6a
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1094
    iget v1, p0, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v1, v5, :cond_cd

    .line 1095
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1096
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1097
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1098
    iget-object v4, p0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1099
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1100
    sget-object v4, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ba

    sget-object v4, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 1101
    :cond_ba
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1112
    :cond_cd
    :goto_cd
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewLeft:Landroid/widget/TextView;

    aget-object v2, v0, v8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    iget-object v1, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewRight:Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1114
    return-void

    .line 1075
    :cond_dc
    const-string v4, "yyyy-MM-dd"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1076
    invoke-virtual {p0}, Lcom/android/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    .line 1087
    :cond_f1
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1088
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mTitleTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_64

    .line 1091
    :cond_fd
    const-string v0, " "

    goto/16 :goto_6a

    .line 1107
    :cond_101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    goto :goto_cd
.end method

.method public updateView()V
    .registers 2

    .prologue
    .line 5440
    iget-object v0, p0, Lcom/android/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5442
    return-void
.end method
