.class public Lcom/android/calendar/YearView;
.super Landroid/view/View;
.source "YearView.java"

# interfaces
.implements Lcom/android/calendar/MonthInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/YearView$SwitchToMonthView;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mColumnNum:I

.field private mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

.field private mDayTextSize:I

.field private mFocusBox:Landroid/graphics/drawable/Drawable;

.field private mFocusHeight:I

.field private mFocusWidth:I

.field private mFocusedColumn:I

.field private mFocusedRow:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMonthColor:I

.field private mMonthDayNumberColor:I

.field private mMonthHeight:I

.field private mMonthOtherDayColor:I

.field private mMonthSaturdayNumberColor:I

.field private mMonthSundayNumberColor:I

.field private mMonthTextHeight:I

.field private mMonthTextSize:I

.field private mMonthWidth:I

.field private mOtherDayTextSize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mParentActivity:Lcom/android/calendar/MonthActivity;

.field mRedrawScreen:Z

.field private mRowNum:I

.field private mScreenMode:I

.field private mSwitchToMonthView:Lcom/android/calendar/YearView$SwitchToMonthView;

.field private mTempTime:Landroid/text/format/Time;

.field private mTime:Landroid/text/format/Time;

.field private mYearFocusInnerLandMargin:I

.field private mYearFocusInnerVertMargin:I

.field private mYearFocusOutterLandMargin:I

.field private mYearFocusOutterVertMargin:I

.field private mYearInnerLandMargin:I

.field private mYearInnerVertMargin:I

.field private mYearOutterLandMargin:I

.field private mYearOutterVertMargin:I

.field private mYearTopVertMargin:I


