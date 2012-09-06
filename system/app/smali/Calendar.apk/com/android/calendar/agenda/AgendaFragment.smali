.class public Lcom/android/calendar/agenda/AgendaFragment;
.super Landroid/app/Fragment;
.source "AgendaFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# static fields
.field private static DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

.field private mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mEventFragment:Lcom/android/calendar/EventInfoFragment;

.field private mInitialTimeMillis:J

.field private mIsTabletConfig:Z

.field mJulianDayOnTop:I

.field private mLastHandledEventId:J

.field private mLastHandledEventTime:Landroid/text/format/Time;

.field private mOnAttachAllDay:Z

.field private mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

.field private mQuery:Ljava/lang/String;

.field private mShowEventDetailsWithAgenda:Z

.field private mTZUpdater:Ljava/lang/Runnable;

.field private mTime:Landroid/text/format/Time;

.field private mTimeZone:Ljava/lang/String;

.field private mUsedForSearch:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-class v0, Lcom/android/calendar/agenda/AgendaFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 86
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    .line 87
    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 8
    .parameter "timeMillis"
    .parameter "usedForSearch"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mUsedForSearch:Z

    .line 69
    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    .line 70
    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachAllDay:Z

    .line 71
    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mJulianDayOnTop:I

    .line 77
    new-instance v0, Lcom/android/calendar/agenda/AgendaFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaFragment$1;-><init>(Lcom/android/calendar/agenda/AgendaFragment;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 312
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    .line 313
    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 93
    iput-wide p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mInitialTimeMillis:J

    .line 94
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    .line 95
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mInitialTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_36

    .line 96
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 100
    :goto_33
    iput-boolean p3, p0, Lcom/android/calendar/agenda/AgendaFragment;->mUsedForSearch:Z

    .line 101
    return-void

    .line 98
    :cond_36
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-wide v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mInitialTimeMillis:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto :goto_33
.end method

.method static synthetic access$000(Lcom/android/calendar/agenda/AgendaFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaFragment;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/agenda/AgendaFragment;)Lcom/android/calendar/CalendarController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    return-object v0
.end method

.method private goTo(Lcom/android/calendar/CalendarController$EventInfo;Z)V
    .registers 15
    .parameter "event"
    .parameter "animate"

    .prologue
    const/4 v5, 0x0

    .line 268
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-nez v0, :cond_d

    .line 271
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 286
    :goto_c
    return-void

    .line 276
    :cond_d
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 279
    :cond_29
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 281
    :cond_30
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    iget-wide v8, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_59

    iget-boolean v6, p0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-eqz v6, :cond_59

    const/4 v6, 0x1

    :goto_48
    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 284
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaListView;->getSelectedViewHolder()Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    move-result-object v7

    .line 285
    .local v7, vh:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    if-eqz v7, :cond_55

    iget-boolean v5, v7, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    :cond_55
    invoke-direct {p0, p1, v5}, Lcom/android/calendar/agenda/AgendaFragment;->showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;Z)V

    goto :goto_c

    .end local v7           #vh:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    :cond_59
    move v6, v5

    .line 281
    goto :goto_48
.end method

.method private search(Ljava/lang/String;Landroid/text/format/Time;)V
    .registers 10
    .parameter "query"
    .parameter "time"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    .line 290
    if-eqz p2, :cond_9

    .line 291
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 293
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-nez v0, :cond_e

    .line 298
    :goto_d
    return-void

    .line 297
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    goto :goto_d
.end method

.method private showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;Z)V
    .registers 16
    .parameter "event"
    .parameter "allDay"

    .prologue
    .line 335
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    .line 336
    sget-object v0, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEventInfo, event ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_22
    :goto_22
    return-void

    .line 341
    :cond_23
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-eqz v0, :cond_22

    .line 342
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    .line 343
    .local v11, fragmentManager:Landroid/app/FragmentManager;
    if-nez v11, :cond_32

    .line 346
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    .line 347
    iput-boolean p2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachAllDay:Z

    goto :goto_22

    .line 350
    :cond_32
    invoke-virtual {v11}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v12

    .line 351
    .local v12, ft:Landroid/app/FragmentTransaction;
    const/4 v8, -0x1

    .line 352
    .local v8, response:I
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_47

    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-nez v0, :cond_4a

    .line 354
    :cond_47
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    long-to-int v8, v0

    .line 357
    :cond_4a
    if-eqz p2, :cond_58

    .line 358
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const-string v1, "UTC"

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 359
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const-string v1, "UTC"

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 362
    :cond_58
    new-instance v0, Lcom/android/calendar/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iget-object v4, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-object v6, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZI)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mEventFragment:Lcom/android/calendar/EventInfoFragment;

    .line 365
    const v0, 0x7f100010

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mEventFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v12, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 366
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    const v1, 0x7f100010

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mEventFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 368
    invoke-virtual {v12}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_22
