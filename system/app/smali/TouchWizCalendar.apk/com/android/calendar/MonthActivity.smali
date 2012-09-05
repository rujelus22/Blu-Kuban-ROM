.class public Lcom/android/calendar/MonthActivity;
.super Landroid/app/Activity;
.source "MonthActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/android/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/MonthActivity$DateListener;,
        Lcom/android/calendar/MonthActivity$DateChangeListener;,
        Lcom/android/calendar/MonthActivity$EventAdapter;
    }
.end annotation


# instance fields
.field private final VIEW_MODE:Ljava/lang/String;

.field animateUpDown:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDatePicker:Landroid/app/Dialog;

.field private mEventAdapter:Lcom/android/calendar/MonthActivity$EventAdapter;

.field private mEventList:Landroid/widget/ListView;

.field private mEventListNoItem:Landroid/widget/TextView;

.field mEventLoader:Lcom/android/calendar/EventLoader;

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

.field private mInAnimationBackward:Landroid/view/animation/Animation;

.field private mInAnimationForward:Landroid/view/animation/Animation;

.field private mInAnimationFuture:Landroid/view/animation/Animation;

.field private mInAnimationPast:Landroid/view/animation/Animation;

.field private mInFiveWeekAni:Landroid/view/animation/TranslateAnimation;

.field private mInSixWeekAni:Landroid/view/animation/TranslateAnimation;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsSwitching:Z

.field private mMonthPinchView:Lcom/android/calendar/PinchView;

.field private mMonthSaturdayColor:I

.field private mMonthSundayColor:I

.field private mMonthSwitcher:Landroid/widget/ViewSwitcher;

.field private mMonthWeekDayColor:I

.field private mNextMonthArrow:Landroid/widget/Button;

.field private mNextYearArrow:Landroid/widget/Button;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOutAnimationBackward:Landroid/view/animation/Animation;

.field private mOutAnimationForward:Landroid/view/animation/Animation;

.field private mOutAnimationFuture:Landroid/view/animation/Animation;

.field private mOutAnimationPast:Landroid/view/animation/Animation;

.field private mOutFiveWeekAni:Landroid/view/animation/TranslateAnimation;

.field private mOutSixWeekAni:Landroid/view/animation/TranslateAnimation;

.field private mPrevMonthArrow:Landroid/widget/Button;

.field private mPrevYearArrow:Landroid/widget/Button;

.field private mQuickAddDialog:Landroid/app/AlertDialog;

.field private mStartDay:I

.field private mSwitchContainer:Landroid/widget/LinearLayout;

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mTime:Landroid/text/format/Time;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mViewMode:I

.field private mYearPinchView:Lcom/android/calendar/PinchView;

.field private mYearSwitcher:Landroid/widget/ViewSwitcher;

.field private mZoomEnterMonth:Landroid/view/animation/Animation;

.field private mZoomEnterYear:Landroid/view/animation/Animation;

.field private mZoomExitMonth:Landroid/view/animation/Animation;

