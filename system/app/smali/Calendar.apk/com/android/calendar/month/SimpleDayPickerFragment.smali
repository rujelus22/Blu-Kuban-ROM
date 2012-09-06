.class public Lcom/android/calendar/month/SimpleDayPickerFragment;
.super Landroid/app/ListFragment;
.source "SimpleDayPickerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;
    }
.end annotation


# static fields
.field protected static LIST_TOP_OFFSET:I

.field private static mScale:F


# instance fields
.field protected BOTTOM_BUFFER:I

.field protected WEEK_MIN_VISIBLE_HEIGHT:I

.field protected mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentMonthDisplayed:I

.field protected mCurrentScrollState:I

.field protected mDayLabels:[Ljava/lang/String;

.field protected mDayNameColor:I

.field protected mDayNamesHeader:Landroid/view/ViewGroup;

.field protected mDaysPerWeek:I

.field protected mFirstDayOfMonth:Landroid/text/format/Time;

.field protected mFirstDayOfWeek:I

.field protected mFirstVisibleDay:Landroid/text/format/Time;

.field protected mFriction:F

.field protected mHandler:Landroid/os/Handler;

.field protected mIsScrollingUp:Z

.field protected mListView:Landroid/widget/ListView;

.field protected mMinimumFlingVelocity:F

.field protected mMonthName:Landroid/widget/TextView;

.field protected mNumWeeks:I

.field protected mObserver:Landroid/database/DataSetObserver;

.field protected mPreviousScrollPosition:J

.field protected mPreviousScrollState:I

.field protected mSaturdayColor:I

.field protected mScrollStateChangedRunnable:Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

.field protected mSelectedDay:Landroid/text/format/Time;

.field protected mShowWeekNumber:Z

.field protected mSundayColor:I

.field protected mTempTime:Landroid/text/format/Time;

.field protected mTodayUpdater:Ljava/lang/Runnable;

.field protected mVelocityScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    const/4 v0, -0x1

    sput v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    .line 103
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    return-void
.end method

.method public constructor <init>(J)V
    .registers 9
    .parameter "initialTime"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 73
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->WEEK_MIN_VISIBLE_HEIGHT:I

    .line 74
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->BOTTOM_BUFFER:I

    .line 75
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSaturdayColor:I

    .line 76
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSundayColor:I

    .line 77
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNameColor:I

    .line 80
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    .line 81
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    .line 82
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    .line 85
    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFriction:F

    .line 86
    const v0, 0x3eaa7efa

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mVelocityScale:F

    .line 94
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    .line 101
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    .line 107
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    .line 109
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    .line 119
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    .line 121
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    .line 123
    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentScrollState:I

    .line 126
    new-instance v0, Lcom/android/calendar/month/SimpleDayPickerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/SimpleDayPickerFragment$1;-><init>(Lcom/android/calendar/month/SimpleDayPickerFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTodayUpdater:Ljava/lang/Runnable;

    .line 147
    new-instance v0, Lcom/android/calendar/month/SimpleDayPickerFragment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/SimpleDayPickerFragment$2;-><init>(Lcom/android/calendar/month/SimpleDayPickerFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mObserver:Landroid/database/DataSetObserver;

    .line 583
    new-instance v0, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;-><init>(Lcom/android/calendar/month/SimpleDayPickerFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScrollStateChangedRunnable:Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

    move-object v0, p0

    move-wide v1, p1

    move v5, v4

    .line 158
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)Z

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    .line 160
    return-void
.end method

.method private updateMonthHighlight(Landroid/widget/AbsListView;)V
    .registers 11
    .parameter "view"

    .prologue
    const/16 v8, 0xb

    const/4 v5, 0x0

    .line 507
    invoke-virtual {p1, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    .line 508
    .local v0, child:Lcom/android/calendar/month/SimpleWeekView;
    if-nez v0, :cond_c

    .line 554
    :cond_b
    :goto_b
    return-void

    .line 513
    :cond_c
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getBottom()I

    move-result v6

    iget v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->WEEK_MIN_VISIBLE_HEIGHT:I

    if-ge v6, v7, :cond_43

    const/4 v4, 0x1

    .line 517
    .local v4, offset:I
    :goto_15
    add-int/lit8 v6, v4, 0x2

    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #child:Lcom/android/calendar/month/SimpleWeekView;
    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    .line 519
    .restart local v0       #child:Lcom/android/calendar/month/SimpleWeekView;
    if-eqz v0, :cond_b

    .line 525
    iget-boolean v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    if-eqz v6, :cond_45

    .line 526
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getFirstMonth()I

    move-result v2

    .line 533
    .local v2, month:I
    :goto_27
    iget v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    if-ne v6, v8, :cond_4a

    if-nez v2, :cond_4a

    .line 534
    const/4 v3, 0x1

    .line 543
    .local v3, monthDiff:I
    :goto_2e
    if-eqz v3, :cond_b

    .line 544
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v1

    .line 545
    .local v1, julianDay:I
    iget-boolean v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    if-eqz v6, :cond_57

    .line 551
    :goto_38
    iget-object v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v6, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 552
    iget-object v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {p0, v6, v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;Z)V

    goto :goto_b

    .end local v1           #julianDay:I
    .end local v2           #month:I
    .end local v3           #monthDiff:I
    .end local v4           #offset:I
    :cond_43
    move v4, v5

    .line 513
    goto :goto_15

    .line 528
    .restart local v4       #offset:I
    :cond_45
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getLastMonth()I

    move-result v2

    .restart local v2       #month:I
    goto :goto_27

    .line 535
    :cond_4a
    iget v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    if-nez v6, :cond_52

    if-ne v2, v8, :cond_52

    .line 536
    const/4 v3, -0x1

    .restart local v3       #monthDiff:I
    goto :goto_2e

    .line 538
    .end local v3           #monthDiff:I
    :cond_52
    iget v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    sub-int v3, v2, v6

    .restart local v3       #monthDiff:I
    goto :goto_2e

    .line 549
    .restart local v1       #julianDay:I
    :cond_57
    add-int/lit8 v1, v1, 0x7

    goto :goto_38
.end method


# virtual methods
.method protected doResumeUpdates()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 304
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v6

    .line 305
    .local v6, cal:Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    .line 307
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    .line 309
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->updateHeader()V

    .line 310
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)Z

    .line 311
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 312
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTodayUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 313
    return-void
.end method

.method public goTo(JZZZ)Z
    .registers 18
    .parameter "time"
    .parameter "animate"
    .parameter "setSelected"
    .parameter "forceScroll"

    .prologue
    .line 381
    const-wide/16 v9, -0x1

    cmp-long v9, p1, v9

    if-nez v9, :cond_f

    .line 382
    const-string v9, "MonthFragment"

    const-string v10, "time is invalid"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v9, 0x0

    .line 466
    :goto_e
    return v9

    .line 387
    :cond_f
    if-eqz p4, :cond_1c

    .line 388
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v9, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 389
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 394
    :cond_1c
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->isResumed()Z

    move-result v9

    if-nez v9, :cond_34

    .line 395
    const-string v9, "MonthFragment"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 396
    const-string v9, "MonthFragment"

    const-string v10, "We\'re not visible yet"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_32
    const/4 v9, 0x0

    goto :goto_e

    .line 401
    :cond_34
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v9, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 402
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 405
    .local v5, millis:J
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iget-wide v9, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    iget v10, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    invoke-static {v9, v10}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v7

    .line 409
    .local v7, position:I
    const/4 v2, 0x0

    .line 410
    .local v2, i:I
    const/4 v8, 0x0

    .line 413
    .local v8, top:I
    :goto_50
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-virtual {v9, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_d5

    .line 425
    :cond_5a
    if-eqz v0, :cond_10b

    .line 426
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 430
    .local v1, firstPosition:I
    :goto_62
    iget v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    add-int/2addr v9, v1

    add-int/lit8 v4, v9, -0x1

    .line 431
    .local v4, lastPosition:I
    iget v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->BOTTOM_BUFFER:I

    if-le v8, v9, :cond_6d

    .line 432
    add-int/lit8 v4, v4, -0x1

    .line 435
    :cond_6d
    if-eqz p4, :cond_76

    .line 436
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v10, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v9, v10}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 439
    :cond_76
    const-string v9, "MonthFragment"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_97

    .line 440
    const-string v9, "MonthFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GoTo position "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_97
    if-lt v7, v1, :cond_9d

    if-gt v7, v4, :cond_9d

    if-eqz p5, :cond_11e

    .line 445
    :cond_9d
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    iget-object v10, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 446
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    const/4 v10, 0x1

    iput v10, v9, Landroid/text/format/Time;->monthDay:I

    .line 447
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 448
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;Z)V

    .line 449
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    iget-wide v9, v9, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    iget v10, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    invoke-static {v9, v10}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v7

    .line 452
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    .line 453
    if-eqz p3, :cond_10e

    .line 454
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    sget v10, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    const/16 v11, 0x3e8

    invoke-virtual {v9, v7, v10, v11}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 456
    const/4 v9, 0x1

    goto/16 :goto_e

    .line 417
    .end local v1           #firstPosition:I
    .end local v4           #lastPosition:I
    :cond_d5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    .line 418
    const-string v9, "MonthFragment"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_106

    .line 419
    const-string v9, "MonthFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "child at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has top "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_106
    if-gez v8, :cond_5a

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto/16 :goto_50

    .line 428
    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_10b
    const/4 v1, 0x0

    .restart local v1       #firstPosition:I
    goto/16 :goto_62

    .line 458
    .restart local v4       #lastPosition:I
    :cond_10e
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    sget v10, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    invoke-virtual {v9, v7, v10}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 460
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/calendar/month/SimpleDayPickerFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 466
    :cond_11b
    :goto_11b
    const/4 v9, 0x0

    goto/16 :goto_e

    .line 462
    :cond_11e
    if-eqz p4, :cond_11b

    .line 464
    iget-object v9, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;Z)V

    goto :goto_11b
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpListView()V

    .line 231
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpHeader()V

    .line 233
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f100093

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    .line 234
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    .line 235
    .local v0, child:Lcom/android/calendar/month/SimpleWeekView;
    if-nez v0, :cond_24

    .line 243
    :goto_23
    return-void

    .line 238
    :cond_24
    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v1

    .line 239
    .local v1, julianDay:I
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 241
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    add-int/lit8 v3, v1, 0x7

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 242
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;Z)V

    goto :goto_23
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 7
    .parameter "activity"

    .prologue
    const/4 v4, 0x1

    .line 164
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 165
    iput-object p1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    .line 166
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, tz:Ljava/lang/String;
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 168
    .local v2, viewConfig:Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMinimumFlingVelocity:F

    .line 171
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 173
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    iput-object v1, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 174
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfMonth:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 175
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    iput-object v1, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 176
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 177
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iput-object v1, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    .local v0, res:Landroid/content/res/Resources;
    const v3, 0x7f080021

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSaturdayColor:I

    .line 181
    const v3, 0x7f080022

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSundayColor:I

    .line 182
    const v3, 0x7f08001b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNameColor:I

    .line 185
    sget v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8a

    .line 186
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    sput v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    .line 187
    sget v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_8a

    .line 188
    iget v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->WEEK_MIN_VISIBLE_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->WEEK_MIN_VISIBLE_HEIGHT:I

    .line 189
    iget v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->BOTTOM_BUFFER:I

    int-to-float v3, v3

    sget v4, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->BOTTOM_BUFFER:I

    .line 190
    sget v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    int-to-float v3, v3

    sget v4, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/android/calendar/month/SimpleDayPickerFragment;->LIST_TOP_OFFSET:I

    .line 193
    :cond_8a
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpAdapter()V

    .line 194
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {p0, v3}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 195
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 220
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 221
    if-eqz p1, :cond_1a

    const-string v0, "current_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 222
    const-string v0, "current_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x0

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)Z

    .line 224
    :cond_1a
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 349
    const v1, 0x7f04002b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 351
    .local v0, v:Landroid/view/View;
    const v1, 0x7f100094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 352
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 289
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 290
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTodayUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 291
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 283
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpAdapter()V

    .line 284
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->doResumeUpdates()V

    .line 285
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 295
    const-string v0, "current_time"

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 296
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 11
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v5, 0x0

    .line 476
    invoke-virtual {p1, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/month/SimpleWeekView;

    .line 477
    .local v0, child:Lcom/android/calendar/month/SimpleWeekView;
    if-nez v0, :cond_a

    .line 498
    :cond_9
    :goto_9
    return-void

    .line 482
    :cond_a
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-long v1, v3

    .line 483
    .local v1, currScroll:J
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 486
    iget-wide v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollPosition:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_37

    .line 487
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    .line 494
    :goto_2b
    iput-wide v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollPosition:J

    .line 495
    iget v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentScrollState:I

    iput v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollState:I

    .line 497
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v3}, Lcom/android/calendar/month/SimpleDayPickerFragment;->updateMonthHighlight(Landroid/widget/AbsListView;)V

    goto :goto_9

    .line 488
    :cond_37
    iget-wide v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mPreviousScrollPosition:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_9

    .line 489
    iput-boolean v5, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mIsScrollingUp:Z

    goto :goto_2b
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScrollStateChangedRunnable:Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 581
    return-void
