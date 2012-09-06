.class public Lcom/android/calendar/AllInOneActivity;
.super Landroid/app/Activity;
.source "AllInOneActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AllInOneActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static CONTROLS_ANIMATE_WIDTH:I

.field private static mIsMultipane:Z

.field private static mIsTabletConfig:Z

.field private static mScale:F

.field private static mShowAgendaWithMonth:Z

.field private static mShowEventDetailsWithAgenda:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

.field private mAgendaTab:Landroid/app/ActionBar$Tab;

.field private mBackToPreviousView:Z

.field private mCalendarsList:Landroid/view/View;

.field private mCheckForAccounts:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mControlsMenu:Landroid/view/MenuItem;

.field private mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mCurrentView:I

.field private mDateRange:Landroid/widget/TextView;

.field private mDayTab:Landroid/app/ActionBar$Tab;

.field private mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

.field private mHideControls:Z

.field private mHideString:Ljava/lang/String;

.field private mHomeTime:Landroid/widget/TextView;

.field private mHomeTimeUpdater:Ljava/lang/Runnable;

.field private mIntentAttendeeResponse:I

.field private mIntentEventEndMillis:J

.field private mIntentEventStartMillis:J

.field private mMiniMonth:Landroid/view/View;

.field private mMiniMonthContainer:Landroid/view/View;

.field private mMonthTab:Landroid/app/ActionBar$Tab;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOnSaveInstanceStateCalled:Z

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPaused:Z

.field private mPreviousView:I

.field private mSearchMenu:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSecondaryPane:Landroid/view/View;

.field private mShowCalendarControls:Z

.field private mShowEventInfoFullScreen:Z

.field private mShowEventInfoFullScreenAgenda:Z

.field private mShowSideViews:Z

.field private mShowString:Ljava/lang/String;

.field private mShowWeekNum:Z

.field private mSlideAnimationDoneListener:Landroid/animation/Animator$AnimatorListener;

.field private mTimeZone:Ljava/lang/String;

.field private mUpdateOnResume:Z

.field private mViewEventId:J

.field private mWeekNum:I

.field private mWeekTab:Landroid/app/ActionBar$Tab;

