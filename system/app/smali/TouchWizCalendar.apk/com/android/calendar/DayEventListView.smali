.class public Lcom/android/calendar/DayEventListView;
.super Landroid/widget/ListView;
.source "DayEventListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private firstPos:I

.field mBaseDate:Landroid/text/format/Time;

.field protected mCalendarApp:Lcom/android/calendar/CalendarApplication;

.field private mCancelCallback:Ljava/lang/Runnable;

.field private mDateRange:Ljava/lang/String;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDetailedView:Ljava/lang/String;

.field private mEventAdapter:Lcom/android/calendar/DayEventListAdapter;

.field protected final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private mEventList:Lcom/android/calendar/DayEventListView;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

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

.field private mFirstHour:I

.field private mLastReloadMillis:J

.field protected mNumDays:I

.field private mOnFlingCalled:Z

.field protected mParentActivity:Lcom/android/calendar/DayEventListActivity;

.field protected final mResources:Landroid/content/res/Resources;

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

.field mSelectionAllDay:Z

.field private mSelectionDay:I

.field private mSelectionHour:I

.field private mTitleTextViewLeft:Landroid/widget/TextView;

.field private mTitleTextViewRight:Landroid/widget/TextView;

.field private mTouchMode:I

.field private mViewStartX:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/DayEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    sget-object v0, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mDetailedView:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayEventListView;->mNumDays:I

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/DayEventListView;->mFirstHour:I

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvents:Ljava/util/ArrayList;

    .line 150
    iput v2, p0, Lcom/android/calendar/DayEventListView;->mTouchMode:I

    .line 152
    iput-boolean v2, p0, Lcom/android/calendar/DayEventListView;->mScrolling:Z

    .line 163
    iput v2, p0, Lcom/android/calendar/DayEventListView;->firstPos:I

    .line 433
    new-instance v0, Lcom/android/calendar/DayEventListView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayEventListView$1;-><init>(Lcom/android/calendar/DayEventListView;)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mCancelCallback:Ljava/lang/Runnable;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mResources:Landroid/content/res/Resources;

    move-object v0, p1

    .line 183
    check-cast v0, Lcom/android/calendar/DayEventListActivity;

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    .line 184
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    iget-object v0, v0, Lcom/android/calendar/DayEventListActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 185
    new-instance v0, Lcom/android/calendar/EventGeometry;

    invoke-direct {v0}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 186
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarApplication;

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mCalendarApp:Lcom/android/calendar/CalendarApplication;

    .line 187
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    iget-object v1, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/calendar/DayEventListView;->init(Landroid/content/Context;)V

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/DayEventListView;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/DayEventListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/DayEventListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/calendar/DayEventListView;->recalc()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/DayEventListView;)Lcom/android/calendar/DayEventListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventAdapter:Lcom/android/calendar/DayEventListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/DayEventListView;)Lcom/android/calendar/DayEventListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventList:Lcom/android/calendar/DayEventListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/DayEventListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->layoutChildren()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/DayEventListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/calendar/DayEventListView;->firstPos:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 198
    invoke-virtual {p0, v2}, Lcom/android/calendar/DayEventListView;->setFocusable(Z)V

    .line 202
    invoke-virtual {p0, v2}, Lcom/android/calendar/DayEventListView;->setFocusableInTouchMode(Z)V

    .line 203
    invoke-virtual {p0, v2}, Lcom/android/calendar/DayEventListView;->setClickable(Z)V

    .line 204
    invoke-virtual {p0, v3}, Lcom/android/calendar/DayEventListView;->setFadingEdgeLength(I)V

    .line 205
    invoke-virtual {p0, v3}, Lcom/android/calendar/DayEventListView;->setCacheColorHint(I)V

    .line 206
    invoke-virtual {p0, p0}, Lcom/android/calendar/DayEventListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    invoke-virtual {p0, p0}, Lcom/android/calendar/DayEventListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 209
    new-instance v2, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 211
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 214
    iget-object v2, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    const v3, 0x7f0f0032

    invoke-virtual {v2, v3}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    .line 216
    iget-object v2, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    const v3, 0x7f0f0033

    invoke-virtual {v2, v3}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    .line 218
    iput-object p0, p0, Lcom/android/calendar/DayEventListView;->mEventList:Lcom/android/calendar/DayEventListView;

    .line 219
    new-instance v2, Lcom/android/calendar/DayEventListAdapter;

    iget-object v3, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mEventList:Lcom/android/calendar/DayEventListView;

    invoke-direct {v2, v3, v4}, Lcom/android/calendar/DayEventListAdapter;-><init>(Landroid/content/Context;Lcom/android/calendar/DayEventListView;)V

    iput-object v2, p0, Lcom/android/calendar/DayEventListView;->mEventAdapter:Lcom/android/calendar/DayEventListAdapter;

    .line 220
    iget-object v2, p0, Lcom/android/calendar/DayEventListView;->mEventList:Lcom/android/calendar/DayEventListView;

    iget-object v3, p0, Lcom/android/calendar/DayEventListView;->mEventAdapter:Lcom/android/calendar/DayEventListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/calendar/DayEventListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    return-void
