.class public Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;
.super Landroid/view/View;
.source "MonthViewTab.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$DismissPopup;
    }
.end annotation


# static fields
.field private static BUSYBIT_RIGHT_MARGIN:I

.field private static BUSYBIT_TOP_BOTTOM_MARGIN:I

.field private static BUSYBIT_WIDTH:I

.field private static HORIZONTAL_FLING_THRESHOLD:I

.field private static HOUR_GAP:F

.field private static MONTH_DAY_GAP:I

.field private static WEEK_GAP:I

.field private static mDayMode:Z

.field private static mEventDays:[I

.field private static mRedrawScreen:Z

.field private static mScale:F


# instance fields
.field private MONTH_ROW_NUM:I

.field private mAllDayCounts:[I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mBusyBits:[[B

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

.field private mDayBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDayTextSize:I

.field private mDismissPopup:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$DismissPopup;

.field private mEventBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventGeometry:Lcom/sec/android/app/clockpackage/deskclock/EventGeometry;

.field private mEventIcon:Landroid/graphics/drawable/Drawable;

.field private final mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstColumnCellWidth:I

.field private mFirstJulianDay:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMonthDayNumberColor:I

.field mMonthHeight:I

.field private mMonthNotWithinDayColor:I

.field private mMonthOtherMonthDayNumberColor:I

.field private mMonthSaturdayNumberColor:I

.field private mMonthSelectedColor:I

.field private mMonthSundayNumberColor:I

.field private mMonthTodayNumberColor:I

.field private mMonthWeekNumColor:I

.field private mNavigator:Lcom/sec/android/app/clockpackage/deskclock/Navigator;

.field private mNumDays:I

.field private mOtherViewCalendar:Landroid/text/format/Time;

.field private mParentActivity:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPressedCol:I

.field private mPressedRow:I

.field private mQuickAddHeight:I

.field private mQuickAddSelect:Landroid/graphics/drawable/Drawable;

.field private mQuickAddTopMargin:I

.field private mRawBusyBits:[I

.field private mRect:Landroid/graphics/Rect;

.field private mResources:Landroid/content/res/Resources;

.field private mSavedTime:Landroid/text/format/Time;

.field private mSelectionMode:I

.field private mShowToast:Z

.field private mShowWeekNumbers:Z

.field private mStartDay:I

.field private mTempTime:Landroid/text/format/Time;

.field private mToday:Landroid/text/format/Time;

.field private mTodayBackground:Landroid/graphics/drawable/Drawable;

.field private mViewCalendar:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 68
    const/high16 v0, 0x3f80

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mScale:F

    .line 70
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->WEEK_GAP:I

    .line 71
    sput v1, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_DAY_GAP:I

    .line 72
    const/high16 v0, 0x3f00

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->HOUR_GAP:F

    .line 74
    const/16 v0, 0xa

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->BUSYBIT_WIDTH:I

    .line 75
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->BUSYBIT_RIGHT_MARGIN:I

    .line 76
    const/4 v0, 0x7

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->BUSYBIT_TOP_BOTTOM_MARGIN:I

    .line 78
    const/16 v0, 0x32

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->HORIZONTAL_FLING_THRESHOLD:I

    .line 115
    const/16 v0, 0x1f

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventDays:[I

    .line 150
    sput-boolean v1, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRedrawScreen:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;Lcom/sec/android/app/clockpackage/deskclock/Navigator;)V
    .registers 10
    .parameter "activity"
    .parameter "navigator"

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/16 v3, 0x1f

    const/4 v2, 0x0

    .line 223
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSavedTime:Landroid/text/format/Time;

    .line 96
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 100
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mTempTime:Landroid/text/format/Time;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRect:Landroid/graphics/Rect;

    .line 134
    const/4 v0, 0x6

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBusyBits:[[B

    .line 137
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRawBusyBits:[I

    .line 138
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mAllDayCounts:[I

    .line 145
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$DismissPopup;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$DismissPopup;-><init>(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mDismissPopup:Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$DismissPopup;

    .line 151
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmapRect:Landroid/graphics/Rect;

    .line 155
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mShowWeekNumbers:Z

    .line 156
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mShowToast:Z

    .line 168
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventBitmapCache:Landroid/util/SparseArray;

    .line 170
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mDayBitmapCache:Landroid/util/SparseArray;

    .line 183
    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    .line 189
    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mPressedRow:I

    .line 190
    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mPressedCol:I

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEvents:Ljava/util/ArrayList;

    .line 224
    sget v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mScale:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_c6

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mScale:F

    .line 226
    sget v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mScale:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_c6

    .line 227
    sget v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->WEEK_GAP:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->WEEK_GAP:I

    .line 228
    sget v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_DAY_GAP:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_DAY_GAP:I

    .line 229
    sget v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->HOUR_GAP:F

    sget v1, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->HOUR_GAP:F

    .line 231
    sget v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->BUSYBIT_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->BUSYBIT_WIDTH:I

    .line 232
    sget v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->BUSYBIT_RIGHT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->BUSYBIT_RIGHT_MARGIN:I

    .line 233
    sget v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->BUSYBIT_TOP_BOTTOM_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->BUSYBIT_TOP_BOTTOM_MARGIN:I

    .line 235
    sget v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->HORIZONTAL_FLING_THRESHOLD:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->HORIZONTAL_FLING_THRESHOLD:I

    .line 239
    :cond_c6
    const-string v0, "MonthViewTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MonthView mScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p1, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    .line 242
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mNavigator:Lcom/sec/android/app/clockpackage/deskclock/Navigator;

    .line 243
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/EventGeometry;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/deskclock/EventGeometry;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventGeometry:Lcom/sec/android/app/clockpackage/deskclock/EventGeometry;

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventGeometry:Lcom/sec/android/app/clockpackage/deskclock/EventGeometry;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/deskclock/EventGeometry;->setMinEventHeight(F)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventGeometry:Lcom/sec/android/app/clockpackage/deskclock/EventGeometry;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/deskclock/EventGeometry;->setHourGap(F)V

    .line 247
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->init(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)V

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mParentActivity:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    sput-boolean p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRedrawScreen:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->calEventDay()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)Landroid/widget/PopupWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private calEventDay()V
    .registers 12

    .prologue
    .line 570
    iget v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mNumDays:I

    .line 571
    .local v6, numDays:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEvents:Ljava/util/ArrayList;

    .line 572
    .local v3, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 573
    .local v7, numEvents:I
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mFirstJulianDay:I

    .line 575
    .local v0, date:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_b
    if-ge v4, v6, :cond_30

    .line 576
    sget-object v9, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventDays:[I

    const/4 v10, 0x0

    aput v10, v9, v4

    .line 577
    const/4 v5, 0x0

    .local v5, j:I
    :goto_13
    if-ge v5, v7, :cond_28

    .line 578
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/deskclock/Event;

    .line 580
    .local v2, event:Lcom/sec/android/app/clockpackage/deskclock/Event;
    iget v8, v2, Lcom/sec/android/app/clockpackage/deskclock/Event;->startDay:I

    .line 581
    .local v8, startDay:I
    iget v1, v2, Lcom/sec/android/app/clockpackage/deskclock/Event;->endDay:I

    .line 583
    .local v1, endDay:I
    if-gt v8, v0, :cond_2d

    if-lt v1, v0, :cond_2d

    .line 584
    sget-object v9, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventDays:[I

    const/4 v10, 0x1

    aput v10, v9, v4

    .line 588
    .end local v1           #endDay:I
    .end local v2           #event:Lcom/sec/android/app/clockpackage/deskclock/Event;
    .end local v8           #startDay:I
    :cond_28
    add-int/lit8 v0, v0, 0x1

    .line 575
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 577
    .restart local v1       #endDay:I
    .restart local v2       #event:Lcom/sec/android/app/clockpackage/deskclock/Event;
    .restart local v8       #startDay:I
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 590
    .end local v1           #endDay:I
    .end local v2           #event:Lcom/sec/android/app/clockpackage/deskclock/Event;
    .end local v5           #j:I
    .end local v8           #startDay:I
    :cond_30
    return-void
.end method

.method private clearBitmapCache()V
    .registers 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventBitmapCache:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->recycleAndClearBitmapCache(Landroid/util/SparseArray;)V

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mDayBitmapCache:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->recycleAndClearBitmapCache(Landroid/util/SparseArray;)V

    .line 843
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_52

    const/4 v8, 0x1

    .line 664
    .local v8, isLandscape:Z
    :goto_e
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 665
    .local v6, p:Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRect:Landroid/graphics/Rect;

    .line 666
    .local v7, r:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v10

    .line 669
    .local v10, columnDay1:I
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mFirstJulianDay:I

    sub-int/2addr v0, v10

    add-int/lit8 v1, v0, 0x1

    .line 671
    .local v1, day:I
    const/4 v2, 0x0

    .line 672
    .local v2, weekNum:I
    const/4 v9, 0x0

    .line 673
    .local v9, calendar:Ljava/util/Calendar;
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mShowWeekNumbers:Z

    if-eqz v0, :cond_35

    .line 674
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 675
    const/4 v0, 0x1

    if-ne v10, v0, :cond_54

    const/4 v12, 0x1

    .line 678
    .local v12, noPrevMonth:Z
    :goto_2f
    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v12, v9}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getWeekOfYear(IIZLjava/util/Calendar;)I

    move-result v2

    .line 682
    .end local v12           #noPrevMonth:Z
    :cond_35
    const-string v0, "MonthViewTab"

    const-string v5, "drawbox"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v3, 0x0

    .local v3, row:I
    :goto_3d
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_ROW_NUM:I

    if-ge v3, v0, :cond_d4

    .line 684
    const/4 v4, 0x0

    .local v4, column:I
    :goto_42
    const/16 v0, 0x8

    if-ge v4, v0, :cond_56

    move-object v0, p0

    move-object v5, p1

    .line 685
    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Z)V

    .line 686
    if-eqz v4, :cond_4f

    .line 687
    add-int/lit8 v1, v1, 0x1

    .line 684
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 662
    .end local v1           #day:I
    .end local v2           #weekNum:I
    .end local v3           #row:I
    .end local v4           #column:I
    .end local v6           #p:Landroid/graphics/Paint;
    .end local v7           #r:Landroid/graphics/Rect;
    .end local v8           #isLandscape:Z
    .end local v9           #calendar:Ljava/util/Calendar;
    .end local v10           #columnDay1:I
    :cond_52
    const/4 v8, 0x0

    goto :goto_e

    .line 675
    .restart local v1       #day:I
    .restart local v2       #weekNum:I
    .restart local v6       #p:Landroid/graphics/Paint;
    .restart local v7       #r:Landroid/graphics/Rect;
    .restart local v8       #isLandscape:Z
    .restart local v9       #calendar:Ljava/util/Calendar;
    .restart local v10       #columnDay1:I
    :cond_54
    const/4 v12, 0x0

    goto :goto_2f

    .line 691
    .restart local v3       #row:I
    .restart local v4       #column:I
    :cond_56
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mShowWeekNumbers:Z

    if-eqz v0, :cond_ce

    .line 692
    add-int/lit8 v2, v2, 0x1

    .line 693
    const/16 v0, 0x35

    if-lt v2, v0, :cond_ce

    .line 694
    const-string v0, "MonthViewTab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "draw weeknum day = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " mFirstJulianDay = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v13, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mFirstJulianDay:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mFirstJulianDay:I

    sub-int v0, v1, v0

    const/16 v5, 0x1f

    if-ge v0, v5, :cond_d2

    const/4 v11, 0x1

    .line 698
    .local v11, inCurrentMonth:Z
    :goto_8d
    add-int/lit8 v0, v3, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v11, v9}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getWeekOfYear(IIZLjava/util/Calendar;)I

    move-result v2

    .line 700
    const-string v0, "MonthViewTab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "draw weeknum inCurrentMonth = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const-string v0, "MonthViewTab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "draw weeknum row = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " weekNum = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .end local v11           #inCurrentMonth:Z
    :cond_ce
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3d

    .line 697
    :cond_d2
    const/4 v11, 0x0

    goto :goto_8d

    .line 709
    .end local v4           #column:I
    :cond_d4
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
    .line 904
    const/4 v13, 0x0

    .line 905
    .local v13, drawSelection:Z
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    if-eqz v5, :cond_13

    .line 906
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->isSelected(II)Z

    move-result v13

    .line 909
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v18

    .line 910
    .local v18, withinCurrentMonth:Z
    if-nez v18, :cond_22

    .line 1081
    :cond_21
    :goto_21
    return-void

    .line 913
    :cond_22
    const/4 v15, 0x0

    .line 914
    .local v15, isToday:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v11

    .line 915
    .local v11, dayOfBox:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mToday:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v5, :cond_5a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getYear()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mToday:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->year:I

    if-ne v5, v6, :cond_5a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getMonth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mToday:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->month:I

    if-ne v5, v6, :cond_5a

    if-eqz p4, :cond_5a

    .line 918
    const/4 v15, 0x1

    .line 926
    :cond_5a
    sget v5, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->WEEK_GAP:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCellHeight:I

    add-int/2addr v5, v6

    mul-int v20, p3, v5

    .line 929
    .local v20, y:I
    if-nez p4, :cond_1be

    .line 930
    const/16 v19, 0x0

    .line 935
    .local v19, x:I
    :goto_67
    move/from16 v0, v19

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 936
    move/from16 v0, v20

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 937
    if-nez p4, :cond_1d3

    .line 938
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mFirstColumnCellWidth:I

    add-int v5, v5, v19

    move-object/from16 v0, p7

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 942
    :goto_7f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCellHeight:I

    add-int v5, v5, v20

    move-object/from16 v0, p7

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 955
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mPressedRow:I

    move/from16 v0, p3

    if-ne v5, v0, :cond_a3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mPressedCol:I

    move/from16 v0, p4

    if-ne v5, v0, :cond_a3

    if-nez v13, :cond_a3

    .line 957
    const/4 v13, 0x1

    .line 959
    :cond_a3
    if-eqz v13, :cond_205

    .line 961
    if-eqz v18, :cond_b6

    if-eqz p4, :cond_b6

    .line 962
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 965
    :cond_b6
    if-eqz v18, :cond_1df

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02004f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 974
    .local v14, focusedDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v14, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 975
    const-string v5, "focusDrawable size"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "r.left = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "r.top = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "r.right = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "r.bottom = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    move-object/from16 v0, p5

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 993
    .end local v14           #focusedDrawable:Landroid/graphics/drawable/Drawable;
    :cond_121
    :goto_121
    if-eqz p4, :cond_21

    .line 994
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 995
    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 996
    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 997
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mDayTextSize:I

    int-to-float v5, v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 999
    if-eqz v13, :cond_23f

    .line 1000
    if-nez v18, :cond_218

    .line 1001
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthOtherMonthDayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1067
    :goto_14d
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1069
    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v16, v5, 0xa

    .line 1071
    .local v16, textX:I
    if-eqz p8, :cond_179

    .line 1072
    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x4

    sub-int v16, v5, v6

    .line 1073
    :cond_179
    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mDayTextSize:I

    div-int/lit8 v6, v6, 0x3

    add-int v17, v5, v6

    .line 1077
    .local v17, textY:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v7, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    move/from16 v0, v17

    int-to-float v7, v0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_21

    .line 932
    .end local v16           #textX:I
    .end local v17           #textY:I
    .end local v19           #x:I
    :cond_1be
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mFirstColumnCellWidth:I

    sget v6, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_DAY_GAP:I

    add-int/2addr v5, v6

    add-int/lit8 v6, p4, -0x1

    sget v7, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_DAY_GAP:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCellWidth:I

    add-int/2addr v7, v8

    mul-int/2addr v6, v7

    add-int v19, v5, v6

    .restart local v19       #x:I
    goto/16 :goto_67

    .line 940
    :cond_1d3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCellWidth:I

    add-int v5, v5, v19

    move-object/from16 v0, p7

    iput v5, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_7f

    .line 980
    :cond_1df
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthNotWithinDayColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 981
    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v5

    move-object/from16 v5, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_121

    .line 987
    :cond_205
    if-eqz v18, :cond_121

    if-eqz p4, :cond_121

    .line 988
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_121

    .line 1003
    :cond_218
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getStartDay()I

    move-result v5

    add-int v5, v5, p4

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, -0x1

    rem-int/lit8 v5, v5, 0x7

    add-int/lit8 v12, v5, 0x1

    .line 1004
    .local v12, dayOfWeek:I
    const/4 v5, 0x1

    if-ne v12, v5, :cond_234

    .line 1005
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthSundayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_14d

    .line 1007
    :cond_234
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthSelectedColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_14d

    .line 1018
    .end local v12           #dayOfWeek:I
    :cond_23f
    if-nez v18, :cond_24c

    .line 1019
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthOtherMonthDayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_14d

    .line 1020
    :cond_24c
    if-eqz v15, :cond_259

    .line 1021
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthTodayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_14d

    .line 1030
    :cond_259
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getStartDay()I

    move-result v5

    add-int v5, v5, p4

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, -0x1

    rem-int/lit8 v5, v5, 0x7

    add-int/lit8 v12, v5, 0x1

    .line 1050
    .restart local v12       #dayOfWeek:I
    const/4 v5, 0x1

    if-ne v12, v5, :cond_275

    .line 1051
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthSundayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_14d

    .line 1058
    :cond_275
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_14d
.end method

.method private drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 13
    .parameter "date"
    .parameter "canvas"
    .parameter "rect"
    .parameter "p"

    .prologue
    .line 1133
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventIcon:Landroid/graphics/drawable/Drawable;

    .line 1136
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventIcon:Landroid/graphics/drawable/Drawable;

    .line 1137
    .local v2, eventIcon:Landroid/graphics/drawable/Drawable;
    iget v4, p3, Landroid/graphics/Rect;->right:I

    .line 1138
    .local v4, right:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int v3, v4, v6

    .line 1139
    .local v3, left:I
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 1140
    .local v0, bottom:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v5, v0, v6

    .line 1143
    .local v5, top:I
    iget v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mFirstJulianDay:I

    sub-int v1, p1, v6

    .line 1145
    .local v1, day:I
    sget-object v6, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventDays:[I

    aget v6, v6, v1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_35

    .line 1146
    invoke-virtual {v2, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1148
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1149
    const-string v6, "MonthViewTab"

    const-string v7, "drawEvents~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_35
    return-void
.end method

.method private drawingCalc(I)V
    .registers 5
    .parameter "width"

    .prologue
    const/4 v2, 0x0

    .line 1323
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthHeight:I

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p1, :cond_41

    :cond_1f
    if-lez p1, :cond_41

    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthHeight:I

    if-lez v0, :cond_41

    .line 1326
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2e

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1329
    :cond_2e
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthHeight:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmap:Landroid/graphics/Bitmap;

    .line 1331
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCanvas:Landroid/graphics/Canvas;

    .line 1334
    :cond_41
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1335
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmapRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1336
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmapRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1337
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmapRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 1339
    return-void
.end method

.method private getWeekOfYear(IIZLjava/util/Calendar;)I
    .registers 11
    .parameter "row"
    .parameter "column"
    .parameter "isWithinCurrentMonth"
    .parameter "calendar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1155
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v3

    invoke-virtual {p4, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1156
    if-eqz p3, :cond_26

    .line 1157
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getMonth()I

    move-result v2

    invoke-virtual {p4, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1158
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getYear()I

    move-result v2

    invoke-virtual {p4, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 1183
    :goto_20
    const/4 v2, 0x3

    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    return v2

    .line 1160
    :cond_26
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getMonth()I

    move-result v0

    .line 1161
    .local v0, month:I
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getYear()I

    move-result v1

    .line 1162
    .local v1, year:I
    if-ge p1, v4, :cond_44

    .line 1164
    if-nez v0, :cond_41

    .line 1165
    add-int/lit8 v1, v1, -0x1

    .line 1166
    const/16 v0, 0xb

    .line 1179
    :goto_3a
    invoke-virtual {p4, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 1180
    invoke-virtual {p4, v5, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_20

    .line 1168
    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    .line 1172
    :cond_44
    const/16 v2, 0xb

    if-ne v0, v2, :cond_4c

    .line 1173
    add-int/lit8 v1, v1, 0x1

    .line 1174
    const/4 v0, 0x0

    goto :goto_3a

    .line 1176
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a
.end method

.method private init(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)V
    .registers 16
    .parameter "activity"

    .prologue
    const v13, 0x7f0800e7

    const/4 v12, 0x6

    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 259
    iget-boolean v6, p1, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->dayMode:Z

    sput-boolean v6, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mDayMode:Z

    .line 260
    invoke-virtual {p0, v11}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->setFocusable(Z)V

    .line 261
    invoke-virtual {p0, v11}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->setFocusableInTouchMode(Z)V

    .line 262
    invoke-virtual {p0, v11}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->setClickable(Z)V

    .line 263
    invoke-virtual {p0, p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 264
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mParentActivity:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    .line 265
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 267
    .local v3, now:J
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v6, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 268
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    iput v7, v6, Landroid/text/format/Time;->monthDay:I

    .line 269
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 270
    .local v1, millis:J
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v6, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mFirstJulianDay:I

    .line 271
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v6, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 274
    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    iget-object v7, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->year:I

    iget-object v8, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->month:I

    iget-object v9, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getStartDay()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;-><init>(IIII)V

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    .line 277
    iput v12, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_ROW_NUM:I

    .line 279
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v6}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    .line 280
    .local v0, maxDay:I
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_ROW_NUM:I

    .line 281
    iget v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_ROW_NUM:I

    if-eq v6, v12, :cond_71

    .line 282
    const/4 v6, 0x5

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_ROW_NUM:I

    .line 283
    :cond_71
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    new-instance v7, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->setOnCursorMoveListener(Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;)V

    .line 289
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mToday:Landroid/text/format/Time;

    .line 290
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mToday:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 292
    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mResources:Landroid/content/res/Resources;

    .line 294
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f02005a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mQuickAddSelect:Landroid/graphics/drawable/Drawable;

    .line 298
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 300
    .local v5, res:Landroid/content/res/Resources;
    const v6, 0x7f080047

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthWeekNumColor:I

    .line 301
    const v6, 0x7f080041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthOtherMonthDayNumberColor:I

    .line 303
    const v6, 0x7f08003d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthDayNumberColor:I

    .line 306
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020051

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventIcon:Landroid/graphics/drawable/Drawable;

    .line 308
    const v6, 0x7f08003f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthTodayNumberColor:I

    .line 310
    const v6, 0x7f08003e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthSelectedColor:I

    .line 312
    const v6, 0x7f020089

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    .line 315
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthTodayNumberColor:I

    .line 318
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthSelectedColor:I

    .line 320
    const v6, 0x7f0800de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthSundayNumberColor:I

    .line 322
    const v6, 0x7f080044

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthSaturdayNumberColor:I

    .line 325
    const v6, 0x7f080050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthNotWithinDayColor:I

    .line 328
    const v6, 0x7f0a0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCellHeight:I

    .line 329
    const v6, 0x7f0a0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCellWidth:I

    .line 333
    iput v11, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mFirstColumnCellWidth:I

    .line 337
    const v6, 0x7f0a0007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mDayTextSize:I

    .line 341
    const v6, 0x7f0a0006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mQuickAddHeight:I

    .line 342
    const v6, 0x7f0a0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mQuickAddTopMargin:I

    .line 348
    new-instance v6, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$2;

    invoke-direct {v8, p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$2;-><init>(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)V

    invoke-direct {v6, v7, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mGestureDetector:Landroid/view/GestureDetector;

    .line 495
    return-void
.end method

.method private recycleAndClearBitmapCache(Landroid/util/SparseArray;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 846
    .local p1, bitmapCache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 847
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_13

    .line 848
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 850
    :cond_13
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 852
    return-void
.end method


# virtual methods
.method getSelectedColumn()I
    .registers 2

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v0

    return v0
.end method

.method public getSelectedMillis()J
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1268
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mTempTime:Landroid/text/format/Time;

    .line 1269
    .local v0, time:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1271
    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 1272
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 1274
    iput v3, v0, Landroid/text/format/Time;->hour:I

    .line 1275
    iput v3, v0, Landroid/text/format/Time;->minute:I

    .line 1276
    iput v3, v0, Landroid/text/format/Time;->second:I

    .line 1277
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method getStartDay()I
    .registers 4

    .prologue
    .line 251
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mParentActivity:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 253
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_first_day_of_week"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mStartDay:I

    .line 255
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mStartDay:I

    return v1
.end method

.method public isSixWeeks()Z
    .registers 4

    .prologue
    .line 1614
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    .line 1615
    .local v0, maxDay:I
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_ROW_NUM:I

    .line 1616
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_ROW_NUM:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_17

    .line 1617
    const/4 v1, 0x1

    .line 1619
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 499
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 615
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 617
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->clearBitmapCache()V

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 621
    :cond_f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 637
    const-string v1, "MonthViewTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDraw = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRedrawScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    sget-boolean v1, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRedrawScreen:Z

    if-eqz v1, :cond_3a

    .line 639
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCanvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_2a

    .line 640
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->drawingCalc(I)V

    .line 644
    :cond_2a
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_3a

    .line 646
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCanvas:Landroid/graphics/Canvas;

    .line 648
    .local v0, bitmapCanvas:Landroid/graphics/Canvas;
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 649
    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->doDraw(Landroid/graphics/Canvas;)V

    .line 651
    sput-boolean v4, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRedrawScreen:Z

    .line 656
    .end local v0           #bitmapCanvas:Landroid/graphics/Canvas;
    :cond_3a
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_48

    .line 657
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mBitmapRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 659
    :cond_48
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 1471
    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    if-nez v3, :cond_30

    .line 1472
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

    .line 1479
    :cond_1a
    iput v4, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    .line 1480
    sput-boolean v2, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRedrawScreen:Z

    .line 1481
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->invalidate()V

    move v1, v2

    .line 1565
    :cond_22
    :goto_22
    return v1

    .line 1483
    :cond_23
    const/16 v3, 0x17

    if-ne p1, v3, :cond_30

    .line 1486
    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    .line 1487
    sput-boolean v2, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRedrawScreen:Z

    .line 1488
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->invalidate()V

    move v1, v2

    .line 1489
    goto :goto_22

    .line 1493
    :cond_30
    iput v4, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    .line 1494
    const/4 v1, 0x0

    .line 1495
    .local v1, redraw:Z
    const/4 v0, 0x0

    .line 1497
    .local v0, other:Landroid/text/format/Time;
    packed-switch p1, :pswitch_data_dc

    .line 1557
    :goto_37
    if-eqz v0, :cond_d3

    .line 1558
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1559
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mNavigator:Lcom/sec/android/app/clockpackage/deskclock/Navigator;

    invoke-interface {v3, v0, v2}, Lcom/sec/android/app/clockpackage/deskclock/Navigator;->goTo(Landroid/text/format/Time;Z)V

    goto :goto_22

    .line 1503
    :pswitch_42
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->up()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 1504
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1505
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1506
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    .line 1507
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1510
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->down()Z

    .line 1512
    :cond_64
    const/4 v1, 0x1

    .line 1513
    goto :goto_37

    .line 1516
    :pswitch_66
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->down()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 1517
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1518
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1519
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    .line 1520
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1523
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->up()Z

    .line 1525
    :cond_88
    const/4 v1, 0x1

    .line 1526
    goto :goto_37

    .line 1529
    :pswitch_8a
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->left()Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 1530
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1531
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1532
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    .line 1533
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1536
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->right()Z

    .line 1538
    :cond_ac
    const/4 v1, 0x1

    .line 1539
    goto :goto_37

    .line 1542
    :pswitch_ae
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->right()Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 1543
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1544
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1545
    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Landroid/text/format/Time;->month:I

    .line 1546
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 1549
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->left()Z

    .line 1551
    :cond_d0
    const/4 v1, 0x1

    .line 1552
    goto/16 :goto_37

    .line 1560
    :cond_d3
    if-eqz v1, :cond_22

    .line 1561
    sput-boolean v2, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRedrawScreen:Z

    .line 1562
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->invalidate()V

    goto/16 :goto_22

    .line 1497
    :pswitch_data_dc
    .packed-switch 0x13
        :pswitch_42
        :pswitch_66
        :pswitch_8a
        :pswitch_ae
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 1438
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1440
    .local v0, duration:J
    packed-switch p1, :pswitch_data_3a

    .line 1466
    :cond_e
    :goto_e
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1442
    :pswitch_13
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    if-eqz v2, :cond_e

    .line 1447
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    if-ne v2, v6, :cond_24

    .line 1452
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    .line 1453
    sput-boolean v6, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRedrawScreen:Z

    .line 1454
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->invalidate()V

    goto :goto_e

    .line 1459
    :cond_24
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_e

    .line 1460
    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    .line 1461
    sput-boolean v6, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRedrawScreen:Z

    .line 1462
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->invalidate()V

    .line 1463
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->performLongClick()Z

    goto :goto_e

    .line 1440
    nop

    :pswitch_data_3a
    .packed-switch 0x17
        :pswitch_13
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 630
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 631
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->setMeasuredDimension(II)V

    .line 633
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->drawingCalc(I)V

    .line 607
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->clearBitmapCache()V

    .line 608
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRedrawScreen:Z

    .line 609
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->invalidate()V

    .line 611
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 714
    .local v0, action:I
    const-string v2, "MonthViewTab"

    const-string v3, "onTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    packed-switch v0, :pswitch_data_3c

    .line 760
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 766
    :cond_18
    :goto_18
    return v1

    .line 717
    :pswitch_19
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 766
    :cond_21
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_18

    .line 723
    :pswitch_26
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_18

    .line 731
    iput v4, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mPressedRow:I

    .line 732
    iput v4, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mPressedCol:I

    .line 734
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    if-eq v2, v1, :cond_18

    .line 753
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_18

    .line 715
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_19
    .end packed-switch
.end method

.method reloadEvents2()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 542
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 543
    .local v7, monthStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 544
    iput v5, v7, Landroid/text/format/Time;->monthDay:I

    .line 545
    iput v1, v7, Landroid/text/format/Time;->hour:I

    .line 546
    iput v1, v7, Landroid/text/format/Time;->minute:I

    .line 547
    iput v1, v7, Landroid/text/format/Time;->second:I

    .line 548
    invoke-virtual {v7, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 549
    .local v3, millis:J
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mNumDays:I

    .line 551
    const-string v0, "MonthViewTab"

    const-string v1, "reloadEvent2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/Event;>;"
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mEventLoader:Lcom/sec/android/app/clockpackage/deskclock/EventLoader;

    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mNumDays:I

    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$4;

    invoke-direct {v5, p0, v2}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$4;-><init>(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/clockpackage/deskclock/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 567
    return-void
.end method

.method setSelectedTime(Landroid/text/format/Time;)V
    .registers 12
    .parameter "time"

    .prologue
    const/4 v4, 0x1

    .line 1189
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSavedTime:Landroid/text/format/Time;

    invoke-virtual {v5, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1191
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v5, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1192
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    iput v4, v5, Landroid/text/format/Time;->monthDay:I

    .line 1193
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v5, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 1194
    .local v2, millis:J
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v5, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mFirstJulianDay:I

    .line 1195
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v5, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1200
    new-instance v5, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    iget v6, p1, Landroid/text/format/Time;->year:I

    iget v7, p1, Landroid/text/format/Time;->month:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getStartDay()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;-><init>(IIII)V

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    .line 1202
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    iget v6, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->setSelectedDayOfMonth(I)V

    .line 1204
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v4, :cond_89

    move v0, v4

    .line 1205
    .local v0, isPortrait:Z
    :goto_49
    if-eqz v0, :cond_73

    .line 1206
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v1

    .line 1207
    .local v1, maxDay:I
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    invoke-virtual {v5, v1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_ROW_NUM:I

    .line 1208
    iget v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_ROW_NUM:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_63

    .line 1209
    const/4 v5, 0x5

    iput v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->MONTH_ROW_NUM:I

    .line 1210
    :cond_63
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mResources:Landroid/content/res/Resources;

    .line 1211
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mCursor:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;

    new-instance v6, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab$5;-><init>(Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->setOnCursorMoveListener(Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;)V

    .line 1219
    .end local v1           #maxDay:I
    :cond_73
    iput v4, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mSelectionMode:I

    .line 1222
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mMonthHeight:I

    .line 1225
    sput-boolean v4, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->mRedrawScreen:Z

    .line 1226
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/MonthViewTab;->invalidate()V

    .line 1227
    return-void

    .line 1204
    .end local v0           #isPortrait:Z
    :cond_89
    const/4 v0, 0x0

    goto :goto_49
.end method