.end method


# virtual methods
.method public eventsChanged()V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-eqz v0, :cond_a

    .line 303
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaListView;->refresh(Z)V

    .line 305
    :cond_a
    return-void
.end method

.method public getSupportedEventTypes()J
    .registers 5

    .prologue
    .line 309
    const-wide/16 v2, 0xa0

    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mUsedForSearch:Z

    if-eqz v0, :cond_a

    const-wide/16 v0, 0x100

    :goto_8
    or-long/2addr v0, v2

    return-wide v0

    :cond_a
    const-wide/16 v0, 0x0

    goto :goto_8
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 316
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 320
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    .line 321
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 322
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/agenda/AgendaFragment;->goTo(Lcom/android/calendar/CalendarController$EventInfo;Z)V

    .line 328
    :cond_14
    :goto_14
    return-void

    .line 323
    :cond_15
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x100

    cmp-long v0, v0, v2

    if-nez v0, :cond_25

    .line 324
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/agenda/AgendaFragment;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    goto :goto_14

    .line 325
    :cond_25
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 326
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaFragment;->eventsChanged()V

    goto :goto_14
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 106
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    .line 109
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    if-eqz v0, :cond_22

    .line 110
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    iget-boolean v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachAllDay:Z

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/agenda/AgendaFragment;->showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;Z)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    .line 113
    :cond_22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const-wide/16 v4, -0x1

    .line 117
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    .line 119
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090003

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    .line 121
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090006

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mIsTabletConfig:Z

    .line 123
    if-eqz p1, :cond_56

    .line 124
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 125
    .local v0, prevTime:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_56

    .line 126
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 127
    sget-boolean v2, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    if-eqz v2, :cond_56

    .line 128
    sget-object v2, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring time to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0           #prevTime:J
    :cond_56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    .line 139
    const v5, 0x7f040005

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 141
    .local v4, v:Landroid/view/View;
    const v5, 0x7f10000f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/agenda/AgendaListView;

    iput-object v5, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    .line 142
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v5, v7}, Lcom/android/calendar/agenda/AgendaListView;->setClickable(Z)V

    .line 144
    if-eqz p3, :cond_2c

    .line 145
    const-string v5, "key_restore_instance_id"

    invoke-virtual {p3, v5, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 146
    .local v1, instanceId:J
    cmp-long v5, v1, v8

    if-eqz v5, :cond_2c

    .line 147
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v5, v1, v2}, Lcom/android/calendar/agenda/AgendaListView;->setSelectedInstanceId(J)V

    .line 151
    .end local v1           #instanceId:J
    :cond_2c
    iget-boolean v5, p0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-nez v5, :cond_3c

    .line 152
    const v5, 0x7f100010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_3c
    const v5, 0x7f10000e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/StickyHeaderListView;

    .line 158
    .local v3, lv:Lcom/android/calendar/StickyHeaderListView;
    if-eqz v3, :cond_79

    .line 159
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v5}, Lcom/android/calendar/agenda/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 160
    .local v0, a:Landroid/widget/Adapter;
    invoke-virtual {v3, v0}, Lcom/android/calendar/StickyHeaderListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 161
    instance-of v5, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v5, :cond_7a

    .line 162
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0           #a:Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iput-object v5, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 163
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v3, v5}, Lcom/android/calendar/StickyHeaderListView;->setIndexer(Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;)V

    .line 164
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v3, v5}, Lcom/android/calendar/StickyHeaderListView;->setHeaderHeightListener(Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;)V

    .line 175
    :goto_68
    invoke-virtual {v3, p0}, Lcom/android/calendar/StickyHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08003c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5, v7}, Lcom/android/calendar/StickyHeaderListView;->setHeaderSeparator(II)V

    .line 178
    :cond_79
    return-object v4

    .line 165
    .restart local v0       #a:Landroid/widget/Adapter;
    :cond_7a
    instance-of v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;

    if-eqz v5, :cond_8d

    .line 166
    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .end local v0           #a:Landroid/widget/Adapter;
    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 167
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v3, v5}, Lcom/android/calendar/StickyHeaderListView;->setIndexer(Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;)V

    .line 168
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v3, v5}, Lcom/android/calendar/StickyHeaderListView;->setHeaderHeightListener(Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;)V

    goto :goto_68

    .line 170
    .restart local v0       #a:Landroid/widget/Adapter;
    :cond_8d
    sget-object v5, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    const-string v6, "Cannot find HeaderIndexer for StickyHeaderListView"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 259
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaListView;->onPause()V

    .line 265
    return-void
