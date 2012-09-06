.class public Lcom/android/calendar/DayFragment;
.super Landroid/app/Fragment;
.source "DayFragment.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# instance fields
.field mEventLoader:Lcom/android/calendar/EventLoader;

.field protected mInAnimationBackward:Landroid/view/animation/Animation;

.field protected mInAnimationForward:Landroid/view/animation/Animation;

.field private mNumDays:I

.field protected mOutAnimationBackward:Landroid/view/animation/Animation;

.field protected mOutAnimationForward:Landroid/view/animation/Animation;

.field mSelectedDay:Landroid/text/format/Time;

.field private mTZUpdater:Ljava/lang/Runnable;

.field protected mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    .line 59
    new-instance v0, Lcom/android/calendar/DayFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayFragment$1;-><init>(Lcom/android/calendar/DayFragment;)V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 74
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 75
    return-void
.end method

.method public constructor <init>(JI)V
    .registers 6
    .parameter "timeMillis"
    .parameter "numOfDays"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    .line 59
    new-instance v0, Lcom/android/calendar/DayFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayFragment$1;-><init>(Lcom/android/calendar/DayFragment;)V

    iput-object v0, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 78
    iput p3, p0, Lcom/android/calendar/DayFragment;->mNumDays:I

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1f

    .line 80
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 84
    :goto_1e
    return-void

    .line 82
    :cond_1f
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    goto :goto_1e
.end method

.method static synthetic access$000(Lcom/android/calendar/DayFragment;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private goTo(Landroid/text/format/Time;ZZ)V
    .registers 9
    .parameter "goToTime"
    .parameter "ignoreTime"
    .parameter "animateToday"

    .prologue
    .line 170
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v3, :cond_a

    .line 172
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 206
    :goto_9
    return-void

    .line 176
    :cond_a
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 179
    .local v0, currentView:Lcom/android/calendar/DayView;
    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->compareToVisibleTimeRange(Landroid/text/format/Time;)I

    move-result v1

    .line 181
    .local v1, diff:I
    if-nez v1, :cond_1c

    .line 183
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    goto :goto_9

    .line 186
    :cond_1c
    if-lez v1, :cond_52

    .line 187
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 188
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 194
    :goto_2c
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/DayView;

    .line 195
    .local v2, next:Lcom/android/calendar/DayView;
    if-eqz p2, :cond_3d

    .line 196
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->getFirstVisibleHour()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/DayView;->setFirstVisibleHour(I)V

    .line 199
    :cond_3d
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    .line 200
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 201
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 202
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->requestFocus()Z

    .line 203
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->updateTitle()V

    .line 204
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->restartCurrentTimeUpdates()V

    goto :goto_9

    .line 190
    .end local v2           #next:Lcom/android/calendar/DayView;
    :cond_52
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 191
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2c
.end method


# virtual methods
.method public eventsChanged()V
    .registers 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v1, :cond_5

    .line 236
    :goto_4
    return-void

    .line 230
    :cond_5
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 231
    .local v0, view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->clearCachedEvents()V

    .line 232
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 234
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/DayView;
    check-cast v0, Lcom/android/calendar/DayView;

    .line 235
    .restart local v0       #view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->clearCachedEvents()V

    goto :goto_4
.end method

.method public getSelectedTimeInMillis()J
    .registers 5

    .prologue
    const-wide/16 v1, -0x1

    .line 216
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v3, :cond_7

    .line 223
    :cond_6
    :goto_6
    return-wide v1

    .line 219
    :cond_7
    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 220
    .local v0, view:Lcom/android/calendar/DayView;
    if-eqz v0, :cond_6

    .line 223
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    goto :goto_6
.end method

.method public getSupportedEventTypes()J
    .registers 3

    .prologue
    .line 258
    const-wide/16 v0, 0xa0

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .registers 12
    .parameter "msg"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    iget-wide v3, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v5, 0x20

    cmp-long v0, v3, v5

    if-nez v0, :cond_29

    .line 266
    iget-object v3, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-wide v4, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-eqz v0, :cond_25

    move v0, v1

    :goto_18
    iget-wide v4, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_27

    :goto_21
    invoke-direct {p0, v3, v0, v1}, Lcom/android/calendar/DayFragment;->goTo(Landroid/text/format/Time;ZZ)V

    .line 271
    :cond_24
    :goto_24
    return-void

    :cond_25
    move v0, v2

    .line 266
    goto :goto_18

    :cond_27
    move v1, v2

    goto :goto_21

    .line 268
    :cond_29
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 269
    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->eventsChanged()V

    goto :goto_24
.end method

.method public makeView()Landroid/view/View;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 114
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 115
    new-instance v0, Lcom/android/calendar/DayView;

    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcom/android/calendar/DayFragment;->mEventLoader:Lcom/android/calendar/EventLoader;

    iget v5, p0, Lcom/android/calendar/DayFragment;->mNumDays:I

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/DayView;-><init>(Landroid/content/Context;Lcom/android/calendar/CalendarController;Landroid/widget/ViewSwitcher;Lcom/android/calendar/EventLoader;I)V

    .line 117
    .local v0, view:Lcom/android/calendar/DayView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->setId(I)V

    .line 118
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1, v7, v7}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    .line 121
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 92
    .local v0, context:Landroid/content/Context;
    const/high16 v1, 0x7f05

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mInAnimationForward:Landroid/view/animation/Animation;

    .line 93
    const v1, 0x7f050001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mOutAnimationForward:Landroid/view/animation/Animation;

    .line 94
    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mInAnimationBackward:Landroid/view/animation/Animation;

    .line 95
    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mOutAnimationBackward:Landroid/view/animation/Animation;

    .line 97
    new-instance v1, Lcom/android/calendar/EventLoader;

    invoke-direct {v1, v0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 103
    const v1, 0x7f04001a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, v:Landroid/view/View;
    const v1, 0x7f10003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 106
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 107
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 108
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayView;

    invoke-virtual {v1}, Lcom/android/calendar/DayView;->updateTitle()V

    .line 110
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 152
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 153
    .local v0, view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->cleanup()V

    .line 154
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/DayView;
    check-cast v0, Lcom/android/calendar/DayView;

    .line 155
    .restart local v0       #view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->cleanup()V

    .line 156
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 157
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 127
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    .line 128
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 129
    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->eventsChanged()V

    .line 130
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/DayView;

    .line 131
    .local v0, view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->handleOnResume()V

    .line 132
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->restartCurrentTimeUpdates()V

    .line 134
    iget-object v1, p0, Lcom/android/calendar/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/DayView;
    check-cast v0, Lcom/android/calendar/DayView;

    .line 135
    .restart local v0       #view:Lcom/android/calendar/DayView;
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->handleOnResume()V

    .line 136
    invoke-virtual {v0}, Lcom/android/calendar/DayView;->restartCurrentTimeUpdates()V

    .line 137
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/calendar/DayFragment;->getSelectedTimeInMillis()J

    move-result-wide v0

    .line 144
    .local v0, time:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 145
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 147
    :cond_12
    return-void
.end method
