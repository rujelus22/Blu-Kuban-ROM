.class public Lcom/android/calendar/CalendarActivity;
.super Landroid/app/Activity;
.source "CalendarActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarActivity$DateListener;,
        Lcom/android/calendar/CalendarActivity$DateChangeListener;,
        Lcom/android/calendar/CalendarActivity$CalendarQueryHandler;
    }
.end annotation


# static fields
.field private static final CALENDARS_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected KEY_FLAG:Z

.field mBodyContainer:Landroid/widget/FrameLayout;

.field public mCalendarIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDatePicker:Landroid/app/Dialog;

.field mEventLoader:Lcom/android/calendar/EventLoader;

.field private mHandler:Landroid/os/Handler;

.field protected mInAnimationBackward:Landroid/view/animation/Animation;

.field protected mInAnimationForward:Landroid/view/animation/Animation;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSwitching:Z

.field private mObserver:Landroid/database/ContentObserver;

.field protected mOutAnimationBackward:Landroid/view/animation/Animation;

.field protected mOutAnimationForward:Landroid/view/animation/Animation;

.field private mQuickAddDialog:Landroid/app/AlertDialog;

.field mSelectedDay:Landroid/text/format/Time;

.field mStartDay:I

.field mSwitchContainer:Landroid/widget/LinearLayout;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field protected mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 454
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarActivity;->CALENDARS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mHandler:Landroid/os/Handler;

    .line 116
    iput-boolean v1, p0, Lcom/android/calendar/CalendarActivity;->mIsSwitching:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/calendar/CalendarActivity;->KEY_FLAG:Z

    .line 130
    new-instance v0, Lcom/android/calendar/CalendarActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarActivity$1;-><init>(Lcom/android/calendar/CalendarActivity;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    .line 141
    new-instance v0, Lcom/android/calendar/CalendarActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarActivity$2;-><init>(Lcom/android/calendar/CalendarActivity;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Lcom/android/calendar/CalendarActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/CalendarActivity$3;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mObserver:Landroid/database/ContentObserver;

    .line 167
    new-instance v0, Lcom/android/calendar/CalendarActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/CalendarActivity$4;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mCalendarObserver:Landroid/database/ContentObserver;

    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mCalendarIcons:Ljava/util/HashMap;

    .line 868
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CalendarActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/calendar/CalendarActivity;->loadCalendarTypeIcon()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/CalendarActivity;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarActivity;->hideQuickAddDialog(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/CalendarActivity;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mDatePicker:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/CalendarActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/calendar/CalendarActivity;->mDatePicker:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/calendar/CalendarActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    return-object v0
.end method

.method private hideQuickAddDialog(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 814
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 815
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 820
    const/16 v1, 0x102

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarActivity;->removeDialog(I)V

    .line 822
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    .line 823
    return-void
.end method

.method private loadCalendarTypeIcon()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 468
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 470
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/calendar/CalendarActivity$CalendarQueryHandler;

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/CalendarActivity$CalendarQueryHandler;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/content/ContentResolver;)V

    .line 471
    .local v0, qh:Lcom/android/calendar/CalendarActivity$CalendarQueryHandler;
    const/4 v1, 0x0

    sget-object v4, Lcom/android/calendar/CalendarActivity;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/CalendarActivity$CalendarQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-void
.end method


# virtual methods
.method eventsChanged()V
    .registers 3

    .prologue
    .line 508
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarInterface;

    .line 509
    .local v0, view:Lcom/android/calendar/CalendarInterface;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/calendar/CalendarInterface;->reloadEvents(Z)V

    .line 511
    return-void
.end method

.method public getAllDay()Z
    .registers 2

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method getCurrentCalendarView()Lcom/android/calendar/CalendarView;
    .registers 4

    .prologue
    .line 552
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 553
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Lcom/android/calendar/DayLayout;

    if-eqz v2, :cond_11

    .line 554
    check-cast v1, Lcom/android/calendar/DayLayout;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/calendar/DayLayout;->getDayView()Lcom/android/calendar/DayView;

    move-result-object v0

    .line 557
    .local v0, calendarView:Lcom/android/calendar/CalendarView;
    :goto_10
    return-object v0

    .end local v0           #calendarView:Lcom/android/calendar/CalendarView;
    .restart local v1       #view:Landroid/view/View;
    :cond_11
    move-object v0, v1

    .line 556
    check-cast v0, Lcom/android/calendar/CalendarView;

    .restart local v0       #calendarView:Lcom/android/calendar/CalendarView;
    goto :goto_10
.end method

.method public getEndMillis()J
    .registers 7

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    .line 929
    .local v0, calendarView:Lcom/android/calendar/CalendarView;
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 930
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getStartMillis()J

    move-result-wide v1

    .line 931
    .local v1, startMillis:J
    invoke-virtual {v3, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 933
    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    iget v5, v0, Lcom/android/calendar/CalendarView;->mNumDays:I

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v4, v5

    iput v4, v3, Landroid/text/format/Time;->monthDay:I

    .line 935
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    return-wide v4
.end method

.method public getFirstJulianDay()I
    .registers 3

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    .line 949
    .local v0, calendarView:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getFirstJulianDay()I

    move-result v1

    return v1
.end method

.method public getLastJulianDay()I
    .registers 3

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    .line 954
    .local v0, calendarView:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getLastJulianDay()I

    move-result v1

    return v1
.end method

.method public getNextCalendarView()Lcom/android/calendar/CalendarView;
    .registers 4

    .prologue
    .line 542
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    .line 543
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Lcom/android/calendar/DayLayout;

    if-eqz v2, :cond_11

    .line 544
    check-cast v1, Lcom/android/calendar/DayLayout;

    .end local v1           #view:Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/calendar/DayLayout;->getDayView()Lcom/android/calendar/DayView;

    move-result-object v0

    .line 547
    .local v0, calendarView:Lcom/android/calendar/CalendarView;
    :goto_10
    return-object v0

    .end local v0           #calendarView:Lcom/android/calendar/CalendarView;
    .restart local v1       #view:Landroid/view/View;
    :cond_11
    move-object v0, v1

    .line 546
    check-cast v0, Lcom/android/calendar/CalendarView;

    .restart local v0       #calendarView:Lcom/android/calendar/CalendarView;
    goto :goto_10
.end method

.method public getNextDay(Z)J
    .registers 5
    .parameter "isNext"

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    .line 401
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->getNextDay(Z)Landroid/text/format/Time;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .registers 3

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    .line 396
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedDayInMillis()J
    .registers 4

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    .line 391
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedDayInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectedTime()J
    .registers 3

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getSelectedTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedTimeInMillis()J
    .registers 4

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarInterface;

    .line 382
    .local v0, view:Lcom/android/calendar/CalendarInterface;
    invoke-interface {v0}, Lcom/android/calendar/CalendarInterface;->getSelectedTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public getStartMillis()J
    .registers 5

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    .line 940
    .local v0, calendarView:Lcom/android/calendar/CalendarView;
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 941
    .local v1, time:Landroid/text/format/Time;
    iget-object v2, v0, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 942
    invoke-static {v1}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 944
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    return-wide v2
.end method

.method public goTo(Landroid/text/format/Time;ZZ)V
    .registers 9
    .parameter "time"
    .parameter "animate"
    .parameter "doScroll"

    .prologue
    const/4 v4, 0x0

    .line 342
    iget-boolean v3, p0, Lcom/android/calendar/CalendarActivity;->mIsSwitching:Z

    if-eqz v3, :cond_6

    .line 371
    :goto_5
    return-void

    .line 345
    :cond_6
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarInterface;

    .line 346
    .local v0, current:Lcom/android/calendar/CalendarInterface;
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v1

    .line 347
    .local v1, dayView:Lcom/android/calendar/CalendarView;
    if-eqz p2, :cond_60

    .line 348
    iget-object v3, v1, Lcom/android/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v3, p1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 350
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 351
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 361
    :goto_2a
    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->releaseBriefMode()V

    .line 363
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/CalendarInterface;

    .line 365
    .local v2, next:Lcom/android/calendar/CalendarInterface;
    invoke-interface {v2}, Lcom/android/calendar/CalendarInterface;->resetFirstHour()V

    .line 366
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/calendar/CalendarInterface;->setSelectionMode(I)V

    .line 367
    invoke-interface {v2, p1}, Lcom/android/calendar/CalendarInterface;->setSelectedDay(Landroid/text/format/Time;)V

    .line 368
    invoke-interface {v2, p3}, Lcom/android/calendar/CalendarInterface;->reloadEvents(Z)V

    .line 369
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 370
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 353
    .end local v2           #next:Lcom/android/calendar/CalendarInterface;
    :cond_51
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 354
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2a

    .line 357
    :cond_60
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 358
    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2a
.end method

.method public goToToday()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 410
    new-instance v0, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 412
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v1

    .line 413
    .local v1, view:Lcom/android/calendar/CalendarView;
    iget v4, v1, Lcom/android/calendar/CalendarView;->mNumDays:I

    if-ne v4, v2, :cond_20

    :goto_1c
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 414
    return-void

    :cond_20
    move v2, v3

    .line 413
    goto :goto_1c
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 908
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 910
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2e

    const/4 v5, -0x1

    if-ne p2, v5, :cond_2e

    .line 911
    const-string v5, "date"

    const-wide/16 v6, -0x1

    invoke-virtual {p3, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 913
    .local v2, date:J
    const-string v5, "allday"

    invoke-virtual {p3, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 914
    .local v0, allday:Z
    if-eqz v0, :cond_2f

    .line 915
    new-instance v4, Landroid/text/format/Time;

    const-string v5, "UTC"

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 919
    .local v4, time:Landroid/text/format/Time;
    :goto_21
    invoke-virtual {v4, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 920
    invoke-virtual {p0, v4, v8, v8}, Lcom/android/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 921
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v1

    .line 922
    .local v1, calendarView:Lcom/android/calendar/CalendarView;
    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->scrollToEventHour()V

    .line 925
    .end local v0           #allday:Z
    .end local v1           #calendarView:Lcom/android/calendar/CalendarView;
    .end local v2           #date:J
    .end local v4           #time:Landroid/text/format/Time;
    :cond_2e
    return-void

    .line 917
    .restart local v0       #allday:Z
    .restart local v2       #date:J
    :cond_2f
    new-instance v4, Landroid/text/format/Time;

    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v4       #time:Landroid/text/format/Time;
    goto :goto_21
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarInterface;

    invoke-interface {v0}, Lcom/android/calendar/CalendarInterface;->clearScreen()V

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/CalendarActivity;->mIsSwitching:Z

    .line 895
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 900
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/CalendarActivity;->mIsSwitching:Z

    .line 904
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 828
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 833
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 834
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mDatePicker:Landroid/app/Dialog;

    invoke-static {v1, p1, v0}, Lcom/android/calendar/Utils;->hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V

    .line 835
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 189
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const-wide/32 v3, 0x400000

    invoke-virtual {v2, v3, v4}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 191
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/calendar/CalendarActivity;->setDefaultKeyMode(I)V

    .line 192
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 194
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    .line 195
    const v2, 0x7f040003

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    .line 196
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 197
    const v2, 0x7f040004

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    .line 198
    const v2, 0x7f040005

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    .line 199
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 203
    new-instance v2, Lcom/android/calendar/EventLoader;

    invoke-direct {v2, p0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 209
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 210
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "preferences_first_day_of_week"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/CalendarActivity;->mStartDay:I

    .line 214
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/calendar/CalendarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 216
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-direct {p0}, Lcom/android/calendar/CalendarActivity;->loadCalendarTypeIcon()V

    .line 218
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 20
    .parameter "id"

    .prologue
    .line 738
    packed-switch p1, :pswitch_data_c2

    .line 801
    const/4 v9, 0x0

    :goto_4
    return-object v9

    .line 742
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarActivity;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v15

    .line 756
    .local v15, time:Landroid/text/format/Time;
    new-instance v1, Lcom/android/calendar/TwDatePickerDialog;

    new-instance v3, Lcom/android/calendar/CalendarActivity$DateListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/calendar/CalendarActivity$DateListener;-><init>(Lcom/android/calendar/CalendarActivity;)V

    iget v4, v15, Landroid/text/format/Time;->year:I

    iget v5, v15, Landroid/text/format/Time;->month:I

    iget v6, v15, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/TwDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 758
    .local v1, twd:Lcom/android/calendar/TwDatePickerDialog;
    invoke-virtual {v1}, Lcom/android/calendar/TwDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    iget v5, v15, Landroid/text/format/Time;->year:I

    iget v6, v15, Landroid/text/format/Time;->month:I

    iget v7, v15, Landroid/text/format/Time;->monthDay:I

    new-instance v17, Lcom/android/calendar/CalendarActivity$DateChangeListener;

    invoke-direct/range {v17 .. v18}, Lcom/android/calendar/CalendarActivity$DateChangeListener;-><init>(Lcom/android/calendar/CalendarActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v5, v6, v7, v0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 759
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/CalendarActivity;->mDatePicker:Landroid/app/Dialog;

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarActivity;->mDatePicker:Landroid/app/Dialog;

    new-instance v5, Lcom/android/calendar/CalendarActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/calendar/CalendarActivity$11;-><init>(Lcom/android/calendar/CalendarActivity;)V

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/CalendarActivity;->mDatePicker:Landroid/app/Dialog;

    goto :goto_4

    .line 771
    .end local v1           #twd:Lcom/android/calendar/TwDatePickerDialog;
    .end local v15           #time:Landroid/text/format/Time;
    :pswitch_48
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v8

    .line 772
    .local v8, calendarView:Lcom/android/calendar/CalendarView;
    invoke-virtual {v8}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v13

    .line 773
    .local v13, selectedTime:J
    const/4 v10, 0x1

    .line 774
    .local v10, flag:I
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 775
    or-int/lit16 v10, v10, 0x80

    .line 779
    :goto_59
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v10, v2}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 782
    .local v16, titleString:Ljava/lang/String;
    const-string v2, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/calendar/CalendarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 783
    .local v11, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030025

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 784
    .local v3, quickAdd:Landroid/widget/EditText;
    new-instance v12, Lcom/android/calendar/Utils$LengthFilter;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/calendar/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    .line 785
    .local v12, lf:Lcom/android/calendar/Utils$LengthFilter;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v12, v2, v5

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 788
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b0034

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 789
    .local v4, padding:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v2 .. v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x7f0a0085

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x7f0a0077

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 795
    .local v9, dialog:Landroid/app/Dialog;
    goto/16 :goto_4

    .line 777
    .end local v3           #quickAdd:Landroid/widget/EditText;
    .end local v4           #padding:I
    .end local v9           #dialog:Landroid/app/Dialog;
    .end local v11           #inflater:Landroid/view/LayoutInflater;
    .end local v12           #lf:Lcom/android/calendar/Utils$LengthFilter;
    .end local v16           #titleString:Ljava/lang/String;
    :cond_bf
    or-int/lit8 v10, v10, 0x40

    goto :goto_59

    .line 738
    :pswitch_data_c2
    .packed-switch 0x101
        :pswitch_5
        :pswitch_48
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 631
    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 632
    const/4 v0, 0x0

    .line 634
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_7
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarInterface;

    .line 317
    .local v0, view:Lcom/android/calendar/CalendarInterface;
    invoke-interface {v0}, Lcom/android/calendar/CalendarInterface;->cleanup()V

    .line 318
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/CalendarInterface;
    check-cast v0, Lcom/android/calendar/CalendarInterface;

    .line 319
    .restart local v0       #view:Lcom/android/calendar/CalendarInterface;
    invoke-interface {v0}, Lcom/android/calendar/CalendarInterface;->cleanup()V

    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 322
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 241
    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v1

    .line 242
    .local v1, timeMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1c

    .line 243
    new-instance v0, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 245
    invoke-virtual {p0, v0, v5, v5}, Lcom/android/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 247
    .end local v0           #time:Landroid/text/format/Time;
    :cond_1c
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 639
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 648
    invoke-static {p0, p1, p0}, Lcom/android/calendar/MenuHelper;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 651
    :goto_e
    return v0

    .line 641
    :pswitch_f
    const/16 v1, 0x101

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarActivity;->showDialog(I)V

    goto :goto_e

    .line 651
    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_e

    .line 639
    :pswitch_data_1a
    .packed-switch 0xc
        :pswitch_f
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 289
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 290
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 291
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mCalendarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 292
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    .line 295
    .local v0, dayView:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->releaseBriefMode()V

    .line 306
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 15
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 656
    packed-switch p1, :pswitch_data_80

    .line 734
    .end local p2
    :goto_3
    return-void

    .line 661
    .restart local p2
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v7

    .line 678
    .local v7, time:Landroid/text/format/Time;
    check-cast p2, Landroid/app/DatePickerDialog;

    .end local p2
    iget v9, v7, Landroid/text/format/Time;->year:I

    iget v10, v7, Landroid/text/format/Time;->month:I

    iget v11, v7, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p2, v9, v10, v11}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_3

    .line 682
    .end local v7           #time:Landroid/text/format/Time;
    .restart local p2
    :pswitch_14
    const v9, 0x7f0f0010

    invoke-virtual {p2, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 683
    .local v4, quickAdd:Landroid/widget/EditText;
    new-instance v9, Lcom/android/calendar/CalendarActivity$6;

    invoke-direct {v9, p0, v4}, Lcom/android/calendar/CalendarActivity$6;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/widget/EditText;)V

    const-wide/16 v10, 0x32

    invoke-virtual {v4, v9, v10, v11}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 689
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    iput-object p2, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    .line 690
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v0

    .line 691
    .local v0, calendarView:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedHourTimeinMillis()J

    move-result-wide v5

    .line 692
    .local v5, selectedTime:J
    const/4 v1, 0x1

    .line 693
    .local v1, flag:I
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 694
    or-int/lit16 v1, v1, 0x80

    .line 698
    :goto_3c
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v5, v6, v1, v9}, Lcom/android/calendar/TwDateUtils;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 700
    .local v8, titleString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 702
    .local v3, positive:Landroid/widget/Button;
    new-instance v9, Lcom/android/calendar/CalendarActivity$7;

    invoke-direct {v9, p0, v4}, Lcom/android/calendar/CalendarActivity$7;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    const/4 v10, -0x2

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 709
    .local v2, negative:Landroid/widget/Button;
    new-instance v9, Lcom/android/calendar/CalendarActivity$8;

    invoke-direct {v9, p0, v4}, Lcom/android/calendar/CalendarActivity$8;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/calendar/CalendarActivity$9;

    invoke-direct {v10, p0, v4}, Lcom/android/calendar/CalendarActivity$9;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/widget/EditText;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 724
    iget-object v9, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/calendar/CalendarActivity$10;

    invoke-direct {v10, p0, v4}, Lcom/android/calendar/CalendarActivity$10;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/widget/EditText;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_3

    .line 696
    .end local v2           #negative:Landroid/widget/Button;
    .end local v3           #positive:Landroid/widget/Button;
    .end local v8           #titleString:Ljava/lang/String;
    :cond_7d
    or-int/lit8 v1, v1, 0x40

    goto :goto_3c

    .line 656
    :pswitch_data_80
    .packed-switch 0x101
        :pswitch_4
        :pswitch_14
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 625
    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 626
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 223
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/CalendarInterface;

    .line 224
    .local v1, view:Lcom/android/calendar/CalendarInterface;
    new-instance v0, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, time:Landroid/text/format/Time;
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 226
    invoke-interface {v1, v0}, Lcom/android/calendar/CalendarInterface;->setSelectedDay(Landroid/text/format/Time;)V

    .line 227
    invoke-interface {v1, p1}, Lcom/android/calendar/CalendarInterface;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 253
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    .line 254
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 255
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->updateView()V

    .line 256
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->eventsChanged()V

    .line 272
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/CalendarActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 281
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mCalendarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 283
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 234
    const-string v1, "key_restore_time"

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getSelectedTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 235
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarInterface;

    .line 236
    .local v0, view:Lcom/android/calendar/CalendarInterface;
    invoke-interface {v0, p1}, Lcom/android/calendar/CalendarInterface;->saveInstanceState(Landroid/os/Bundle;)V

    .line 237
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 807
    const/16 v0, 0x102

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarActivity;->removeDialog(I)V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    .line 810
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public switchViews(Z)Landroid/view/View;
    .registers 23
    .parameter "forward"

    .prologue
    .line 568
    if-eqz p1, :cond_5f

    .line 569
    const/high16 v4, 0x3f80

    .line 570
    .local v4, inFromXValue:F
    const/4 v6, 0x0

    .line 571
    .local v6, inToXValue:F
    const/16 v19, 0x0

    .line 572
    .local v19, outFromXValue:F
    const/high16 v11, -0x4080

    .line 582
    .local v11, outToXValue:F
    :goto_9
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 586
    .local v2, inAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v9, v19

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 592
    .local v7, outAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v17, 0x190

    .line 593
    .local v17, duration:J
    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 594
    move-wide/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v2}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v7}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/CalendarActivity;->getCurrentCalendarView()Lcom/android/calendar/CalendarView;

    move-result-object v16

    .line 606
    .local v16, dayView:Lcom/android/calendar/CalendarView;
    invoke-virtual/range {v16 .. v16}, Lcom/android/calendar/CalendarView;->releaseBriefMode()V

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/calendar/CalendarInterface;

    .line 609
    .local v20, view:Lcom/android/calendar/CalendarInterface;
    invoke-interface/range {v20 .. v20}, Lcom/android/calendar/CalendarInterface;->cleanup()V

    .line 611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/calendar/CalendarActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/calendar/CalendarActivity$5;-><init>(Lcom/android/calendar/CalendarActivity;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 620
    const/4 v3, 0x0

    return-object v3

    .line 574
    .end local v2           #inAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v4           #inFromXValue:F
    .end local v6           #inToXValue:F
    .end local v7           #outAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v11           #outToXValue:F
    .end local v16           #dayView:Lcom/android/calendar/CalendarView;
    .end local v17           #duration:J
    .end local v19           #outFromXValue:F
    .end local v20           #view:Lcom/android/calendar/CalendarInterface;
    :cond_5f
    const/high16 v4, -0x4080

    .line 575
    .restart local v4       #inFromXValue:F
    const/4 v6, 0x0

    .line 576
    .restart local v6       #inToXValue:F
    const/16 v19, 0x0

    .line 577
    .restart local v19       #outFromXValue:F
    const/high16 v11, 0x3f80

    .restart local v11       #outToXValue:F
    goto :goto_9
.end method

.method updateView()V
    .registers 7

    .prologue
    .line 426
    iget v1, p0, Lcom/android/calendar/CalendarActivity;->mStartDay:I

    .line 427
    .local v1, prevStartDay:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 428
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v4, "preferences_first_day_of_week"

    const-string v5, "1"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/CalendarActivity;->mStartDay:I

    .line 432
    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/CalendarInterface;

    .line 433
    .local v2, view1:Lcom/android/calendar/CalendarInterface;
    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/CalendarInterface;

    .line 437
    .local v3, view2:Lcom/android/calendar/CalendarInterface;
    invoke-interface {v3}, Lcom/android/calendar/CalendarInterface;->updateView()V

    .line 438
    invoke-interface {v2}, Lcom/android/calendar/CalendarInterface;->updateView()V

    .line 450
    return-void
.end method