# direct methods
.method public constructor <init>(Lcom/android/calendar/MonthActivity;)V
    .registers 8
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 255
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    .line 73
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/YearView;->mPaint:Landroid/graphics/Paint;

    .line 93
    iput-boolean v4, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    .line 245
    iput v4, p0, Lcom/android/calendar/YearView;->mScreenMode:I

    .line 249
    new-instance v2, Lcom/android/calendar/YearView$SwitchToMonthView;

    invoke-direct {v2, p0, v5}, Lcom/android/calendar/YearView$SwitchToMonthView;-><init>(Lcom/android/calendar/YearView;Lcom/android/calendar/YearView$1;)V

    iput-object v2, p0, Lcom/android/calendar/YearView;->mSwitchToMonthView:Lcom/android/calendar/YearView$SwitchToMonthView;

    .line 259
    invoke-virtual {p0, v3}, Lcom/android/calendar/YearView;->setFocusable(Z)V

    .line 261
    invoke-virtual {p0, v3}, Lcom/android/calendar/YearView;->setFocusableInTouchMode(Z)V

    .line 263
    invoke-virtual {p0, v3}, Lcom/android/calendar/YearView;->setClickable(Z)V

    .line 267
    invoke-virtual {p1}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 271
    .local v0, rs:Landroid/content/res/Resources;
    const v2, 0x7f0b005a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthWidth:I

    .line 273
    const v2, 0x7f0b005b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthHeight:I

    .line 275
    const v2, 0x7f0b005d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mCellHeight:I

    .line 277
    const v2, 0x7f0b005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mCellWidth:I

    .line 279
    const v2, 0x7f0b0055

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearOutterLandMargin:I

    .line 281
    const v2, 0x7f0b0056

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearInnerLandMargin:I

    .line 283
    const v2, 0x7f0b0057

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearTopVertMargin:I

    .line 285
    const v2, 0x7f0b0058

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearOutterVertMargin:I

    .line 287
    const v2, 0x7f0b0059

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearInnerVertMargin:I

    .line 289
    const v2, 0x7f0b005e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthTextHeight:I

    .line 291
    const v2, 0x7f0b005f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthTextSize:I

    .line 293
    const v2, 0x7f0b0060

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mDayTextSize:I

    .line 295
    const v2, 0x7f0b0061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mOtherDayTextSize:I

    .line 297
    const v2, 0x7f0b0051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearFocusOutterLandMargin:I

    .line 299
    const v2, 0x7f0b0052

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearFocusInnerLandMargin:I

    .line 301
    const v2, 0x7f0b0053

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearFocusOutterVertMargin:I

    .line 303
    const v2, 0x7f0b0054

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mYearFocusInnerVertMargin:I

    .line 305
    const v2, 0x7f0b004f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mFocusWidth:I

    .line 307
    const v2, 0x7f0b0050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mFocusHeight:I

    .line 309
    const v2, 0x7f0b0062

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mRowNum:I

    .line 311
    const v2, 0x7f0b0063

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mColumnNum:I

    .line 313
    const v2, 0x7f080028

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthColor:I

    .line 315
    const v2, 0x7f080009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthDayNumberColor:I

    .line 317
    const v2, 0x7f08000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthSundayNumberColor:I

    .line 319
    const v2, 0x7f08000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthSaturdayNumberColor:I

    .line 321
    const v2, 0x7f08000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mMonthOtherDayColor:I

    .line 329
    const v2, 0x7f020095

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/YearView;->mFocusBox:Landroid/graphics/drawable/Drawable;

    .line 333
    iput-object p1, p0, Lcom/android/calendar/YearView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    .line 335
    invoke-static {p1, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, timezone:Ljava/lang/String;
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    .line 341
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/calendar/YearView;->mTempTime:Landroid/text/format/Time;

    .line 345
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/android/calendar/YearView$1;

    invoke-direct {v3, p0}, Lcom/android/calendar/YearView$1;-><init>(Lcom/android/calendar/YearView;)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/calendar/YearView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 473
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/YearView;)Lcom/android/calendar/MonthActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/YearView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/YearView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/YearView;->mTempTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/YearView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/YearView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/calendar/YearView;->getPressedRow(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/YearView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/calendar/YearView;->getPressedColumn(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/YearView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/YearView;->mFocusedRow:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/calendar/YearView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/calendar/YearView;->mFocusedRow:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/calendar/YearView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/YearView;->mFocusedColumn:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/calendar/YearView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/calendar/YearView;->mFocusedColumn:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/calendar/YearView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/calendar/YearView;->mScreenMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/calendar/YearView;)Lcom/android/calendar/YearView$SwitchToMonthView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/YearView;->mSwitchToMonthView:Lcom/android/calendar/YearView$SwitchToMonthView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/YearView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/calendar/YearView;->mColumnNum:I

    return v0
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .registers 34
    .parameter "canvas"

    .prologue
    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/YearView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12f

    const/16 v18, 0x1

    .line 653
    .local v18, isLandscape:Z
    :goto_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/YearView;->mPaint:Landroid/graphics/Paint;

    .line 657
    .local v9, p:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->setFirstMonth()V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/YearView;->mTempTime:Landroid/text/format/Time;

    move-object/from16 v28, v0

    .line 661
    .local v28, time:Landroid/text/format/Time;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v6}, Lcom/android/calendar/TwDayOfMonthCursor;->getYear()I

    move-result v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5, v6}, Landroid/text/format/Time;->set(III)V

    .line 677
    const/16 v31, 0x0

    .line 679
    .local v31, yearRow:I
    const/16 v30, 0x0

    .line 691
    .local v30, yearColumn:I
    :cond_3a
    :goto_3a
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v24

    .line 693
    .local v24, millis:J
    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v21

    .line 697
    .local v21, firstJulianDay:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v20

    .line 701
    .local v20, columnDay1:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v23

    .line 703
    .local v23, maxDay:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v4

    add-int/lit8 v26, v4, 0x1

    .line 707
    .local v26, monthRowNum:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mYearOutterLandMargin:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/YearView;->mMonthWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mYearInnerLandMargin:I

    add-int/2addr v5, v6

    mul-int v5, v5, v30

    add-int v16, v4, v5

    .line 709
    .local v16, x:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mYearTopVertMargin:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/YearView;->mMonthTextHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mMonthHeight:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mYearInnerVertMargin:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mYearOutterVertMargin:I

    add-int/2addr v5, v6

    mul-int v5, v5, v31

    add-int v17, v4, v5

    .line 719
    .local v17, y:I
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 721
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mMonthTextSize:I

    int-to-float v4, v4

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 723
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mMonthColor:I

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 725
    const-string v4, "MMMM"

    const/4 v5, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/YearView;->mMonthWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int v5, v5, v16

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mMonthTextHeight:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x5

    add-int v6, v6, v17

    add-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 731
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mMonthTextHeight:I

    add-int v17, v17, v4

    .line 737
    const v4, -0xb4b4b5

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 739
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 741
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 743
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 745
    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mMonthWidth:I

    add-int v4, v4, v16

    int-to-float v7, v4

    add-int/lit8 v4, v17, 0x1

    int-to-float v8, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 749
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mYearInnerVertMargin:I

    add-int v17, v17, v4

    .line 787
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 789
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 791
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 797
    sub-int v11, v21, v20

    .line 801
    .local v11, day:I
    const/4 v12, 0x0

    .local v12, row:I
    :goto_116
    move/from16 v0, v26

    if-ge v12, v0, :cond_136

    .line 803
    const/4 v13, 0x1

    .local v13, column:I
    :goto_11b
    const/16 v4, 0x8

    if-ge v13, v4, :cond_133

    .line 805
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/calendar/YearView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p0

    move-object/from16 v14, p1

    invoke-direct/range {v10 .. v18}, Lcom/android/calendar/YearView;->drawBox(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;IIZ)V

    .line 807
    add-int/lit8 v11, v11, 0x1

    .line 803
    add-int/lit8 v13, v13, 0x1

    goto :goto_11b

    .line 649
    .end local v9           #p:Landroid/graphics/Paint;
    .end local v11           #day:I
    .end local v12           #row:I
    .end local v13           #column:I
    .end local v16           #x:I
    .end local v17           #y:I
    .end local v18           #isLandscape:Z
    .end local v20           #columnDay1:I
    .end local v21           #firstJulianDay:I
    .end local v23           #maxDay:I
    .end local v24           #millis:J
    .end local v26           #monthRowNum:I
    .end local v28           #time:Landroid/text/format/Time;
    .end local v30           #yearColumn:I
    .end local v31           #yearRow:I
    :cond_12f
    const/16 v18, 0x0

    goto/16 :goto_f

    .line 801
    .restart local v9       #p:Landroid/graphics/Paint;
    .restart local v11       #day:I
    .restart local v12       #row:I
    .restart local v13       #column:I
    .restart local v16       #x:I
    .restart local v17       #y:I
    .restart local v18       #isLandscape:Z
    .restart local v20       #columnDay1:I
    .restart local v21       #firstJulianDay:I
    .restart local v23       #maxDay:I
    .restart local v24       #millis:J
    .restart local v26       #monthRowNum:I
    .restart local v28       #time:Landroid/text/format/Time;
    .restart local v30       #yearColumn:I
    .restart local v31       #yearRow:I
    :cond_133
    add-int/lit8 v12, v12, 0x1

    goto :goto_116

    .line 815
    .end local v13           #column:I
    :cond_136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_196

    .line 851
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mScreenMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_195

    .line 853
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mYearFocusOutterLandMargin:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/YearView;->mFocusedColumn:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mFocusWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/YearView;->mYearFocusInnerLandMargin:I

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int v22, v4, v5

    .line 857
    .local v22, left:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mYearFocusOutterVertMargin:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/YearView;->mFocusedRow:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/YearView;->mFocusHeight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/YearView;->mYearFocusInnerVertMargin:I

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int v29, v4, v5

    .line 861
    .local v29, top:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mFocusWidth:I

    add-int v27, v22, v4

    .line 863
    .local v27, right:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mFocusHeight:I

    add-int v19, v29, v4

    .line 865
    .local v19, bottom:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mFocusBox:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v22

    move/from16 v1, v29

    move/from16 v2, v27

    move/from16 v3, v19

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 867
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mFocusBox:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 873
    .end local v19           #bottom:I
    .end local v22           #left:I
    .end local v27           #right:I
    .end local v29           #top:I
    :cond_195
    return-void

    .line 821
    :cond_196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->nextMonth()V

    .line 823
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v6}, Lcom/android/calendar/TwDayOfMonthCursor;->getYear()I

    move-result v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v4, v5, v6}, Landroid/text/format/Time;->set(III)V

    .line 825
    const/4 v4, 0x0

    move-object/from16 v0, v28

    iput-boolean v4, v0, Landroid/text/format/Time;->allDay:Z

    .line 829
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/YearView;->mColumnNum:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v30

    if-ge v0, v4, :cond_1ca

    .line 831
    add-int/lit8 v30, v30, 0x1

    .line 841
    :goto_1c4
    if-nez v30, :cond_3a

    .line 843
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_3a

    .line 835
    :cond_1ca
    const/16 v30, 0x0

    goto :goto_1c4