.end method

.method private recalc()V
    .registers 13

    .prologue
    const v11, 0x7f0f0034

    const v10, 0x7f0f0030

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 341
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 342
    .local v4, start:J
    move-wide v1, v4

    .line 358
    .local v1, end:J
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_format"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, dateFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, format:Ljava/lang/String;
    if-eqz v0, :cond_3b

    .line 362
    const-string v6, "MM-dd-yyyy"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 363
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 369
    :cond_3b
    :goto_3b
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/calendar/DayEventListView;->mDateRange:Ljava/lang/String;

    .line 372
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v6, v10}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 373
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v6, v11}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 374
    iget v6, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    const v7, 0x24dc87

    if-gt v6, v7, :cond_83

    .line 375
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v6, v10}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 389
    :cond_6e
    :goto_6e
    return-void

    .line 364
    :cond_6f
    const-string v6, "yyyy-MM-dd"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 365
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3b

    .line 376
    :cond_83
    iget v6, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    const v7, 0x259d23

    if-lt v6, v7, :cond_6e

    .line 377
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v6, v11}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_6e
.end method


# virtual methods
.method public checkSwitchView(I)Z
    .registers 11
    .parameter "deltaX"

    .prologue
    const/4 v6, 0x1

    .line 678
    iget-object v7, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v7}, Lcom/android/calendar/DayEventListActivity;->getNextView()Landroid/widget/FrameLayout;

    move-result-object v5

    .line 679
    .local v5, view:Landroid/view/View;
    const v7, 0x7f0f0036

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/DayEventListView;

    .line 680
    .local v2, list:Lcom/android/calendar/DayEventListView;
    iget-object v0, v2, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    .line 682
    .local v0, date:Landroid/text/format/Time;
    iget-object v7, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 683
    .local v3, millis:J
    iget-wide v7, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v7, v8}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v1

    .line 685
    .local v1, julian:I
    const v7, 0x24dc87

    if-gt v1, v7, :cond_25

    if-gtz p1, :cond_2c

    :cond_25
    const v7, 0x259d23

    if-lt v1, v7, :cond_2d

    if-gtz p1, :cond_2d

    .line 687
    :cond_2c
    const/4 v6, 0x0

    .line 690
    :cond_2d
    return v6
.end method

.method clearCachedEvents()V
    .registers 3

    .prologue
    .line 430
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/DayEventListView;->mLastReloadMillis:J

    .line 431
    return-void
.end method

