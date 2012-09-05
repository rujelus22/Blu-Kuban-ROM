.class public Lcom/android/calendar/MonthView;
.super Landroid/view/View;
.source "MonthView.java"

# interfaces
.implements Lcom/android/calendar/MonthInterface;


# instance fields
.field private final KOREAN_HOLIDAY_EVENT:I

.field private final MONTH_EVENT_NUM:I

.field private MONTH_ROW_NUM:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mBoxSelected:Landroid/graphics/drawable/Drawable;

.field private mCalendarBg:Landroid/graphics/drawable/Drawable;

.field private mCancelCallback:Ljava/lang/Runnable;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

.field private mDayTextSize:I

.field private mDetailedView:Ljava/lang/String;

.field private mEventDays:[[I

.field private final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private mEventHeight:I

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEventWidth:I

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

.field private mFirstColumnCellWidth:I

.field private mFirstJulianDay:I

.field private mFocusDayLunarTextSize:I

.field private mFocusDayTextSize:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsWithinCurrentMonth:Z

.field private mLastReloadMillis:J

.field private mLaunchDayView:Z

.field private mMonthDayNumberColor:I

.field private mMonthFocusedNumberColor:I

.field private mMonthFocuseddayNumberColor:I

.field mMonthHeight:I

.field private mMonthNotWithinDayColor:I

.field private mMonthOtherMonthDayNumberColor:I

.field private mMonthSaturdayNumberColor:I

.field private mMonthSundayNumberColor:I

.field private mMonthWeekNumColor:I

.field private mNavigator:Lcom/android/calendar/Navigator;

.field private mNumDays:I

.field private mOtherViewCalendar:Landroid/text/format/Time;

.field private mPaint:Landroid/graphics/Paint;

.field private mParentActivity:Lcom/android/calendar/MonthActivity;

.field private mPressedCol:I

.field private mPressedRow:I

.field private mPrevNextDayTextSize:I

.field private mPrevSelectedDayOfMonth:I

.field private mPrevSelectedMonth:I

.field private mPrevTitleTextViewText:Ljava/lang/CharSequence;

.field private mRect:Landroid/graphics/Rect;

.field private mRedrawScreen:Z

.field private mResources:Landroid/content/res/Resources;

.field private mSavedTime:Landroid/text/format/Time;

.field private mSelectionMode:I

.field private mTempTime:Landroid/text/format/Time;

.field private mTodayBackground:Landroid/graphics/drawable/Drawable;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mViewCalendar:Landroid/text/format/Time;

.field private mWeekTextSize:I


# direct methods
.method public constructor <init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/Navigator;)V
    .registers 7
    .parameter "activity"
    .parameter "navigator"

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 212
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 78
    iput v1, p0, Lcom/android/calendar/MonthView;->MONTH_EVENT_NUM:I

    .line 80
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/calendar/MonthView;->KOREAN_HOLIDAY_EVENT:I

    .line 103
    sget-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    .line 128
    const/16 v0, 0x1f

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    .line 131
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mRect:Landroid/graphics/Rect;

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mPaint:Landroid/graphics/Paint;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    .line 151
    iput v3, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 156
    iput v2, p0, Lcom/android/calendar/MonthView;->mPressedRow:I

    .line 157
    iput v2, p0, Lcom/android/calendar/MonthView;->mPressedCol:I

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    .line 190
    iput-boolean v3, p0, Lcom/android/calendar/MonthView;->mIsWithinCurrentMonth:Z

    .line 196
    new-instance v0, Lcom/android/calendar/MonthView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/MonthView$1;-><init>(Lcom/android/calendar/MonthView;)V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mUpdateTZ:Ljava/lang/Runnable;

    .line 592
    new-instance v0, Lcom/android/calendar/MonthView$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/MonthView$4;-><init>(Lcom/android/calendar/MonthView;)V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mCancelCallback:Ljava/lang/Runnable;

    .line 214
    iget-object v0, p1, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 215
    iput-object p2, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    .line 216
    new-instance v0, Lcom/android/calendar/EventGeometry;

    invoke-direct {v0}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 217
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setMinEventHeight(F)V

    .line 218
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setHourGap(F)V

    .line 219
    invoke-direct {p0, p1}, Lcom/android/calendar/MonthView;->init(Lcom/android/calendar/MonthActivity;)V

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/MonthView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/MonthView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/calendar/MonthView;->mPressedCol:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/calendar/MonthView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/calendar/MonthView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/MonthView;)[[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/MonthView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/MonthView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/calendar/MonthView;->mIsWithinCurrentMonth:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/calendar/MonthView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/calendar/MonthView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/calendar/MonthView;->calEventDay()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/MonthView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/calendar/MonthView;->mLaunchDayView:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/calendar/MonthView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/calendar/MonthView;->mLaunchDayView:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/calendar/MonthView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/MonthView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/calendar/MonthView;->mPressedRow:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/calendar/MonthView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/calendar/MonthView;->mPressedRow:I

    return p1
.end method

.method private calEventDay()V
    .registers 16

    .prologue
    const/16 v14, 0x8

    .line 647
    iget v9, p0, Lcom/android/calendar/MonthView;->mNumDays:I

    .line 648
    .local v9, numDays:I
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    .line 649
    .local v5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 650
    .local v10, numEvents:I
    iget v1, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    .line 651
    .local v1, date:I
    const/4 v4, 0x0

    .line 652
    .local v4, eventNum:I
    const/4 v0, 0x0

    .line 654
    .local v0, bKHoliday:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_f
    if-ge v6, v9, :cond_26

    .line 655
    const/4 v7, 0x0

    .local v7, j:I
    :goto_12
    if-ge v7, v10, :cond_21

    .line 656
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 657
    .local v3, event:Lcom/android/calendar/Event;
    iget v11, v3, Lcom/android/calendar/Event;->startDay:I

    .line 658
    .local v11, startDay:I
    iget v12, v3, Lcom/android/calendar/Event;->endDay:I

    .line 655
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 661
    .end local v3           #event:Lcom/android/calendar/Event;
    .end local v11           #startDay:I
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 654
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 664
    .end local v7           #j:I
    :cond_26
    iget v1, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    .line 665
    const/4 v6, 0x0

    :goto_29
    if-ge v6, v9, :cond_6e

    .line 666
    const/4 v8, 0x0

    .local v8, k:I
    :goto_2c
    if-ge v8, v14, :cond_38

    .line 667
    iget-object v12, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    aget-object v12, v12, v6

    const/4 v13, 0x0

    aput v13, v12, v8

    .line 666
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    .line 669
    :cond_38
    const/4 v4, 0x0

    .line 671
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_3a
    if-ge v7, v10, :cond_5d

    .line 672
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 673
    .restart local v3       #event:Lcom/android/calendar/Event;
    iget v11, v3, Lcom/android/calendar/Event;->startDay:I

    .line 674
    .restart local v11       #startDay:I
    iget v2, v3, Lcom/android/calendar/Event;->endDay:I

    .line 676
    .local v2, endDay:I
    if-gt v11, v1, :cond_6b

    if-lt v2, v1, :cond_6b

    .line 677
    iget v12, v3, Lcom/android/calendar/Event;->calendarId:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_62

    if-eqz v0, :cond_62

    .line 680
    iget-object v12, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    aget-object v12, v12, v6

    const/16 v13, -0xa

    aput v13, v12, v4

    .line 684
    :goto_59
    add-int/lit8 v4, v4, 0x1

    .line 685
    if-ne v4, v14, :cond_6b

    .line 690
    .end local v2           #endDay:I
    .end local v3           #event:Lcom/android/calendar/Event;
    .end local v11           #startDay:I
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    .line 665
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 682
    .restart local v2       #endDay:I
    .restart local v3       #event:Lcom/android/calendar/Event;
    .restart local v11       #startDay:I
    :cond_62
    iget-object v12, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    aget-object v12, v12, v6

    iget v13, v3, Lcom/android/calendar/Event;->color:I

    aput v13, v12, v4

    goto :goto_59

    .line 671
    :cond_6b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 692
    .end local v2           #endDay:I
    .end local v3           #event:Lcom/android/calendar/Event;
    .end local v7           #j:I
    .end local v8           #k:I
    .end local v11           #startDay:I
    :cond_6e
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .registers 17
    .parameter "canvas"

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_5e

    const/4 v8, 0x1

    .line 833
    .local v8, isLandscape:Z
    :goto_e
    iget-object v7, p0, Lcom/android/calendar/MonthView;->mRect:Landroid/graphics/Rect;

    .line 834
    .local v7, r:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v10

    .line 837
    .local v10, columnDay1:I
    iget v0, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    sub-int/2addr v0, v10

    add-int/lit8 v1, v0, 0x1

    .line 901
    .local v1, day:I
    const/4 v2, 0x0

    .line 902
    .local v2, weekNum:I
    const/4 v9, 0x0

    .line 903
    .local v9, calendar:Ljava/util/Calendar;
    const/4 v0, 0x1

    if-ne v10, v0, :cond_60

    const/4 v12, 0x1

    .line 905
    .local v12, noPrevMonth:Z
    :goto_22
    const/4 v14, 0x2

    .line 906
    .local v14, weekColumn:I
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 907
    .local v13, prefs:Landroid/content/SharedPreferences;
    const-string v0, "preferences_first_day_of_week"

    const-string v5, "1"

    invoke-interface {v13, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 910
    .local v11, firstDayOfWeek:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 911
    invoke-virtual {v9, v11}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 915
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 926
    const/4 v14, 0x1

    .line 928
    const/4 v3, 0x0

    .local v3, row:I
    :goto_42
    iget v0, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    if-ge v3, v0, :cond_65

    .line 929
    invoke-direct {p0, v3, v14, v12, v9}, Lcom/android/calendar/MonthView;->getWeekOfYear(IIZLjava/util/Calendar;)I

    move-result v2

    .line 930
    const/4 v4, 0x0

    .local v4, column:I
    :goto_4b
    const/16 v0, 0x8

    if-ge v4, v0, :cond_62

    .line 931
    iget-object v6, p0, Lcom/android/calendar/MonthView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/MonthView;->drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Z)V

    .line 932
    if-eqz v4, :cond_5b

    .line 933
    add-int/lit8 v1, v1, 0x1

    .line 930
    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    .line 830
    .end local v1           #day:I
    .end local v2           #weekNum:I
    .end local v3           #row:I
    .end local v4           #column:I
    .end local v7           #r:Landroid/graphics/Rect;
    .end local v8           #isLandscape:Z
    .end local v9           #calendar:Ljava/util/Calendar;
    .end local v10           #columnDay1:I
    .end local v11           #firstDayOfWeek:I
    .end local v12           #noPrevMonth:Z
    .end local v13           #prefs:Landroid/content/SharedPreferences;
    .end local v14           #weekColumn:I
    :cond_5e
    const/4 v8, 0x0

    goto :goto_e

    .line 903
    .restart local v1       #day:I
    .restart local v2       #weekNum:I
    .restart local v7       #r:Landroid/graphics/Rect;
    .restart local v8       #isLandscape:Z
    .restart local v9       #calendar:Ljava/util/Calendar;
    .restart local v10       #columnDay1:I
    :cond_60
    const/4 v12, 0x0

    goto :goto_22

    .line 928
    .restart local v3       #row:I
    .restart local v4       #column:I
    .restart local v11       #firstDayOfWeek:I
    .restart local v12       #noPrevMonth:Z
    .restart local v13       #prefs:Landroid/content/SharedPreferences;
    .restart local v14       #weekColumn:I
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 943
    .end local v4           #column:I
    :cond_65
    return-void
.end method

.method private drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Z)V
    .registers 30
    .parameter "day"
    .parameter "weekNum"
    .parameter "row"
    .parameter "column"
    .parameter "canvas"
    .parameter "p"
    .parameter "r"
    .parameter "isLandscape"

    .prologue
    .line 1031
    const/4 v11, 0x0

    .line 1032
    .local v11, drawSelection:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-eqz v2, :cond_13

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->isSelected(II)Z

    move-result v11

    .line 1036
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v18

    .line 1037
    .local v18, withinCurrentMonth:Z
    const/4 v14, 0x0

    .line 1038
    .local v14, isToday:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v9

    .line 1039
    .local v9, dayOfBox:I
    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v17, today:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1041
    move-object/from16 v0, v17

    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    if-ne v9, v2, :cond_6a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getYear()I

    move-result v2

    move-object/from16 v0, v17

    iget v3, v0, Landroid/text/format/Time;->year:I

    if-ne v2, v3, :cond_6a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v2

    move-object/from16 v0, v17

    iget v3, v0, Landroid/text/format/Time;->month:I

    if-ne v2, v3, :cond_6a

    if-eqz p4, :cond_6a

    .line 1043
    const/4 v14, 0x1

    .line 1046
    :cond_6a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mCellHeight:I

    mul-int v2, v2, p3

    add-int/lit8 v20, v2, 0x1

    .line 1049
    .local v20, y:I
    if-nez p4, :cond_1d9

    .line 1050
    const/16 v19, 0x0

    .line 1051
    .local v19, x:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mFirstColumnCellWidth:I

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1057
    :goto_7e
    move/from16 v0, v19

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1058
    move/from16 v0, v20

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1059
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mCellHeight:I

    add-int v2, v2, v20

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1061
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ae

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mPressedRow:I

    move/from16 v0, p3

    if-ne v2, v0, :cond_ae

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mPressedCol:I

    move/from16 v0, p4

    if-ne v2, v0, :cond_ae

    if-nez v11, :cond_ae

    .line 1064
    const/4 v11, 0x1

    .line 1066
    :cond_ae
    if-eqz v11, :cond_230

    .line 1068
    if-eqz v18, :cond_1f2

    .line 1069
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    .line 1070
    .local v12, focusedDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1071
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1081
    .end local v12           #focusedDrawable:Landroid/graphics/drawable/Drawable;
    :cond_ce
    :goto_ce
    if-eqz v18, :cond_e0

    if-eqz v14, :cond_e0

    .line 1084
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    .line 1085
    .local v8, background:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1086
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1089
    .end local v8           #background:Landroid/graphics/drawable/Drawable;
    :cond_e0
    if-eqz v18, :cond_f2

    if-eqz p4, :cond_f2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    move v7, v14

    .line 1090
    invoke-direct/range {v2 .. v7}, Lcom/android/calendar/MonthView;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    .line 1120
    :cond_f2
    :goto_f2
    if-nez p4, :cond_14d

    .line 1122
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthWeekNumColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1123
    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1124
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1125
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mWeekTextSize:I

    int-to-float v2, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1126
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1128
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v15, v2, v3

    .line 1129
    .local v15, textX:I
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/MonthView;->mDayTextSize:I

    div-int/lit8 v3, v3, 0x5

    add-int v16, v2, v3

    .line 1130
    .local v16, textY:I
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1133
    .end local v15           #textX:I
    .end local v16           #textY:I
    :cond_14d
    const/4 v13, 0x0

    .line 1147
    .local v13, isHoliday:Z
    if-eqz p4, :cond_1d8

    .line 1148
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1149
    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1150
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1151
    if-eqz v18, :cond_256

    .line 1152
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mDayTextSize:I

    int-to-float v2, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1157
    :goto_16f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthDayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1159
    if-nez v18, :cond_262

    .line 1160
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthOtherMonthDayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1212
    :goto_183
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1256
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    const-string v4, "00"

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v15, v2, v3

    .line 1257
    .restart local v15       #textX:I
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/MonthView;->mDayTextSize:I

    div-int/lit8 v3, v3, 0x3

    add-int v16, v2, v3

    .line 1285
    .restart local v16       #textY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1289
    .end local v15           #textX:I
    .end local v16           #textY:I
    :cond_1d8
    return-void

    .line 1053
    .end local v13           #isHoliday:Z
    .end local v19           #x:I
    :cond_1d9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mFirstColumnCellWidth:I

    add-int/lit8 v3, p4, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/MonthView;->mCellWidth:I

    mul-int/2addr v3, v4

    add-int v19, v2, v3

    .line 1054
    .restart local v19       #x:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mCellWidth:I

    add-int v2, v2, v19

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_7e

    .line 1073
    :cond_1f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_ce

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v2

    move/from16 v0, p4

    if-ne v2, v0, :cond_ce

    .line 1075
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthNotWithinDayColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1076
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v2

    move-object/from16 v2, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_ce

    .line 1107
    :cond_230
    if-eqz v18, :cond_242

    if-eqz v14, :cond_242

    .line 1110
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/calendar/MonthView;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    .line 1111
    .restart local v8       #background:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1112
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1114
    .end local v8           #background:Landroid/graphics/drawable/Drawable;
    :cond_242
    if-eqz v18, :cond_f2

    if-eqz p4, :cond_f2

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    move v7, v14

    .line 1115
    invoke-direct/range {v2 .. v7}, Lcom/android/calendar/MonthView;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    goto/16 :goto_f2

    .line 1154
    .restart local v13       #isHoliday:Z
    :cond_256
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mPrevNextDayTextSize:I

    int-to-float v2, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_16f

    .line 1162
    :cond_262
    const/4 v2, 0x1

    if-ne v13, v2, :cond_270

    .line 1163
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthSundayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_183

    .line 1164
    :cond_270
    if-eqz v11, :cond_27d

    .line 1166
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthFocusedNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_183

    .line 1185
    :cond_27d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v2}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v2

    add-int v2, v2, p4

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v10, v2, 0x1

    .line 1187
    .local v10, dayOfWeek:I
    const/4 v2, 0x1

    if-eq v10, v2, :cond_295

    const/4 v2, 0x7

    if-ne v10, v2, :cond_2a0

    .line 1188
    :cond_295
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthSaturdayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_183

    .line 1190
    :cond_2a0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/MonthView;->mMonthDayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_183