.end method

.method private drawBox(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;IIZ)V
    .registers 16
    .parameter "day"
    .parameter "row"
    .parameter "column"
    .parameter "canvas"
    .parameter "p"
    .parameter "x"
    .parameter "y"
    .parameter "isLandscape"

    .prologue
    .line 883
    iget-object v4, p0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4, p2, p3}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v3

    .line 887
    .local v3, withinCurrentMonth:Z
    iget v4, p0, Lcom/android/calendar/YearView;->mCellHeight:I

    mul-int/2addr v4, p2

    add-int/2addr p7, v4

    .line 891
    if-eqz p3, :cond_12

    .line 893
    add-int/lit8 v4, p3, -0x1

    iget v5, p0, Lcom/android/calendar/YearView;->mCellWidth:I

    mul-int/2addr v4, v5

    add-int/2addr p6, v4

    .line 903
    :cond_12
    if-eqz v3, :cond_5a

    .line 905
    iget v4, p0, Lcom/android/calendar/YearView;->mDayTextSize:I

    int-to-float v4, v4

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 915
    :goto_1a
    iget v4, p0, Lcom/android/calendar/YearView;->mMonthDayNumberColor:I

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 919
    if-nez v3, :cond_61

    .line 921
    iget v4, p0, Lcom/android/calendar/YearView;->mMonthOtherDayColor:I

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 963
    :goto_26
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 967
    iget v4, p0, Lcom/android/calendar/YearView;->mCellWidth:I

    add-int/2addr v4, p6

    iget v5, p0, Lcom/android/calendar/YearView;->mCellWidth:I

    const-string v6, "00"

    invoke-virtual {p5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 969
    .local v1, textX:I
    iget v4, p0, Lcom/android/calendar/YearView;->mCellHeight:I

    add-int/2addr v4, p7

    iget v5, p0, Lcom/android/calendar/YearView;->mCellHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/YearView;->mDayTextSize:I

    div-int/lit8 v5, v5, 0x3

    add-int v2, v4, v5

    .line 975
    .local v2, textY:I
    iget-object v4, p0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    invoke-virtual {v4, p2, p3}, Lcom/android/calendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {p4, v4, v5, v6, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 979
    return-void

    .line 909
    .end local v1           #textX:I
    .end local v2           #textY:I
    :cond_5a
    iget v4, p0, Lcom/android/calendar/YearView;->mOtherDayTextSize:I

    int-to-float v4, v4

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1a

    .line 925
    :cond_61
    iget-object v4, p0, Lcom/android/calendar/YearView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v4}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v4

    add-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, -0x1

    rem-int/lit8 v4, v4, 0x7

    add-int/lit8 v0, v4, 0x1

    .line 931
    .local v0, dayOfWeek:I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_76

    const/4 v4, 0x7

    if-ne v0, v4, :cond_7c

    .line 933
    :cond_76
    iget v4, p0, Lcom/android/calendar/YearView;->mMonthSaturdayNumberColor:I

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_26

    .line 937
    :cond_7c
    iget v4, p0, Lcom/android/calendar/YearView;->mMonthDayNumberColor:I

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_26
.end method

.method private drawingCalc(II)V
    .registers 6
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 615
    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_1d

    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p1, :cond_3b

    :cond_1d
    if-lez p1, :cond_3b

    if-lez p2, :cond_3b

    .line 619
    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2a

    .line 621
    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 625
    :cond_2a
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    .line 627
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/calendar/YearView;->mCanvas:Landroid/graphics/Canvas;

    .line 633
    :cond_3b
    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 635
    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 637
    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 639
    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 643
    return-void
.end method

.method private getPressedColumn(I)I
    .registers 5
    .parameter "x"

    .prologue
    .line 1039
    iget v0, p0, Lcom/android/calendar/YearView;->mYearFocusOutterLandMargin:I

    if-lt p1, v0, :cond_d

    invoke-virtual {p0}, Lcom/android/calendar/YearView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/YearView;->mYearFocusOutterLandMargin:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_f

    .line 1041
    :cond_d
    const/4 v0, -0x1

    .line 1043
    :goto_e
    return v0

    :cond_f
    iget v0, p0, Lcom/android/calendar/YearView;->mYearFocusOutterLandMargin:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/calendar/YearView;->mFocusWidth:I

    iget v2, p0, Lcom/android/calendar/YearView;->mYearFocusInnerLandMargin:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    goto :goto_e
.end method

.method private getPressedRow(I)I
    .registers 5
    .parameter "y"

    .prologue
    .line 1023
    iget v0, p0, Lcom/android/calendar/YearView;->mYearFocusOutterVertMargin:I

    if-lt p1, v0, :cond_11

    iget v0, p0, Lcom/android/calendar/YearView;->mYearFocusOutterVertMargin:I

    iget v1, p0, Lcom/android/calendar/YearView;->mFocusHeight:I

    iget v2, p0, Lcom/android/calendar/YearView;->mYearFocusInnerVertMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/YearView;->mRowNum:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    if-le p1, v0, :cond_13

    .line 1029
    :cond_11
    const/4 v0, -0x1

    .line 1031
    :goto_12
    return v0

    :cond_13
    iget v0, p0, Lcom/android/calendar/YearView;->mYearFocusOutterVertMargin:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/calendar/YearView;->mFocusHeight:I

    iget v2, p0, Lcom/android/calendar/YearView;->mYearFocusInnerVertMargin:I

    add-int/2addr v1, v2

    div-int/2addr v0, v1

    goto :goto_12
.end method


# virtual methods
.method public animationEnd()V
    .registers 2

    .prologue
    .line 479
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/YearView;->mScreenMode:I

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    .line 483
    invoke-virtual {p0}, Lcom/android/calendar/YearView;->invalidate()V

    .line 485
    return-void
.end method

.method public getPrevNextTime(I)Landroid/text/format/Time;
    .registers 8
    .parameter "offset"

    .prologue
    const/4 v4, 0x1

    .line 985
    iget-object v2, p0, Lcom/android/calendar/YearView;->mTempTime:Landroid/text/format/Time;

    .line 987
    .local v2, time:Landroid/text/format/Time;
    iget-object v3, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 989
    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 991
    iget v3, v2, Landroid/text/format/Time;->year:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/text/format/Time;->year:I

    .line 993
    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 997
    .local v0, millis:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_28

    .line 999
    const/16 v3, 0x1f

    const/16 v4, 0xb

    const/16 v5, 0x7f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/text/format/Time;->set(III)V

    .line 1001
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1007
    :cond_28
    return-object v2
.end method

.method public getSelectedDate()Landroid/text/format/Time;
    .registers 3

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/calendar/YearView;->mTempTime:Landroid/text/format/Time;

    .line 1071
    .local v0, time:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1075
    invoke-static {v0}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 1077
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1079
    return-object v0
.end method

.method public getSelectedMillis()J
    .registers 3

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/android/calendar/YearView;->getSelectedDate()Landroid/text/format/Time;

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

    .line 1095
    iget-object v3, p0, Lcom/android/calendar/YearView;->mTempTime:Landroid/text/format/Time;

    .line 1097
    .local v3, time:Landroid/text/format/Time;
    iget-object v6, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v3, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1101
    invoke-static {v3}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 1103
    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1107
    .local v0, millis:J
    iget-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    .line 1109
    .local v2, selectedDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    .line 1111
    .local v5, todayJulian:I
    if-ne v2, v5, :cond_42

    .line 1113
    new-instance v4, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    iget-object v6, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v4, today:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1117
    iget v6, v4, Landroid/text/format/Time;->hour:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/text/format/Time;->hour:I

    .line 1125
    .end local v4           #today:Landroid/text/format/Time;
    :goto_38
    iput v10, v3, Landroid/text/format/Time;->minute:I

    .line 1127
    iput v10, v3, Landroid/text/format/Time;->second:I

    .line 1129
    iput-boolean v10, v3, Landroid/text/format/Time;->allDay:Z

    .line 1131
    invoke-virtual {v3, v11}, Landroid/text/format/Time;->normalize(Z)J

    .line 1133
    return-object v3

    .line 1121
    :cond_42
    const/16 v6, 0x8

    iput v6, v3, Landroid/text/format/Time;->hour:I

    goto :goto_38
.end method

.method public getTime()Landroid/text/format/Time;
    .registers 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1167
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1171
    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 1173
    iget-object v0, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1175
    iput-object v1, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    .line 1179
    :cond_f
    iput-object v1, p0, Lcom/android/calendar/YearView;->mCanvas:Landroid/graphics/Canvas;

    .line 1181
    iput-object v1, p0, Lcom/android/calendar/YearView;->mPaint:Landroid/graphics/Paint;

    .line 1183
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 571
    iget-boolean v1, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    if-eqz v1, :cond_24

    .line 573
    iget-object v1, p0, Lcom/android/calendar/YearView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_14

    .line 575
    invoke-virtual {p0}, Lcom/android/calendar/YearView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/calendar/YearView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/calendar/YearView;->drawingCalc(II)V

    .line 581
    :cond_14
    iget-object v1, p0, Lcom/android/calendar/YearView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_22

    .line 585
    iget-object v0, p0, Lcom/android/calendar/YearView;->mCanvas:Landroid/graphics/Canvas;

    .line 589
    .local v0, bitmapCanvas:Landroid/graphics/Canvas;
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 591
    invoke-direct {p0, v0}, Lcom/android/calendar/YearView;->doDraw(Landroid/graphics/Canvas;)V

    .line 595
    .end local v0           #bitmapCanvas:Landroid/graphics/Canvas;
    :cond_22
    iput-boolean v3, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    .line 601
    :cond_24
    iget-object v1, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_32

    .line 603
    iget-object v1, p0, Lcom/android/calendar/YearView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/calendar/YearView;->mBitmapRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 607
    :cond_32
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 557
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/YearView;->drawingCalc(II)V

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    .line 561
    invoke-virtual {p0}, Lcom/android/calendar/YearView;->invalidate()V

    .line 563
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/calendar/YearView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1057
    const/4 v0, 0x1

    .line 1059
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public onWindowFocusChanged(Z)V
    .registers 6
    .parameter "hasWindowFocus"

    .prologue
    const/4 v3, 0x1

    .line 1193
    const-string v0, "YearView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    if-ne p1, v3, :cond_23

    .line 1201
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/YearView;->mScreenMode:I

    .line 1203
    iput-boolean v3, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    .line 1205
    invoke-virtual {p0}, Lcom/android/calendar/YearView;->invalidate()V

    .line 1209
    :cond_23
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 1151
    const-string v2, "screen_mode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/YearView;->mScreenMode:I

    .line 1153
    const-string v2, "focused_month"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1155
    .local v0, focusedMonth:I
    iget v2, p0, Lcom/android/calendar/YearView;->mColumnNum:I

    div-int v2, v0, v2

    iput v2, p0, Lcom/android/calendar/YearView;->mFocusedRow:I

    .line 1157
    if-nez v0, :cond_1a

    :goto_17
    iput v1, p0, Lcom/android/calendar/YearView;->mFocusedColumn:I

    .line 1159
    return-void

    .line 1157
    :cond_1a
    iget v1, p0, Lcom/android/calendar/YearView;->mColumnNum:I

    rem-int v1, v0, v1

    goto :goto_17
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 1141
    const-string v0, "screen_mode"

    iget v1, p0, Lcom/android/calendar/YearView;->mScreenMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1143
    const-string v0, "focused_month"

    iget v1, p0, Lcom/android/calendar/YearView;->mFocusedRow:I

    iget v2, p0, Lcom/android/calendar/YearView;->mColumnNum:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/YearView;->mFocusedColumn:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1145
    return-void
.end method

.method public setSelectedTime(Landroid/text/format/Time;)V
    .registers 8
    .parameter "time"

    .prologue
    const/4 v5, 0x1

    .line 527
    iget-object v0, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 529
    iget-object v0, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 531
    new-instance v0, Lcom/android/calendar/TwDayOfMonthCursor;

    iget v1, p1, Landroid/text/format/Time;->year:I

    iget v2, p1, Landroid/text/format/Time;->month:I

    iget v3, p1, Landroid/text/format/Time;->monthDay:I

    iget-object v4, p0, Lcom/android/calendar/YearView;->mParentActivity:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v4}, Lcom/android/calendar/MonthActivity;->getStartDay()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/TwDayOfMonthCursor;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/calendar/YearView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;

    .line 535
    iput-boolean v5, p0, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    .line 537
    invoke-virtual {p0}, Lcom/android/calendar/YearView;->invalidate()V

    .line 539
    return-void
.end method

.method public setTime(Landroid/text/format/Time;)V
    .registers 4
    .parameter "time"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 547
    iget-object v0, p0, Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 549
    return-void
.end method
