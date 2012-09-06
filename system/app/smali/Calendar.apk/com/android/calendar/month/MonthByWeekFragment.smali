.class public Lcom/android/calendar/month/MonthByWeekFragment;
.super Lcom/android/calendar/month/SimpleDayPickerFragment;
.source "MonthByWeekFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/month/MonthByWeekFragment$MonthGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/month/SimpleDayPickerFragment;",
        "Lcom/android/calendar/CalendarController$EventHandler;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field private static SPACING_WEEK_NUMBER:I

.field private static mScale:F

.field protected static mShowDetailsInMonth:Z


# instance fields
.field private mDesiredDay:Landroid/text/format/Time;

.field private mEventUri:Landroid/net/Uri;

.field protected mFirstLoadedJulianDay:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected mHideDeclined:Z

.field protected mIsMiniMonth:Z

.field protected mLastLoadedJulianDay:I

.field private mLoader:Landroid/content/CursorLoader;

.field protected mMinimumTwoMonthFlingVelocity:F

.field private volatile mShouldLoad:Z

.field private mTZUpdater:Ljava/lang/Runnable;

.field private mUpdateLoader:Ljava/lang/Runnable;

.field private mUserScrolled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowDetailsInMonth:Z

    .line 92
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/month/MonthByWeekFragment;->mScale:F

    .line 93
    const/16 v0, 0x13

    sput v0, Lcom/android/calendar/month/MonthByWeekFragment;->SPACING_WEEK_NUMBER:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/month/MonthByWeekFragment;-><init>(JZ)V

    .line 288
    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 5
    .parameter "initialTime"
    .parameter "isMiniMonth"

    .prologue
    .line 291
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/month/SimpleDayPickerFragment;-><init>(J)V

    .line 87
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUserScrolled:Z

    .line 95
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthByWeekFragment$1;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 113
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthByWeekFragment$2;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    .line 292
    iput-boolean p3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    .line 293
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/month/MonthByWeekFragment;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/month/MonthByWeekFragment;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/content/CursorLoader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/month/MonthByWeekFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->stopLoader()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/month/MonthByWeekFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private stopLoader()V
    .registers 4

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v1

    .line 175
    :try_start_3
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_23

    .line 177
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->stopLoading()V

    .line 178
    const-string v0, "MonthFragment"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 179
    const-string v0, "MonthFragment"

    const-string v2, "Stopped loader from loading"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_23
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method private updateUri()Landroid/net/Uri;
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 143
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/month/SimpleWeekView;

    .line 144
    .local v1, child:Lcom/android/calendar/month/SimpleWeekView;
    if-eqz v1, :cond_12

    .line 145
    invoke-virtual {v1}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v4

    .line 146
    .local v4, julianDay:I
    iput v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    .line 149
    .end local v4           #julianDay:I
    :cond_12
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTempTime:Landroid/text/format/Time;

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 150
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 151
    .local v5, start:J
    iget v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mNumWeeks:I

    add-int/lit8 v8, v8, 0x2

    mul-int/lit8 v8, v8, 0x7

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    .line 153
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTempTime:Landroid/text/format/Time;

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 154
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 157
    .local v2, end:J
    sget-object v7, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 158
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 159
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 160
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public doResumeUpdates()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstDayOfWeek:I

    .line 337
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowWeekNumber:Z

    .line 338
    iget-boolean v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    .line 339
    .local v6, prevHideDeclined:Z
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getHideDeclinedEvents(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    .line 340
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    if-eq v6, v0, :cond_2d

    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_2d

    .line 341
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateWhere()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 343
    :cond_2d
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDaysPerWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDaysPerWeek:I

    .line 344
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateHeader()V

    .line 345
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 346
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 347
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTodayUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 348
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/MonthByWeekFragment;->goTo(JZZZ)Z

    .line 349
    return-void
.end method

.method public eventsChanged()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_9

    .line 382
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->forceLoad()V

    .line 384
    :cond_9
    return-void
.end method

.method public getSupportedEventTypes()J
    .registers 3

    .prologue
    .line 388
    const-wide/16 v0, 0xa0

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .registers 16
    .parameter "event"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 393
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v10, 0x20

    cmp-long v0, v0, v10

    if-nez v0, :cond_76

    .line 394
    const/4 v3, 0x1

    .line 395
    .local v3, animate:Z
    iget v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDaysPerWeek:I

    iget v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mNumWeeks:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v10, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-wide v10, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    iget-wide v12, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v10, v11, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDaysPerWeek:I

    iget v10, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mNumWeeks:I

    mul-int/2addr v2, v10

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 399
    const/4 v3, 0x0

    .line 401
    :cond_40
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 402
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 403
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v10, 0x8

    and-long/2addr v0, v10

    cmp-long v0, v0, v8

    if-eqz v0, :cond_72

    move v6, v4

    .line 404
    .local v6, animateToday:Z
    :goto_56
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/MonthByWeekFragment;->goTo(JZZZ)Z

    move-result v7

    .line 405
    .local v7, delayAnimation:Z
    if-eqz v6, :cond_71

    .line 408
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/calendar/month/MonthByWeekFragment$3;

    invoke-direct {v4, p0}, Lcom/android/calendar/month/MonthByWeekFragment$3;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    if-eqz v7, :cond_74

    const-wide/16 v0, 0x3e8

    :goto_6e
    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    .end local v3           #animate:Z
    .end local v6           #animateToday:Z
    .end local v7           #delayAnimation:Z
    :cond_71
    :goto_71
    return-void

    .restart local v3       #animate:Z
    :cond_72
    move v6, v5

    .line 403
    goto :goto_56

    .restart local v6       #animateToday:Z
    .restart local v7       #delayAnimation:Z
    :cond_74
    move-wide v0, v8

    .line 408
    goto :goto_6e

    .line 416
    .end local v3           #animate:Z
    .end local v6           #animateToday:Z
    .end local v7           #delayAnimation:Z
    :cond_76
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x80

    cmp-long v0, v0, v4

    if-nez v0, :cond_71

    .line 417
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->eventsChanged()V

    goto :goto_71
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/android/calendar/month/SimpleDayPickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 282
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/CursorLoader;

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    .line 284
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6
    .parameter "activity"

    .prologue
    .line 224
    invoke-super {p0, p1}, Lcom/android/calendar/month/SimpleDayPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 225
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 226
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-eqz v2, :cond_13

    .line 227
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 230
    :cond_13
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/android/calendar/month/MonthByWeekFragment$MonthGestureListener;

    invoke-direct {v3, p0}, Lcom/android/calendar/month/MonthByWeekFragment$MonthGestureListener;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mGestureDetector:Landroid/view/GestureDetector;

    .line 231
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 232
    .local v1, viewConfig:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mMinimumTwoMonthFlingVelocity:F

    .line 234
    sget v2, Lcom/android/calendar/month/MonthByWeekFragment;->mScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_59

    .line 235
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 236
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/calendar/month/MonthByWeekFragment;->mScale:F

    .line 237
    const v2, 0x7f090002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/calendar/month/MonthByWeekFragment;->mShowDetailsInMonth:Z

    .line 238
    sget v2, Lcom/android/calendar/month/MonthByWeekFragment;->mScale:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_59

    .line 239
    sget v2, Lcom/android/calendar/month/MonthByWeekFragment;->SPACING_WEEK_NUMBER:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/month/MonthByWeekFragment;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/calendar/month/MonthByWeekFragment;->SPACING_WEEK_NUMBER:I

    .line 242
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_59
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 11
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 312
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v1, :cond_6

    .line 331
    :cond_5
    :goto_5
    return-object v0

    .line 316
    :cond_6
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v7

    .line 317
    :try_start_9
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v5, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    iget v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mNumWeeks:I

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    .line 320
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    .line 321
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateWhere()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, where:Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "startDay,startMinute,title"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v0, loader:Landroid/content/CursorLoader;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/CursorLoader;->setUpdateThrottle(J)V

    .line 327
    monitor-exit v7
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_65

    .line 328
    const-string v1, "MonthFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 329
    const-string v1, "MonthFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning new loader with uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 327
    .end local v0           #loader:Landroid/content/CursorLoader;
    .end local v4           #where:Ljava/lang/String;
    :catchall_65
    move-exception v1

    :try_start_66
    monitor-exit v7
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v1, :cond_18

    .line 271
    const v1, 0x7f04002b

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, v:Landroid/view/View;
    :goto_c
    const v1, 0x7f100094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 276
    return-object v0

    .line 273
    .end local v0           #v:Landroid/view/View;
    :cond_18
    const v1, 0x7f040027

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0       #v:Landroid/view/View;
    goto :goto_c
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 11
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v4

    .line 354
    :try_start_3
    const-string v3, "MonthFragment"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 355
    const-string v3, "MonthFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cursor entries for uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_34
    move-object v0, p1

    check-cast v0, Landroid/content/CursorLoader;

    move-object v1, v0

    .line 358
    .local v1, cLoader:Landroid/content/CursorLoader;
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    if-nez v3, :cond_42

    .line 359
    invoke-virtual {v1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    .line 361
    :cond_42
    invoke-virtual {v1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_50

    .line 364
    monitor-exit v4

    .line 372
    :goto_4f
    return-void

    .line 366
    :cond_50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    iget v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    invoke-static {v2, p2, v3, v5, v6}, Lcom/android/calendar/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V

    .line 369
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    check-cast v3, Lcom/android/calendar/month/MonthByWeekAdapter;

    iget v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    iget v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    iget v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/calendar/month/MonthByWeekAdapter;->setEvents(IILjava/util/ArrayList;)V

    .line 371
    monitor-exit v4

    goto :goto_4f

    .end local v1           #cLoader:Landroid/content/CursorLoader;
    .end local v2           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    :catchall_70
    move-exception v3

    monitor-exit v4
    :try_end_72
    .catchall {:try_start_3 .. :try_end_72} :catchall_70

    throw v3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/month/MonthByWeekFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 9
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v5, 0x1

    .line 454
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v1

    .line 455
    if-eqz p2, :cond_1c

    .line 456
    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    .line 457
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->stopLoader()V

    .line 458
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 464
    :goto_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_30

    .line 465
    if-ne p2, v5, :cond_16

    .line 466
    iput-boolean v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUserScrolled:Z

    .line 469
    :cond_16
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mScrollStateChangedRunnable:Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 470
    return-void

    .line 460
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    .line 462
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11

    .line 464
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_30

    throw v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 475
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected setMonthDisplayed(Landroid/text/format/Time;Z)V
    .registers 23
    .parameter "time"
    .parameter "updateHighlight"

    .prologue
    .line 423
    invoke-super/range {p0 .. p2}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;Z)V

    .line 424
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-nez v2, :cond_89

    .line 425
    const/16 v19, 0x0

    .line 426
    .local v19, useSelected:Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v3, :cond_8a

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/format/Time;->month:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    if-ne v2, v3, :cond_8a

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 429
    const/16 v19, 0x1

    .line 434
    :goto_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v1

    .line 435
    .local v1, controller:Lcom/android/calendar/CalendarController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_9d

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    const/16 v3, 0x1e

    iput v3, v2, Landroid/text/format/Time;->minute:I

    .line 440
    :goto_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v15

    .line 441
    .local v15, newTime:J
    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v2

    cmp-long v2, v15, v2

    if-eqz v2, :cond_75

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mUserScrolled:Z

    if-eqz v2, :cond_75

    .line 442
    if-eqz v19, :cond_a5

    const-wide/16 v17, 0x0

    .line 443
    .local v17, offset:J
    :goto_70
    add-long v2, v15, v17

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 445
    .end local v17           #offset:J
    :cond_75
    const-wide/16 v3, 0x400

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x34

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v14}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 449
    .end local v1           #controller:Lcom/android/calendar/CalendarController;
    .end local v15           #newTime:J
    .end local v19           #useSelected:Z
    :cond_89
    return-void

    .line 431
    .restart local v19       #useSelected:Z
    :cond_8a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    goto :goto_3b

    .line 438
    .restart local v1       #controller:Lcom/android/calendar/CalendarController;
    :cond_9d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x0

    iput v3, v2, Landroid/text/format/Time;->minute:I

    goto :goto_55

    .line 442
    .restart local v15       #newTime:J
    :cond_a5
    const-wide/32 v2, 0x240c8400

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mNumWeeks:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3

    div-long v17, v2, v4

    goto :goto_70
.end method

.method protected setUpAdapter()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 246
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstDayOfWeek:I

    .line 247
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowWeekNumber:Z

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 250
    .local v0, weekParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "num_weeks"

    iget v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mNumWeeks:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v4, "week_numbers"

    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowWeekNumber:Z

    if-eqz v1, :cond_87

    move v1, v2

    :goto_29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "week_start"

    iget v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstDayOfWeek:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v1, "mini_month"

    iget-boolean v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v4, :cond_42

    move v3, v2

    :cond_42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "selected_day"

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "days_per_week"

    iget v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDaysPerWeek:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-nez v1, :cond_89

    .line 258
    new-instance v1, Lcom/android/calendar/month/MonthByWeekAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/month/MonthByWeekAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    .line 259
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/calendar/month/SimpleWeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 263
    :goto_81
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->notifyDataSetChanged()V

    .line 264
    return-void

    :cond_87
    move v1, v3

    .line 251
    goto :goto_29

    .line 261
    :cond_89
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v1, v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->updateParams(Ljava/util/HashMap;)V

    goto :goto_81
.end method

.method protected setUpHeader()V
    .registers 6

    .prologue
    const/4 v4, 0x7

    .line 297
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v1, :cond_9

    .line 298
    invoke-super {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpHeader()V

    .line 307
    :cond_8
    return-void

    .line 302
    :cond_9
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDayLabels:[Ljava/lang/String;

    .line 303
    const/4 v0, 0x1

    .local v0, i:I
    :goto_e
    if-gt v0, v4, :cond_8

    .line 304
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x14

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method protected updateWhere()Ljava/lang/String;
    .registers 4

    .prologue
    .line 165
    const-string v0, "visible=1"

    .line 166
    .local v0, where:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/android/calendar/month/MonthByWeekFragment;->mShowDetailsInMonth:Z

    if-nez v1, :cond_1d

    .line 167
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND selfAttendeeStatus!=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_1d
    return-object v0
.end method
