.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;
.super Landroid/view/View;
.source "MonthView.java"


# instance fields
.field private final MONTH_EVENT_NUM:I

.field private final TAG:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mCancelCallback:Ljava/lang/Runnable;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

.field private mDayTextSize:I

.field private mDayViewClassName:Ljava/lang/String;

.field private mEventDays:[[I

.field private mEventHeight:I

.field private mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

.field private mEventWidth:I

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstColumnCellWidth:I

.field private mFirstJulianDay:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsjapholiy:[Z

.field private mLastReloadMillis:J

.field private mLaunchDayView:Z

.field private mMonthDayNumberColor:I

.field private mMonthFocusedNumberColor:I

.field mMonthHeight:I

.field private mMonthLineColor:I

.field private mMonthOtherMonthDayNumberColor:I

.field private mMonthSaturdayNumberColor:I

.field private mMonthSundayNumberColor:I

.field private mMonthWeekNumColor:I

.field private mNumDays:I

.field private mPaint:Landroid/graphics/Paint;

.field private mParentActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

.field private mPressedBackground:Landroid/graphics/drawable/Drawable;

.field private mPrevNextDayTextSize:I

.field private mRect:Landroid/graphics/Rect;

.field private mRedrawScreen:Z

.field private mSelectionMode:I

.field private mStartDay:I

.field private mTempTime:Landroid/text/format/Time;

.field private mTodayBackground:Landroid/graphics/drawable/Drawable;

.field private mViewCalendar:Landroid/text/format/Time;

.field private mWeekTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0x1f

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const-string v0, "MonthView"

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->TAG:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->MONTH_EVENT_NUM:I

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPaint:Landroid/graphics/Paint;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mRedrawScreen:Z

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    .line 102
    filled-new-array {v3, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventDays:[[I

    .line 103
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mIsjapholiy:[Z

    .line 105
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEvents:Ljava/util/ArrayList;

    .line 118
    iput v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mSelectionMode:I

    .line 119
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mLaunchDayView:Z

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mRect:Landroid/graphics/Rect;

    .line 384
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$3;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCancelCallback:Ljava/lang/Runnable;

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;I)V
    .registers 8
    .parameter "activity"
    .parameter "eventLoader"
    .parameter "startDay"

    .prologue
    const/16 v3, 0x1f

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 55
    const-string v0, "MonthView"

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->TAG:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->MONTH_EVENT_NUM:I

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPaint:Landroid/graphics/Paint;

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mRedrawScreen:Z

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    .line 102
    filled-new-array {v3, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventDays:[[I

    .line 103
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mIsjapholiy:[Z

    .line 105
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEvents:Ljava/util/ArrayList;

    .line 118
    iput v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mSelectionMode:I

    .line 119
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mLaunchDayView:Z

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mRect:Landroid/graphics/Rect;

    .line 384
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$3;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCancelCallback:Ljava/lang/Runnable;

    .line 144
    iput-object p2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    .line 145
    iput p3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mStartDay:I

    .line 147
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->init(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;)V

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mParentActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->calEventDay()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mLaunchDayView:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mLaunchDayView:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mSelectionMode:I

    return p1
.end method

.method static synthetic access$402(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mRedrawScreen:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mTempTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)[[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventDays:[[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mDayViewClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method private calEventDay()V
    .registers 16

    .prologue
    const/16 v14, 0x8

    .line 437
    iget v9, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mNumDays:I

    .line 438
    .local v9, numDays:I
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEvents:Ljava/util/ArrayList;

    .line 439
    .local v4, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 440
    .local v10, numEvents:I
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mFirstJulianDay:I

    .line 441
    .local v0, date:I
    const/4 v3, 0x0

    .line 442
    .local v3, eventNum:I
    const/4 v7, -0x1

    .line 452
    .local v7, japcalendarid:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_f
    if-ge v5, v9, :cond_44

    .line 453
    const/4 v8, 0x0

    .local v8, k:I
    :goto_12
    if-ge v8, v14, :cond_1e

    .line 454
    iget-object v12, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventDays:[[I

    aget-object v12, v12, v5

    const/4 v13, 0x0

    aput v13, v12, v8

    .line 453
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 461
    :cond_1e
    const/4 v3, 0x0

    .line 462
    const/4 v6, 0x0

    .local v6, j:I
    :goto_20
    if-ge v6, v10, :cond_3c

    .line 463
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    .line 465
    .local v2, event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    iget v11, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startDay:I

    .line 466
    .local v11, startDay:I
    iget v1, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endDay:I

    .line 468
    .local v1, endDay:I
    if-gt v11, v0, :cond_41

    if-lt v1, v0, :cond_41

    .line 469
    iget-object v12, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventDays:[[I

    aget-object v12, v12, v5

    iget v13, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->color:I

    aput v13, v12, v3

    .line 470
    add-int/lit8 v3, v3, 0x1

    .line 471
    if-ne v3, v14, :cond_41

    .line 509
    .end local v1           #endDay:I
    .end local v2           #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    .end local v11           #startDay:I
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    .line 452
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 462
    .restart local v1       #endDay:I
    .restart local v2       #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    .restart local v11       #startDay:I
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 511
    .end local v1           #endDay:I
    .end local v2           #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    .end local v6           #j:I
    .end local v8           #k:I
    .end local v11           #startDay:I
    :cond_44
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .registers 27
    .parameter "canvas"

    .prologue
    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_b8

    const/4 v12, 0x1

    .line 576
    .local v12, isLandscape:Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mRect:Landroid/graphics/Rect;

    .line 577
    .local v11, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v20

    .line 580
    .local v20, columnDay1:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mFirstJulianDay:I

    sub-int v4, v4, v20

    add-int/lit8 v5, v4, 0x1

    .line 583
    .local v5, day:I
    const/4 v6, 0x0

    .line 584
    .local v6, weekNum:I
    const/16 v19, 0x0

    .line 586
    .local v19, calendar:Ljava/util/Calendar;
    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_bb

    const/16 v22, 0x1

    .line 588
    .local v22, noPrevMonth:Z
    :goto_2d
    const/16 v23, 0x2

    .line 592
    .local v23, weekColumn:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mParentActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    const-string v9, "preferences_first_day_of_week"

    const-string v10, "1"

    invoke-static {v4, v9, v10}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->GetPreferenceFromCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 596
    .local v21, firstDayOfWeek:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    .line 597
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 600
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 610
    const/16 v23, 0x1

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getWidth()I

    move-result v24

    .line 614
    .local v24, width:I
    const/4 v7, 0x0

    .local v7, row:I
    :goto_57
    const/4 v4, 0x6

    if-ge v7, v4, :cond_f4

    .line 615
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    move-object/from16 v3, v19

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getWeekOfYear(IIZLjava/util/Calendar;)I

    move-result v6

    .line 616
    const/4 v8, 0x0

    .local v8, column:I
    :goto_67
    const/16 v4, 0x8

    if-ge v8, v4, :cond_bf

    .line 617
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v12}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Z)V

    .line 618
    if-eqz v8, :cond_b5

    .line 619
    add-int/lit8 v5, v5, 0x1

    .line 620
    if-nez v7, :cond_b5

    const/4 v4, 0x7

    if-eq v8, v4, :cond_b5

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthLineColor:I

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 622
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCellWidth:I

    mul-int/2addr v4, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mFirstColumnCellWidth:I

    add-int/2addr v4, v9

    int-to-float v14, v4

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCellWidth:I

    mul-int/2addr v4, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mFirstColumnCellWidth:I

    add-int/2addr v4, v9

    int-to-float v0, v4

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthHeight:I

    int-to-float v0, v4

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 616
    :cond_b5
    add-int/lit8 v8, v8, 0x1

    goto :goto_67

    .line 573
    .end local v5           #day:I
    .end local v6           #weekNum:I
    .end local v7           #row:I
    .end local v8           #column:I
    .end local v11           #r:Landroid/graphics/Rect;
    .end local v12           #isLandscape:Z
    .end local v19           #calendar:Ljava/util/Calendar;
    .end local v20           #columnDay1:I
    .end local v21           #firstDayOfWeek:I
    .end local v22           #noPrevMonth:Z
    .end local v23           #weekColumn:I
    .end local v24           #width:I
    :cond_b8
    const/4 v12, 0x0

    goto/16 :goto_e

    .line 586
    .restart local v5       #day:I
    .restart local v6       #weekNum:I
    .restart local v11       #r:Landroid/graphics/Rect;
    .restart local v12       #isLandscape:Z
    .restart local v19       #calendar:Ljava/util/Calendar;
    .restart local v20       #columnDay1:I
    :cond_bb
    const/16 v22, 0x0

    goto/16 :goto_2d

    .line 627
    .restart local v7       #row:I
    .restart local v8       #column:I
    .restart local v21       #firstDayOfWeek:I
    .restart local v22       #noPrevMonth:Z
    .restart local v23       #weekColumn:I
    .restart local v24       #width:I
    :cond_bf
    const/4 v4, 0x5

    if-ge v7, v4, :cond_f0

    .line 628
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthLineColor:I

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 629
    const/4 v14, 0x0

    add-int/lit8 v4, v7, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCellHeight:I

    mul-int/2addr v4, v9

    int-to-float v15, v4

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v16, v0

    add-int/lit8 v4, v7, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCellHeight:I

    mul-int/2addr v4, v9

    int-to-float v0, v4

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 614
    :cond_f0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_57

    .line 632
    .end local v8           #column:I
    :cond_f4
    return-void
.end method

.method private drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Z)V
    .registers 28
    .parameter "day"
    .parameter "weekNum"
    .parameter "row"
    .parameter "column"
    .parameter "canvas"
    .parameter "p"
    .parameter "r"
    .parameter "isLandscape"

    .prologue
    .line 666
    const/4 v11, 0x0

    .line 667
    .local v11, drawSelection:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mSelectionMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->isSelected(II)Z

    move-result v11

    .line 671
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v16

    .line 672
    .local v16, withinCurrentMonth:Z
    const/4 v7, 0x0

    .line 673
    .local v7, isToday:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v9

    .line 674
    .local v9, dayOfBox:I
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 675
    .local v15, today:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 676
    iget v2, v15, Landroid/text/format/Time;->monthDay:I

    if-ne v9, v2, :cond_58

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getYear()I

    move-result v2

    iget v3, v15, Landroid/text/format/Time;->year:I

    if-ne v2, v3, :cond_58

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getMonth()I

    move-result v2

    iget v3, v15, Landroid/text/format/Time;->month:I

    if-ne v2, v3, :cond_58

    if-eqz p4, :cond_58

    .line 678
    const/4 v7, 0x1

    .line 681
    :cond_58
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCellHeight:I

    mul-int v2, v2, p3

    add-int/lit8 v18, v2, 0x1

    .line 684
    .local v18, y:I
    if-nez p4, :cond_1c2

    .line 685
    const/16 v17, 0x0

    .line 689
    .local v17, x:I
    :goto_64
    move/from16 v0, v17

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 690
    move/from16 v0, v18

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 691
    if-nez p4, :cond_1d1

    .line 692
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mFirstColumnCellWidth:I

    add-int v2, v2, v17

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 696
    :goto_7c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCellHeight:I

    add-int v2, v2, v18

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 703
    if-eqz v11, :cond_1dd

    .line 704
    if-eqz v16, :cond_cc

    .line 705
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPressedBackground:Landroid/graphics/drawable/Drawable;

    .line 706
    .local v12, focusedDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 707
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 708
    if-eqz v7, :cond_cc

    .line 711
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    .line 712
    .local v8, background:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 713
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 718
    .end local v8           #background:Landroid/graphics/drawable/Drawable;
    .end local v12           #focusedDrawable:Landroid/graphics/drawable/Drawable;
    :cond_cc
    if-eqz v16, :cond_dd

    if-eqz p4, :cond_dd

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    .line 719
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    .line 737
    :cond_dd
    :goto_dd
    if-nez p4, :cond_136

    .line 739
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthWeekNumColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 740
    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 741
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 742
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mWeekTextSize:I

    int-to-float v2, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 743
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 745
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v13, v2, v3

    .line 746
    .local v13, textX:I
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

    iget v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mDayTextSize:I

    div-int/lit8 v3, v3, 0x5

    add-int v14, v2, v3

    .line 749
    .local v14, textY:I
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v13

    int-to-float v4, v14

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 753
    .end local v13           #textX:I
    .end local v14           #textY:I
    :cond_136
    if-eqz p4, :cond_1c1

    .line 754
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 755
    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 756
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 757
    if-eqz v16, :cond_214

    .line 758
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mDayTextSize:I

    int-to-float v2, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 763
    :goto_157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->isValid(II)Z

    move-result v2

    if-nez v2, :cond_220

    .line 764
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthWeekNumColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 829
    :goto_16e
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 832
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

    sub-int v13, v2, v3

    .line 833
    .restart local v13       #textX:I
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

    iget v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mDayTextSize:I

    div-int/lit8 v3, v3, 0x3

    add-int v14, v2, v3

    .line 835
    .restart local v14       #textY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v13

    int-to-float v4, v14

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 838
    .end local v13           #textX:I
    .end local v14           #textY:I
    :cond_1c1
    return-void

    .line 687
    .end local v17           #x:I
    :cond_1c2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mFirstColumnCellWidth:I

    add-int/lit8 v3, p4, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCellWidth:I

    mul-int/2addr v3, v4

    add-int v17, v2, v3

    .restart local v17       #x:I
    goto/16 :goto_64

    .line 694
    :cond_1d1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCellWidth:I

    add-int v2, v2, v17

    move-object/from16 v0, p7

    iput v2, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_7c

    .line 724
    :cond_1dd
    if-eqz v16, :cond_201

    if-eqz v7, :cond_201

    .line 727
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    .line 728
    .restart local v8       #background:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p7

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 729
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 731
    .end local v8           #background:Landroid/graphics/drawable/Drawable;
    :cond_201
    if-eqz v16, :cond_dd

    if-eqz p4, :cond_dd

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p6

    .line 732
    invoke-direct/range {v2 .. v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    goto/16 :goto_dd

    .line 760
    :cond_214
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPrevNextDayTextSize:I

    int-to-float v2, v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_157

    .line 766
    :cond_220
    if-nez v16, :cond_22d

    .line 767
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthOtherMonthDayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_16e

    .line 768
    :cond_22d
    if-eqz v11, :cond_23a

    .line 770
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthFocusedNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_16e

    .line 788
    :cond_23a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mStartDay:I

    add-int v2, v2, p4

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v10, v2, 0x1

    .line 789
    .local v10, dayOfWeek:I
    const/4 v2, 0x1

    if-eq v10, v2, :cond_24e

    const/4 v2, 0x7

    if-ne v10, v2, :cond_259

    .line 790
    :cond_24e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthSaturdayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_16e

    .line 792
    :cond_259
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthDayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_16e
.end method

.method private drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Z)V
    .registers 11
    .parameter "date"
    .parameter "canvas"
    .parameter "rect"
    .parameter "p"
    .parameter "isToday"

    .prologue
    .line 841
    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mFirstJulianDay:I

    sub-int v0, p1, v3

    .line 842
    .local v0, day:I
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventDays:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-nez v3, :cond_e

    .line 874
    :goto_d
    return-void

    .line 845
    :cond_e
    const/4 v1, 0x7

    .line 846
    .local v1, i:I
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 847
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 848
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 849
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 850
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 851
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventWidth:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 853
    :cond_30
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventDays:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    if-eqz v3, :cond_51

    .line 854
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventDays:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 855
    invoke-virtual {p2, v2, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 856
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 857
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventWidth:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 859
    :cond_51
    add-int/lit8 v1, v1, -0x1

    .line 860
    if-gez v1, :cond_30

    goto :goto_d
.end method

.method private drawingCalc(I)V
    .registers 5
    .parameter "width"

    .prologue
    const/4 v2, 0x0

    .line 638
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthHeight:I

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p1, :cond_4c

    :cond_1f
    if-lez p1, :cond_4c

    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthHeight:I

    if-lez v0, :cond_4c

    .line 643
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2e

    .line 644
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 647
    :cond_2e
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthHeight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    .line 648
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCanvas:Landroid/graphics/Canvas;

    .line 649
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_4c

    .line 650
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPaint:Landroid/graphics/Paint;

    .line 654
    :cond_4c
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 655
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 656
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 657
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 659
    return-void
.end method

.method public static getJulianDay(JJ)I
    .registers 12
    .parameter "millis"
    .parameter "gmtoff"

    .prologue
    .line 514
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_a

    .line 515
    const-wide/32 v4, 0x5265bff

    sub-long/2addr p0, v4

    .line 517
    :cond_a
    const-wide/16 v4, 0x3e8

    mul-long v2, p2, v4

    .line 518
    .local v2, offsetMillis:J
    add-long v4, p0, v2

    const-wide/32 v6, 0x5265c00

    div-long v0, v4, v6

    .line 519
    .local v0, julianDay:J
    long-to-int v4, v0

    const v5, 0x253d8c

    add-int/2addr v4, v5

    return v4
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

    .line 879
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v4

    invoke-virtual {p4, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 880
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    .line 881
    .local v1, within:Z
    if-eqz v1, :cond_2c

    .line 882
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getMonth()I

    move-result v3

    invoke-virtual {p4, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 883
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getYear()I

    move-result v3

    invoke-virtual {p4, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 908
    :goto_26
    const/4 v3, 0x3

    invoke-virtual {p4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    return v3

    .line 885
    :cond_2c
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getMonth()I

    move-result v0

    .line 886
    .local v0, month:I
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getYear()I

    move-result v2

    .line 887
    .local v2, year:I
    if-ge p1, v5, :cond_4a

    .line 889
    if-nez v0, :cond_47

    .line 890
    add-int/lit8 v2, v2, -0x1

    .line 891
    const/16 v0, 0xb

    .line 904
    :goto_40
    invoke-virtual {p4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 905
    invoke-virtual {p4, v6, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_26

    .line 893
    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_40

    .line 897
    :cond_4a
    const/16 v3, 0xb

    if-ne v0, v3, :cond_52

    .line 898
    add-int/lit8 v2, v2, 0x1

    .line 899
    const/4 v0, 0x0

    goto :goto_40

    .line 901
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_40
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 535
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 536
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 537
    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    .line 539
    :cond_c
    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCanvas:Landroid/graphics/Canvas;

    .line 540
    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPaint:Landroid/graphics/Paint;

    .line 541
    return-void
.end method

.method public clearCachedEvents()V
    .registers 3

    .prologue
    .line 381
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mLastReloadMillis:J

    .line 382
    return-void
.end method

.method getDayViewClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mDayViewClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 988
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method getPressedColumn(I)I
    .registers 5
    .parameter "x"

    .prologue
    .line 326
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mFirstColumnCellWidth:I

    if-gt p1, v1, :cond_a

    .line 327
    const/4 v0, 0x0

    .line 331
    .local v0, col:I
    :goto_5
    const/4 v1, 0x7

    if-le v0, v1, :cond_9

    .line 332
    const/4 v0, 0x7

    .line 334
    :cond_9
    return v0

    .line 329
    .end local v0           #col:I
    :cond_a
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mFirstColumnCellWidth:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCellWidth:I

    div-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x1

    .restart local v0       #col:I
    goto :goto_5
.end method

.method getPressedRow(I)I
    .registers 4
    .parameter "y"

    .prologue
    .line 314
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCellHeight:I

    div-int v0, p1, v1

    .line 315
    .local v0, row:I
    if-gez v0, :cond_7

    .line 316
    const/4 v0, 0x0

    .line 318
    :cond_7
    const/4 v1, 0x5

    if-le v0, v1, :cond_b

    .line 319
    const/4 v0, 0x5

    .line 321
    :cond_b
    return v0
.end method

.method public getSelectedDate()Landroid/text/format/Time;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 913
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 914
    .local v0, time:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 916
    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 917
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 919
    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 920
    iput v3, v0, Landroid/text/format/Time;->minute:I

    .line 921
    iput v3, v0, Landroid/text/format/Time;->second:I

    .line 922
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 937
    return-object v0
.end method

.method public getSelectedMillis()J
    .registers 3

    .prologue
    .line 942
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getSelectedDate()Landroid/text/format/Time;

    move-result-object v0

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

    .line 338
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 339
    .local v3, time:Landroid/text/format/Time;
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 341
    iget v6, v3, Landroid/text/format/Time;->month:I

    iget-object v7, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v3, Landroid/text/format/Time;->month:I

    .line 342
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v6

    iput v6, v3, Landroid/text/format/Time;->monthDay:I

    .line 343
    invoke-static {v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 344
    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 346
    .local v0, millis:J
    iget-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v6, v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getJulianDay(JJ)I

    move-result v2

    .line 347
    .local v2, selectedDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getJulianDay(JJ)I

    move-result v5

    .line 348
    .local v5, todayJulian:I
    if-ne v2, v5, :cond_55

    .line 349
    new-instance v4, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-object v6, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 350
    .local v4, today:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 351
    iget v6, v4, Landroid/text/format/Time;->hour:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/text/format/Time;->hour:I

    .line 355
    .end local v4           #today:Landroid/text/format/Time;
    :goto_4b
    iput v10, v3, Landroid/text/format/Time;->minute:I

    .line 356
    iput v10, v3, Landroid/text/format/Time;->second:I

    .line 357
    iput-boolean v10, v3, Landroid/text/format/Time;->allDay:Z

    .line 358
    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    .line 359
    return-object v3

    .line 353
    :cond_55
    const/16 v6, 0x8

    iput v6, v3, Landroid/text/format/Time;->hour:I

    goto :goto_4b
.end method

.method public init(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;)V
    .registers 13
    .parameter "activity"

    .prologue
    const v10, 0x7f090007

    const/4 v6, 0x1

    .line 151
    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->setFocusable(Z)V

    .line 152
    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->setFocusableInTouchMode(Z)V

    .line 153
    invoke-virtual {p0, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->setClickable(Z)V

    .line 154
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mParentActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    .line 155
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iput-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 157
    .local v2, now:J
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v5, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 158
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iput v6, v5, Landroid/text/format/Time;->monthDay:I

    .line 160
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 161
    .local v0, millis:J
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v5, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v5, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getJulianDay(JJ)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mFirstJulianDay:I

    .line 162
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v5, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 164
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    if-nez v5, :cond_5b

    .line 165
    new-instance v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->year:I

    iget-object v7, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->month:I

    iget-object v8, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->monthDay:I

    iget v9, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mStartDay:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;-><init>(IIII)V

    iput-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    .line 168
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    new-instance v6, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$1;

    invoke-direct {v6, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$1;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->setOnCursorMoveListener(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;)V

    .line 182
    :cond_5b
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mParentActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    const-string v6, "preferences_day_view"

    const-string v7, "2"

    invoke-static {v5, v6, v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->GetPreferenceFromCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11f

    .line 183
    const-string v5, "com.android.calendar.DayActivity"

    iput-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mDayViewClassName:Ljava/lang/String;

    .line 188
    :goto_71
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 189
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f02001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    .line 190
    const v5, 0x7f02001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPressedBackground:Landroid/graphics/drawable/Drawable;

    .line 192
    const v5, 0x7f060026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthWeekNumColor:I

    .line 193
    const v5, 0x7f060020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthOtherMonthDayNumberColor:I

    .line 194
    const v5, 0x7f06001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthDayNumberColor:I

    .line 195
    const v5, 0x7f06001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthFocusedNumberColor:I

    .line 196
    const v5, 0x7f060022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthSundayNumberColor:I

    .line 197
    const v5, 0x7f060023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthSaturdayNumberColor:I

    .line 198
    const v5, 0x7f060039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthLineColor:I

    .line 200
    const v5, 0x7f090001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCellHeight:I

    .line 201
    const v5, 0x7f090002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCellWidth:I

    .line 202
    const v5, 0x7f090003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mFirstColumnCellWidth:I

    .line 203
    iget v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCellHeight:I

    mul-int/lit8 v5, v5, 0x6

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthHeight:I

    .line 204
    const v5, 0x7f090005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventWidth:I

    .line 205
    const v5, 0x7f090006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventHeight:I

    .line 207
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mDayTextSize:I

    .line 208
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mPrevNextDayTextSize:I

    .line 209
    const v5, 0x7f090009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mWeekTextSize:I

    .line 211
    new-instance v5, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;

    invoke-direct {v7, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)V

    invoke-direct {v5, v6, v7}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 311
    return-void

    .line 185
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_11f
    const-string v5, "com.android.calendar.DayEventListActivity"

    iput-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mDayViewClassName:Ljava/lang/String;

    goto/16 :goto_71
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 524
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 526
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 530
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 532
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    .line 552
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mRedrawScreen:Z

    if-eqz v1, :cond_21

    .line 553
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_f

    .line 554
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->drawingCalc(I)V

    .line 557
    :cond_f
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_21

    .line 559
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCanvas:Landroid/graphics/Canvas;

    .line 561
    .local v0, bitmapCanvas:Landroid/graphics/Canvas;
    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 562
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->doDraw(Landroid/graphics/Canvas;)V

    .line 563
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mRedrawScreen:Z

    .line 568
    .end local v0           #bitmapCanvas:Landroid/graphics/Canvas;
    :cond_21
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2f

    .line 569
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 571
    :cond_2f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 545
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 546
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mMonthHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->setMeasuredDimension(II)V

    .line 548
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 374
    .local v0, action:I
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 375
    const/4 v1, 0x1

    .line 377
    :goto_d
    return v1

    :cond_e
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_d
.end method

.method reloadEvents()V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 394
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 395
    .local v9, monthStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 396
    iput v5, v9, Landroid/text/format/Time;->monthDay:I

    .line 397
    iput v1, v9, Landroid/text/format/Time;->hour:I

    .line 398
    iput v1, v9, Landroid/text/format/Time;->minute:I

    .line 399
    iput v1, v9, Landroid/text/format/Time;->second:I

    .line 400
    invoke-virtual {v9, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 402
    .local v3, millis:J
    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mNumDays:I

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 406
    .local v7, current:J
    iget-wide v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mLastReloadMillis:J

    cmp-long v0, v7, v0

    if-nez v0, :cond_2a

    .line 427
    :goto_29
    return-void

    .line 409
    :cond_2a
    iput-wide v7, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mLastReloadMillis:J

    .line 412
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mNumDays:I

    new-instance v5, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$4;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$4;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_29
.end method

.method setDayViewClassName(Ljava/lang/String;)V
    .registers 2
    .parameter "dayView"

    .prologue
    .line 980
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mDayViewClassName:Ljava/lang/String;

    .line 981
    return-void
.end method

.method setEventLoader(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)V
    .registers 2
    .parameter "eventLoader"

    .prologue
    .line 976
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    .line 977
    return-void
.end method

.method setSelectedTime(Landroid/text/format/Time;)V
    .registers 10
    .parameter "time"

    .prologue
    const/4 v7, 0x1

    .line 948
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 949
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iput v7, v2, Landroid/text/format/Time;->monthDay:I

    .line 950
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 951
    .local v0, millis:J
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mFirstJulianDay:I

    .line 952
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 955
    new-instance v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    iget v3, p1, Landroid/text/format/Time;->year:I

    iget v4, p1, Landroid/text/format/Time;->month:I

    iget v5, p1, Landroid/text/format/Time;->monthDay:I

    iget v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mStartDay:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;-><init>(IIII)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    .line 956
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    iget v3, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->setSelectedDayOfMonth(I)V

    .line 957
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    new-instance v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$5;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$5;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->setOnCursorMoveListener(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;)V

    .line 963
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mRedrawScreen:Z

    .line 964
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->invalidate()V

    .line 965
    return-void
.end method

.method setStartDay(I)V
    .registers 2
    .parameter "startDay"

    .prologue
    .line 972
    iput p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mStartDay:I

    .line 973
    return-void
.end method