.end method

.method private drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Z)V
    .registers 11
    .parameter "date"
    .parameter "canvas"
    .parameter "rect"
    .parameter "p"
    .parameter "isToday"

    .prologue
    .line 1293
    iget v3, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    sub-int v0, p1, v3

    .line 1294
    .local v0, day:I
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-nez v3, :cond_e

    .line 1318
    :goto_d
    return-void

    .line 1298
    :cond_e
    const/4 v1, 0x7

    .line 1299
    .local v1, i:I
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1300
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1301
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1302
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1303
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/calendar/MonthView;->mEventHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1304
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/calendar/MonthView;->mEventWidth:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1306
    :cond_30
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    if-eqz v3, :cond_51

    .line 1311
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mEventDays:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1312
    invoke-virtual {p2, v2, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1313
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1314
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/calendar/MonthView;->mEventWidth:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1316
    :cond_51
    add-int/lit8 v1, v1, -0x1

    .line 1317
    if-gez v1, :cond_30

    goto :goto_d
.end method

.method private drawingCalc(I)V
    .registers 5
    .parameter "width"

    .prologue
    const/4 v2, 0x0

    .line 1561
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/MonthView;->mMonthHeight:I

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p1, :cond_41

    :cond_1f
    if-lez p1, :cond_41

    iget v0, p0, Lcom/android/calendar/MonthView;->mMonthHeight:I

    if-lez v0, :cond_41

    .line 1566
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2e

    .line 1567
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1571
    :cond_2e
    iget v0, p0, Lcom/android/calendar/MonthView;->mMonthHeight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1572
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    .line 1575
    :cond_41
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1576
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/MonthView;->mMonthHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1577
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1578
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 1580
    return-void
.end method

.method private getWeekOfYear(IIZLjava/util/Calendar;)I
    .registers 12
    .parameter "row"
    .parameter "column"
    .parameter "isWithinCurrentMonth"
    .parameter "calendar"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 1323
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4, p1, p2}, Lcom/android/calendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v4

    invoke-virtual {p4, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1324
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3, p1, p2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    .line 1325
    .local v1, within:Z
    if-eqz v1, :cond_2c

    .line 1326
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v3

    invoke-virtual {p4, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 1327
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getYear()I

    move-result v3

    invoke-virtual {p4, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 1352
    :goto_26
    const/4 v3, 0x3

    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    return v3

    .line 1329
    :cond_2c
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v0

    .line 1330
    .local v0, month:I
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getYear()I

    move-result v2

    .line 1331
    .local v2, year:I
    if-ge p1, v5, :cond_4a

    .line 1333
    if-nez v0, :cond_47

    .line 1334
    add-int/lit8 v2, v2, -0x1

    .line 1335
    const/16 v0, 0xb

    .line 1348
    :goto_40
    invoke-virtual {p4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 1349
    invoke-virtual {p4, v6, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_26

    .line 1337
    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    .line 1341
    :cond_4a
    const/16 v3, 0xb

    if-ne v0, v3, :cond_52

    .line 1342
    add-int/lit8 v2, v2, 0x1

    .line 1343
    const/4 v0, 0x0

    goto :goto_40

    .line 1345
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_40
.end method

.method private init(Lcom/android/calendar/MonthActivity;)V
    .registers 16
    .parameter "activity"

    .prologue
    const/4 v13, 0x6

    const/4 v0, 0x1

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthView;->setFocusable(Z)V

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthView;->setFocusableInTouchMode(Z)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthView;->setClickable(Z)V

    .line 226
    iput-object p1, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    .line 228
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p1, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, timezone:Ljava/lang/String;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 232
    .local v4, now:J
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 233
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iput v0, v8, Landroid/text/format/Time;->monthDay:I

    .line 234
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 235
    .local v2, millis:J
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v8, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v8, v9}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    .line 236
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v8, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 238
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 239
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    .line 240
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 242
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    if-nez v8, :cond_6e

    .line 243
    new-instance v8, Lcom/android/calendar/TwDayOfMonthCursor;

    iget-object v9, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->year:I

    iget-object v10, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->month:I

    iget-object v11, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v11, v11, Landroid/text/format/Time;->monthDay:I

    iget-object v12, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v12}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/calendar/TwDayOfMonthCursor;-><init>(IIII)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    .line 246
    :cond_6e
    iput v13, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    .line 248
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v0, :cond_18c

    .line 249
    .local v0, isPortrait:Z
    :goto_7c
    if-eqz v0, :cond_9f

    .line 250
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v8}, Lcom/android/calendar/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v1

    .line 251
    .local v1, maxDay:I
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v8, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    .line 252
    iget v8, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    if-eq v8, v13, :cond_95

    .line 253
    const/4 v8, 0x5

    iput v8, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    .line 254
    :cond_95
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    new-instance v9, Lcom/android/calendar/MonthView$2;

    invoke-direct {v9, p0}, Lcom/android/calendar/MonthView$2;-><init>(Lcom/android/calendar/MonthView;)V

    invoke-virtual {v8, v9}, Lcom/android/calendar/TwDayOfMonthCursor;->setOnCursorMoveListener(Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;)V

    .line 264
    .end local v1           #maxDay:I
    :cond_9f
    invoke-virtual {p1}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    .line 265
    iget v8, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    packed-switch v8, :pswitch_data_19c

    .line 275
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v8

    const-wide/32 v9, 0x200000

    invoke-virtual {v8, v9, v10}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 278
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020051

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    .line 283
    :goto_bf
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020052

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    .line 284
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020065

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    .line 287
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 288
    .local v6, res:Landroid/content/res/Resources;
    const v8, 0x7f08000e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthWeekNumColor:I

    .line 289
    const v8, 0x7f08000b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthOtherMonthDayNumberColor:I

    .line 290
    const v8, 0x7f080009

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthDayNumberColor:I

    .line 291
    const v8, 0x7f08000a

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthFocusedNumberColor:I

    .line 292
    const v8, 0x7f08000c

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthSundayNumberColor:I

    .line 293
    const v8, 0x7f08000d

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthSaturdayNumberColor:I

    .line 294
    const v8, 0x7f080013

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthNotWithinDayColor:I

    .line 297
    const v8, 0x7f08002e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mMonthFocuseddayNumberColor:I

    .line 300
    const v8, 0x7f0b0007

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mCellHeight:I

    .line 301
    const v8, 0x7f0b0008

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    .line 302
    const v8, 0x7f0b0009

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mFirstColumnCellWidth:I

    .line 303
    const v8, 0x7f0b0016

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mEventWidth:I

    .line 304
    const v8, 0x7f0b0017

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mEventHeight:I

    .line 306
    const v8, 0x7f0b0010

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mDayTextSize:I

    .line 307
    const v8, 0x7f0b0011

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mPrevNextDayTextSize:I

    .line 308
    const v8, 0x7f0b0012

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mWeekTextSize:I

    .line 313
    const v8, 0x7f0b0014

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mFocusDayTextSize:I

    .line 314
    const v8, 0x7f0b0015

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthView;->mFocusDayLunarTextSize:I

    .line 317
    new-instance v8, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/calendar/MonthView$3;

    invoke-direct {v10, p0}, Lcom/android/calendar/MonthView$3;-><init>(Lcom/android/calendar/MonthView;)V

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 548
    return-void

    .line 248
    .end local v0           #isPortrait:Z
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_18c
    const/4 v0, 0x0

    goto/16 :goto_7c

    .line 267
    .restart local v0       #isPortrait:Z
    :pswitch_18f
    iget-object v8, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f020050

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_bf

    .line 265
    :pswitch_data_19c
    .packed-switch 0x5
        :pswitch_18f
    .end packed-switch
.end method

.method private sendAccessibilityEvents()V
    .registers 4

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    .line 782
    :cond_12
    :goto_12
    return-void

    .line 772
    :cond_13
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v1

    .line 773
    .local v1, selectedMonth:I
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v0

    .line 776
    .local v0, selectedDayOfMonth:I
    iget v2, p0, Lcom/android/calendar/MonthView;->mPrevSelectedMonth:I

    if-ne v2, v1, :cond_27

    iget v2, p0, Lcom/android/calendar/MonthView;->mPrevSelectedDayOfMonth:I

    if-eq v2, v0, :cond_12

    .line 778
    :cond_27
    iput v1, p0, Lcom/android/calendar/MonthView;->mPrevSelectedMonth:I

    .line 779
    iput v0, p0, Lcom/android/calendar/MonthView;->mPrevSelectedDayOfMonth:I

    .line 780
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/calendar/MonthView;->sendAccessibilityEvent(I)V

    goto :goto_12
.end method


# virtual methods
.method animationFinished()V
    .registers 2

    .prologue
    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 701
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 702
    return-void
.end method

.method animationStarted()V
    .registers 1

    .prologue
    .line 696
    return-void
.end method

.method public clearCachedEvents()V
    .registers 3

    .prologue
    .line 589
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/MonthView;->mLastReloadMillis:J

    .line 590
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 16
    .parameter "event"

    .prologue
    .line 796
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_13

    .line 799
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0

    .line 800
    :cond_13
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_11

    .line 802
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 803
    .local v1, startMillis:J
    const v5, 0x10012

    .line 805
    .local v5, flags:I
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 806
    .local v12, text:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    const/4 v13, 0x0

    .line 810
    .local v13, todayEventCount:I
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v10

    .line 811
    .local v10, selectedDayOfMonth:I
    const/4 v9, 0x0

    .local v9, i:I
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, count:I
    :goto_3d
    if-ge v9, v7, :cond_5e

    .line 812
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/Event;

    .line 813
    .local v6, calendarEvent:Lcom/android/calendar/Event;
    iget v0, v6, Lcom/android/calendar/Event;->startDay:I

    iget v3, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    sub-int/2addr v0, v3

    add-int/lit8 v11, v0, 0x1

    .line 814
    .local v11, startDay:I
    iget v0, v6, Lcom/android/calendar/Event;->endDay:I

    iget v3, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    sub-int/2addr v0, v3

    add-int/lit8 v8, v0, 0x1

    .line 815
    .local v8, endDay:I
    if-gt v11, v10, :cond_5b

    if-lt v8, v10, :cond_5b

    .line 816
    add-int/lit8 v13, v13, 0x1

    .line 811
    :cond_5b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3d

    .line 822
    .end local v6           #calendarEvent:Lcom/android/calendar/Event;
    .end local v8           #endDay:I
    .end local v11           #startDay:I
    :cond_5e
    invoke-virtual {p1, v13}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_11
.end method

.method public getEventList()Ljava/util/ArrayList;
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
    .line 1766
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFirstJulianDay()I
    .registers 2

    .prologue
    .line 1754
    iget v0, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    return v0
.end method

.method public getLastJulianDay()I
    .registers 3

    .prologue
    .line 1758
    iget v0, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    iget v1, p0, Lcom/android/calendar/MonthView;->mNumDays:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method getPressedColumn(I)I
    .registers 5
    .parameter "x"

    .prologue
    .line 1535
    iget v1, p0, Lcom/android/calendar/MonthView;->mFirstColumnCellWidth:I

    if-gt p1, v1, :cond_a

    .line 1536
    const/4 v0, 0x0

    .line 1540
    .local v0, col:I
    :goto_5
    const/4 v1, 0x7

    if-le v0, v1, :cond_9

    .line 1541
    const/4 v0, 0x7

    .line 1543
    :cond_9
    return v0

    .line 1538
    .end local v0           #col:I
    :cond_a
    iget v1, p0, Lcom/android/calendar/MonthView;->mFirstColumnCellWidth:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/calendar/MonthView;->mCellWidth:I

    div-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .restart local v0       #col:I
    goto :goto_5
.end method

.method getPressedRow(I)I
    .registers 4
    .parameter "y"

    .prologue
    .line 1523
    iget v1, p0, Lcom/android/calendar/MonthView;->mCellHeight:I

    div-int v0, p1, v1

    .line 1524
    .local v0, row:I
    if-gez v0, :cond_7

    .line 1525
    const/4 v0, 0x0

    .line 1527
    :cond_7
    const/4 v1, 0x5

    if-le v0, v1, :cond_b

    .line 1528
    const/4 v0, 0x5

    .line 1530
    :cond_b
    return v0
.end method

.method public getPrevNextTime(I)Landroid/text/format/Time;
    .registers 11
    .parameter "monthOffset"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1497
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v4, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1498
    .local v3, time:Landroid/text/format/Time;
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1501
    iget v4, v3, Landroid/text/format/Time;->month:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/text/format/Time;->month:I

    .line 1502
    iput v7, v3, Landroid/text/format/Time;->hour:I

    .line 1503
    iput v7, v3, Landroid/text/format/Time;->minute:I

    .line 1504
    iput v7, v3, Landroid/text/format/Time;->second:I

    .line 1506
    new-instance v0, Lcom/android/calendar/TwDayOfMonthCursor;

    iget v4, v3, Landroid/text/format/Time;->year:I

    iget v5, v3, Landroid/text/format/Time;->month:I

    iget-object v6, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v6}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v6

    invoke-direct {v0, v4, v5, v8, v6}, Lcom/android/calendar/TwDayOfMonthCursor;-><init>(IIII)V

    .line 1507
    .local v0, cursor:Lcom/android/calendar/TwDayOfMonthCursor;
    iget-object v4, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/text/format/Time;->monthDay:I

    .line 1508
    invoke-virtual {v3, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 1510
    .local v1, millis:J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_51

    .line 1511
    const/16 v4, 0x1f

    const/16 v5, 0xb

    const/16 v6, 0x7f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/text/format/Time;->set(III)V

    .line 1512
    invoke-virtual {v3, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 1515
    :cond_51
    return-object v3
.end method

.method getSelectedColumn()I
    .registers 2

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v0

    return v0
.end method

.method public getSelectedDate()Landroid/text/format/Time;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1462
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 1463
    .local v0, time:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1465
    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 1466
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 1468
    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 1469
    iput v3, v0, Landroid/text/format/Time;->minute:I

    .line 1470
    iput v3, v0, Landroid/text/format/Time;->second:I

    .line 1471
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1472
    return-object v0
.end method

.method public getSelectedMillis()J
    .registers 3

    .prologue
    .line 1478
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getSelectedDate()Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedMillisForAllday()J
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1482
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1483
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1484
    const-string v1, "UTC"

    .line 1486
    iget v2, v0, Landroid/text/format/Time;->month:I

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/text/format/Time;->month:I

    .line 1487
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v2

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 1489
    iput v4, v0, Landroid/text/format/Time;->hour:I

    .line 1490
    iput v4, v0, Landroid/text/format/Time;->minute:I

    .line 1491
    iput v4, v0, Landroid/text/format/Time;->second:I

    .line 1492
    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1493
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedTime()Landroid/text/format/Time;
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1437
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 1438
    .local v3, time:Landroid/text/format/Time;
    iget-object v6, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1440
    iget v6, v3, Landroid/text/format/Time;->month:I

    iget-object v7, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v7}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v3, Landroid/text/format/Time;->month:I

    .line 1441
    iget-object v6, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v6}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v6

    iput v6, v3, Landroid/text/format/Time;->monthDay:I

    .line 1442
    invoke-static {v3}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 1443
    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1445
    .local v0, millis:J
    iget-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    .line 1446
    .local v2, selectedDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    .line 1447
    .local v5, todayJulian:I
    if-ne v2, v5, :cond_55

    .line 1448
    new-instance v4, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v6, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1449
    .local v4, today:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1450
    iget v6, v4, Landroid/text/format/Time;->hour:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/text/format/Time;->hour:I

    .line 1454
    .end local v4           #today:Landroid/text/format/Time;
    :goto_4b
    iput v10, v3, Landroid/text/format/Time;->minute:I

    .line 1455
    iput v10, v3, Landroid/text/format/Time;->second:I

    .line 1456
    iput-boolean v10, v3, Landroid/text/format/Time;->allDay:Z

    .line 1457
    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    .line 1458
    return-object v3

    .line 1452
    :cond_55
    const/16 v6, 0x8

    iput v6, v3, Landroid/text/format/Time;->hour:I

    goto :goto_4b
.end method

.method public getSelectedTimeInMillis()J
    .registers 4

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 1421
    .local v0, time:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1423
    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 1424
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 1428
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->second:I

    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 1429
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 1430
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1431
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectionMode()I
    .registers 2

    .prologue
    .line 1551
    iget v0, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    return v0
.end method

.method public getTime()Landroid/text/format/Time;
    .registers 2

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method public getWeekNum()I
    .registers 2

    .prologue
    .line 1583
    iget v0, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 718
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 720
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    .line 721
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 723
    :cond_d
    iput-object v1, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    .line 724
    iput-object v1, p0, Lcom/android/calendar/MonthView;->mPaint:Landroid/graphics/Paint;

    .line 725
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 740
    iget-boolean v1, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    if-eqz v1, :cond_2c

    .line 741
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_10

    .line 742
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/calendar/MonthView;->drawingCalc(I)V

    .line 746
    :cond_10
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_2c

    .line 748
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mCanvas:Landroid/graphics/Canvas;

    .line 750
    .local v0, bitmapCanvas:Landroid/graphics/Canvas;
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 751
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 752
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 753
    invoke-direct {p0, v0}, Lcom/android/calendar/MonthView;->doDraw(Landroid/graphics/Canvas;)V

    .line 754
    iput-boolean v3, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 759
    .end local v0           #bitmapCanvas:Landroid/graphics/Canvas;
    :cond_2c
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3a

    .line 760
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 763
    :cond_3a
    invoke-direct {p0}, Lcom/android/calendar/MonthView;->sendAccessibilityEvents()V

    .line 764
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 1637
    iget v3, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-nez v3, :cond_30

    .line 1638
    const/16 v3, 0x42

    if-eq p1, v3, :cond_1a

    const/16 v3, 0x16

    if-eq p1, v3, :cond_1a

    const/16 v3, 0x15

    if-eq p1, v3, :cond_1a

    const/16 v3, 0x13

    if-eq p1, v3, :cond_1a

    const/16 v3, 0x14

    if-ne p1, v3, :cond_23

    .line 1643
    :cond_1a
    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1644
    iput-boolean v2, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1645
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    move v1, v2

    .line 1726
    :cond_22
    :goto_22
    return v1

    .line 1647
    :cond_23
    const/16 v3, 0x17

    if-ne p1, v3, :cond_30

    .line 1650
    iput v2, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1651
    iput-boolean v2, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1652
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    move v1, v2

    .line 1653
    goto :goto_22

    .line 1657
    :cond_30
    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1658
    const/4 v1, 0x0

    .line 1659
    .local v1, redraw:Z
    const/4 v0, 0x0

    .line 1661
    .local v0, other:Landroid/text/format/Time;
    packed-switch p1, :pswitch_data_de

    .line 1718
    :goto_37
    if-eqz v0, :cond_d4

    .line 1719
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1720
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v2, v4}, Lcom/android/calendar/Navigator;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_22

    .line 1663
    :pswitch_43
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->up()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1664
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1665
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1666
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    .line 1667
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1670
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->down()Z

    .line 1672
    :cond_65
    const/4 v1, 0x1

    .line 1673
    goto :goto_37

    .line 1676
    :pswitch_67
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->down()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1677
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1678
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1679
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    .line 1680
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1683
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->up()Z

    .line 1685
    :cond_89
    const/4 v1, 0x1

    .line 1686
    goto :goto_37

    .line 1689
    :pswitch_8b
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->left()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 1690
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1691
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1692
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    .line 1693
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1696
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->right()Z

    .line 1698
    :cond_ad
    const/4 v1, 0x1

    .line 1699
    goto :goto_37

    .line 1702
    :pswitch_af
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->right()Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 1703
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1704
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1705
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    .line 1706
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1709
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->left()Z

    .line 1711
    :cond_d1
    const/4 v1, 0x1

    .line 1712
    goto/16 :goto_37

    .line 1721
    :cond_d4
    if-eqz v1, :cond_22

    .line 1722
    iput-boolean v2, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1723
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    goto/16 :goto_22

    .line 1661
    nop

    :pswitch_data_de
    .packed-switch 0x13
        :pswitch_43
        :pswitch_67
        :pswitch_8b
        :pswitch_af
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 1589
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 1591
    .local v0, duration:J
    sparse-switch p1, :sswitch_data_48

    .line 1632
    :cond_e
    :goto_e
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 1594
    :sswitch_13
    iget v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-eqz v4, :cond_e

    .line 1599
    iget v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-ne v4, v8, :cond_24

    .line 1604
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1605
    iput-boolean v8, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1606
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    goto :goto_e

    .line 1611
    :cond_24
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_3b

    .line 1618
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v2

    .line 1619
    .local v2, millis:J
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    invoke-static {v4, v5, v2, v3}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_e

    .line 1623
    .end local v2           #millis:J
    :cond_3b
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1624
    iput-boolean v8, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1625
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 1626
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->performLongClick()Z

    goto :goto_e

    .line 1591
    nop

    :sswitch_data_48
    .sparse-switch
        0x17 -> :sswitch_13
        0x42 -> :sswitch_13
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 733
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 734
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/MonthView;->mMonthHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/MonthView;->setMeasuredDimension(II)V

    .line 736
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 711
    invoke-direct {p0, p1}, Lcom/android/calendar/MonthView;->drawingCalc(I)V

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 713
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 714
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 947
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 948
    .local v0, action:I
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    iget-boolean v3, v3, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    if-eqz v3, :cond_13

    .line 951
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1001
    :goto_12
    return v3

    .line 954
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v5, :cond_3a

    .line 956
    iput v6, p0, Lcom/android/calendar/MonthView;->mPressedRow:I

    .line 957
    iput v6, p0, Lcom/android/calendar/MonthView;->mPressedCol:I

    .line 958
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v2

    .line 959
    .local v2, row:I
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v1

    .line 960
    .local v1, col:I
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v3

    if-nez v3, :cond_47

    .line 962
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v4

    invoke-interface {v3, v4, v5, v7}, Lcom/android/calendar/Navigator;->goTo(Landroid/text/format/Time;ZZ)V

    .line 968
    .end local v1           #col:I
    .end local v2           #row:I
    :cond_3a
    :goto_3a
    packed-switch v0, :pswitch_data_aa

    .line 997
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1001
    :goto_42
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_12

    .line 964
    .restart local v1       #col:I
    .restart local v2       #row:I
    :cond_47
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3, v2, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 965
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v4

    invoke-interface {v3, v4, v5, v7}, Lcom/android/calendar/Navigator;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_3a

    .line 971
    .end local v1           #col:I
    .end local v2           #row:I
    :pswitch_59
    iget v3, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_99

    .line 972
    iput v6, p0, Lcom/android/calendar/MonthView;->mPressedRow:I

    .line 973
    iput v6, p0, Lcom/android/calendar/MonthView;->mPressedCol:I

    .line 975
    iget v3, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    if-ne v3, v5, :cond_99

    .line 976
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v2

    .line 977
    .restart local v2       #row:I
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v1

    .line 979
    .restart local v1       #col:I
    iget v3, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    if-ne v3, v8, :cond_7f

    if-ne v2, v8, :cond_7f

    .line 980
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_12

    .line 983
    :cond_7f
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v3, v2, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v3

    if-nez v3, :cond_99

    .line 984
    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthView;->playSoundEffect(I)V

    .line 985
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    iput-boolean v5, v3, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    .line 986
    if-nez v2, :cond_9f

    .line 987
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v4

    invoke-interface {v3, v4, v5, v7}, Lcom/android/calendar/Navigator;->goTo(Landroid/text/format/Time;ZZ)V

    .line 993
    .end local v1           #col:I
    .end local v2           #row:I
    :cond_99
    :goto_99
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_42

    .line 989
    .restart local v1       #col:I
    .restart local v2       #row:I
    :cond_9f
    iget-object v3, p0, Lcom/android/calendar/MonthView;->mNavigator:Lcom/android/calendar/Navigator;

    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v4

    invoke-interface {v3, v4, v5, v7}, Lcom/android/calendar/Navigator;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_99

    .line 968
    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_59
    .end packed-switch