.end method

.method protected setMonthDisplayed(Landroid/text/format/Time;Z)V
    .registers 6
    .parameter "time"
    .parameter "updateHighlight"

    .prologue
    .line 564
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 565
    .local v0, oldMonth:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/calendar/Utils;->formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 567
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 568
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mMonthName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 570
    :cond_29
    iget v1, p1, Landroid/text/format/Time;->month:I

    iput v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    .line 571
    if-eqz p2, :cond_36

    .line 572
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mCurrentMonthDisplayed:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/month/SimpleWeeksAdapter;->updateFocusMonth(I)V

    .line 574
    :cond_36
    return-void
.end method

.method protected setUpAdapter()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v0, weekParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "num_weeks"

    iget v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v3, "week_numbers"

    iget-boolean v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    if-eqz v1, :cond_5d

    const/4 v1, 0x1

    :goto_18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "week_start"

    iget v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "selected_day"

    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-nez v1, :cond_5f

    .line 209
    new-instance v1, Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    .line 210
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/calendar/month/SimpleWeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 215
    :goto_57
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->notifyDataSetChanged()V

    .line 216
    return-void

    :cond_5d
    move v1, v2

    .line 204
    goto :goto_18

    .line 212
    :cond_5f
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v1, v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->updateParams(Ljava/util/HashMap;)V

    goto :goto_57