.field private mWeekTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const/16 v0, 0x118

    sput v0, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/AllInOneActivity;->mScale:F

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    iput-boolean v2, p0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/calendar/AllInOneActivity;->mBackToPreviousView:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    .line 116
    iput-boolean v2, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    .line 118
    iput-boolean v2, p0, Lcom/android/calendar/AllInOneActivity;->mShowWeekNum:Z

    .line 132
    iput-wide v3, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    .line 133
    iput-wide v3, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    .line 134
    iput-wide v3, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/AllInOneActivity;->mIntentAttendeeResponse:I

    .line 149
    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    .line 155
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 157
    new-instance v0, Lcom/android/calendar/AllInOneActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneActivity$1;-><init>(Lcom/android/calendar/AllInOneActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSlideAnimationDoneListener:Landroid/animation/Animator$AnimatorListener;

    .line 225
    new-instance v0, Lcom/android/calendar/AllInOneActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneActivity$2;-><init>(Lcom/android/calendar/AllInOneActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    .line 234
    new-instance v0, Lcom/android/calendar/AllInOneActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/AllInOneActivity$3;-><init>(Lcom/android/calendar/AllInOneActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AllInOneActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/AllInOneActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/calendar/AllInOneActivity;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AllInOneActivity;->updateSecondaryTitleFields(J)V

    return-void
.end method

.method private clearOptionsMenu()V
    .registers 4

    .prologue
    .line 470
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mOptionsMenu:Landroid/view/Menu;

    if-nez v1, :cond_5

    .line 477
    :cond_4
    :goto_4
    return-void

    .line 473
    :cond_5
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f100080

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 474
    .local v0, cancelItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_4

    .line 475
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method private configureActionBar(I)V
    .registers 4
    .parameter "viewType"

    .prologue
    .line 407
    sget-boolean v0, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v0, :cond_13

    .line 408
    invoke-direct {p0}, Lcom/android/calendar/AllInOneActivity;->createTabs()V

    .line 412
    :goto_7
    sget-boolean v0, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    if-eqz v0, :cond_17

    .line 413
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 418
    :goto_12
    return-void

    .line 410
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneActivity;->createButtonsSpinner(I)V

    goto :goto_7

    .line 416
    :cond_17
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_12
.end method

.method private createButtonsSpinner(I)V
    .registers 6
    .parameter "viewType"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 446
    new-instance v0, Lcom/android/calendar/CalendarViewAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/CalendarViewAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    .line 447
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    .line 448
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 449
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v0, v1, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 450
    packed-switch p1, :pswitch_data_3e

    .line 464
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 467
    :goto_23
    return-void

    .line 452
    :pswitch_24
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_23

    .line 455
    :pswitch_2b
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_23

    .line 458
    :pswitch_31
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_23

    .line 461
    :pswitch_37
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_23

    .line 450
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2b
        :pswitch_31
        :pswitch_37
    .end packed-switch
.end method

.method private createTabs()V
    .registers 3

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    .line 422
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_12

    .line 423
    const-string v0, "AllInOneActivity"

    const-string v1, "ActionBar is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_11
    return-void

    .line 425
    :cond_12
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 426
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    .line 427
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0c000b

    invoke-virtual {p0, v1}, Lcom/android/calendar/AllInOneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 428
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 429
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 430
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    .line 431
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0c000c

    invoke-virtual {p0, v1}, Lcom/android/calendar/AllInOneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 432
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 433
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 434
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    .line 435
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0c000d

    invoke-virtual {p0, v1}, Lcom/android/calendar/AllInOneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 436
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 437
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 438
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    .line 439
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    const v1, 0x7f0c000a

    invoke-virtual {p0, v1}, Lcom/android/calendar/AllInOneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 440
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 441
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto/16 :goto_11
.end method

.method private initFragments(JILandroid/os/Bundle;)V
    .registers 30
    .parameter "timeMillis"
    .parameter "viewType"
    .parameter "icicle"

    .prologue
    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 583
    .local v4, ft:Landroid/app/FragmentTransaction;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    if-eqz v3, :cond_49

    .line 584
    new-instance v23, Lcom/android/calendar/month/MonthByWeekFragment;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/month/MonthByWeekFragment;-><init>(JZ)V

    .line 585
    .local v23, miniMonthFrag:Landroid/app/Fragment;
    const v3, 0x7f100022

    move-object/from16 v0, v23

    invoke-virtual {v4, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const v5, 0x7f100022

    check-cast v23, Lcom/android/calendar/CalendarController$EventHandler;

    .end local v23           #miniMonthFrag:Landroid/app/Fragment;
    move-object/from16 v0, v23

    invoke-virtual {v3, v5, v0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 588
    new-instance v24, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-direct/range {v24 .. v24}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;-><init>()V

    .line 589
    .local v24, selectCalendarsFrag:Landroid/app/Fragment;
    const v3, 0x7f100003

    move-object/from16 v0, v24

    invoke-virtual {v4, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const v5, 0x7f100003

    check-cast v24, Lcom/android/calendar/CalendarController$EventHandler;

    .end local v24           #selectCalendarsFrag:Landroid/app/Fragment;
    move-object/from16 v0, v24

    invoke-virtual {v3, v5, v0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 593
    :cond_49
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    if-eqz v3, :cond_54

    const/4 v3, 0x5

    move/from16 v0, p3

    if-ne v0, v3, :cond_66

    .line 594
    :cond_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 598
    :cond_66
    const/16 v21, 0x0

    .line 599
    .local v21, info:Lcom/android/calendar/CalendarController$EventInfo;
    const/4 v3, 0x5

    move/from16 v0, p3

    if-ne v0, v3, :cond_139

    .line 600
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "preferred_startView"

    const/4 v6, 0x3

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    .line 603
    const-wide/16 v19, -0x1

    .line 604
    .local v19, eventId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    .line 605
    .local v22, intent:Landroid/content/Intent;
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    .line 606
    .local v16, data:Landroid/net/Uri;
    if-eqz v16, :cond_123

    .line 608
    :try_start_88
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8f
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_8f} :catch_140

    move-result-wide v19

    .line 618
    :cond_90
    :goto_90
    const-string v3, "beginTime"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 619
    .local v14, begin:J
    const-string v3, "endTime"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v17

    .line 620
    .local v17, end:J
    new-instance v21, Lcom/android/calendar/CalendarController$EventInfo;

    .end local v21           #info:Lcom/android/calendar/CalendarController$EventInfo;
    invoke-direct/range {v21 .. v21}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 621
    .restart local v21       #info:Lcom/android/calendar/CalendarController$EventInfo;
    const-wide/16 v5, -0x1

    cmp-long v3, v17, v5

    if-eqz v3, :cond_c1

    .line 622
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 623
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 625
    :cond_c1
    const-wide/16 v5, -0x1

    cmp-long v3, v14, v5

    if-eqz v3, :cond_d7

    .line 626
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 627
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v3, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 629
    :cond_d7
    move-wide/from16 v0, v19

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/calendar/CalendarController;->setViewType(I)V

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/calendar/CalendarController;->setEventId(J)V

    .line 639
    .end local v14           #begin:J
    .end local v16           #data:Landroid/net/Uri;
    .end local v17           #end:J
    .end local v19           #eventId:J
    .end local v22           #intent:Landroid/content/Intent;
    :goto_ef
    const v5, 0x7f10001f

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move/from16 v6, p3

    move-wide/from16 v7, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/calendar/AllInOneActivity;->setMainPane(Landroid/app/FragmentTransaction;IIJZ)V

    .line 640
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 642
    new-instance v9, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v9, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 643
    .local v9, t:Landroid/text/format/Time;
    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 644
    const/4 v3, 0x5

    move/from16 v0, p3

    if-eq v0, v3, :cond_122

    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v7, 0x20

    const/4 v10, 0x0

    const-wide/16 v11, -0x1

    move-object/from16 v6, p0

    move/from16 v13, p3

    invoke-virtual/range {v5 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 647
    :cond_122
    return-void

    .line 614
    .end local v9           #t:Landroid/text/format/Time;
    .restart local v16       #data:Landroid/net/Uri;
    .restart local v19       #eventId:J
    .restart local v22       #intent:Landroid/content/Intent;
    :cond_123
    if-eqz p4, :cond_90

    const-string v3, "key_event_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 615
    const-string v3, "key_event_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    goto/16 :goto_90

    .line 636
    .end local v16           #data:Landroid/net/Uri;
    .end local v19           #eventId:J
    .end local v22           #intent:Landroid/content/Intent;
    :cond_139
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    goto :goto_ef

    .line 609
    .restart local v16       #data:Landroid/net/Uri;
    .restart local v19       #eventId:J
    .restart local v22       #intent:Landroid/content/Intent;
    :catch_140
    move-exception v3

    goto/16 :goto_90
.end method

.method private parseViewAction(Landroid/content/Intent;)J
    .registers 10
    .parameter "intent"

    .prologue
    .line 384
    const-wide/16 v2, -0x1

    .line 385
    .local v2, timeMillis:J
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 386
    .local v0, data:Landroid/net/Uri;
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 387
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 388
    .local v1, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5d

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "events"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 390
    :try_start_28
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    .line 391
    iget-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5d

    .line 392
    const-string v4, "beginTime"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    .line 393
    const-string v4, "endTime"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    .line 394
    const-string v4, "attendeeStatus"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentAttendeeResponse:I

    .line 396
    iget-wide v2, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_5d} :catch_5e

    .line 403
    .end local v1           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5d
    :goto_5d
    return-wide v2

    .line 398
    .restart local v1       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_5e
    move-exception v4

    goto :goto_5d
.end method

.method private setMainPane(Landroid/app/FragmentTransaction;IIJZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const v8, 0x7f100020

    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 771
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    if-eqz v0, :cond_d

    .line 912
    :cond_c
    :goto_c
    return-void

    .line 774
    :cond_d
    if-nez p6, :cond_13

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, p3, :cond_c

    .line 779
    :cond_13
    if-eq p3, v1, :cond_5f

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v1, :cond_5f

    move v2, v3

    .line 780
    :goto_1a
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 783
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-ne v0, v3, :cond_2f

    .line 786
    invoke-virtual {v5, p2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 787
    instance-of v1, v0, Lcom/android/calendar/agenda/AgendaFragment;

    if-eqz v1, :cond_2f

    .line 788
    check-cast v0, Lcom/android/calendar/agenda/AgendaFragment;

    invoke-virtual {v0, v5}, Lcom/android/calendar/agenda/AgendaFragment;->removeFragments(Landroid/app/FragmentManager;)V

    .line 792
    :cond_2f
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq p3, v0, :cond_42

    .line 795
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_40

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-lez v0, :cond_40

    .line 796
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    iput v0, p0, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    .line 798
    :cond_40
    iput p3, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    .line 802
    :cond_42
    const/4 v1, 0x0

    .line 803
    packed-switch p3, :pswitch_data_180

    .line 844
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be Agenda, Day, Week, or Month ViewType, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    move v2, v4

    .line 779
    goto :goto_1a

    .line 805
    :pswitch_61
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    if-eq v0, v6, :cond_76

    .line 806
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 808
    :cond_76
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v0, :cond_80

    .line 809
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 811
    :cond_80
    new-instance v0, Lcom/android/calendar/agenda/AgendaFragment;

    invoke-direct {v0, p4, p5, v4}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    .line 850
    :cond_85
    :goto_85
    sget-boolean v6, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-nez v6, :cond_97

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v6, :cond_97

    .line 851
    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v6, p4, p5}, Lcom/android/calendar/CalendarViewAdapter;->setTime(J)V

    .line 852
    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v6, p3}, Lcom/android/calendar/CalendarViewAdapter;->setMainView(I)V

    .line 857
    :cond_97
    sget-boolean v6, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-nez v6, :cond_154

    .line 858
    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 866
    :goto_a0
    if-eq p3, v3, :cond_a5

    .line 867
    invoke-direct {p0}, Lcom/android/calendar/AllInOneActivity;->clearOptionsMenu()V

    .line 871
    :cond_a5
    if-nez p1, :cond_17d

    .line 873
    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 876
    :goto_ab
    if-eqz v2, :cond_b2

    .line 877
    const/16 v2, 0x1003

    invoke-virtual {p1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 880
    :cond_b2
    invoke-virtual {p1, p2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 881
    sget-boolean v2, Lcom/android/calendar/AllInOneActivity;->mShowAgendaWithMonth:Z

    if-eqz v2, :cond_c3

    .line 885
    if-eqz v1, :cond_164

    .line 886
    invoke-virtual {p1, v8, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 887
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mSecondaryPane:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 901
    :cond_c3
    :goto_c3
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    check-cast v0, Lcom/android/calendar/CalendarController$EventHandler;

    invoke-virtual {v2, p2, v0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 902
    if-eqz v1, :cond_d4

    .line 903
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v0, v1

    check-cast v0, Lcom/android/calendar/CalendarController$EventHandler;

    invoke-virtual {v2, p2, v0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 906
    :cond_d4
    if-eqz v3, :cond_c

    .line 910
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_c

    .line 814
    :pswitch_db
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_f0

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    if-eq v0, v6, :cond_f0

    .line 815
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 817
    :cond_f0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v0, :cond_f9

    .line 818
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 820
    :cond_f9
    new-instance v0, Lcom/android/calendar/DayFragment;

    invoke-direct {v0, p4, p5, v3}, Lcom/android/calendar/DayFragment;-><init>(JI)V

    goto :goto_85

    .line 823
    :pswitch_ff
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_114

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    if-eq v0, v6, :cond_114

    .line 824
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 826
    :cond_114
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v0, :cond_11d

    .line 827
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 829
    :cond_11d
    new-instance v0, Lcom/android/calendar/DayFragment;

    const/4 v6, 0x7

    invoke-direct {v0, p4, p5, v6}, Lcom/android/calendar/DayFragment;-><init>(JI)V

    goto/16 :goto_85

    .line 832
    :pswitch_125
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_13a

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    if-eq v0, v6, :cond_13a

    .line 833
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 835
    :cond_13a
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v0, :cond_144

    .line 836
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 838
    :cond_144
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-direct {v0, p4, p5, v4}, Lcom/android/calendar/month/MonthByWeekFragment;-><init>(JZ)V

    .line 839
    sget-boolean v6, Lcom/android/calendar/AllInOneActivity;->mShowAgendaWithMonth:Z

    if-eqz v6, :cond_85

    .line 840
    new-instance v1, Lcom/android/calendar/agenda/AgendaFragment;

    invoke-direct {v1, p4, p5, v4}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    goto/16 :goto_85

    .line 859
    :cond_154
    if-eq p3, v3, :cond_15d

    .line 860
    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a0

    .line 862
    :cond_15d
    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a0

    .line 889
    :cond_164
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mSecondaryPane:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 890
    invoke-virtual {v5, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    .line 891
    if-eqz v2, :cond_172

    .line 892
    invoke-virtual {p1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 894
    :cond_172
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    goto/16 :goto_c3

    :cond_17d
    move v3, v4

    goto/16 :goto_ab

    .line 803
    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_61
        :pswitch_db
        :pswitch_ff
        :pswitch_125
    .end packed-switch
.end method

.method private setTitleInActionBar(Lcom/android/calendar/CalendarController$EventInfo;)V
    .registers 15
    .parameter "event"

    .prologue
    const/16 v12, 0x8

    const/4 v5, 0x0

    .line 915
    iget-wide v8, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v10, 0x400

    cmp-long v0, v8, v10

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_10

    .line 938
    :cond_f
    :goto_f
    return-void

    .line 919
    :cond_10
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 921
    .local v1, start:J
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_5a

    .line 922
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 927
    .local v3, end:J
    :goto_20
    iget-wide v8, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    long-to-int v5, v8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    .line 928
    .local v6, msg:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 929
    .local v7, oldDate:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v0, :cond_3e

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .end local v1           #start:J
    :cond_3e
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/AllInOneActivity;->updateSecondaryTitleFields(J)V

    .line 932
    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 933
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 934
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowWeekNum:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 935
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    goto :goto_f

    .line 924
    .end local v3           #end:J
    .end local v6           #msg:Ljava/lang/String;
    .end local v7           #oldDate:Ljava/lang/CharSequence;
    .restart local v1       #start:J
    :cond_5a
    move-wide v3, v1

    .restart local v3       #end:J
    goto :goto_20
.end method

.method private updateSecondaryTitleFields(J)V
    .registers 14
    .parameter

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 941
    invoke-static {p0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mShowWeekNum:Z

    .line 942
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    .line 943
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_20

    .line 944
    invoke-static {p1, p2, p0}, Lcom/android/calendar/Utils;->getWeekNumberFromTime(JLandroid/content/Context;)I

    move-result v1

    .line 945
    iput v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekNum:I

    .line 948
    :cond_20
    iget-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mShowWeekNum:Z

    if-eqz v1, :cond_d1

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-ne v1, v9, :cond_d1

    sget-boolean v1, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v1, :cond_d1

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_d1

    .line 950
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0004

    iget v3, p0, Lcom/android/calendar/AllInOneActivity;->mWeekNum:I

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/calendar/AllInOneActivity;->mWeekNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 952
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 953
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 969
    :cond_51
    :goto_51
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    if-eqz v1, :cond_126

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v1, v8, :cond_61

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v1, v9, :cond_61

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-ne v1, v0, :cond_126

    :cond_61
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_126

    .line 973
    new-instance v3, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v3, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 974
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 975
    invoke-virtual {v3, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 976
    iget v3, v3, Landroid/text/format/Time;->isDst:I

    if-eqz v3, :cond_123

    move v6, v0

    .line 978
    :goto_80
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 979
    const/16 v5, 0x81

    .line 982
    :goto_88
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v0, p0

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v6, v7, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 986
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 990
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    const-wide/32 v6, 0xea60

    rem-long/2addr v1, v6

    sub-long v1, v4, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 996
    :cond_d0
    :goto_d0
    return-void

    .line 954
    :cond_d1
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_110

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_110

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-ne v1, v8, :cond_110

    sget-boolean v1, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v1, :cond_110

    .line 956
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 958
    iget-wide v2, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 959
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 960
    invoke-virtual {v1, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-wide v5, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 961
    invoke-static {v2, v1, p1, p2, p0}, Lcom/android/calendar/Utils;->getDayOfWeekString(IIJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 963
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_51

    .line 965
    :cond_110
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_51

    sget-boolean v1, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v1, :cond_11c

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v1, v8, :cond_51

    .line 966
    :cond_11c
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_51

    :cond_123
    move v6, v7

    .line 976
    goto/16 :goto_80

    .line 993
    :cond_126
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    if-eqz v0, :cond_d0

    .line 994
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d0

    :cond_130
    move v5, v0

    goto/16 :goto_88
.end method


# virtual methods
.method public eventsChanged()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 1141
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x80

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1142
    return-void
.end method

.method public getSupportedEventTypes()J
    .registers 3

    .prologue
    .line 1000
    const-wide/16 v0, 0x422

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .registers 13
    .parameter

    .prologue
    .line 1005
    const-wide/16 v0, -0x1

    .line 1006
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x20

    cmp-long v2, v2, v4

    if-nez v2, :cond_123

    .line 1007
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_94

    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mBackToPreviousView:Z

    .line 1015
    :cond_18
    :goto_18
    const/4 v1, 0x0

    const v2, 0x7f10001f

    iget v3, p1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/AllInOneActivity;->setMainPane(Landroid/app/FragmentTransaction;IIJZ)V

    .line 1017
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_33

    .line 1018
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1021
    :cond_33
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    if-eqz v0, :cond_7c

    .line 1022
    iget v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_41

    iget v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_be

    .line 1024
    :cond_41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    .line 1025
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_a8

    .line 1026
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1027
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1029
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v0, :cond_7c

    .line 1030
    const-string v0, "controlsOffset"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1032
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mSlideAnimationDoneListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1033
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1034
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 1035
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1063
    :cond_7c
    :goto_7c
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v0, :cond_11a

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1065
    :goto_87
    sget-boolean v2, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-nez v2, :cond_90

    .line 1066
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/CalendarViewAdapter;->setTime(J)V

    .line 1128
    :cond_90
    :goto_90
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/AllInOneActivity;->updateSecondaryTitleFields(J)V

    .line 1129
    return-void

    .line 1009
    :cond_94
    iget v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getPreviousViewType()I

    move-result v1

    if-eq v0, v1, :cond_18

    iget v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mBackToPreviousView:Z

    goto/16 :goto_18

    .line 1038
    :cond_a8
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1039
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7c

    .line 1044
    :cond_be
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    .line 1045
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_7c

    .line 1049
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1050
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1051
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getPreviousViewType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f9

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getPreviousViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7c

    .line 1054
    :cond_f9
    const-string v0, "controlsOffset"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1056
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1057
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 1058
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_7c

    .line 1063
    :cond_11a
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    goto/16 :goto_87

    .line 1068
    :cond_123
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_228

    .line 1074
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_168

    sget-boolean v0, Lcom/android/calendar/AllInOneActivity;->mShowEventDetailsWithAgenda:Z

    if-eqz v0, :cond_168

    .line 1075
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_154

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_154

    .line 1076
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    iget-object v4, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    iget-object v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    iget-wide v6, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1121
    :cond_14b
    :goto_14b
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    goto/16 :goto_90

    .line 1078
    :cond_154
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v0, :cond_14b

    .line 1079
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    iget-object v4, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-object v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-wide v6, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_14b

    .line 1085
    :cond_168
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v0, :cond_180

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_180

    .line 1086
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    iget-object v4, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-object v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1089
    :cond_180
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_189

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowEventInfoFullScreenAgenda:Z

    if-nez v0, :cond_19c

    :cond_189
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_198

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_198

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1dd

    :cond_198
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowEventInfoFullScreen:Z

    if-eqz v0, :cond_1dd

    .line 1093
    :cond_19c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1094
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1095
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1096
    const-class v1, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1097
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1099
    const-string v1, "beginTime"

    iget-object v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1100
    const-string v1, "endTime"

    iget-object v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1101
    const-string v1, "attendeeResponse"

    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1102
    invoke-virtual {p0, v0}, Lcom/android/calendar/AllInOneActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_14b

    .line 1105
    :cond_1dd
    new-instance v0, Lcom/android/calendar/EventInfoFragment;

    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    iget-wide v8, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    long-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZI)V

    .line 1109
    iget v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->x:I

    iget v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->y:I

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/EventInfoFragment;->setDialogParams(III)V

    .line 1110
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1111
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1113
    const-string v3, "EventInfoFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1114
    if-eqz v1, :cond_21e

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_21e

    .line 1115
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1117
    :cond_21e
    const-string v1, "EventInfoFragment"

    invoke-virtual {v2, v0, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1118
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_14b

    .line 1122
    :cond_228
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x400

    cmp-long v2, v2, v4

    if-nez v2, :cond_90

    .line 1123
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneActivity;->setTitleInActionBar(Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 1124
    sget-boolean v2, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-nez v2, :cond_90

    .line 1125
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/CalendarViewAdapter;->setTime(J)V

    goto/16 :goto_90
.end method

.method public handleSelectSyncedCalendarsClicked(Landroid/view/View;)V
    .registers 16
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 1134
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x40

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x2

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    move-object v12, v4

    move-object v13, v4

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 1137
    return-void
.end method

.method public onBackPressed()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 651
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mBackToPreviousView:Z

    if-eqz v0, :cond_18

    .line 652
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    iget v8, p0, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 656
    :goto_17
    return-void

    .line 654
    :cond_18
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_17
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 23
    .parameter "icicle"

    .prologue
    .line 269
    const-string v5, "preferences_tardis_1"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 270
    const v5, 0x7f0e001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/calendar/AllInOneActivity;->setTheme(I)V

    .line 272
    :cond_13
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 274
    if-eqz p1, :cond_2e

    const-string v5, "key_check_for_accounts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 275
    const-string v5, "key_check_for_accounts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    .line 279
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    if-eqz v5, :cond_64

    const-string v5, "preferences_skip_setup"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_64

    .line 282
    new-instance v5, Lcom/android/calendar/AllInOneActivity$QueryHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/calendar/AllInOneActivity$QueryHandler;-><init>(Lcom/android/calendar/AllInOneActivity;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    .line 283
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "_id"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/calendar/AllInOneActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_64
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    .line 293
    const-wide/16 v18, -0x1

    .line 294
    .local v18, timeMillis:J
    const/16 v20, -0x1

    .line 295
    .local v20, viewType:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 296
    .local v14, intent:Landroid/content/Intent;
    if-eqz p1, :cond_1dd

    .line 297
    const-string v5, "key_restore_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 298
    const-string v5, "key_restore_view"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 311
    :cond_87
    :goto_87
    const/4 v5, -0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_90

    .line 312
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->getViewTypeFromIntentAndSharedPref(Landroid/app/Activity;)I

    move-result v20

    .line 314
    :cond_90
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    .line 315
    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 316
    .local v17, t:Landroid/text/format/Time;
    invoke-virtual/range {v17 .. v19}, Landroid/text/format/Time;->set(J)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 327
    .local v16, res:Landroid/content/res/Resources;
    sget v5, Lcom/android/calendar/AllInOneActivity;->mScale:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_c8

    .line 328
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    sput v5, Lcom/android/calendar/AllInOneActivity;->mScale:F

    .line 329
    sget v5, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/android/calendar/AllInOneActivity;->mScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sput v5, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    .line 331
    :cond_c8
    const v5, 0x7f0c0016

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    .line 332
    const v5, 0x7f0c0017

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    .line 333
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 335
    const v5, 0x7f090007

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    .line 336
    const v5, 0x7f090006

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    .line 337
    const v5, 0x7f090001

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/calendar/AllInOneActivity;->mShowAgendaWithMonth:Z

    .line 338
    const/high16 v5, 0x7f09

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    .line 339
    const v5, 0x7f090003

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/calendar/AllInOneActivity;->mShowEventDetailsWithAgenda:Z

    .line 341
    const v5, 0x7f090004

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mShowEventInfoFullScreenAgenda:Z

    .line 343
    const v5, 0x7f090005

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mShowEventInfoFullScreen:Z

    .line 346
    sget-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    invoke-static {v5}, Lcom/android/calendar/Utils;->setAllowWeekForDetailView(Z)V

    .line 349
    const v5, 0x7f04000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/calendar/AllInOneActivity;->setContentView(I)V

    .line 351
    sget-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v5, :cond_1fb

    .line 352
    const v5, 0x7f100024

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/calendar/AllInOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    .line 353
    const v5, 0x7f100025

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/calendar/AllInOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    .line 361
    :goto_16c
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/AllInOneActivity;->configureActionBar(I)V

    .line 363
    const v5, 0x7f10001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/calendar/AllInOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    .line 364
    const v5, 0x7f100022

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/calendar/AllInOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    .line 365
    const v5, 0x7f100003

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/calendar/AllInOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    .line 366
    const v5, 0x7f100021

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/calendar/AllInOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    .line 367
    const v5, 0x7f100020

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/calendar/AllInOneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mSecondaryPane:Landroid/view/View;

    .line 372
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v5, v6, v0}, Lcom/android/calendar/CalendarController;->registerFirstEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 374
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v20

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/AllInOneActivity;->initFragments(JILandroid/os/Bundle;)V

    .line 377
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 378
    .local v15, prefs:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 381
    return-void

    .line 300
    .end local v15           #prefs:Landroid/content/SharedPreferences;
    .end local v16           #res:Landroid/content/res/Resources;
    .end local v17           #t:Landroid/text/format/Time;
    :cond_1dd
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 301
    .local v13, action:Ljava/lang/String;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ef

    .line 303
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/calendar/AllInOneActivity;->parseViewAction(Landroid/content/Intent;)J

    move-result-wide v18

    .line 306
    :cond_1ef
    const-wide/16 v5, -0x1

    cmp-long v5, v18, v5

    if-nez v5, :cond_87

    .line 307
    invoke-static {v14}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v18

    goto/16 :goto_87

    .line 355
    .end local v13           #action:Ljava/lang/String;
    .restart local v16       #res:Landroid/content/res/Resources;
    .restart local v17       #t:Landroid/text/format/Time;
    :cond_1fb
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AllInOneActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040019

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    goto/16 :goto_16c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 660
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 661
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 662
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 664
    const v0, 0x7f1000aa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    .line 665
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    .line 666
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_36

    .line 667
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->setUpSearchView(Landroid/widget/SearchView;Landroid/app/Activity;)V

    .line 668
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 669
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 675
    :cond_36
    const v0, 0x7f1000ad

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    .line 676
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    if-nez v0, :cond_52

    .line 677
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_51

    .line 678
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 679
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 689
    :cond_51
    :goto_51
    return v3

    .line 681
    :cond_52
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6b

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v0

    if-ne v0, v3, :cond_76

    .line 684
    :cond_6b
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 685
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_51

    .line 686
    :cond_76
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_51

    .line 687
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    :goto_82
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_51

    :cond_86
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    goto :goto_82
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 567
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 569
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 570
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 572
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->deregisterAllEventHandlers()V

    .line 574
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 575
    return-void
.end method

.method public onNavigationItemSelected(IJ)Z
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 1190
    packed-switch p1, :pswitch_data_ae

    .line 1212
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemSelected event from unknown button: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Button:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Week:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Month:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Agenda:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_76
    :goto_76
    const/4 v0, 0x0

    return v0

    .line 1192
    :pswitch_78
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v8, :cond_76

    .line 1193
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_76

    .line 1197
    :pswitch_84
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_76

    .line 1198
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v8, 0x3

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_76

    .line 1202
    :pswitch_92
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_76

    .line 1203
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v8, 0x4

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_76

    .line 1207
    :pswitch_a0
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v9, :cond_76

    .line 1208
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_76

    .line 1190
    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_78
        :pswitch_84
        :pswitch_92
        :pswitch_a0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 14
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    .line 248
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 252
    .local v9, action:Ljava/lang/String;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "KEY_HOME"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_48

    .line 254
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneActivity;->parseViewAction(Landroid/content/Intent;)J

    move-result-wide v10

    .line 255
    .local v10, millis:J
    cmp-long v0, v10, v6

    if-nez v0, :cond_23

    .line 256
    invoke-static {p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v10

    .line 258
    :cond_23
    cmp-long v0, v10, v6

    if-eqz v0, :cond_48

    iget-wide v0, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    if-eqz v0, :cond_48

    .line 259
    new-instance v4, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v4, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 260
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 261
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 262
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 265
    .end local v4           #time:Landroid/text/format/Time;
    .end local v10           #millis:J
    :cond_48
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 16
    .parameter

    .prologue
    .line 694
    .line 696
    const-wide/16 v0, 0x2

    .line 697
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_da

    .line 739
    const/4 v0, 0x0

    .line 742
    :goto_a
    return v0

    .line 699
    :pswitch_b
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->refreshCalendars()V

    .line 700
    const/4 v0, 0x1

    goto :goto_a

    .line 702
    :pswitch_12
    const/4 v9, 0x0

    .line 703
    new-instance v4, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v4, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 705
    const-wide/16 v2, 0x8

    or-long v10, v0, v2

    .line 741
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v6, v4

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 742
    const/4 v0, 0x1

    goto :goto_a

    .line 708
    :pswitch_31
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 709
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 710
    iget v0, v1, Landroid/text/format/Time;->minute:I

    const/16 v2, 0x1e

    if-le v0, v2, :cond_65

    .line 711
    iget v0, v1, Landroid/text/format/Time;->hour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 712
    const/4 v0, 0x0

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 716
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 718
    const/4 v0, 0x1

    goto :goto_a

    .line 713
    :cond_65
    iget v0, v1, Landroid/text/format/Time;->minute:I

    if-lez v0, :cond_4e

    iget v0, v1, Landroid/text/format/Time;->minute:I

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_4e

    .line 714
    const/16 v0, 0x1e

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_4e

    .line 720
    :pswitch_74
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x800

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 722
    const/4 v0, 0x1

    goto :goto_a

    .line 724
    :pswitch_83
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x40

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 725
    const/4 v0, 0x1

    goto/16 :goto_a

    .line 727
    :pswitch_93
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v0, :cond_cd

    const/4 v0, 0x1

    :goto_98
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    .line 728
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    :goto_a0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 729
    const-string v1, "controlsOffset"

    const/4 v0, 0x2

    new-array v2, v0, [I

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v0, :cond_d2

    const/4 v0, 0x0

    :goto_ae
    aput v0, v2, v3

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v0, :cond_d5

    sget v0, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    :goto_b7
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 732
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 733
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 734
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 735
    const/4 v0, 0x1

    goto/16 :goto_a

    .line 727
    :cond_cd
    const/4 v0, 0x0

    goto :goto_98

    .line 728
    :cond_cf
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    goto :goto_a0

    .line 729
    :cond_d2
    sget v0, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    goto :goto_ae

    :cond_d5
    const/4 v0, 0x0

    goto :goto_b7

    .line 737
    :pswitch_d7
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 697
    :pswitch_data_da
    .packed-switch 0x7f1000a7
        :pswitch_12
        :pswitch_31
        :pswitch_b
        :pswitch_d7
        :pswitch_74
        :pswitch_83
        :pswitch_93
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 526
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 528
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 529
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    .line 530
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 531
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v1, :cond_20

    .line 532
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarViewAdapter;->onPause()V

    .line 534
    :cond_20
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 535
    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 537
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 538
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 541
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_34
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_46

    .line 542
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->setDefaultView(Landroid/content/Context;I)V

    .line 544
    :cond_46
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3
    .parameter "newText"

    .prologue
    .line 1146
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 15
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1151
    const-string v0, "TARDIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1152
    invoke-static {}, Lcom/android/calendar/Utils;->tardis()V

    .line 1154
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1155
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x100

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    move-object v1, p0

    move-object v5, v4

    move-object v11, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 1157
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 26

    .prologue
    .line 481
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0}, Lcom/android/calendar/CalendarController;->registerFirstEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 488
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 491
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    if-eqz v2, :cond_41

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/calendar/AllInOneActivity;->initFragments(JILandroid/os/Bundle;)V

    .line 493
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    .line 495
    :cond_41
    new-instance v6, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v6, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 496
    .local v6, t:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v4, 0x400

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarController;->getDateFlags()J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-object v7, v6

    invoke-virtual/range {v2 .. v14}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v2, :cond_7d

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/calendar/CalendarViewAdapter;->refresh(Landroid/content/Context;)V

    .line 504
    :cond_7d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v2, :cond_94

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v2, :cond_104

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    :goto_91
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 507
    :cond_94
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    .line 509
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_103

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_103

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_103

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 511
    .local v23, currentMillis:J
    const-wide/16 v21, -0x1

    .line 512
    .local v21, selectedTime:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    cmp-long v2, v23, v2

    if-lez v2, :cond_cf

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    cmp-long v2, v23, v2

    if-gez v2, :cond_cf

    .line 513
    move-wide/from16 v21, v23

    .line 515
    :cond_cf
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v9, 0x2

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    const/16 v17, -0x1

    const/16 v18, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/AllInOneActivity;->mIntentAttendeeResponse:I

    int-to-long v0, v2

    move-wide/from16 v19, v0

    move-object/from16 v8, p0

    invoke-virtual/range {v7 .. v22}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 518
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    .line 519
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    .line 520
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    .line 522
    .end local v21           #selectedTime:J
    .end local v23           #currentMillis:J
    :cond_103
    return-void

    .line 505
    :cond_104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    goto :goto_91
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    .line 555
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 557
    const-string v0, "key_restore_time"

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 558
    const-string v0, "key_restore_view"

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_28

    .line 560
    const-string v0, "key_event_id"

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getEventId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 562
    :cond_28
    const-string v0, "key_check_for_accounts"

    iget-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 563
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_9

    .line 1235
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1237
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 760
    const-string v0, "preferences_week_start_day"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 761
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    if-eqz v0, :cond_10

    .line 762
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    .line 767
    :cond_f
    :goto_f
    return-void

    .line 764
    :cond_10
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/calendar/AllInOneActivity;->initFragments(JILandroid/os/Bundle;)V

    goto :goto_f
.end method

.method public onSuggestionClick(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1229
    const/4 v0, 0x0

    return v0
.end method

.method public onSuggestionSelect(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 1223
    const/4 v0, 0x0

    return v0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 1181
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 1162
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TabSelected AllInOne="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " finishing:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/AllInOneActivity;->isFinishing()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_3d

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v8, :cond_3d

    .line 1164
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1177
    :goto_3c
    return-void

    .line 1165
    :cond_3d
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_4f

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4f

    .line 1166
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v8, 0x3

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_3c

    .line 1167
    :cond_4f
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_61

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_61

    .line 1168
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v8, 0x4

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_3c

    .line 1169
    :cond_61
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_72

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v9, :cond_72

    .line 1170
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_3c

    .line 1172
    :cond_72
    const-string v1, "AllInOneActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TabSelected event from unknown tab: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_e8

    const-string v0, "null"

    :goto_83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Week:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Month:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Agenda:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 1172
    :cond_e8
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_83
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 1185
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 548
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x200

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 549
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 550
    return-void
.end method

.method public setControlsOffset(I)V
    .registers 5
    .parameter "controlsOffset"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 753
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 754
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    sget v2, Lcom/android/calendar/AllInOneActivity;->CONTROLS_ANIMATE_WIDTH:I

    sub-int/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 755
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 756
    return-void
.end method