.end method

.method reloadEvents()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 600
    new-instance v11, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 601
    .local v11, monthStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 602
    iput v12, v11, Landroid/text/format/Time;->monthDay:I

    .line 603
    iput v6, v11, Landroid/text/format/Time;->hour:I

    .line 604
    iput v6, v11, Landroid/text/format/Time;->minute:I

    .line 605
    iput v6, v11, Landroid/text/format/Time;->second:I

    .line 606
    invoke-virtual {v11, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v9

    .line 607
    .local v9, millis:J
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/MonthView;->mNumDays:I

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 611
    .local v7, current:J
    iget-wide v5, p0, Lcom/android/calendar/MonthView;->mLastReloadMillis:J

    cmp-long v0, v7, v5

    if-nez v0, :cond_31

    .line 644
    :goto_30
    return-void

    .line 614
    :cond_31
    iput-wide v7, p0, Lcom/android/calendar/MonthView;->mLastReloadMillis:J

    .line 617
    iget v1, p0, Lcom/android/calendar/MonthView;->mNumDays:I

    .line 619
    .local v1, numDays:I
    move-wide v3, v9

    .line 625
    .local v3, startmillis:J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mEventLoader:Lcom/android/calendar/EventLoader;

    new-instance v5, Lcom/android/calendar/MonthView$5;

    invoke-direct {v5, p0, v2}, Lcom/android/calendar/MonthView$5;-><init>(Lcom/android/calendar/MonthView;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/calendar/MonthView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_30
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 1739
    const-string v0, "selection_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1745
    const-string v0, "selected_day_of_month"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1746
    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->setSelectedDayOfMonth(I)V

    .line 1747
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 1730
    const-string v0, "selection_mode"

    iget v1, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1735
    const-string v0, "selected_day_of_month"

    iget-object v1, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1736
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .parameter "eventType"

    .prologue
    .line 788
    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    .line 792
    :goto_4
    return-void

    .line 791
    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_4
.end method

.method public setChangedTime(Landroid/text/format/Time;)V
    .registers 7
    .parameter "time"

    .prologue
    const/4 v4, 0x1

    .line 1408
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1410
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v3, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1411
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 1413
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1414
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    iput v4, v2, Landroid/text/format/Time;->monthDay:I

    .line 1415
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1416
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    .line 1417
    return-void
.end method

.method setDetailedView(Ljava/lang/String;)V
    .registers 2
    .parameter "detailedView"

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    .line 1357
    return-void
.end method

.method public setSelectedTime(Landroid/text/format/Time;)V
    .registers 12
    .parameter "time"

    .prologue
    const/4 v4, 0x1

    .line 1361
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    invoke-virtual {v5, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1363
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v5, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1364
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iput v4, v5, Landroid/text/format/Time;->monthDay:I

    .line 1365
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v5, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 1366
    .local v2, millis:J
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v5, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v5, v6}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    iput v5, p0, Lcom/android/calendar/MonthView;->mFirstJulianDay:I

    .line 1367
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v5, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1370
    new-instance v5, Lcom/android/calendar/TwDayOfMonthCursor;

    iget v6, p1, Landroid/text/format/Time;->year:I

    iget v7, p1, Landroid/text/format/Time;->month:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    iget-object v9, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v9}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/calendar/TwDayOfMonthCursor;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    .line 1372
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    iget v6, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Lcom/android/calendar/TwDayOfMonthCursor;->setSelectedDayOfMonth(I)V

    .line 1374
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_95

    move v0, v4

    .line 1375
    .local v0, isPortrait:Z
    :goto_4b
    if-eqz v0, :cond_85

    .line 1376
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v1

    .line 1377
    .local v1, maxDay:I
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v5, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    .line 1378
    iget v5, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_65

    .line 1379
    const/4 v5, 0x5

    iput v5, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    .line 1380
    :cond_65
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    .line 1381
    iget v5, p0, Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I

    packed-switch v5, :pswitch_data_a4

    .line 1387
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f020051

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    .line 1391
    :goto_7b
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    new-instance v6, Lcom/android/calendar/MonthView$6;

    invoke-direct {v6, p0}, Lcom/android/calendar/MonthView$6;-><init>(Lcom/android/calendar/MonthView;)V

    invoke-virtual {v5, v6}, Lcom/android/calendar/TwDayOfMonthCursor;->setOnCursorMoveListener(Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;)V

    .line 1401
    .end local v1           #maxDay:I
    :cond_85
    iput v4, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1402
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lcom/android/calendar/MonthView;->mMonthHeight:I

    .line 1403
    iput-boolean v4, p0, Lcom/android/calendar/MonthView;->mRedrawScreen:Z

    .line 1404
    invoke-virtual {p0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 1405
    return-void

    .line 1374
    .end local v0           #isPortrait:Z
    :cond_95
    const/4 v0, 0x0

    goto :goto_4b

    .line 1383
    .restart local v0       #isPortrait:Z
    .restart local v1       #maxDay:I
    :pswitch_97
    iget-object v5, p0, Lcom/android/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f020050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/MonthView;->mCalendarBg:Landroid/graphics/drawable/Drawable;

    goto :goto_7b

    .line 1381
    nop

    :pswitch_data_a4
    .packed-switch 0x5
        :pswitch_97
    .end packed-switch
.end method

.method public setSelectionMode(I)V
    .registers 2
    .parameter "selectionMode"

    .prologue
    .line 1555
    iput p1, p0, Lcom/android/calendar/MonthView;->mSelectionMode:I

    .line 1556
    return-void
.end method

.method public showQuickAddDialog()V
    .registers 3

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthActivity;->showDialog(I)V

    .line 1012
    return-void
.end method

.method public updateView()V
    .registers 2

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/calendar/MonthView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1763
    return-void
.end method