.field private mZoomExitYear:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    const-string v0, "view_mode"

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->VIEW_MODE:Ljava/lang/String;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;

    .line 195
    iput v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    .line 204
    iput-boolean v1, p0, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    .line 206
    iput v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSundayColor:I

    .line 207
    iput v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSaturdayColor:I

    .line 208
    iput v1, p0, Lcom/android/calendar/MonthActivity;->mMonthWeekDayColor:I

    .line 211
    new-instance v0, Lcom/android/calendar/MonthActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/MonthActivity$1;-><init>(Lcom/android/calendar/MonthActivity;)V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    .line 898
    new-instance v0, Lcom/android/calendar/MonthActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/MonthActivity$2;-><init>(Lcom/android/calendar/MonthActivity;)V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 924
    new-instance v0, Lcom/android/calendar/MonthActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/MonthActivity$3;-><init>(Lcom/android/calendar/MonthActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mObserver:Landroid/database/ContentObserver;

    .line 1878
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/MonthActivity;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/MonthActivity;Landroid/text/format/Time;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/calendar/MonthActivity;->setTitle(Landroid/text/format/Time;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/calendar/MonthActivity;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mDatePicker:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/MonthActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/calendar/MonthActivity;->mDatePicker:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/MonthActivity;)Lcom/android/calendar/PinchView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/MonthActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/MonthActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/calendar/MonthActivity;)Landroid/widget/ViewSwitcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/MonthActivity;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/MonthActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/MonthActivity;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/calendar/MonthActivity;->hideQuickAddDialog(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/MonthActivity;JLjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/MonthActivity;->saveQuickAddEvent(JLjava/lang/String;)V

    return-void
.end method

.method private arrangeEventList(Ljava/util/ArrayList;I)V
    .registers 11
    .parameter
    .parameter "currentDay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v1, 0x0

    .line 518
    .local v1, dirty:Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v0, alldayEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v6, norEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/MonthView;

    invoke-virtual {v7}, Lcom/android/calendar/MonthView;->getEventList()Ljava/util/ArrayList;

    move-result-object v5

    .line 522
    .local v5, monthEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v4, jpHolidayEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 527
    .local v2, event:Lcom/android/calendar/Event;
    const/4 v7, -0x1

    if-eq p2, v7, :cond_37

    .line 528
    iget v7, v2, Lcom/android/calendar/Event;->startDay:I

    if-gt v7, p2, :cond_20

    iget v7, v2, Lcom/android/calendar/Event;->endDay:I

    if-lt v7, p2, :cond_20

    .line 532
    :cond_37
    iget-boolean v7, v2, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v7, :cond_42

    .line 543
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    if-nez v1, :cond_20

    .line 546
    const/4 v1, 0x1

    goto :goto_20

    .line 548
    :cond_42
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    if-nez v1, :cond_20

    .line 550
    const/4 v1, 0x1

    goto :goto_20

    .line 554
    .end local v2           #event:Lcom/android/calendar/Event;
    :cond_49
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 555
    if-eqz v1, :cond_57

    .line 560
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 561
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 562
    invoke-static {p1, p0}, Lcom/android/calendar/Event;->computePositions(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 565
    :cond_57
    return-void
.end method

.method private getStartTime()Landroid/text/format/Time;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1930
    new-instance v1, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1931
    .local v1, time:Landroid/text/format/Time;
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthInterface;

    .line 1933
    .local v0, mv:Lcom/android/calendar/MonthInterface;
    invoke-interface {v0}, Lcom/android/calendar/MonthInterface;->getTime()Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1934
    iget v2, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-ne v2, v3, :cond_21

    .line 1935
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/format/Time;->month:I

    .line 1937
    :cond_21
    iput v3, v1, Landroid/text/format/Time;->monthDay:I

    .line 1938
    invoke-static {v1}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 1939
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1940
    return-object v1
.end method

.method private hideQuickAddDialog(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 1832
    const/16 v0, 0x102

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->removeDialog(I)V

    .line 1833
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1834
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    .line 1842
    return-void
.end method

.method private saveQuickAddEvent(JLjava/lang/String;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 1772
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1775
    const-wide/32 v0, 0x5265c00

    add-long/2addr v0, p1

    .line 1777
    sub-long v2, v0, p1

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    .line 1779
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1781
    const-string v2, "eventTimezone"

    const-string v3, "UTC"

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    const-string v2, "title"

    invoke-virtual {v6, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    const-string v2, "description"

    const-string v3, ""

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    const-string v2, "allDay"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1785
    const-string v2, "dtstart"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1786
    const-string v2, "dtend"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1788
    const-string v0, "hasAttendeeData"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1790
    invoke-static {p0}, Lcom/android/calendar/Utils;->getCalendarsConditions(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 1798
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1800
    if-eqz v0, :cond_81

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_a2

    .line 1801
    :cond_81
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "_id=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1804
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1807
    :cond_a2
    if-eqz v0, :cond_f1

    .line 1808
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1809
    const-string v1, "calendar_id"

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1821
    :goto_b5
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1822
    if-eqz v0, :cond_e5

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 1824
    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<GATE-M>EVENT_CREATED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " </GATE-M>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_e5
    const v0, 0x7f0a00fb

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1829
    return-void

    .line 1817
    :cond_f1
    const-string v0, "calendar_id"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_b5
.end method

.method private setBodyView()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 1099
    const v6, 0x7f0f0002

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    .line 1101
    const v6, 0x7f0f0006

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1102
    .local v2, listbutton:Landroid/widget/Button;
    new-instance v6, Lcom/android/calendar/MonthActivity$4;

    invoke-direct {v6, p0}, Lcom/android/calendar/MonthActivity$4;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1114
    const v6, 0x7f0f0005

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1115
    .local v0, dayButton:Landroid/widget/Button;
    new-instance v6, Lcom/android/calendar/MonthActivity$5;

    invoke-direct {v6, p0}, Lcom/android/calendar/MonthActivity$5;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1133
    const v6, 0x7f0f0004

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1135
    .local v5, weekbutton:Landroid/widget/Button;
    invoke-virtual {v5}, Landroid/widget/Button;->clearFocus()V

    .line 1137
    new-instance v6, Lcom/android/calendar/MonthActivity$6;

    invoke-direct {v6, p0}, Lcom/android/calendar/MonthActivity$6;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    const v6, 0x7f0f0003

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1150
    .local v3, monthbutton:Landroid/widget/Button;
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 1151
    new-instance v6, Lcom/android/calendar/MonthActivity$7;

    invoke-direct {v6, p0}, Lcom/android/calendar/MonthActivity$7;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1172
    const v6, 0x7f0f009e

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mPrevMonthArrow:Landroid/widget/Button;

    .line 1173
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mPrevMonthArrow:Landroid/widget/Button;

    new-instance v8, Lcom/android/calendar/MonthActivity$8;

    invoke-direct {v8, p0}, Lcom/android/calendar/MonthActivity$8;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    const v6, 0x7f0f00a1

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mNextMonthArrow:Landroid/widget/Button;

    .line 1182
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mNextMonthArrow:Landroid/widget/Button;

    new-instance v8, Lcom/android/calendar/MonthActivity$9;

    invoke-direct {v8, p0}, Lcom/android/calendar/MonthActivity$9;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1190
    const v6, 0x7f0f00b2

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mPrevYearArrow:Landroid/widget/Button;

    .line 1191
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mPrevYearArrow:Landroid/widget/Button;

    if-eqz v6, :cond_9a

    .line 1192
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mPrevYearArrow:Landroid/widget/Button;

    new-instance v8, Lcom/android/calendar/MonthActivity$10;

    invoke-direct {v8, p0}, Lcom/android/calendar/MonthActivity$10;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    :cond_9a
    const v6, 0x7f0f00b4

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mNextYearArrow:Landroid/widget/Button;

    .line 1201
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mNextYearArrow:Landroid/widget/Button;

    if-eqz v6, :cond_b3

    .line 1202
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mNextYearArrow:Landroid/widget/Button;

    new-instance v8, Lcom/android/calendar/MonthActivity$11;

    invoke-direct {v8, p0}, Lcom/android/calendar/MonthActivity$11;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1210
    :cond_b3
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->setArrowButtonState()V

    .line 1212
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1213
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v1, :cond_100

    .line 1215
    .local v1, isPortrait:Z
    :goto_c2
    if-eqz v1, :cond_ff

    .line 1216
    const v6, 0x7f0f00ae

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mEventList:Landroid/widget/ListView;

    .line 1217
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mEventList:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 1218
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mEventList:Landroid/widget/ListView;

    const v7, 0x7f020053

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1219
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mEventList:Landroid/widget/ListView;

    new-instance v7, Lcom/android/calendar/MonthActivity$12;

    invoke-direct {v7, p0}, Lcom/android/calendar/MonthActivity$12;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1235
    const v6, 0x7f0f00af

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/calendar/MonthActivity;->mEventListNoItem:Landroid/widget/TextView;

    .line 1236
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mEventListNoItem:Landroid/widget/TextView;

    new-instance v7, Lcom/android/calendar/MonthActivity$13;

    invoke-direct {v7, p0}, Lcom/android/calendar/MonthActivity$13;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1250
    :cond_ff
    return-void

    .end local v1           #isPortrait:Z
    :cond_100
    move v1, v7

    .line 1213
    goto :goto_c2
.end method

.method private setDetailedView()V
    .registers 6

    .prologue
    .line 1348
    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1361
    :goto_5
    return-void

    .line 1351
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 1352
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/MonthView;

    .line 1353
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1354
    const-string v3, "preferences_day_view"

    sget-object v4, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1356
    sget-object v3, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v2, v3, v2

    .line 1357
    invoke-virtual {v0, v2}, Lcom/android/calendar/MonthView;->setDetailedView(Ljava/lang/String;)V

    .line 1358
    invoke-virtual {v1, v2}, Lcom/android/calendar/MonthView;->setDetailedView(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->updateView()V

    .line 1360
    invoke-virtual {v1}, Lcom/android/calendar/MonthView;->updateView()V

    goto :goto_5
.end method

.method private setSwitcher()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 1514
    const v0, 0x7f0f00ac

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    .line 1515
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 1516
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/android/calendar/MonthView;

    invoke-direct {v1, p0, p0}, Lcom/android/calendar/MonthView;-><init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/Navigator;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1518
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/android/calendar/MonthView;

    invoke-direct {v1, p0, p0}, Lcom/android/calendar/MonthView;-><init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/Navigator;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1521
    const v0, 0x7f0f009d

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/PinchView;

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    .line 1522
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/PinchView;->setMode(I)V

    .line 1523
    const v0, 0x7f0f00b0

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/PinchView;

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    .line 1524
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/PinchView;->setMode(I)V

    .line 1526
    const v0, 0x7f0f00b6

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    .line 1527
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 1528
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/android/calendar/YearView;

    invoke-direct {v1, p0}, Lcom/android/calendar/YearView;-><init>(Lcom/android/calendar/MonthActivity;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1530
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    new-instance v1, Lcom/android/calendar/YearView;

    invoke-direct {v1, p0}, Lcom/android/calendar/YearView;-><init>(Lcom/android/calendar/MonthActivity;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1532
    return-void
.end method

.method private setTitle()V
    .registers 3

    .prologue
    .line 1325
    const v0, 0x7f0f0031

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1327
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-direct {p0, v1}, Lcom/android/calendar/MonthActivity;->setTitle(Landroid/text/format/Time;)V

    .line 1328
    new-instance v1, Lcom/android/calendar/MonthActivity$14;

    invoke-direct {v1, p0}, Lcom/android/calendar/MonthActivity$14;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1336
    const v0, 0x7f0f00b1

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1338
    new-instance v1, Lcom/android/calendar/MonthActivity$15;

    invoke-direct {v1, p0}, Lcom/android/calendar/MonthActivity$15;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1345
    return-void
.end method

.method private setTitle(Landroid/text/format/Time;)V
    .registers 9
    .parameter "time"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 595
    if-eqz p1, :cond_4e

    .line 596
    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v0, :cond_4f

    .line 597
    const v0, 0x7f0f009f

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    const v0, 0x7f0f00a0

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :cond_4e
    :goto_4e
    return-void

    .line 604
    :cond_4f
    const v0, 0x7f0f00b3

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4e
.end method

.method private setWeekday(I)V
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f0f00a9

    const v5, 0x7f0f00a4

    const v4, 0x7f0f00aa

    const v3, 0x3f733333

    const/16 v2, 0x14

    .line 1253
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    .line 1255
    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthWeekDayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1258
    add-int/lit8 v0, p1, 0x2

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    .line 1260
    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1262
    add-int/lit8 v0, p1, 0x3

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    .line 1264
    const v0, 0x7f0f00a6

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    add-int/lit8 v0, p1, 0x4

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    .line 1268
    const v0, 0x7f0f00a7

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    add-int/lit8 v0, p1, 0x5

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    .line 1272
    const v0, 0x7f0f00a8

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1274
    add-int/lit8 v0, p1, 0x6

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    .line 1276
    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1277
    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthWeekDayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1279
    add-int/lit8 v0, p1, 0x7

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    .line 1281
    invoke-virtual {p0, v4}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1282
    invoke-virtual {p0, v4}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthWeekDayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1284
    if-nez p1, :cond_12e

    .line 1287
    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSaturdayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1288
    invoke-virtual {p0, v4}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSaturdayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1310
    :goto_d8
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1311
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    .line 1312
    const-string v1, "Polska"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12d

    .line 1314
    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 1315
    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 1316
    const v0, 0x7f0f00a7

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 1317
    const v0, 0x7f0f00a8

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 1318
    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 1319
    invoke-virtual {p0, v4}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 1321
    :cond_12d
    return-void

    .line 1299
    :cond_12e
    invoke-virtual {p0, v5}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSaturdayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1300
    invoke-virtual {p0, v4}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSaturdayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_d8
.end method


# virtual methods
.method eventsChanged()V
    .registers 4

    .prologue
    .line 459
    iget v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 463
    :goto_5
    return-void

    .line 461
    :cond_6
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 462
    .local v0, view:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->reloadEvents()V

    goto :goto_5
.end method

.method public getAllDay()Z
    .registers 2

    .prologue
    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method public getEndMillis()J
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1919
    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->getStartTime()Landroid/text/format/Time;

    move-result-object v0

    .line 1921
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-ne v1, v2, :cond_10

    .line 1922
    const/16 v1, 0xb

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 1923
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1925
    :cond_10
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 1926
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public getFirstJulianDay()I
    .registers 7

    .prologue
    .line 1944
    iget v2, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v2, :cond_11

    .line 1945
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 1946
    .local v0, mv:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->getFirstJulianDay()I

    move-result v2

    .line 1949
    .end local v0           #mv:Lcom/android/calendar/MonthView;
    :goto_10
    return v2

    .line 1948
    :cond_11
    new-instance v1, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1949
    .local v1, time:Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getStartMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    goto :goto_10
.end method

.method public getLastJulianDay()I
    .registers 5

    .prologue
    .line 1955
    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v0, :cond_11

    .line 1956
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 1957
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->getLastJulianDay()I

    move-result v0

    .line 1961
    :goto_10
    return v0

    .line 1959
    :cond_11
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getFirstJulianDay()I

    move-result v0

    add-int/lit16 v0, v0, 0x16d

    add-int/lit8 v0, v0, -0x1

    .line 1960
    const-string v1, "MonthActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firstJulianDay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getFirstJulianDay()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastJulianDay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 2001
    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v0, :cond_6

    .line 2002
    const/4 v0, 0x3

    .line 2004
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x4

    goto :goto_5
.end method

.method getNextMonthButtonStatus()Z
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mNextMonthArrow:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    return v0
.end method

.method getPrevMonthButtonStatus()Z
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mPrevMonthArrow:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public getSelectedTime()J
    .registers 4

    .prologue
    .line 430
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthInterface;

    .line 431
    .local v0, mv:Lcom/android/calendar/MonthInterface;
    invoke-interface {v0}, Lcom/android/calendar/MonthInterface;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method getStartDay()I
    .registers 2

    .prologue
    .line 439
    iget v0, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    return v0
.end method

.method public getStartMillis()J
    .registers 3

    .prologue
    .line 1915
    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->getStartTime()Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public goTo(Landroid/text/format/Time;ZZ)V
    .registers 17
    .parameter "time"
    .parameter "animate"
    .parameter "doScroll"

    .prologue
    .line 236
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v11}, Lcom/android/calendar/PinchView;->isMonthPinch()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 237
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/calendar/PinchView;->setMonthPinch(Z)V

    .line 240
    :cond_e
    invoke-static {p1}, Lcom/android/calendar/Utils;->isValidRange(Landroid/text/format/Time;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 344
    :cond_14
    :goto_14
    return-void

    .line 244
    :cond_15
    iget-boolean v11, p0, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    if-nez v11, :cond_14

    .line 247
    invoke-direct {p0, p1}, Lcom/android/calendar/MonthActivity;->setTitle(Landroid/text/format/Time;)V

    .line 249
    iget v11, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v11, :cond_110

    .line 250
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/MonthView;

    .line 251
    .local v4, current:Lcom/android/calendar/MonthView;
    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->getTime()Landroid/text/format/Time;

    move-result-object v6

    .line 257
    .local v6, currentTime:Landroid/text/format/Time;
    if-eqz p2, :cond_102

    .line 258
    iget v11, v6, Landroid/text/format/Time;->month:I

    iget v12, v6, Landroid/text/format/Time;->year:I

    mul-int/lit8 v12, v12, 0xc

    add-int v5, v11, v12

    .line 259
    .local v5, currentMonth:I
    iget v11, p1, Landroid/text/format/Time;->month:I

    iget v12, p1, Landroid/text/format/Time;->year:I

    mul-int/lit8 v12, v12, 0xc

    add-int v10, v11, v12

    .line 262
    .local v10, nextMonth:I
    iget-boolean v11, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-eqz v11, :cond_a2

    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    .line 263
    .local v0, InAnimationBack:Landroid/view/animation/Animation;
    :goto_44
    iget-boolean v11, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-eqz v11, :cond_a5

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    .line 264
    .local v2, OutAnimationBack:Landroid/view/animation/Animation;
    :goto_4a
    iget-boolean v11, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-eqz v11, :cond_a8

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    .line 265
    .local v1, InAnimationForward:Landroid/view/animation/Animation;
    :goto_50
    iget-boolean v11, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-eqz v11, :cond_ab

    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    .line 266
    .local v3, OutAnimationForward:Landroid/view/animation/Animation;
    :goto_56
    if-ge v10, v5, :cond_ae

    .line 267
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v0}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 268
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v2}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 296
    .end local v0           #InAnimationBack:Landroid/view/animation/Animation;
    .end local v1           #InAnimationForward:Landroid/view/animation/Animation;
    .end local v2           #OutAnimationBack:Landroid/view/animation/Animation;
    .end local v3           #OutAnimationForward:Landroid/view/animation/Animation;
    .end local v5           #currentMonth:I
    .end local v10           #nextMonth:I
    :goto_62
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    .line 299
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/MonthView;

    .line 300
    .local v9, next:Lcom/android/calendar/MonthView;
    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->getSelectionMode()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/calendar/MonthView;->setSelectionMode(I)V

    .line 301
    invoke-virtual {v9, p1}, Lcom/android/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 308
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v11, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 309
    invoke-virtual {v9}, Lcom/android/calendar/MonthView;->reloadEvents()V

    .line 310
    if-eqz p2, :cond_84

    .line 311
    invoke-virtual {v9}, Lcom/android/calendar/MonthView;->animationStarted()V

    .line 312
    :cond_84
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 313
    invoke-virtual {v9}, Lcom/android/calendar/MonthView;->requestFocus()Z

    .line 314
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->setArrowButtonState()V

    .line 316
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 317
    .local v8, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v11, v9, Lcom/android/calendar/MonthView;->mMonthHeight:I

    iput v11, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 318
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v8}, Landroid/widget/ViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_14

    .line 262
    .end local v8           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v9           #next:Lcom/android/calendar/MonthView;
    .restart local v5       #currentMonth:I
    .restart local v10       #nextMonth:I
    :cond_a2
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    goto :goto_44

    .line 263
    .restart local v0       #InAnimationBack:Landroid/view/animation/Animation;
    :cond_a5
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    goto :goto_4a

    .line 264
    .restart local v2       #OutAnimationBack:Landroid/view/animation/Animation;
    :cond_a8
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    goto :goto_50

    .line 265
    .restart local v1       #InAnimationForward:Landroid/view/animation/Animation;
    :cond_ab
    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    goto :goto_56

    .line 270
    .restart local v3       #OutAnimationForward:Landroid/view/animation/Animation;
    :cond_ae
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d4

    const/4 v7, 0x1

    .line 271
    .local v7, isPortrait:Z
    :goto_bc
    if-eqz v7, :cond_f6

    iget-boolean v11, p0, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-eqz v11, :cond_f6

    .line 272
    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->getWeekNum()I

    move-result v11

    packed-switch v11, :pswitch_data_174

    .line 282
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 283
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_62

    .line 270
    .end local v7           #isPortrait:Z
    :cond_d4
    const/4 v7, 0x0

    goto :goto_bc

    .line 274
    .restart local v7       #isPortrait:Z
    :pswitch_d6
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mInFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 275
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mOutFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_62

    .line 278
    :pswitch_e6
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mInSixWeekAni:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 279
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mOutSixWeekAni:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_62

    .line 287
    :cond_f6
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 288
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_62

    .line 293
    .end local v0           #InAnimationBack:Landroid/view/animation/Animation;
    .end local v1           #InAnimationForward:Landroid/view/animation/Animation;
    .end local v2           #OutAnimationBack:Landroid/view/animation/Animation;
    .end local v3           #OutAnimationForward:Landroid/view/animation/Animation;
    .end local v5           #currentMonth:I
    .end local v7           #isPortrait:Z
    .end local v10           #nextMonth:I
    :cond_102
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 294
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_62

    .line 320
    .end local v4           #current:Lcom/android/calendar/MonthView;
    .end local v6           #currentTime:Landroid/text/format/Time;
    :cond_110
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/YearView;

    .line 322
    .local v4, current:Lcom/android/calendar/YearView;
    if-eqz p2, :cond_167

    .line 323
    invoke-virtual {v4}, Lcom/android/calendar/YearView;->getTime()Landroid/text/format/Time;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v11

    if-eqz v11, :cond_158

    .line 324
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 325
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 334
    :goto_132
    invoke-virtual {v4, p1}, Lcom/android/calendar/YearView;->setTime(Landroid/text/format/Time;)V

    .line 335
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/YearView;

    .line 336
    .local v9, next:Lcom/android/calendar/YearView;
    invoke-virtual {v9, p1}, Lcom/android/calendar/YearView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 338
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v11, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 339
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 340
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v11}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    .line 341
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->setArrowButtonState()V

    goto/16 :goto_14

    .line 327
    .end local v9           #next:Lcom/android/calendar/YearView;
    :cond_158
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 328
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v12, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_132

    .line 331
    :cond_167
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 332
    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_132

    .line 272
    :pswitch_data_174
    .packed-switch 0x5
        :pswitch_d6
        :pswitch_e6
    .end packed-switch
.end method

.method public goToToday()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 395
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 397
    iput v3, v0, Landroid/text/format/Time;->minute:I

    .line 398
    iput v3, v0, Landroid/text/format/Time;->second:I

    .line 399
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 401
    invoke-virtual {p0, v0, v3, v3}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 427
    return-void
.end method

.method public makeView()Landroid/view/View;
    .registers 5

    .prologue
    .line 223
    iget v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v1, :cond_1c

    .line 224
    new-instance v0, Lcom/android/calendar/MonthView;

    invoke-direct {v0, p0, p0}, Lcom/android/calendar/MonthView;-><init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/Navigator;)V

    .line 228
    .local v0, view:Landroid/view/View;
    :goto_9
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v0

    .line 230
    check-cast v1, Lcom/android/calendar/MonthInterface;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-interface {v1, v2}, Lcom/android/calendar/MonthInterface;->setSelectedTime(Landroid/text/format/Time;)V

    .line 231
    return-object v0

    .line 226
    .end local v0           #view:Landroid/view/View;
    :cond_1c
    new-instance v0, Lcom/android/calendar/YearView;

    invoke-direct {v0, p0}, Lcom/android/calendar/YearView;-><init>(Lcom/android/calendar/MonthActivity;)V

    .restart local v0       #view:Landroid/view/View;
    goto :goto_9
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1897
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1899
    const/4 v0, 0x1

    if-ne p1, v0, :cond_27

    const/4 v0, -0x1

    if-ne p2, v0, :cond_27

    .line 1900
    const-string v0, "date"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1902
    const-string v0, "allday"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1903
    if-eqz v0, :cond_28

    .line 1904
    new-instance v0, Landroid/text/format/Time;

    const-string v3, "UTC"

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1908
    :goto_21
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1909
    invoke-virtual {p0, v0, v4, v4}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 1911
    :cond_27
    return-void

    .line 1906
    :cond_28
    new-instance v0, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto :goto_21
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    .line 944
    iget v2, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v2, :cond_1e

    .line 945
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 946
    .local v0, monthView:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->animationFinished()V

    .line 951
    .end local v0           #monthView:Lcom/android/calendar/MonthView;
    :goto_10
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    .line 952
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mPrevMonthArrow:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 953
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mNextMonthArrow:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 954
    return-void

    .line 948
    :cond_1e
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/YearView;

    .line 949
    .local v1, yearView:Lcom/android/calendar/YearView;
    invoke-virtual {v1}, Lcom/android/calendar/YearView;->animationEnd()V

    goto :goto_10
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 957
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 937
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    .line 938
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mPrevMonthArrow:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 939
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mNextMonthArrow:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 940
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1438
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1440
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1441
    iput-boolean v4, p0, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    .line 1444
    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v0, :cond_98

    .line 1445
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 1446
    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthView;->saveInstanceState(Landroid/os/Bundle;)V

    .line 1452
    :goto_1c
    const v0, 0x7f0f009c

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1453
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v0, :cond_31

    .line 1454
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 1455
    :cond_31
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v0, :cond_3a

    .line 1456
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 1458
    :cond_3a
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->setContentView(I)V

    .line 1462
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1463
    const-string v2, "preferences_first_day_of_week"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    .line 1466
    iget v0, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 1467
    invoke-direct {p0, v0}, Lcom/android/calendar/MonthActivity;->setWeekday(I)V

    .line 1469
    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setTitle()V

    .line 1470
    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setSwitcher()V

    .line 1472
    iget v0, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v0, :cond_a5

    .line 1473
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 1474
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v0, v5}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    .line 1475
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v0, v4}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    .line 1476
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 1477
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Lcom/android/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 1478
    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthView;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 1479
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->requestFocus()Z

    .line 1502
    :goto_86
    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setBodyView()V

    .line 1504
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->eventsChanged()V

    .line 1506
    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setDetailedView()V

    .line 1508
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1511
    return-void

    .line 1448
    :cond_98
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/YearView;

    .line 1449
    invoke-virtual {v0, v1}, Lcom/android/calendar/YearView;->saveInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_1c

    .line 1487
    :cond_a5
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 1488
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v0, v5}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    .line 1489
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v0, v4}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    .line 1490
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/YearView;

    .line 1491
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Lcom/android/calendar/YearView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 1492
    invoke-virtual {v0, v1}, Lcom/android/calendar/YearView;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 1493
    invoke-virtual {v0}, Lcom/android/calendar/YearView;->requestFocus()Z

    goto :goto_86
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "icicle"

    .prologue
    .line 962
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 968
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v8

    const-wide/32 v9, 0x400000

    invoke-virtual {v8, v9, v10}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 970
    const v8, 0x7f030022

    invoke-virtual {p0, v8}, Lcom/android/calendar/MonthActivity;->setContentView(I)V

    .line 972
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 973
    .local v4, res:Landroid/content/res/Resources;
    const v8, 0x7f08000c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthActivity;->mMonthSundayColor:I

    .line 974
    const v8, 0x7f08000d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthActivity;->mMonthSaturdayColor:I

    .line 975
    const v8, 0x7f080002

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthActivity;->mMonthWeekDayColor:I

    .line 983
    if-eqz p1, :cond_1b7

    .line 984
    const-string v8, "beginTime"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 985
    .local v6, time:J
    const-string v8, "view_mode"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    .line 990
    :goto_43
    new-instance v8, Landroid/text/format/Time;

    iget-object v9, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v9}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    .line 991
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 992
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 996
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 997
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v8, "preferences_first_day_of_week"

    const-string v9, "1"

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    .line 1000
    iget v8, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v2, v8, -0x1

    .line 1002
    .local v2, diff:I
    invoke-direct {p0, v2}, Lcom/android/calendar/MonthActivity;->setWeekday(I)V

    .line 1003
    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setTitle()V

    .line 1005
    new-instance v8, Lcom/android/calendar/EventLoader;

    invoke-direct {v8, p0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 1006
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 1008
    const/high16 v8, 0x7f04

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    .line 1009
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v8, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1010
    const v8, 0x7f040001

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    .line 1012
    const v8, 0x7f040006

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    .line 1013
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v8, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1014
    const v8, 0x7f040007

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    .line 1017
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1018
    .local v5, resource:Landroid/content/res/Resources;
    const v8, 0x7f0b0007

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1019
    .local v0, cellHeight:I
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    mul-int/lit8 v11, v0, 0x5

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mInFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    .line 1020
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mInFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1021
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mInFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v8, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1022
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    mul-int/lit8 v11, v0, 0x6

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mInSixWeekAni:Landroid/view/animation/TranslateAnimation;

    .line 1023
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mInSixWeekAni:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1024
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mInSixWeekAni:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v8, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1026
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    neg-int v12, v0

    mul-int/lit8 v12, v12, 0x5

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    .line 1027
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutFiveWeekAni:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1028
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    neg-int v12, v0

    mul-int/lit8 v12, v12, 0x6

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutSixWeekAni:Landroid/view/animation/TranslateAnimation;

    .line 1029
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutSixWeekAni:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1031
    const v8, 0x7f040002

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    .line 1032
    const v8, 0x7f040003

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    .line 1033
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v8, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1034
    const v8, 0x7f040004

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    .line 1035
    const v8, 0x7f040005

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    .line 1036
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v8, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1038
    const v8, 0x7f040008

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mZoomEnterMonth:Landroid/view/animation/Animation;

    .line 1039
    const v8, 0x7f04000a

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mZoomExitMonth:Landroid/view/animation/Animation;

    .line 1040
    const v8, 0x7f040009

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mZoomEnterYear:Landroid/view/animation/Animation;

    .line 1041
    const v8, 0x7f04000b

    invoke-static {p0, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mZoomExitYear:Landroid/view/animation/Animation;

    .line 1049
    const-string v8, "MonthActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "view mode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setSwitcher()V

    .line 1052
    iget v8, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v8, :cond_1c1

    .line 1053
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 1054
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    .line 1055
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    .line 1091
    :goto_19e
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v8}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/MonthInterface;

    move-object v1, v8

    check-cast v1, Lcom/android/calendar/MonthInterface;

    .line 1092
    .local v1, currentView:Lcom/android/calendar/MonthInterface;
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-interface {v1, v8}, Lcom/android/calendar/MonthInterface;->setSelectedTime(Landroid/text/format/Time;)V

    .line 1093
    check-cast v1, Landroid/view/View;

    .end local v1           #currentView:Lcom/android/calendar/MonthInterface;
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1095
    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setBodyView()V

    .line 1096
    return-void

    .line 987
    .end local v0           #cellHeight:I
    .end local v2           #diff:I
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v5           #resource:Landroid/content/res/Resources;
    .end local v6           #time:J
    :cond_1b7
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v6

    .restart local v6       #time:J
    goto/16 :goto_43

    .line 1057
    .restart local v0       #cellHeight:I
    .restart local v2       #diff:I
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    .restart local v5       #resource:Landroid/content/res/Resources;
    :cond_1c1
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v8, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 1058
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    .line 1059
    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    goto :goto_19e
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1670
    packed-switch p1, :pswitch_data_c6

    move-object v0, v6

    .line 1768
    :goto_5
    return-object v0

    .line 1672
    :pswitch_6
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthInterface;

    invoke-interface {v0}, Lcom/android/calendar/MonthInterface;->getSelectedDate()Landroid/text/format/Time;

    move-result-object v1

    .line 1684
    new-instance v0, Lcom/android/calendar/TwDatePickerDialog;

    new-instance v2, Lcom/android/calendar/MonthActivity$DateListener;

    invoke-direct {v2, p0, v6}, Lcom/android/calendar/MonthActivity$DateListener;-><init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/MonthActivity$1;)V

    iget v3, v1, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->month:I

    iget v5, v1, Landroid/text/format/Time;->monthDay:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/TwDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1686
    invoke-virtual {v0}, Lcom/android/calendar/TwDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    new-instance v5, Lcom/android/calendar/MonthActivity$DateChangeListener;

    invoke-direct {v5, p0}, Lcom/android/calendar/MonthActivity$DateChangeListener;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 1687
    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mDatePicker:Landroid/app/Dialog;

    .line 1690
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mDatePicker:Landroid/app/Dialog;

    new-instance v1, Lcom/android/calendar/MonthActivity$21;

    invoke-direct {v1, p0}, Lcom/android/calendar/MonthActivity$21;-><init>(Lcom/android/calendar/MonthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1696
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mDatePicker:Landroid/app/Dialog;

    goto :goto_5

    .line 1699
    :pswitch_4a
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 1700
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->getSelectedMillisForAllday()J

    move-result-wide v1

    .line 1701
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "date_format"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1703
    if-nez v0, :cond_64

    .line 1704
    const-string v0, "dd-MM-yyyy"

    .line 1705
    :cond_64
    const-string v3, "/"

    .line 1711
    const-string v4, "-"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1712
    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1715
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1716
    const v1, 0x7f030025

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1717
    new-instance v0, Lcom/android/calendar/Utils$LengthFilter;

    invoke-direct {v0, p0}, Lcom/android/calendar/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    .line 1718
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1728
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0034

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1729
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0077

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_5

    .line 1670
    :pswitch_data_c6
    .packed-switch 0x101
        :pswitch_6
        :pswitch_4a
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 1559
    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)Z

    .line 1560
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 1365
    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v1

    .line 1366
    .local v1, timeMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1c

    .line 1367
    new-instance v0, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1368
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1369
    invoke-virtual {p0, v0, v5, v5}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 1371
    .end local v0           #time:Landroid/text/format/Time;
    :cond_1c
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1565
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 1573
    invoke-static {p0, p1, p0}, Lcom/android/calendar/MenuHelper;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1576
    :goto_e
    return v0

    .line 1567
    :pswitch_f
    const/16 v1, 0x101

    invoke-virtual {p0, v1}, Lcom/android/calendar/MonthActivity;->showDialog(I)V

    goto :goto_e

    .line 1576
    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_e

    .line 1565
    :pswitch_data_1a
    .packed-switch 0xc
        :pswitch_f
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 1375
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1379
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1380
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1384
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v0}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 1398
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 1582
    packed-switch p1, :pswitch_data_98

    .line 1666
    :goto_3
    return-void

    .line 1584
    :pswitch_4
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthInterface;

    invoke-interface {v0}, Lcom/android/calendar/MonthInterface;->getSelectedDate()Landroid/text/format/Time;

    move-result-object v0

    .line 1601
    check-cast p2, Landroid/app/DatePickerDialog;

    iget v1, v0, Landroid/text/format/Time;->year:I

    iget v2, v0, Landroid/text/format/Time;->month:I

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_3

    .line 1605
    :pswitch_1c
    const v0, 0x7f0f0010

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1606
    new-instance v1, Lcom/android/calendar/MonthActivity$16;

    invoke-direct {v1, p0, v0}, Lcom/android/calendar/MonthActivity$16;-><init>(Lcom/android/calendar/MonthActivity;Landroid/widget/EditText;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1612
    check-cast p2, Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    .line 1613
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/MonthView;

    .line 1614
    invoke-virtual {v1}, Lcom/android/calendar/MonthView;->getSelectedMillisForAllday()J

    move-result-wide v2

    .line 1615
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "date_format"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1617
    if-nez v1, :cond_4d

    .line 1618
    const-string v1, "dd-MM-yyyy"

    .line 1619
    :cond_4d
    const-string v4, "/"

    .line 1625
    const-string v5, "-"

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1626
    const-string v4, "UTC"

    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/util/DateFormat;->format(Ljava/lang/CharSequence;JLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1629
    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1630
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1631
    new-instance v4, Lcom/android/calendar/MonthActivity$17;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/android/calendar/MonthActivity$17;-><init>(Lcom/android/calendar/MonthActivity;Landroid/widget/EditText;J)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1639
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1640
    new-instance v4, Lcom/android/calendar/MonthActivity$18;

    invoke-direct {v4, p0, v0}, Lcom/android/calendar/MonthActivity$18;-><init>(Lcom/android/calendar/MonthActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1645
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/calendar/MonthActivity$19;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/android/calendar/MonthActivity$19;-><init>(Lcom/android/calendar/MonthActivity;Landroid/widget/EditText;J)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1656
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mQuickAddDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/calendar/MonthActivity$20;

    invoke-direct {v2, p0, v0}, Lcom/android/calendar/MonthActivity$20;-><init>(Lcom/android/calendar/MonthActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_3

    .line 1582
    :pswitch_data_98
    .packed-switch 0x101
        :pswitch_4
        :pswitch_1c
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 1553
    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 1554
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 1545
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1546
    const-string v1, "view_mode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    .line 1547
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthInterface;

    .line 1548
    .local v0, month:Lcom/android/calendar/MonthInterface;
    invoke-interface {v0, p1}, Lcom/android/calendar/MonthInterface;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 1549
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 1402
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1403
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1404
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->updateView()V

    .line 1405
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v0}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    .line 1406
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->eventsChanged()V

    .line 1408
    invoke-direct {p0}, Lcom/android/calendar/MonthActivity;->setDetailedView()V

    .line 1424
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1426
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1427
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1428
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1430
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/MonthActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1432
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1433
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    .line 1536
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1537
    const-string v1, "beginTime"

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1538
    const-string v1, "view_mode"

    iget v2, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1539
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthInterface;

    .line 1540
    .local v0, month:Lcom/android/calendar/MonthInterface;
    invoke-interface {v0, p1}, Lcom/android/calendar/MonthInterface;->saveInstanceState(Landroid/os/Bundle;)V

    .line 1541
    return-void
.end method

.method reloadCurrentDayEvents()V
    .registers 10

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 467
    .local v6, resources:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_11

    const/4 v2, 0x1

    .line 468
    .local v2, isLandscape:Z
    :goto_e
    if-eqz v2, :cond_13

    .line 514
    :cond_10
    :goto_10
    return-void

    .line 467
    .end local v2           #isLandscape:Z
    :cond_11
    const/4 v2, 0x0

    goto :goto_e

    .line 473
    .restart local v2       #isLandscape:Z
    :cond_13
    iget v7, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v7, :cond_10

    .line 474
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v7, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 478
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/MonthView;

    invoke-virtual {v7}, Lcom/android/calendar/MonthView;->getSelectedColumn()I

    move-result v0

    .line 479
    .local v0, column:I
    if-nez v0, :cond_2e

    .line 480
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthActivity;->setCurrentDayEvents(Ljava/util/ArrayList;)V

    goto :goto_10

    .line 484
    :cond_2e
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/MonthView;

    invoke-virtual {v7}, Lcom/android/calendar/MonthView;->getSelectedMillis()J

    move-result-wide v4

    .line 486
    .local v4, millis:J
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v7, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 487
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    iget-wide v7, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v7, v8}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v3

    .line 490
    .local v3, julianDay:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-direct {p0, v1, v3}, Lcom/android/calendar/MonthActivity;->arrangeEventList(Ljava/util/ArrayList;I)V

    .line 492
    invoke-virtual {p0, v1}, Lcom/android/calendar/MonthActivity;->setCurrentDayEvents(Ljava/util/ArrayList;)V

    goto :goto_10
.end method

.method public setArrowButtonState()V
    .registers 8

    .prologue
    const/16 v6, 0x7f4

    const/16 v5, 0x76e

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 356
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 357
    .local v0, time:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 358
    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 359
    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 363
    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mPrevMonthArrow:Landroid/widget/Button;

    iget v1, v0, Landroid/text/format/Time;->year:I

    if-gt v1, v5, :cond_2c

    iget v1, v0, Landroid/text/format/Time;->year:I

    if-ne v1, v5, :cond_6d

    iget v1, v0, Landroid/text/format/Time;->month:I

    if-ltz v1, :cond_6d

    :cond_2c
    move v1, v3

    :goto_2d
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 366
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mPrevYearArrow:Landroid/widget/Button;

    if-eqz v1, :cond_40

    .line 367
    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mPrevYearArrow:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-ne v1, v5, :cond_6f

    move v1, v2

    :goto_3d
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 378
    :cond_40
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 379
    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 380
    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 382
    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mNextMonthArrow:Landroid/widget/Button;

    iget v1, v0, Landroid/text/format/Time;->year:I

    if-lt v1, v6, :cond_71

    iget v1, v0, Landroid/text/format/Time;->month:I

    const/16 v5, 0xb

    if-le v1, v5, :cond_71

    move v1, v2

    :goto_5a
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 385
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mNextYearArrow:Landroid/widget/Button;

    if-eqz v1, :cond_6c

    .line 386
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mNextYearArrow:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    if-ne v4, v6, :cond_73

    :goto_69
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 392
    :cond_6c
    return-void

    :cond_6d
    move v1, v2

    .line 363
    goto :goto_2d

    :cond_6f
    move v1, v3

    .line 367
    goto :goto_3d

    :cond_71
    move v1, v3

    .line 382
    goto :goto_5a

    :cond_73
    move v2, v3

    .line 386
    goto :goto_69
.end method

.method setCurrentDayEvents(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v1, 0x0

    .line 572
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    const/4 v0, 0x1

    .line 573
    .local v0, isLandscape:Z
    :goto_f
    if-eqz v0, :cond_14

    .line 592
    :cond_11
    :goto_11
    return-void

    .end local v0           #isLandscape:Z
    :cond_12
    move v0, v1

    .line 572
    goto :goto_f

    .line 576
    .restart local v0       #isLandscape:Z
    :cond_14
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mEventList:Landroid/widget/ListView;

    if-eqz v2, :cond_11

    .line 579
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mEventListNoItem:Landroid/widget/TextView;

    if-eqz v2, :cond_11

    .line 582
    iput-object p1, p0, Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;

    .line 583
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_43

    .line 584
    :cond_2a
    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mEventListNoItem:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    :goto_2f
    new-instance v1, Lcom/android/calendar/MonthActivity$EventAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/calendar/MonthActivity$EventAdapter;-><init>(Lcom/android/calendar/MonthActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/MonthActivity;->mEventAdapter:Lcom/android/calendar/MonthActivity$EventAdapter;

    .line 590
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mEventList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mEventAdapter:Lcom/android/calendar/MonthActivity$EventAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 591
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mEventAdapter:Lcom/android/calendar/MonthActivity$EventAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/MonthActivity$EventAdapter;->notifyDataSetChanged()V

    goto :goto_11

    .line 586
    :cond_43
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mEventListNoItem:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2f
.end method

.method public setTime(Landroid/text/format/Time;)V
    .registers 3
    .parameter "time"

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1998
    return-void
.end method

.method public switchMode()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1966
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1972
    .local v0, resources:Landroid/content/res/Resources;
    iget v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v1, :cond_4b

    .line 1973
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    .line 1974
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 1975
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-direct {p0, v1}, Lcom/android/calendar/MonthActivity;->setTitle(Landroid/text/format/Time;)V

    .line 1976
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/YearView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Lcom/android/calendar/YearView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 1977
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1978
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v1}, Lcom/android/calendar/PinchView;->bringToFront()V

    .line 1979
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v1, v4}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    .line 1980
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mZoomExitMonth:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/calendar/PinchView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1981
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v1, v3}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    .line 1982
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mZoomEnterYear:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/calendar/PinchView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1994
    :goto_4a
    return-void

    .line 1984
    :cond_4b
    iput v3, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    .line 1985
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mMonthSwitcher:Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 1986
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-direct {p0, v1}, Lcom/android/calendar/MonthActivity;->setTitle(Landroid/text/format/Time;)V

    .line 1987
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    .line 1988
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v1}, Lcom/android/calendar/PinchView;->bringToFront()V

    .line 1989
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v1, v4}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    .line 1990
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mYearPinchView:Lcom/android/calendar/PinchView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mZoomExitYear:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/calendar/PinchView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1991
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    invoke-virtual {v1, v3}, Lcom/android/calendar/PinchView;->setVisibility(I)V

    .line 1992
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mMonthPinchView:Lcom/android/calendar/PinchView;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mZoomEnterMonth:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/android/calendar/PinchView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4a
.end method

.method updateView()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 870
    iget v2, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    .line 871
    .local v2, prevStartDay:I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 872
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "preferences_first_day_of_week"

    const-string v5, "1"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    .line 876
    iget v4, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    if-ne v2, v4, :cond_1a

    .line 893
    :goto_19
    return-void

    .line 880
    :cond_1a
    iget v4, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v4, -0x1

    .line 882
    .local v0, diff:I
    invoke-direct {p0, v0}, Lcom/android/calendar/MonthActivity;->setWeekday(I)V

    .line 884
    iget v4, p0, Lcom/android/calendar/MonthActivity;->mViewMode:I

    if-nez v4, :cond_45

    .line 885
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 886
    .local v3, time:Landroid/text/format/Time;
    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->getSelectedMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 887
    invoke-virtual {p0, v3, v6, v6}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_19

    .line 889
    .end local v3           #time:Landroid/text/format/Time;
    :cond_45
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 890
    .restart local v3       #time:Landroid/text/format/Time;
    iget-object v4, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/YearView;

    invoke-virtual {v4}, Lcom/android/calendar/YearView;->getSelectedMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 891
    invoke-virtual {p0, v3, v6, v6}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    goto :goto_19
.end method