.end method

.method public onResume()V
    .registers 12

    .prologue
    const/4 v5, 0x1

    const-wide/16 v9, -0x1

    const/4 v6, 0x0

    .line 183
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 184
    sget-boolean v0, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 185
    sget-object v0, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnResume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_29
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 190
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v0, "preferences_hide_declined"

    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 193
    .local v7, hideDeclined:Z
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0, v7}, Lcom/android/calendar/agenda/AgendaListView;->setHideDeclinedEvents(Z)V

    .line 194
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_58

    .line 195
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    iget-wide v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 197
    iput-wide v9, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    .line 201
    :goto_52
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaListView;->onResume()V

    .line 211
    return-void

    .line 199
    :cond_58
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    move-wide v2, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    goto :goto_52
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 11
    .parameter "outState"

    .prologue
    const-wide/16 v7, 0x0

    .line 215
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 216
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-nez v4, :cond_a

    .line 233
    :cond_9
    :goto_9
    return-void

    .line 219
    :cond_a
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v4}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v0

    .line 220
    .local v0, firstVisibleTime:J
    cmp-long v4, v0, v7

    if-lez v4, :cond_45

    .line 221
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 222
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4, v0, v1}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 223
    const-string v4, "key_restore_time"

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 224
    sget-boolean v4, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    if-eqz v4, :cond_45

    .line 225
    sget-object v4, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSaveInstanceState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v6}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_45
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v4}, Lcom/android/calendar/agenda/AgendaListView;->getSelectedInstanceId()J

    move-result-wide v2

    .line 230
    .local v2, selectedInstance:J
    cmp-long v4, v2, v7

    if-ltz v4, :cond_9

    .line 231
    const-string v4, "key_restore_instance_id"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_9
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 10
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 399
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v3}, Lcom/android/calendar/agenda/AgendaListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/agenda/AgendaListView;->getJulianDayFromPosition(I)I

    move-result v0

    .line 402
    .local v0, julianDay:I
    if-nez v0, :cond_11

    .line 425
    :cond_10
    :goto_10
    return-void

    .line 406
    :cond_11
    iget v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mJulianDayOnTop:I

    if-eq v2, v0, :cond_10

    .line 407
    iput v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mJulianDayOnTop:I

    .line 408
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 409
    .local v1, t:Landroid/text/format/Time;
    iget v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mJulianDayOnTop:I

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 410
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 413
    iget-boolean v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mIsTabletConfig:Z

    if-nez v2, :cond_10

    .line 414
    new-instance v2, Lcom/android/calendar/agenda/AgendaFragment$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/agenda/AgendaFragment$2;-><init>(Lcom/android/calendar/agenda/AgendaFragment;)V

    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    if-eqz v0, :cond_9

    .line 390
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setScrollState(I)V

    .line 392
    :cond_9
    return-void
.end method

.method public removeFragments(Landroid/app/FragmentManager;)V
    .registers 7
    .parameter "fragmentManager"

    .prologue
    const v4, 0x7f100010

    .line 243
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 253
    :goto_16
    return-void

    .line 247
    :cond_17
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 248
    .local v1, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {p1, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 249
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_24

    .line 250
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 252
    :cond_24
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_16
.end method