.method doDown(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 541
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayEventListView;->mTouchMode:I

    .line 542
    iput v1, p0, Lcom/android/calendar/DayEventListView;->mViewStartX:I

    .line 543
    iput-boolean v1, p0, Lcom/android/calendar/DayEventListView;->mOnFlingCalled:Z

    .line 544
    return-void
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

    .line 629
    iput v7, p0, Lcom/android/calendar/DayEventListView;->mTouchMode:I

    .line 630
    iput-boolean v8, p0, Lcom/android/calendar/DayEventListView;->mOnFlingCalled:Z

    .line 633
    if-eqz p1, :cond_a

    if-nez p2, :cond_b

    .line 675
    :cond_a
    :goto_a
    return-void

    .line 635
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int v0, v5, v6

    .line 636
    .local v0, deltaX:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 637
    .local v2, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int v1, v5, v6

    .line 638
    .local v1, deltaY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 643
    .local v3, distanceY:I
    sget v5, Lcom/android/calendar/Utils;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v2, v5, :cond_a

    if-le v2, v3, :cond_a

    .line 644
    invoke-virtual {p0, v0}, Lcom/android/calendar/DayEventListView;->checkSwitchView(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 646
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 647
    .local v4, time:Landroid/text/format/Time;
    if-lez v0, :cond_54

    .line 648
    iget-object v5, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v5, v7}, Lcom/android/calendar/DayEventListActivity;->getNextDay(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 651
    :goto_4e
    iget-object v5, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v5, v4, v8, v7}, Lcom/android/calendar/DayEventListActivity;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_a

    .line 650
    :cond_54
    iget-object v5, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v5, v8}, Lcom/android/calendar/DayEventListActivity;->getNextDay(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    goto :goto_4e
.end method

.method doLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "ev"

    .prologue
    .line 550
    return-void
.end method

.method doSingleTapUp(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "ev"

    .prologue
    .line 547
    return-void
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
    .line 224
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNextDay(Z)Landroid/text/format/Time;
    .registers 5
    .parameter "isNext"

    .prologue
    .line 694
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 695
    .local v0, time:Landroid/text/format/Time;
    if-eqz p1, :cond_15

    .line 696
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Lcom/android/calendar/DayEventListView;->mNumDays:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 700
    :goto_10
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 703
    return-object v0

    .line 698
    :cond_15
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Lcom/android/calendar/DayEventListView;->mNumDays:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    goto :goto_10
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .registers 3

    .prologue
    .line 325
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 326
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 327
    iget v1, p0, Lcom/android/calendar/DayEventListView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 332
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 333
    return-object v0
.end method

.method getSelectedTime()Landroid/text/format/Time;
    .registers 3

    .prologue
    .line 244
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 245
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 246
    iget v1, p0, Lcom/android/calendar/DayEventListView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 251
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 252
    return-object v0
.end method

.method getSelectedTimeInMillis()J
    .registers 4

    .prologue
    .line 233
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 234
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 235
    iget v1, p0, Lcom/android/calendar/DayEventListView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 240
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectionDay()I
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 740
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v6, -0x1

    cmp-long v6, p4, v6

    if-eqz v6, :cond_5a

    iget-boolean v6, p0, Lcom/android/calendar/DayEventListView;->mScrolling:Z

    if-nez v6, :cond_5a

    .line 741
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 742
    .local v0, event:Lcom/android/calendar/Event;
    if-eqz v0, :cond_5a

    .line 743
    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, v0, Lcom/android/calendar/Event;->id:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 744
    .local v4, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 745
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "beginTime"

    iget-wide v7, v0, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 746
    const-string v6, "endTime"

    iget-wide v7, v0, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 747
    new-instance v5, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 748
    .local v5, weekStart:Landroid/text/format/Time;
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 749
    invoke-static {v5}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 750
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 751
    .local v2, millis:J
    const-string v6, "event_day_time"

    invoke-virtual {v1, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 752
    const-string v6, "eventlist_type"

    const/4 v7, 0x3

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 753
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-virtual {v6, v1}, Lcom/android/calendar/DayEventListActivity;->startActivity(Landroid/content/Intent;)V

    .line 756
    .end local v0           #event:Lcom/android/calendar/Event;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #millis:J
    .end local v4           #uri:Landroid/net/Uri;
    .end local v5           #weekStart:Landroid/text/format/Time;
    :cond_5a
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 760
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 763
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 764
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 398
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 399
    iput p1, p0, Lcom/android/calendar/DayEventListView;->mViewWidth:I

    .line 400
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 769
    .local v0, action:I
    iget-object v1, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    iget-object v1, v1, Lcom/android/calendar/DayEventListActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 770
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method reloadEvents(I)V
    .registers 11
    .parameter "fp"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 441
    iput p1, p0, Lcom/android/calendar/DayEventListView;->firstPos:I

    .line 444
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    if-nez v0, :cond_9

    .line 506
    :goto_8
    return-void

    .line 448
    :cond_9
    iput-object v5, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 449
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 452
    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 453
    .local v8, weekStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 454
    invoke-static {v8}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 458
    invoke-virtual {v8, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 469
    .local v3, millis:J
    iput-wide v3, p0, Lcom/android/calendar/DayEventListView;->mLastReloadMillis:J

    .line 471
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 472
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventAdapter:Lcom/android/calendar/DayEventListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListAdapter;->notifyDataSetChanged()V

    .line 473
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventList:Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->layoutChildren()V

    .line 476
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-wide v5, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v7

    .line 478
    .local v7, julianDay:I
    iget-object v0, p0, Lcom/android/calendar/DayEventListView;->mEventLoader:Lcom/android/calendar/EventLoader;

    new-instance v5, Lcom/android/calendar/DayEventListView$2;

    invoke-direct {v5, p0, v2, v7}, Lcom/android/calendar/DayEventListView$2;-><init>(Lcom/android/calendar/DayEventListView;Ljava/util/ArrayList;I)V

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .registers 12
    .parameter "time"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 299
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 300
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->hour:I

    iput v4, p0, Lcom/android/calendar/DayEventListView;->mSelectionHour:I

    .line 301
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 302
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 303
    .local v1, millis:J
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    .line 304
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 307
    iput v8, p0, Lcom/android/calendar/DayEventListView;->mFirstHour:I

    .line 308
    invoke-direct {p0}, Lcom/android/calendar/DayEventListView;->recalc()V

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v6, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v4

    iget v5, p0, Lcom/android/calendar/DayEventListView;->mSelectionDay:I

    if-ne v4, v5, :cond_68

    .line 310
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f080027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 311
    .local v0, color:I
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    .end local v0           #color:I
    :goto_4d
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mDateRange:Ljava/lang/String;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, titlesplit:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    aget-object v5, v3, v9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->invalidate()V

    .line 322
    return-void

    .line 314
    .end local v3           #titlesplit:[Ljava/lang/String;
    :cond_68
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    iget-object v4, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4d
.end method

.method public updateTitle()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 265
    const-string v6, "calendarTest"

    const-string v7, "updateTitle"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v6, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 268
    .local v3, start:J
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "date_format"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, dateFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, format:Ljava/lang/String;
    if-eqz v1, :cond_3b

    .line 272
    const-string v6, "MM-dd-yyyy"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 273
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    :cond_3b
    :goto_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v8, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v6

    iget-object v7, p0, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v7, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v7, v8}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v7

    if-ne v6, v7, :cond_a4

    .line 281
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f080027

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 282
    .local v0, color:I
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 283
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    .end local v0           #color:I
    :goto_64
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mParentActivity:Lcom/android/calendar/DayEventListActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v6}, Lcom/android/calendar/TwDateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/calendar/DayEventListView;->mDateRange:Ljava/lang/String;

    .line 291
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mDateRange:Ljava/lang/String;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, titlesplit:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    aget-object v7, v5, v11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->invalidate()V

    .line 296
    return-void

    .line 274
    .end local v5           #titlesplit:[Ljava/lang/String;
    :cond_90
    const-string v6, "yyyy-MM-dd"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 275
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00e4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3b

    .line 285
    :cond_a4
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    iget-object v6, p0, Lcom/android/calendar/DayEventListView;->mTitleTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_64
.end method