.end method

.method protected setUpHeader()V
    .registers 6

    .prologue
    const/4 v4, 0x7

    .line 250
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayLabels:[Ljava/lang/String;

    .line 251
    const/4 v0, 0x1

    .local v0, i:I
    :goto_6
    if-gt v0, v4, :cond_1b

    .line 252
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x32

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 255
    :cond_1b
    return-void
.end method

.method protected setUpListView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    .line 265
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 267
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 274
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 276
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    .line 277
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    .line 278
    return-void
.end method

.method protected updateHeader()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 320
    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    const v5, 0x7f100096

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 321
    .local v1, label:Landroid/widget/TextView;
    iget-boolean v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    if-eqz v4, :cond_43

    .line 322
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    :goto_15
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    add-int/lit8 v2, v4, -0x1

    .line 327
    .local v2, offset:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1a
    if-ge v0, v6, :cond_59

    .line 328
    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #label:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 329
    .restart local v1       #label:Landroid/widget/TextView;
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    add-int/lit8 v4, v4, 0x1

    if-ge v0, v4, :cond_55

    .line 330
    add-int v4, v2, v0

    rem-int/lit8 v3, v4, 0x7

    .line 331
    .local v3, position:I
    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayLabels:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    const/4 v4, 0x6

    if-ne v3, v4, :cond_47

    .line 334
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSaturdayColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    .end local v3           #position:I
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 324
    .end local v0           #i:I
    .end local v2           #offset:I
    :cond_43
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15

    .line 335
    .restart local v0       #i:I
    .restart local v2       #offset:I
    .restart local v3       #position:I
    :cond_47
    if-nez v3, :cond_4f

    .line 336
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSundayColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_40

    .line 338
    :cond_4f
    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNameColor:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_40

    .line 341
    .end local v3           #position:I
    :cond_55
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_40

    .line 344
    :cond_59
    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 345
    return-void
.end method
