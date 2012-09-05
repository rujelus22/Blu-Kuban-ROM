.class public Lcom/android/calendar/ParticipantScheduleView;
.super Landroid/view/View;
.source "ParticipantScheduleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;,
        Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;,
        Lcom/android/calendar/ParticipantScheduleView$CalendarSimpleGestureListener;,
        Lcom/android/calendar/ParticipantScheduleView$DayHeader;
    }
.end annotation


# static fields
.field private static mCalendarGridLineHorizontalColor:I

.field private static mCalendarHourLabel:I

.field private static mWeekDayColor:I


# instance fields
.field private final BUSY:I

.field private final FREE:I

.field private final NO_DATA:I

.field private final OUT_OF_OFFICE:I

.field private final SAVE_FIRST_CELL:Ljava/lang/String;

.field private final SAVE_FIRST_HOUR:Ljava/lang/String;

.field private final SAVE_FIRST_HOUR_OFFSET:Ljava/lang/String;

.field private final SAVE_NUM_DAY:Ljava/lang/String;

.field private final SCHEDULE_NUM:I

.field private TAG:Ljava/lang/String;

.field private final TENTATIVE:I

.field private dayHeaders:[Lcom/android/calendar/ParticipantScheduleView$DayHeader;

.field private drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field private mAmString:Ljava/lang/String;

.field mBaseDate:Landroid/text/format/Time;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mContinueScroll:Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;

.field private mDateRange:Ljava/lang/String;

.field private mDayBgColor:I

.field private mDayGridColor:I

.field private mDestRect:Landroid/graphics/Rect;

.field private mFirstCell:I

.field private mFirstDate:I

.field private mFirstHour:I

.field private mFirstHourOffset:I

.field private mFirstJulianDay:I

.field private mFirstNameIndex:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridAreaHeight:I

.field private mHourGap:I

.field private mHourStrs:[Ljava/lang/String;

.field private mHourTextSize:I

.field private mHourWidth:I

.field private mLastJulianDay:I

.field private mMaxViewStartY:I

.field private mMonthLength:I

.field private mNameHeight:I

.field mNameStr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNameTextSize:I

.field protected mNumCells:I

.field private mNumHours:I

.field private mOnFlingCalled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBorder:Landroid/graphics/Paint;

.field protected mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

.field private mPmString:Ljava/lang/String;

.field private mRect:Landroid/graphics/Rect;

.field private mRedrawScreen:Z

.field private mRemeasure:Z

.field protected final mResources:Landroid/content/res/Resources;

.field private mScheduleImage:[Landroid/graphics/drawable/Drawable;

.field mScheduleStr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStartY:I

.field private mScrollToHour:Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;

.field private mScrolling:Z

.field private mSelectionDay:I

.field private mSelectionHour:I

.field private mSrcRect:Landroid/graphics/Rect;

.field mTempDate:Landroid/text/format/Time;

.field private mTitleTextViewLeft:Landroid/widget/TextView;

.field private mTitleTextViewRight:Landroid/widget/TextView;

.field private mTouchMode:I

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mViewHeight:I

.field private mViewStartY:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Lcom/android/calendar/ParticipantScheduleActivity;)V
    .registers 7
    .parameter "activity"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 297
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v0, "ParticipantScheduleView"

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->TAG:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/android/calendar/ParticipantScheduleView;->FREE:I

    .line 64
    iput v2, p0, Lcom/android/calendar/ParticipantScheduleView;->TENTATIVE:I

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->BUSY:I

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->OUT_OF_OFFICE:I

    .line 70
    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->NO_DATA:I

    .line 76
    const-string v0, "first_cell"

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->SAVE_FIRST_CELL:Ljava/lang/String;

    .line 78
    const-string v0, "num_day"

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->SAVE_NUM_DAY:Ljava/lang/String;

    .line 80
    const-string v0, "saved_first_hour"

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->SAVE_FIRST_HOUR:Ljava/lang/String;

    .line 82
    const-string v0, "saved_first_hour_offset"

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->SAVE_FIRST_HOUR_OFFSET:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;-><init>(Lcom/android/calendar/ParticipantScheduleView;Lcom/android/calendar/ParticipantScheduleView$1;)V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mContinueScroll:Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;

    .line 86
    new-instance v0, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;

    invoke-direct {v0, p0, v4}, Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;-><init>(Lcom/android/calendar/ParticipantScheduleView;Lcom/android/calendar/ParticipantScheduleView$1;)V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrollToHour:Lcom/android/calendar/ParticipantScheduleView$ScrollToSelectedHour;

    .line 96
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/calendar/ParticipantScheduleView$DayHeader;

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->dayHeaders:[Lcom/android/calendar/ParticipantScheduleView$DayHeader;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mRect:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mSrcRect:Landroid/graphics/Rect;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mDestRect:Landroid/graphics/Rect;

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    .line 143
    iput-boolean v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mRemeasure:Z

    .line 159
    iput v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mTouchMode:I

    .line 161
    const/16 v0, 0x30

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->SCHEDULE_NUM:I

    .line 205
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    .line 231
    iput-boolean v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrolling:Z

    .line 241
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mScheduleImage:[Landroid/graphics/drawable/Drawable;

    .line 244
    new-instance v0, Lcom/android/calendar/ParticipantScheduleView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/ParticipantScheduleView$1;-><init>(Lcom/android/calendar/ParticipantScheduleView;)V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mUpdateTZ:Ljava/lang/Runnable;

    .line 941
    const-string v0, "[\t\n],"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    .line 299
    invoke-virtual {p1}, Lcom/android/calendar/ParticipantScheduleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mResources:Landroid/content/res/Resources;

    .line 300
    iput-object p1, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    .line 301
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/ParticipantScheduleView$CalendarSimpleGestureListener;

    invoke-direct {v1, p0}, Lcom/android/calendar/ParticipantScheduleView$CalendarSimpleGestureListener;-><init>(Lcom/android/calendar/ParticipantScheduleView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 302
    invoke-direct {p0, p1}, Lcom/android/calendar/ParticipantScheduleView;->init(Landroid/content/Context;)V

    .line 303
    return-void
.end method

.method static synthetic access$1000(Lcom/android/calendar/ParticipantScheduleView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/calendar/ParticipantScheduleView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/calendar/ParticipantScheduleView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/ParticipantScheduleView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->recalc()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/ParticipantScheduleView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/calendar/ParticipantScheduleView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    return p1
.end method

.method static synthetic access$412(Lcom/android/calendar/ParticipantScheduleView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$420(Lcom/android/calendar/ParticipantScheduleView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/ParticipantScheduleView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mMaxViewStartY:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/ParticipantScheduleView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->computeFirstHour()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/calendar/ParticipantScheduleView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/calendar/ParticipantScheduleView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->resetSelectedHour()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/calendar/ParticipantScheduleView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    return p1
.end method

.method private computeFirstHour()V
    .registers 3

    .prologue
    .line 536
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    .line 537
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHourOffset:I

    .line 538
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    .line 622
    .local v0, p:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mRect:Landroid/graphics/Rect;

    .line 624
    .local v1, r:Landroid/graphics/Rect;
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/ParticipantScheduleView;->drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 625
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/ParticipantScheduleView;->drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 627
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mScheduleStr:Ljava/util/ArrayList;

    if-eqz v2, :cond_1c

    .line 628
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->TAG:Ljava/lang/String;

    const-string v3, "DRAW Schedule"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-direct {p0, p1, v1}, Lcom/android/calendar/ParticipantScheduleView;->drawSchedule(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 631
    :cond_1c
    return-void
.end method

.method private drawAfterScroll(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    .line 835
    .local v0, p:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mRect:Landroid/graphics/Rect;

    .line 837
    .local v1, r:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 838
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/ParticipantScheduleView;->drawParticipantLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 839
    :cond_b
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 840
    invoke-direct {p0, p1}, Lcom/android/calendar/ParticipantScheduleView;->drawAmPm(Landroid/graphics/Canvas;)V

    .line 842
    :cond_16
    return-void
.end method

.method private drawAmPm(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    const/16 v8, 0xc

    .line 845
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    .line 847
    .local v2, p:Landroid/graphics/Paint;
    sget v6, Lcom/android/calendar/ParticipantScheduleView;->mCalendarHourLabel:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 848
    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourTextSize:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 849
    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 850
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 851
    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mAmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 852
    .local v4, text:Ljava/lang/String;
    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    if-lt v6, v8, :cond_28

    .line 853
    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mPmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 855
    :cond_28
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v1, v6

    .line 856
    .local v1, hoursTextHeight:I
    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstCell:I

    iget v7, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHourOffset:I

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v5, v6, 0x1

    .line 857
    .local v5, y:I
    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    if-nez v6, :cond_46

    .line 858
    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    .line 859
    :cond_46
    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mAmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_89

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourGap:I

    div-int/lit8 v0, v6, 0x2

    .line 861
    .local v0, gap:I
    :goto_53
    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    sub-int v3, v6, v0

    .line 862
    .local v3, right:I
    int-to-float v6, v3

    int-to-float v7, v5

    invoke-virtual {p1, v4, v6, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 864
    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    if-ge v6, v8, :cond_88

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iget v7, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    add-int/2addr v6, v7

    if-le v6, v8, :cond_88

    .line 866
    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mPmString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 867
    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstCell:I

    iget v7, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHourOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    rsub-int/lit8 v7, v7, 0xc

    iget v8, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    mul-int/lit8 v7, v1, 0x3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v5, v6, 0x1

    .line 869
    int-to-float v6, v3

    int-to-float v7, v5

    invoke-virtual {p1, v4, v6, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 871
    :cond_88
    return-void

    .line 859
    .end local v0           #gap:I
    .end local v3           #right:I
    :cond_89
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourGap:I

    goto :goto_53
.end method

.method private drawCalendarView(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 802
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mSrcRect:Landroid/graphics/Rect;

    .line 803
    .local v2, src:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mDestRect:Landroid/graphics/Rect;

    .line 805
    .local v0, dest:Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstCell:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 806
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewHeight:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 807
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 808
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewWidth:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 810
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mDayBgColor:I

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 812
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    .line 813
    .local v1, p:Landroid/graphics/Paint;
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mDayGridColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 814
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 816
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 818
    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 819
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewWidth:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 820
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 821
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mGridAreaHeight:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 829
    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 830
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 831
    return-void
.end method

.method private drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 21
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 734
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v15

    .line 737
    .local v15, savedStyle:Landroid/graphics/Paint$Style;
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 738
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 739
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 740
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mViewWidth:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 741
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/ParticipantScheduleView;->mDayGridColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 744
    sget v1, Lcom/android/calendar/ParticipantScheduleView;->mCalendarGridLineHorizontalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 746
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 747
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 750
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    int-to-float v2, v1

    .line 751
    .local v2, startX:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mViewWidth:I

    int-to-float v4, v1

    .line 752
    .local v4, stopX:F
    const/16 v16, 0x0

    .line 753
    .local v16, y:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v12, v1

    .line 754
    .local v12, deltaY:F
    const/4 v13, 0x0

    .local v13, hour:I
    :goto_57
    const/16 v1, 0x18

    if-ge v13, v1, :cond_6f

    .line 755
    add-float v16, v16, v12

    .line 756
    const/high16 v1, 0x3f80

    sub-float v3, v16, v1

    const/high16 v1, 0x3f80

    sub-float v5, v16, v1

    move-object/from16 v1, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 754
    add-int/lit8 v13, v13, 0x1

    goto :goto_57

    .line 760
    :cond_6f
    const/4 v7, 0x0

    .line 761
    .local v7, startY:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    int-to-float v9, v1

    .line 762
    .local v9, stopY:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    int-to-float v6, v1

    .line 763
    .local v6, x:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v11, v1

    .line 764
    .local v11, deltaX:F
    const/4 v14, 0x0

    .local v14, par:I
    :goto_82
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    if-ge v14, v1, :cond_94

    move-object/from16 v5, p2

    move v8, v6

    move-object/from16 v10, p3

    .line 765
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 766
    add-float/2addr v6, v11

    .line 764
    add-int/lit8 v14, v14, 0x1

    goto :goto_82

    .line 770
    :cond_94
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 771
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 772
    return-void
.end method

.method private drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 12
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/16 v7, 0x18

    .line 776
    sget v5, Lcom/android/calendar/ParticipantScheduleView;->mCalendarHourLabel:I

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 777
    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourTextSize:I

    int-to-float v5, v5

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 778
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 779
    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 781
    invoke-virtual {p3}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v0, v5

    .line 782
    .local v0, hoursTextHeight:I
    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourGap:I

    sub-int v2, v5, v6

    .line 783
    .local v2, right:I
    div-int/lit8 v4, v0, 0x2

    .line 785
    .local v4, y:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_28
    if-gt v1, v7, :cond_47

    .line 787
    if-ne v1, v7, :cond_2d

    .line 788
    const/4 v1, 0x0

    .line 789
    :cond_2d
    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 790
    sget-object v5, Lcom/android/calendar/CalendarData;->s24Hours:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 794
    .local v3, time:Ljava/lang/String;
    :goto_39
    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 795
    int-to-float v5, v2

    add-int/lit8 v6, v4, -0x1

    int-to-float v6, v6

    invoke-virtual {p2, v3, v5, v6, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 796
    if-nez v1, :cond_4d

    .line 799
    .end local v3           #time:Ljava/lang/String;
    :cond_47
    return-void

    .line 792
    :cond_48
    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourStrs:[Ljava/lang/String;

    aget-object v3, v5, v1

    .restart local v3       #time:Ljava/lang/String;
    goto :goto_39

    .line 785
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_28
.end method

.method private drawParticipantLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 33
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ParticipantScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f020091

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    .line 878
    .local v12, is:Ljava/io/InputStream;
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 880
    .local v6, bg:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_14

    .line 881
    :try_start_11
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_1ac

    .line 888
    :cond_14
    :goto_14
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 889
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameHeight:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 890
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ParticipantScheduleView;->getWidth()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p1

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 892
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 893
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 894
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 896
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameTextSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 897
    sget-object v26, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 898
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    move/from16 v23, v0

    .line 899
    .local v23, x:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    .line 901
    .local v7, deltaX:I
    const/16 v26, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 902
    const/16 v26, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 905
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameHeight:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameTextSize:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x4

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v25, v0

    .line 906
    .local v25, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 907
    .local v16, nameSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    move/from16 v1, v16

    if-le v0, v1, :cond_1b2

    move/from16 v19, v16

    .line 909
    .local v19, size:I
    :goto_d7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    .local v10, i:I
    :goto_db
    move/from16 v0, v19

    if-ge v10, v0, :cond_1f3

    .line 910
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v27, v27, v28

    add-float v24, v26, v27

    .line 911
    .local v24, xCenter:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 912
    .local v15, name:Ljava/lang/String;
    const-string v26, " "

    const/16 v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v17

    .line 913
    .local v17, names:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1c2

    .line 914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameHeight:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameTextSize:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x6

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v25, v0

    .line 918
    :goto_133
    move-object/from16 v5, v17

    .local v5, arr$:[Ljava/lang/String;
    array-length v13, v5

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_137
    if-ge v11, v13, :cond_1ed

    aget-object v21, v5, v11

    .line 919
    .local v21, subName:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v22

    .line 920
    .local v22, width:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v26, v22, v26

    if-lez v26, :cond_1df

    .line 921
    const-string v8, ""

    .line 922
    .local v8, displayName:Ljava/lang/String;
    const/16 v18, 0x1

    .local v18, s:I
    :goto_156
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v18

    move/from16 v1, v26

    if-gt v0, v1, :cond_191

    .line 923
    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 924
    .local v20, sub:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 925
    .local v14, length:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v26, v14, v26

    if-lez v26, :cond_1db

    .line 926
    const/16 v26, 0x0

    add-int/lit8 v27, v18, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 930
    .end local v14           #length:F
    .end local v20           #sub:Ljava/lang/String;
    :cond_191
    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 934
    .end local v8           #displayName:Ljava/lang/String;
    .end local v18           #s:I
    :goto_19c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameTextSize:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    .line 918
    add-int/lit8 v11, v11, 0x1

    goto :goto_137

    .line 882
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v7           #deltaX:I
    .end local v10           #i:I
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #nameSize:I
    .end local v17           #names:[Ljava/lang/String;
    .end local v19           #size:I
    .end local v21           #subName:Ljava/lang/String;
    .end local v22           #width:F
    .end local v23           #x:I
    .end local v24           #xCenter:F
    .end local v25           #y:F
    :catch_1ac
    move-exception v9

    .line 883
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_14

    .line 907
    .end local v9           #e:Ljava/io/IOException;
    .restart local v7       #deltaX:I
    .restart local v16       #nameSize:I
    .restart local v23       #x:I
    .restart local v25       #y:F
    :cond_1b2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    move/from16 v27, v0

    add-int v19, v26, v27

    goto/16 :goto_d7

    .line 916
    .restart local v10       #i:I
    .restart local v15       #name:Ljava/lang/String;
    .restart local v17       #names:[Ljava/lang/String;
    .restart local v19       #size:I
    .restart local v24       #xCenter:F
    :cond_1c2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameHeight:I

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameTextSize:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x3

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v25, v0

    goto/16 :goto_133

    .line 922
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v8       #displayName:Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v13       #len$:I
    .restart local v14       #length:F
    .restart local v18       #s:I
    .restart local v20       #sub:Ljava/lang/String;
    .restart local v21       #subName:Ljava/lang/String;
    .restart local v22       #width:F
    :cond_1db
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_156

    .line 932
    .end local v8           #displayName:Ljava/lang/String;
    .end local v14           #length:F
    .end local v18           #s:I
    .end local v20           #sub:Ljava/lang/String;
    :cond_1df
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_19c

    .line 937
    .end local v21           #subName:Ljava/lang/String;
    .end local v22           #width:F
    :cond_1ed
    add-int v23, v23, v7

    .line 909
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_db

    .line 939
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v15           #name:Ljava/lang/String;
    .end local v17           #names:[Ljava/lang/String;
    .end local v24           #xCenter:F
    :cond_1f3
    return-void
.end method

.method private drawRect(Landroid/graphics/Rect;ILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "r"
    .parameter "color"
    .parameter "p"
    .parameter "canvas"

    .prologue
    .line 719
    move v0, p2

    .line 720
    .local v0, fillColor:I
    const v1, 0xffffff

    and-int/2addr v0, v1

    .line 721
    const/high16 v1, -0x100

    or-int/2addr v0, v1

    .line 723
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 724
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 725
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 726
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 727
    invoke-virtual {p4, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 729
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 730
    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 731
    return-void
.end method

.method private drawSchedule(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 25
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 634
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/ParticipantScheduleView;->mResources:Landroid/content/res/Resources;

    .line 635
    .local v11, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    .line 636
    .local v10, p:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 638
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    move/from16 v19, v0

    add-int/lit8 v6, v19, 0x1

    .line 640
    .local v6, deltaX:I
    const/4 v12, 0x0

    .line 641
    .local v12, scheduleImage:I
    const v19, 0x7f08001e

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 642
    .local v14, schedule_free:I
    const v19, 0x7f08001f

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    .line 643
    .local v16, schedule_tentative:I
    const v19, 0x7f080020

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 644
    .local v13, schedule_busy:I
    const v19, 0x7f080021

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 646
    .local v15, schedule_out_of_office:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    move/from16 v19, v0

    add-int/lit8 v5, v19, 0x1

    .line 647
    .local v5, cellHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 648
    .local v9, nameSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    if-le v0, v9, :cond_10b

    move/from16 v17, v9

    .line 651
    .local v17, size:I
    :goto_69
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    .local v7, i:I
    :goto_6d
    move/from16 v0, v17

    if-ge v7, v0, :cond_15a

    .line 652
    const/4 v4, 0x4

    .line 653
    .local v4, before:I
    const/16 v18, -0x1

    .line 654
    .local v18, start:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v6

    add-int/lit8 v19, v19, -0x3

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 655
    const/4 v8, 0x0

    .local v8, j:I
    :goto_85
    const/16 v19, 0x30

    move/from16 v0, v19

    if-ge v8, v0, :cond_148

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mScheduleStr:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 657
    .local v3, after:I
    if-eq v4, v3, :cond_e9

    .line 658
    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_127

    .line 660
    div-int/lit8 v19, v8, 0x2

    mul-int v19, v19, v5

    rem-int/lit8 v20, v8, 0x2

    div-int/lit8 v21, v5, 0x2

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 661
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v12, v10, v2}, Lcom/android/calendar/ParticipantScheduleView;->drawRect(Landroid/graphics/Rect;ILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 664
    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v3, v0, :cond_124

    .line 665
    move/from16 v18, v8

    .line 666
    div-int/lit8 v19, v8, 0x2

    mul-int v19, v19, v5

    rem-int/lit8 v20, v8, 0x2

    div-int/lit8 v21, v5, 0x2

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 667
    packed-switch v3, :pswitch_data_15c

    .line 707
    :cond_e9
    :goto_e9
    const/16 v19, 0x2f

    move/from16 v0, v19

    if-ne v8, v0, :cond_106

    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v3, v0, :cond_106

    .line 708
    mul-int/lit8 v19, v5, 0x18

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 710
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v12, v10, v2}, Lcom/android/calendar/ParticipantScheduleView;->drawRect(Landroid/graphics/Rect;ILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 712
    :cond_106
    move v4, v3

    .line 655
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_85

    .line 648
    .end local v3           #after:I
    .end local v4           #before:I
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v17           #size:I
    .end local v18           #start:I
    :cond_10b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    move/from16 v20, v0

    add-int v17, v19, v20

    goto/16 :goto_69

    .line 669
    .restart local v3       #after:I
    .restart local v4       #before:I
    .restart local v7       #i:I
    .restart local v8       #j:I
    .restart local v17       #size:I
    .restart local v18       #start:I
    :pswitch_11b
    move v12, v14

    .line 670
    goto :goto_e9

    .line 672
    :pswitch_11d
    move/from16 v12, v16

    .line 673
    goto :goto_e9

    .line 675
    :pswitch_120
    move v12, v13

    .line 676
    goto :goto_e9

    .line 678
    :pswitch_122
    move v12, v15

    goto :goto_e9

    .line 682
    :cond_124
    const/16 v18, -0x1

    goto :goto_e9

    .line 686
    :cond_127
    move/from16 v18, v8

    .line 687
    div-int/lit8 v19, v8, 0x2

    mul-int v19, v19, v5

    rem-int/lit8 v20, v8, 0x2

    div-int/lit8 v21, v5, 0x2

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 689
    packed-switch v3, :pswitch_data_168

    goto :goto_e9

    .line 691
    :pswitch_13f
    move v12, v14

    .line 692
    goto :goto_e9

    .line 694
    :pswitch_141
    move/from16 v12, v16

    .line 695
    goto :goto_e9

    .line 697
    :pswitch_144
    move v12, v13

    .line 698
    goto :goto_e9

    .line 700
    :pswitch_146
    move v12, v15

    goto :goto_e9

    .line 714
    .end local v3           #after:I
    :cond_148
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int v19, v19, v6

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 651
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6d

    .line 716
    .end local v4           #before:I
    .end local v8           #j:I
    .end local v18           #start:I
    :cond_15a
    return-void

    .line 667
    nop

    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_11b
        :pswitch_11d
        :pswitch_120
        :pswitch_122
    .end packed-switch

    .line 689
    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_13f
        :pswitch_141
        :pswitch_144
        :pswitch_146
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const v5, 0x7f0b0069

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 306
    invoke-virtual {p0, v6}, Lcom/android/calendar/ParticipantScheduleView;->setFocusable(Z)V

    .line 310
    invoke-virtual {p0, v6}, Lcom/android/calendar/ParticipantScheduleView;->setFocusableInTouchMode(Z)V

    .line 311
    invoke-virtual {p0, v6}, Lcom/android/calendar/ParticipantScheduleView;->setClickable(Z)V

    .line 312
    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mResources:Landroid/content/res/Resources;

    .line 314
    .local v3, r:Landroid/content/res/Resources;
    const v4, 0x7f080017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mDayGridColor:I

    .line 315
    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mDayBgColor:I

    .line 316
    const v4, -0xb4b4b5

    sput v4, Lcom/android/calendar/ParticipantScheduleView;->mCalendarGridLineHorizontalColor:I

    .line 317
    const v4, 0x7f080006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sput v4, Lcom/android/calendar/ParticipantScheduleView;->mCalendarHourLabel:I

    .line 319
    const v4, 0x7f080002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sput v4, Lcom/android/calendar/ParticipantScheduleView;->mWeekDayColor:I

    .line 321
    const v4, 0x7f0b0064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    .line 322
    const v4, 0x7f0b0067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameHeight:I

    .line 323
    const v4, 0x7f0b0066

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    .line 324
    const v4, 0x7f0b0065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellWidth:I

    .line 325
    const v4, 0x7f0b0068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourWidth:I

    .line 326
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameTextSize:I

    .line 327
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourTextSize:I

    .line 328
    const v4, 0x7f0b003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourGap:I

    .line 330
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaint:Landroid/graphics/Paint;

    .line 331
    .local v2, p:Landroid/graphics/Paint;
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 333
    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    const v5, -0x373738

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 334
    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 336
    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mPaintBorder:Landroid/graphics/Paint;

    const/high16 v5, 0x4000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 338
    iput v7, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    .line 339
    sget-object v4, Lcom/android/calendar/CalendarData;->s12HoursNoAmPm:[Ljava/lang/String;

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourStrs:[Ljava/lang/String;

    .line 341
    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mAmString:Ljava/lang/String;

    .line 342
    invoke-static {v6}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mPmString:Ljava/lang/String;

    .line 344
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p1, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 346
    .local v0, millis:J
    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 348
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p1, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTempDate:Landroid/text/format/Time;

    .line 349
    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTempDate:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 351
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    .line 352
    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    const v5, 0x7f0f0032

    invoke-virtual {v4, v5}, Lcom/android/calendar/ParticipantScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTitleTextViewLeft:Landroid/widget/TextView;

    .line 353
    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    const v5, 0x7f0f0033

    invoke-virtual {v4, v5}, Lcom/android/calendar/ParticipantScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTitleTextViewRight:Landroid/widget/TextView;

    .line 354
    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mHourTextSize:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 356
    return-void
.end method

.method private recalc()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 449
    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 450
    .local v2, start:J
    move-wide v0, v2

    .line 451
    .local v0, end:J
    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstJulianDay:I

    .line 452
    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstJulianDay:I

    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mLastJulianDay:I

    .line 454
    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mMonthLength:I

    .line 455
    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstDate:I

    .line 456
    invoke-direct {p0, v6}, Lcom/android/calendar/ParticipantScheduleView;->setDayPrevNextBtnState(Z)V

    .line 457
    return-void
.end method

.method private remeasure(II)V
    .registers 8
    .parameter "width"
    .parameter "height"

    .prologue
    .line 555
    iput p1, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewWidth:I

    .line 556
    iput p2, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewHeight:I

    .line 558
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameHeight:I

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstCell:I

    .line 560
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstCell:I

    sub-int v3, p2, v3

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mGridAreaHeight:I

    .line 561
    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 562
    .local v0, bottomSpace:I
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mGridAreaHeight:I

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    .line 565
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    .line 566
    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    if-eq v3, v4, :cond_6d

    :cond_3d
    if-lez p1, :cond_6d

    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    if-lez v3, :cond_6d

    .line 568
    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4f

    .line 569
    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 570
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 573
    :cond_4f
    :try_start_4f
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_59
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4f .. :try_end_59} :catch_84
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_59} :catch_89

    .line 579
    :goto_59
    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6d

    .line 580
    iget-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mDayBgColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 581
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mCanvas:Landroid/graphics/Canvas;

    .line 584
    :cond_6d
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmapHeight:I

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mGridAreaHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mMaxViewStartY:I

    .line 586
    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->initFirstHour()V

    .line 589
    iget v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHourOffset:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    .line 591
    return-void

    .line 574
    :catch_84
    move-exception v2

    .line 575
    .local v2, oome:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_59

    .line 576
    .end local v2           #oome:Ljava/lang/OutOfMemoryError;
    :catch_89
    move-exception v1

    .line 577
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59
.end method

.method private resetSelectedHour()V
    .registers 4

    .prologue
    .line 512
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_f

    .line 513
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mSelectionHour:I

    .line 517
    :cond_e
    :goto_e
    return-void

    .line 514
    :cond_f
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    if-le v0, v1, :cond_e

    .line 515
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mSelectionHour:I

    goto :goto_e
.end method

.method private setDayPrevNextBtnState(Z)V
    .registers 8
    .parameter "enabled"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 460
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    const v3, 0x7f0f0030

    invoke-virtual {v2, v3}, Lcom/android/calendar/ParticipantScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 461
    .local v1, prevBtn:Landroid/view/View;
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    const v3, 0x7f0f0034

    invoke-virtual {v2, v3}, Lcom/android/calendar/ParticipantScheduleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 462
    .local v0, nextBtn:Landroid/view/View;
    if-eqz p1, :cond_33

    .line 463
    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstJulianDay:I

    const v3, 0x24dc87

    if-gt v2, v3, :cond_2b

    .line 464
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 468
    :goto_20
    iget v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstJulianDay:I

    const v3, 0x259d23

    if-lt v2, v3, :cond_2f

    .line 469
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 478
    :goto_2a
    return-void

    .line 466
    :cond_2b
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_20

    .line 471
    :cond_2f
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2a

    .line 474
    :cond_33
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 475
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2a
.end method


# virtual methods
.method public cleanup()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1176
    iput-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mRemeasure:Z

    .line 1177
    iput-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    .line 1178
    return-void
.end method

.method public clearScreen()V
    .registers 2

    .prologue
    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    .line 486
    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->invalidate()V

    .line 487
    return-void
.end method

.method doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 12
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1001
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mTouchMode:I

    .line 1002
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mOnFlingCalled:Z

    .line 1003
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int v0, v5, v6

    .line 1004
    .local v0, deltaX:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1005
    .local v2, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v1, v5, v6

    .line 1006
    .local v1, deltaY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1008
    .local v3, distanceY:I
    sget v5, Lcom/android/calendar/Utils;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v2, v5, :cond_54

    if-le v2, v3, :cond_54

    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    if-eqz v5, :cond_54

    .line 1009
    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    .line 1010
    .local v4, firstName:I
    if-gez v0, :cond_4a

    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    iget v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4a

    .line 1011
    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    add-int/2addr v4, v5

    .line 1017
    :goto_44
    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    invoke-virtual {v5, v4}, Lcom/android/calendar/ParticipantScheduleActivity;->showNextParticipants(I)V

    .line 1024
    .end local v4           #firstName:I
    :cond_49
    :goto_49
    return-void

    .line 1012
    .restart local v4       #firstName:I
    :cond_4a
    if-lez v0, :cond_49

    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    if-eqz v5, :cond_49

    .line 1013
    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumCells:I

    sub-int/2addr v4, v5

    goto :goto_44

    .line 1022
    .end local v4           #firstName:I
    :cond_54
    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mContinueScroll:Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;

    float-to-int v6, p4

    div-int/lit8 v6, v6, 0x14

    invoke-virtual {v5, v6}, Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;->init(I)V

    .line 1023
    iget-object v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mContinueScroll:Lcom/android/calendar/ParticipantScheduleView$ContinueScroll;

    invoke-virtual {p0, v5}, Lcom/android/calendar/ParticipantScheduleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_49
.end method

.method doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .registers 12
    .parameter "e1"
    .parameter "e2"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v6, 0x1

    .line 966
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    sub-int v2, v4, v5

    .line 967
    .local v2, distanceX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int v3, v4, v5

    .line 973
    .local v3, distanceY:I
    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTouchMode:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_33

    .line 974
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 975
    .local v0, absDistanceX:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 976
    .local v1, absDistanceY:I
    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrollStartY:I

    .line 980
    mul-int/lit8 v4, v0, 0x2

    if-lt v1, v4, :cond_33

    .line 981
    const/16 v4, 0x20

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTouchMode:I

    .line 985
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_33
    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mTouchMode:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_48

    .line 986
    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrollStartY:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    .line 987
    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    if-gez v4, :cond_50

    .line 988
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    .line 992
    :cond_45
    :goto_45
    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->computeFirstHour()V

    .line 995
    :cond_48
    iput-boolean v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrolling:Z

    .line 996
    iput-boolean v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    .line 997
    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->invalidate()V

    .line 998
    return-void

    .line 989
    :cond_50
    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/ParticipantScheduleView;->mMaxViewStartY:I

    if-le v4, v5, :cond_45

    .line 990
    iget v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mMaxViewStartY:I

    iput v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mViewStartY:I

    goto :goto_45
.end method

.method public getFirstNameIndex()I
    .registers 2

    .prologue
    .line 1307
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    return v0
.end method

.method public getNextDay(Z)Landroid/text/format/Time;
    .registers 4
    .parameter "isNext"

    .prologue
    .line 1032
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1033
    .local v0, time:Landroid/text/format/Time;
    if-eqz p1, :cond_14

    .line 1034
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 1038
    :goto_f
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1040
    return-object v0

    .line 1036
    :cond_14
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    goto :goto_f
.end method

.method public initFirstHour()V
    .registers 3

    .prologue
    .line 520
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 521
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    .line 525
    :cond_b
    :goto_b
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHourOffset:I

    .line 526
    return-void

    .line 522
    :cond_f
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    add-int/2addr v0, v1

    const/16 v1, 0x18

    if-le v0, v1, :cond_b

    .line 523
    iget v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mNumHours:I

    rsub-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstHour:I

    goto :goto_b
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->cleanup()V

    .line 1183
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 1185
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1188
    :cond_f
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1189
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 596
    iget-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mRemeasure:Z

    if-eqz v0, :cond_12

    .line 597
    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/ParticipantScheduleView;->remeasure(II)V

    .line 598
    iput-boolean v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mRemeasure:Z

    .line 601
    :cond_12
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_17

    .line 618
    :goto_16
    return-void

    .line 606
    :cond_17
    iget-boolean v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_26

    .line 607
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcom/android/calendar/ParticipantScheduleView;->doDraw(Landroid/graphics/Canvas;)V

    .line 608
    iput-boolean v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    .line 611
    :cond_26
    iget-object v0, p0, Lcom/android/calendar/ParticipantScheduleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2d

    .line 612
    invoke-direct {p0, p1}, Lcom/android/calendar/ParticipantScheduleView;->drawCalendarView(Landroid/graphics/Canvas;)V

    .line 616
    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/calendar/ParticipantScheduleView;->drawAfterScroll(Landroid/graphics/Canvas;)V

    goto :goto_16
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1045
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1047
    .local v0, action:I
    packed-switch v0, :pswitch_data_3e

    .line 1074
    :pswitch_9
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1077
    :cond_11
    :goto_11
    return v1

    .line 1049
    :pswitch_12
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1052
    :cond_1a
    iget-boolean v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mOnFlingCalled:Z

    if-nez v2, :cond_11

    .line 1058
    iget-boolean v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrolling:Z

    if-eqz v2, :cond_11

    .line 1059
    iput-boolean v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrolling:Z

    .line 1060
    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->resetSelectedHour()V

    .line 1061
    iput-boolean v1, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    .line 1062
    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->invalidate()V

    goto :goto_11

    .line 1068
    :pswitch_2d
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1069
    iput-boolean v3, p0, Lcom/android/calendar/ParticipantScheduleView;->mScrolling:Z

    .line 1070
    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->resetSelectedHour()V

    goto :goto_11

    .line 1077
    :cond_38
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_11

    .line 1047
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_9
        :pswitch_2d
    .end packed-switch
.end method

.method public setSelectedDay(Landroid/text/format/Time;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 10
    .parameter "time"
    .parameter
    .parameter
    .parameter "firstName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, nameStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, scheduleStr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 412
    iput-object p2, p0, Lcom/android/calendar/ParticipantScheduleView;->mNameStr:Ljava/util/ArrayList;

    .line 413
    iput-object p3, p0, Lcom/android/calendar/ParticipantScheduleView;->mScheduleStr:Ljava/util/ArrayList;

    .line 414
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 415
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mSelectionHour:I

    .line 416
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 417
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 418
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/ParticipantScheduleView;->mSelectionDay:I

    .line 419
    iput p4, p0, Lcom/android/calendar/ParticipantScheduleView;->mFirstNameIndex:I

    .line 421
    invoke-direct {p0}, Lcom/android/calendar/ParticipantScheduleView;->recalc()V

    .line 422
    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->updateTitle()V

    .line 423
    iput-boolean v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mRemeasure:Z

    .line 424
    iput-boolean v4, p0, Lcom/android/calendar/ParticipantScheduleView;->mRedrawScreen:Z

    .line 425
    return-void
.end method

.method public updateTitle()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 428
    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_format"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, dateFormat:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 431
    .local v3, start:J
    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, format:Ljava/lang/String;
    if-eqz v0, :cond_33

    .line 433
    const-string v6, "MM-dd-yyyy"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 434
    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 439
    :cond_33
    :goto_33
    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mParentActivity:Lcom/android/calendar/ParticipantScheduleActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v6}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mDateRange:Ljava/lang/String;

    .line 441
    const-string v1, " "

    .line 442
    .local v1, expr:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mDateRange:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, titlesplit:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mTitleTextViewLeft:Landroid/widget/TextView;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v6, p0, Lcom/android/calendar/ParticipantScheduleView;->mTitleTextViewRight:Landroid/widget/TextView;

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    return-void

    .line 435
    .end local v1           #expr:Ljava/lang/String;
    .end local v5           #titlesplit:[Ljava/lang/String;
    :cond_5d
    const-string v6, "yyyy-MM-dd"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 436
    invoke-virtual {p0}, Lcom/android/calendar/ParticipantScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_33
.end method
