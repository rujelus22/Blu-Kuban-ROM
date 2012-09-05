.class public Lcom/android/calendar/DayEventListActivity;
.super Landroid/app/Activity;
.source "DayEventListActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/android/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DayEventListActivity$DateListener;,
        Lcom/android/calendar/DayEventListActivity$DateChangeListener;,
        Lcom/android/calendar/DayEventListActivity$CalendarGestureListener;
    }
.end annotation


# instance fields
.field private fromDay:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDatePicker:Landroid/app/Dialog;

.field mEventLoader:Lcom/android/calendar/EventLoader;

.field mGestureDetector:Landroid/view/GestureDetector;

.field protected mInAnimationBackward:Landroid/view/animation/Animation;

.field protected mInAnimationForward:Landroid/view/animation/Animation;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field protected mOutAnimationBackward:Landroid/view/animation/Animation;

.field protected mOutAnimationForward:Landroid/view/animation/Animation;

.field mSelectedDay:Landroid/text/format/Time;

.field private mSwitchContainer:Landroid/widget/LinearLayout;

.field protected mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayEventListActivity;->fromDay:I

    .line 117
    new-instance v0, Lcom/android/calendar/DayEventListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayEventListActivity$1;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 131
    new-instance v0, Lcom/android/calendar/DayEventListActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/DayEventListActivity$2;-><init>(Lcom/android/calendar/DayEventListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mObserver:Landroid/database/ContentObserver;

    .line 784
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/DayEventListActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/DayEventListActivity;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/DayEventListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;

    return-object p1
.end method

.method private initView()V
    .registers 10

    .prologue
    .line 210
    const v7, 0x7f0f0035

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ViewSwitcher;

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 211
    iget-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 212
    iget-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0f0036

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 214
    const v7, 0x7f0f0002

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    .line 216
    const v7, 0x7f0f0006

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 217
    .local v1, listbutton:Landroid/widget/Button;
    new-instance v7, Lcom/android/calendar/DayEventListActivity$3;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$3;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v7, 0x7f0f0004

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 230
    .local v6, weekButton:Landroid/widget/Button;
    new-instance v7, Lcom/android/calendar/DayEventListActivity$4;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$4;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    const v7, 0x7f0f0003

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 243
    .local v2, monthButton:Landroid/widget/Button;
    new-instance v7, Lcom/android/calendar/DayEventListActivity$5;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$5;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v7, 0x7f0f0005

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 256
    .local v0, dayButton:Landroid/widget/Button;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 258
    new-instance v7, Lcom/android/calendar/DayEventListActivity$6;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$6;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 278
    const v7, 0x7f0f0031

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 279
    .local v5, title:Landroid/view/View;
    new-instance v7, Lcom/android/calendar/DayEventListActivity$7;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$7;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v7, 0x7f0f0030

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 286
    .local v4, prevBtn:Landroid/widget/Button;
    new-instance v7, Lcom/android/calendar/DayEventListActivity$8;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$8;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v7, 0x7f0f0034

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 298
    .local v3, nextBtn:Landroid/widget/Button;
    new-instance v7, Lcom/android/calendar/DayEventListActivity$9;

    invoke-direct {v7, p0}, Lcom/android/calendar/DayEventListActivity$9;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    return-void
.end method


# virtual methods
.method eventsChanged(I)V
    .registers 5
    .parameter "fp"

    .prologue
    .line 495
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    .line 497
    .local v0, view:Lcom/android/calendar/DayEventListView;
    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->clearCachedEvents()V

    .line 498
    invoke-virtual {v0, p1}, Lcom/android/calendar/DayEventListView;->reloadEvents(I)V

    .line 499
    return-void
.end method

.method public getAllDay()Z
    .registers 4

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    .line 491
    .local v0, view:Lcom/android/calendar/DayEventListView;
    iget-boolean v1, v0, Lcom/android/calendar/DayEventListView;->mSelectionAllDay:Z

    return v1
.end method

.method public getEndMillis()J
    .registers 3

    .prologue
    .line 820
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFirstJulianDay()I
    .registers 4

    .prologue
    .line 833
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    .line 835
    .local v0, view:Lcom/android/calendar/DayEventListView;
    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getSelectionDay()I

    move-result v1

    return v1
.end method

.method public getLastJulianDay()I
    .registers 2

    .prologue
    .line 840
    const/4 v0, 0x0

    return v0
.end method

.method public getNextDay(Z)J
    .registers 6
    .parameter "isNext"

    .prologue
    .line 523
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 524
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    .line 525
    .local v0, list:Lcom/android/calendar/DayEventListView;
    invoke-virtual {v0, p1}, Lcom/android/calendar/DayEventListView;->getNextDay(Z)Landroid/text/format/Time;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    return-wide v2
.end method

.method public getNextView()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getSelectedTime()J
    .registers 3

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedTimeInMillis()J
    .registers 4

    .prologue
    .line 471
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    .line 473
    .local v0, view:Lcom/android/calendar/DayEventListView;
    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getSelectedTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public getStartMillis()J
    .registers 5

    .prologue
    .line 824
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayEventListView;

    .line 826
    .local v1, view:Lcom/android/calendar/DayEventListView;
    new-instance v0, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 827
    .local v0, time:Landroid/text/format/Time;
    iget-object v2, v1, Lcom/android/calendar/DayEventListView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 828
    invoke-static {v0}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 829
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    return-wide v2
.end method

.method public goTo(Landroid/text/format/Time;ZZ)V
    .registers 9
    .parameter "time"
    .parameter "animate"
    .parameter "doScroll"

    .prologue
    const v4, 0x7f0f0036

    .line 439
    invoke-static {p1}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 461
    :goto_9
    return-void

    .line 443
    :cond_a
    if-eqz p2, :cond_30

    .line 444
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    .line 446
    .local v0, current:Lcom/android/calendar/DayEventListView;
    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 447
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 448
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 455
    .end local v0           #current:Lcom/android/calendar/DayEventListView;
    :cond_30
    :goto_30
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayEventListView;

    .line 457
    .local v1, next:Lcom/android/calendar/DayEventListView;
    invoke-virtual {v1, p1}, Lcom/android/calendar/DayEventListView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 458
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/calendar/DayEventListView;->reloadEvents(I)V

    .line 459
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 460
    invoke-virtual {v1}, Lcom/android/calendar/DayEventListView;->requestFocus()Z

    goto :goto_9

    .line 450
    .end local v1           #next:Lcom/android/calendar/DayEventListView;
    .restart local v0       #current:Lcom/android/calendar/DayEventListView;
    :cond_4c
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 451
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_30
.end method

.method public goToToday()V
    .registers 5

    .prologue
    .line 481
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 482
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    .line 484
    .local v0, view:Lcom/android/calendar/DayEventListView;
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayEventListView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 485
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayEventListView;->reloadEvents(I)V

    .line 486
    return-void
.end method

.method public makeView()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v5, -0x1

    .line 728
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 730
    .local v1, switchView:Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    .line 736
    .local v0, list:Lcom/android/calendar/DayEventListView;
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Lcom/android/calendar/DayEventListView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 738
    const v2, 0x7f0f0076

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 748
    return-object v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 802
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 804
    const/4 v4, 0x1

    if-ne p1, v4, :cond_27

    const/4 v4, -0x1

    if-ne p2, v4, :cond_27

    .line 805
    const-string v4, "date"

    const-wide/16 v5, -0x1

    invoke-virtual {p3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 807
    .local v1, date:J
    const-string v4, "allday"

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 808
    .local v0, allday:Z
    if-eqz v0, :cond_28

    .line 809
    new-instance v3, Landroid/text/format/Time;

    const-string v4, "UTC"

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 813
    .local v3, time:Landroid/text/format/Time;
    :goto_21
    invoke-virtual {v3, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 814
    invoke-virtual {p0, v3, v7, v7}, Lcom/android/calendar/DayEventListActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 816
    .end local v0           #allday:Z
    .end local v1           #date:J
    .end local v3           #time:Landroid/text/format/Time;
    :cond_27
    return-void

    .line 811
    .restart local v0       #allday:Z
    .restart local v1       #date:J
    :cond_28
    new-instance v3, Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v3       #time:Landroid/text/format/Time;
    goto :goto_21
.end method

.method public onBackPressed()V
    .registers 6

    .prologue
    const v4, 0x7f040005

    const v3, 0x7f040004

    .line 394
    iget v0, p0, Lcom/android/calendar/DayEventListActivity;->fromDay:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 395
    const-class v0, Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 397
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->finish()V

    .line 398
    invoke-virtual {p0, v3, v4}, Lcom/android/calendar/DayEventListActivity;->overridePendingTransition(II)V

    .line 405
    :cond_1e
    :goto_1e
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 406
    return-void

    .line 399
    :cond_22
    iget v0, p0, Lcom/android/calendar/DayEventListActivity;->fromDay:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 400
    const-class v0, Lcom/android/calendar/WeekActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 402
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->finish()V

    .line 403
    invoke-virtual {p0, v3, v4}, Lcom/android/calendar/DayEventListActivity;->overridePendingTransition(II)V

    goto :goto_1e
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "newConfig"

    .prologue
    .line 410
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 412
    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0f0036

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/DayEventListView;

    .line 414
    .local v2, view:Lcom/android/calendar/DayEventListView;
    invoke-virtual {v2}, Lcom/android/calendar/DayEventListView;->getFirstVisiblePosition()I

    move-result v0

    .line 415
    .local v0, firstPos:I
    invoke-virtual {v2}, Lcom/android/calendar/DayEventListView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 417
    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 419
    const v3, 0x7f030014

    invoke-virtual {p0, v3}, Lcom/android/calendar/DayEventListActivity;->setContentView(I)V

    .line 421
    invoke-direct {p0}, Lcom/android/calendar/DayEventListActivity;->initView()V

    .line 423
    invoke-virtual {p0, v0}, Lcom/android/calendar/DayEventListActivity;->eventsChanged(I)V

    .line 425
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/calendar/DayEventListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 426
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;

    invoke-static {v3, p1, v1}, Lcom/android/calendar/Utils;->hideSIP(Landroid/app/Dialog;Landroid/content/res/Configuration;Landroid/view/inputmethod/InputMethodManager;)V

    .line 431
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 148
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v7, "preferences_day_view"

    sget-object v8, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, startActivityId:Ljava/lang/String;
    sget-boolean v7, Lcom/android/calendar/Utils;->CHECK_ACCOUNT:Z

    if-eqz v7, :cond_65

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_65

    .line 156
    if-nez p1, :cond_65

    .line 157
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "com.google"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 158
    .local v3, googleAccounts:[Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "com.android.exchange"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 160
    .local v1, exchangeAccounts:[Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 162
    .local v2, facebookAccounts:[Landroid/accounts/Account;
    array-length v7, v3

    array-length v8, v1

    add-int/2addr v7, v8

    array-length v8, v2

    add-int v0, v7, v8

    .line 164
    .local v0, calendarAccountSum:I
    if-nez v0, :cond_65

    .line 171
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v4, intent:Landroid/content/Intent;
    const/high16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 173
    const-string v7, "authorities"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "com.android.calendar"

    aput-object v9, v8, v10

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v4}, Lcom/android/calendar/DayEventListActivity;->startActivity(Landroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->finish()V

    .line 188
    .end local v0           #calendarAccountSum:I
    .end local v1           #exchangeAccounts:[Landroid/accounts/Account;
    .end local v2           #facebookAccounts:[Landroid/accounts/Account;
    .end local v3           #googleAccounts:[Landroid/accounts/Account;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_65
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    const-wide/32 v8, 0x400000

    invoke-virtual {v7, v8, v9}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 190
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->setDefaultKeyMode(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 193
    const v7, 0x7f040002

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    .line 194
    const v7, 0x7f040003

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    .line 195
    const v7, 0x7f040004

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    .line 196
    const v7, 0x7f040005

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    .line 198
    new-instance v7, Landroid/view/GestureDetector;

    new-instance v8, Lcom/android/calendar/DayEventListActivity$CalendarGestureListener;

    invoke-direct {v8, p0}, Lcom/android/calendar/DayEventListActivity$CalendarGestureListener;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-direct {v7, p0, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 199
    new-instance v7, Lcom/android/calendar/EventLoader;

    invoke-direct {v7, p0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 201
    const v7, 0x7f030014

    invoke-virtual {p0, v7}, Lcom/android/calendar/DayEventListActivity;->setContentView(I)V

    .line 203
    new-instance v7, Landroid/text/format/Time;

    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 204
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/calendar/Utils;->timeFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/text/format/Time;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 205
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "startDayfromWhere"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/calendar/DayEventListActivity;->fromDay:I

    .line 206
    invoke-direct {p0}, Lcom/android/calendar/DayEventListActivity;->initView()V

    .line 207
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 639
    packed-switch p1, :pswitch_data_48

    .line 675
    :goto_4
    return-object v1

    .line 641
    :pswitch_5
    new-instance v6, Landroid/text/format/Time;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 642
    .local v6, time:Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTime()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 656
    new-instance v0, Lcom/android/calendar/TwDatePickerDialog;

    new-instance v2, Lcom/android/calendar/DayEventListActivity$DateListener;

    invoke-direct {v2, p0, v1}, Lcom/android/calendar/DayEventListActivity$DateListener;-><init>(Lcom/android/calendar/DayEventListActivity;Lcom/android/calendar/DayEventListActivity$1;)V

    iget v3, v6, Landroid/text/format/Time;->year:I

    iget v4, v6, Landroid/text/format/Time;->month:I

    iget v5, v6, Landroid/text/format/Time;->monthDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/TwDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 659
    .local v0, twd:Lcom/android/calendar/TwDatePickerDialog;
    invoke-virtual {v0}, Lcom/android/calendar/TwDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    iget v2, v6, Landroid/text/format/Time;->year:I

    iget v3, v6, Landroid/text/format/Time;->month:I

    iget v4, v6, Landroid/text/format/Time;->monthDay:I

    new-instance v5, Lcom/android/calendar/DayEventListActivity$DateChangeListener;

    invoke-direct {v5, p0}, Lcom/android/calendar/DayEventListActivity$DateChangeListener;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 660
    iput-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;

    .line 663
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;

    new-instance v2, Lcom/android/calendar/DayEventListActivity$10;

    invoke-direct {v2, p0}, Lcom/android/calendar/DayEventListActivity$10;-><init>(Lcom/android/calendar/DayEventListActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 669
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mDatePicker:Landroid/app/Dialog;

    goto :goto_4

    .line 639
    nop

    :pswitch_data_48
    .packed-switch 0x101
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 583
    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 584
    const/4 v0, 0x0

    .line 586
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_7
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 328
    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v1

    .line 329
    .local v1, timeMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1b

    .line 330
    new-instance v0, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 332
    invoke-virtual {p0, v0, v5, v5}, Lcom/android/calendar/DayEventListActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 334
    .end local v0           #time:Landroid/text/format/Time;
    :cond_1b
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 591
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 600
    invoke-static {p0, p1, p0}, Lcom/android/calendar/MenuHelper;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 603
    :goto_e
    return v0

    .line 593
    :pswitch_f
    const/16 v1, 0x101

    invoke-virtual {p0, v1}, Lcom/android/calendar/DayEventListActivity;->showDialog(I)V

    goto :goto_e

    .line 603
    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_e

    .line 591
    :pswitch_data_1a
    .packed-switch 0xc
        :pswitch_f
    .end packed-switch
.end method

.method protected onPause()V
    .registers 5

    .prologue
    const v3, 0x7f0f0036

    .line 380
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 381
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 382
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/calendar/DayEventListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 384
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayEventListView;

    .line 386
    .local v0, view:Lcom/android/calendar/DayEventListView;
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/DayEventListView;
    check-cast v0, Lcom/android/calendar/DayEventListView;

    .line 387
    .restart local v0       #view:Lcom/android/calendar/DayEventListView;
    iget-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 389
    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayEventListActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 391
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 7
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 608
    packed-switch p1, :pswitch_data_22

    .line 635
    .end local p2
    :goto_3
    return-void

    .line 610
    .restart local p2
    :pswitch_4
    new-instance v0, Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 628
    check-cast p2, Landroid/app/DatePickerDialog;

    .end local p2
    iget v1, v0, Landroid/text/format/Time;->year:I

    iget v2, v0, Landroid/text/format/Time;->month:I

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p2, v1, v2, v3}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_3

    .line 608
    nop

    :pswitch_data_22
    .packed-switch 0x101
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 577
    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 578
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 315
    if-nez p1, :cond_6

    .line 324
    :goto_5
    return-void

    .line 318
    :cond_6
    iget-object v2, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayEventListView;

    .line 320
    .local v1, view:Lcom/android/calendar/DayEventListView;
    new-instance v0, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, time:Landroid/text/format/Time;
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 322
    invoke-virtual {v1, v0}, Lcom/android/calendar/DayEventListView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 323
    const-string v2, "startDayfromWhere"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/DayEventListActivity;->fromDay:I

    goto :goto_5
.end method

.method protected onResume()V
    .registers 11

    .prologue
    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 340
    iget-object v6, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v6, :cond_19

    .line 341
    iget-object v6, p0, Lcom/android/calendar/DayEventListActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v5

    .line 342
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0f0036

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayEventListView;

    .line 343
    .local v1, list:Lcom/android/calendar/DayEventListView;
    invoke-virtual {v1}, Lcom/android/calendar/DayEventListView;->updateTitle()V

    .line 345
    .end local v1           #list:Lcom/android/calendar/DayEventListView;
    .end local v5           #view:Landroid/view/View;
    :cond_19
    iget-object v6, p0, Lcom/android/calendar/DayEventListActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v6}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    .line 346
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/calendar/DayEventListActivity;->eventsChanged(I)V

    .line 349
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 351
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v6, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    iget-object v6, p0, Lcom/android/calendar/DayEventListActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/android/calendar/DayEventListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    iget-object v6, p0, Lcom/android/calendar/DayEventListActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/calendar/DayEventListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 358
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 359
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v6, "preferences_day_view"

    sget-object v7, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, startActivityId:Ljava/lang/String;
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_6e

    .line 362
    sget-object v6, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v3, v6, v7

    .line 364
    .local v3, startActivity:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTime()J

    move-result-wide v6

    invoke-static {p0, v3, v6, v7}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 365
    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->finish()V

    .line 368
    .end local v3           #startActivity:Ljava/lang/String;
    :cond_6e
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 374
    const-string v0, "key_restore_time"

    invoke-virtual {p0}, Lcom/android/calendar/DayEventListActivity;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 375
    const-string v0, "startDayfromWhere"

    iget v1, p0, Lcom/android/calendar/DayEventListActivity;->fromDay:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 683
    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
