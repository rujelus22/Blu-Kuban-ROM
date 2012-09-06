.class public Lcom/android/calendar/CalendarController;
.super Ljava/lang/Object;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarController$RefreshInBackground;,
        Lcom/android/calendar/CalendarController$EventHandler;,
        Lcom/android/calendar/CalendarController$EventInfo;
    }
.end annotation


# static fields
.field private static final REFRESH_ARGS:[Ljava/lang/String;

.field private static instances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/calendar/CalendarController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventHandlers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private filters:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDateFlags:J

.field private mDetailViewType:I

.field private volatile mDispatchInProgressCounter:I

.field private mEventId:J

.field private mFirstEventHandler:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousViewType:I

.field private mService:Lcom/android/calendar/AsyncQueryService;

.field private mTime:Landroid/text/format/Time;

.field private mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mToBeAddedFirstEventHandler:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mToBeRemovedEventHandlers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateTimezone:Ljava/lang/Runnable;

.field private mViewType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarController;->REFRESH_ARGS:[Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    .line 78
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 87
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    .line 89
    iput v2, p0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 90
    iput v2, p0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    .line 91
    iput v2, p0, Lcom/android/calendar/CalendarController;->mPreviousViewType:I

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 93
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/CalendarController;->mDateFlags:J

    .line 98
    new-instance v0, Lcom/android/calendar/CalendarController$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarController$1;-><init>(Lcom/android/calendar/CalendarController;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    .line 240
    iput-object p1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    .line 241
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 242
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 243
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-string v1, "preferred_detailedView"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    .line 246
    new-instance v0, Lcom/android/calendar/CalendarController$2;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/CalendarController$2;-><init>(Lcom/android/calendar/CalendarController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CalendarController;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/CalendarController;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;
    .registers 4
    .parameter "context"

    .prologue
    .line 219
    sget-object v2, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 220
    :try_start_3
    sget-object v1, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarController;

    .line 221
    .local v0, controller:Lcom/android/calendar/CalendarController;
    if-nez v0, :cond_17

    .line 222
    new-instance v0, Lcom/android/calendar/CalendarController;

    .end local v0           #controller:Lcom/android/calendar/CalendarController;
    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarController;-><init>(Landroid/content/Context;)V

    .line 223
    .restart local v0       #controller:Lcom/android/calendar/CalendarController;
    sget-object v1, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_17
    monitor-exit v2

    return-object v0

    .line 226
    .end local v0           #controller:Lcom/android/calendar/CalendarController;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private launchCreateEvent(JJZ)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 641
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/event/EditEventActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 643
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 644
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 645
    const-string v1, "allDay"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 646
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 647
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 648
    return-void
.end method

.method private launchDeleteEvent(JJJ)V
    .registers 16
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"

    .prologue
    .line 680
    const/4 v1, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->launchDeleteEventAndFinish(Landroid/app/Activity;JJJI)V

    .line 681
    return-void
.end method

.method private launchDeleteEventAndFinish(Landroid/app/Activity;JJJI)V
    .registers 17
    .parameter "parentActivity"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "deleteWhich"

    .prologue
    .line 685
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    iget-object v2, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_13

    const/4 v1, 0x1

    :goto_7
    invoke-direct {v0, v2, p1, v1}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .local v0, deleteEventHelper:Lcom/android/calendar/DeleteEventHelper;
    move-wide v1, p4

    move-wide v3, p6

    move-wide v5, p2

    move/from16 v7, p8

    .line 687
    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 688
    return-void

    .line 685
    .end local v0           #deleteEventHelper:Lcom/android/calendar/DeleteEventHelper;
    :cond_13
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private launchEditEvent(JJJZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 662
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 663
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 664
    const-string v0, "beginTime"

    invoke-virtual {v1, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 665
    const-string v0, "endTime"

    invoke-virtual {v1, v0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 666
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/event/EditEventActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 667
    const-string v0, "editMode"

    invoke-virtual {v1, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 668
    iput-wide p1, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 669
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 670
    return-void
.end method

.method private launchSearch(JLjava/lang/String;Landroid/content/ComponentName;)V
    .registers 10
    .parameter "eventId"
    .parameter "query"
    .parameter "componentName"

    .prologue
    .line 691
    iget-object v3, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-string v4, "search"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 693
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1, p4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 694
    .local v2, searchableInfo:Landroid/app/SearchableInfo;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "query"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 697
    const/high16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 698
    iget-object v3, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 699
    return-void
.end method

.method private launchSelectVisibleCalendars()V
    .registers 4

    .prologue
    .line 627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 629
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 630
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 631
    return-void
.end method

.method private launchSettings()V
    .registers 4

    .prologue
    .line 634
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/CalendarSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 636
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 637
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 638
    return-void
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 236
    sget-object v0, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method


# virtual methods
.method public deregisterAllEventHandlers()V
    .registers 3

    .prologue
    .line 571
    monitor-enter p0

    .line 572
    :try_start_1
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_12

    .line 574
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 579
    :goto_10
    monitor-exit p0

    .line 580
    return-void

    .line 576
    :cond_12
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_10

    .line 579
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public deregisterEventHandler(Ljava/lang/Integer;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 557
    monitor-enter p0

    .line 558
    :try_start_1
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_c

    .line 560
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_a
    :goto_a
    monitor-exit p0

    .line 568
    return-void

    .line 562
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p1, :cond_a

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_a

    .line 567
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public getDateFlags()J
    .registers 3

    .prologue
    .line 599
    iget-wide v0, p0, Lcom/android/calendar/CalendarController;->mDateFlags:J

    return-wide v0
.end method

.method public getEventId()J
    .registers 3

    .prologue
    .line 615
    iget-wide v0, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    return-wide v0
.end method

.method public getPreviousViewType()I
    .registers 2

    .prologue
    .line 623
    iget v0, p0, Lcom/android/calendar/CalendarController;->mPreviousViewType:I

    return v0
.end method

.method public getTime()J
    .registers 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getViewType()I
    .registers 2

    .prologue
    .line 619
    iget v0, p0, Lcom/android/calendar/CalendarController;->mViewType:I

    return v0
.end method

.method public launchViewEvent(JJJ)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 653
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 654
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/AllInOneActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 655
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 656
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 657
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 658
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 659
    return-void
.end method

.method public refreshCalendars()V
    .registers 9

    .prologue
    .line 702
    const-string v0, "CalendarController"

    const-string v1, "RefreshCalendars starting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mService:Lcom/android/calendar/AsyncQueryService;

    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v1}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "account_name"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "account_type"

    aput-object v6, v4, v5

    const-string v5, "sync_events=?"

    sget-object v6, Lcom/android/calendar/CalendarController;->REFRESH_ARGS:[Ljava/lang/String;

    const-string v7, "account_name,account_type"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    return-void
.end method

.method public registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V
    .registers 5
    .parameter "key"
    .parameter "eventHandler"

    .prologue
    .line 536
    monitor-enter p0

    .line 537
    :try_start_1
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_10

    .line 538
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :goto_e
    monitor-exit p0

    .line 543
    return-void

    .line 540
    :cond_10
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 542
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public registerFirstEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V
    .registers 5
    .parameter "key"
    .parameter "eventHandler"

    .prologue
    .line 546
    monitor-enter p0

    .line 547
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 548
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_15

    .line 549
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    .line 553
    :goto_13
    monitor-exit p0

    .line 554
    return-void

    .line 551
    :cond_15
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_13

    .line 553
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V
    .registers 23
    .parameter "sender"
    .parameter "eventType"
    .parameter "start"
    .parameter "end"
    .parameter "eventId"
    .parameter "viewType"

    .prologue
    .line 310
    const-wide/16 v10, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 312
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V
    .registers 27
    .parameter "sender"
    .parameter "eventType"
    .parameter "start"
    .parameter "end"
    .parameter "eventId"
    .parameter "viewType"
    .parameter "extraLong"
    .parameter "query"
    .parameter "componentName"

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 321
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V
    .registers 15
    .parameter "sender"
    .parameter "eventType"
    .parameter "start"
    .parameter "end"
    .parameter "selected"
    .parameter "eventId"
    .parameter "viewType"
    .parameter "extraLong"
    .parameter "query"
    .parameter "componentName"

    .prologue
    .line 325
    new-instance v0, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 326
    .local v0, info:Lcom/android/calendar/CalendarController$EventInfo;
    iput-wide p2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    .line 327
    iput-object p4, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 328
    iput-object p6, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    .line 329
    iput-object p5, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 330
    iput-wide p7, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 331
    iput p9, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 332
    iput-object p12, v0, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    .line 333
    iput-object p13, v0, Lcom/android/calendar/CalendarController$EventInfo;->componentName:Landroid/content/ComponentName;

    .line 334
    iput-wide p10, v0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    .line 335
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 336
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V
    .registers 32
    .parameter "sender"
    .parameter "event"

    .prologue
    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    .line 346
    .local v17, filteredTypes:Ljava/lang/Long;
    if-eqz v17, :cond_1e

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_1e

    .line 526
    :cond_1d
    :goto_1d
    return-void

    .line 354
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mPreviousViewType:I

    .line 357
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_15b

    .line 358
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    move-object/from16 v0, p2

    iput v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 359
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 379
    :cond_3d
    :goto_3d
    const-wide/16 v26, 0x0

    .line 380
    .local v26, startMillis:J
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v2, :cond_4e

    .line 381
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v26

    .line 385
    :cond_4e
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v2, :cond_19f

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_19f

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 400
    :goto_6e
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x400

    cmp-long v2, v2, v7

    if-nez v2, :cond_80

    .line 401
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/CalendarController;->mDateFlags:J

    .line 405
    :cond_80
    const-wide/16 v2, 0x0

    cmp-long v2, v26, v2

    if-nez v2, :cond_8e

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 417
    :cond_8e
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0xd

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_ad

    .line 420
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-lez v2, :cond_1da

    .line 421
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 427
    :cond_ad
    :goto_ad
    const/16 v19, 0x0

    .line 428
    .local v19, handled:Z
    monitor-enter p0

    .line 429
    :try_start_b0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v2, :cond_f4

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/calendar/CalendarController$EventHandler;

    .line 438
    .local v20, handler:Lcom/android/calendar/CalendarController$EventHandler;
    if-eqz v20, :cond_f4

    invoke-interface/range {v20 .. v20}, Lcom/android/calendar/CalendarController$EventHandler;->getSupportedEventTypes()J

    move-result-wide v2

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_f4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f4

    .line 440
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/calendar/CalendarController$EventHandler;->handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 441
    const/16 v19, 0x1

    .line 444
    .end local v20           #handler:Lcom/android/calendar/CalendarController$EventHandler;
    :cond_f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 445
    .local v21, handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    :cond_100
    :goto_100
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e2

    .line 446
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 447
    .local v15, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 448
    .local v23, key:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v2, :cond_12c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v23

    if-eq v0, v2, :cond_100

    .line 452
    :cond_12c
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/CalendarController$EventHandler;

    .line 453
    .local v16, eventHandler:Lcom/android/calendar/CalendarController$EventHandler;
    if-eqz v16, :cond_100

    invoke-interface/range {v16 .. v16}, Lcom/android/calendar/CalendarController$EventHandler;->getSupportedEventTypes()J

    move-result-wide v2

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_100

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_100

    .line 458
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/calendar/CalendarController$EventHandler;->handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    :try_end_158
    .catchall {:try_start_b0 .. :try_end_158} :catchall_233

    .line 459
    const/16 v19, 0x1

    goto :goto_100

    .line 360
    .end local v15           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    .end local v16           #eventHandler:Lcom/android/calendar/CalendarController$EventHandler;
    .end local v19           #handled:Z
    .end local v21           #handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    .end local v23           #key:I
    .end local v26           #startMillis:J
    :cond_15b
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    if-nez v2, :cond_16b

    .line 361
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    move-object/from16 v0, p2

    iput v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    goto/16 :goto_3d

    .line 362
    :cond_16b
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3d

    .line 363
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 365
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_195

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_195

    invoke-static {}, Lcom/android/calendar/Utils;->getAllowWeekForDetailView()Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3d

    .line 367
    :cond_195
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    goto/16 :goto_3d

    .line 388
    .restart local v26       #startMillis:J
    :cond_19f
    const-wide/16 v2, 0x0

    cmp-long v2, v26, v2

    if-eqz v2, :cond_1d0

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v24

    .line 392
    .local v24, mtimeMillis:J
    cmp-long v2, v24, v26

    if-ltz v2, :cond_1c5

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v2, :cond_1d0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    cmp-long v2, v24, v2

    if-lez v2, :cond_1d0

    .line 394
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 397
    .end local v24           #mtimeMillis:J
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    goto/16 :goto_6e

    .line 423
    :cond_1da
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/CalendarController;->mEventId:J

    goto/16 :goto_ad

    .line 463
    .restart local v19       #handled:Z
    .restart local v21       #handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    :cond_1e2
    :try_start_1e2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 465
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-nez v2, :cond_282

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_23d

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_204
    :goto_204
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_236

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 470
    .local v28, zombie:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v2, :cond_204

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_204

    .line 472
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_204

    .line 488
    .end local v21           #handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v28           #zombie:Ljava/lang/Integer;
    :catchall_233
    move-exception v2

    monitor-exit p0
    :try_end_235
    .catchall {:try_start_1e2 .. :try_end_235} :catchall_233

    throw v2

    .line 475
    .restart local v21       #handlers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    .restart local v22       #i$:Ljava/util/Iterator;
    :cond_236
    :try_start_236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 478
    .end local v22           #i$:Ljava/util/Iterator;
    :cond_23d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    if-eqz v2, :cond_250

    .line 479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    .line 480
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    .line 482
    :cond_250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_282

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22       #i$:Ljava/util/Iterator;
    :goto_266
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_282

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 484
    .local v18, food:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_266

    .line 488
    .end local v18           #food:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    .end local v22           #i$:Ljava/util/Iterator;
    :cond_282
    monitor-exit p0
    :try_end_283
    .catchall {:try_start_236 .. :try_end_283} :catchall_233

    .line 490
    if-nez v19, :cond_1d

    .line 492
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x40

    cmp-long v2, v2, v7

    if-nez v2, :cond_294

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->launchSettings()V

    goto/16 :goto_1d

    .line 498
    :cond_294
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x800

    cmp-long v2, v2, v7

    if-nez v2, :cond_2a3

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->launchSelectVisibleCalendars()V

    goto/16 :goto_1d

    .line 504
    :cond_2a3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-nez v2, :cond_2d0

    const-wide/16 v5, -0x1

    .line 505
    .local v5, endTime:J
    :goto_2ab
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x1

    cmp-long v2, v2, v7

    if-nez v2, :cond_2dc

    .line 506
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v9, 0x10

    cmp-long v2, v7, v9

    if-nez v2, :cond_2da

    const/4 v7, 0x1

    :goto_2c9
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/calendar/CalendarController;->launchCreateEvent(JJZ)V

    goto/16 :goto_1d

    .line 504
    .end local v5           #endTime:J
    :cond_2d0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    goto :goto_2ab

    .line 506
    .restart local v5       #endTime:J
    :cond_2da
    const/4 v7, 0x0

    goto :goto_2c9

    .line 509
    :cond_2dc
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x2

    cmp-long v2, v2, v7

    if-nez v2, :cond_2fb

    .line 510
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    move-object/from16 v7, p0

    move-wide v12, v5

    invoke-virtual/range {v7 .. v13}, Lcom/android/calendar/CalendarController;->launchViewEvent(JJJ)V

    goto/16 :goto_1d

    .line 512
    :cond_2fb
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x8

    cmp-long v2, v2, v7

    if-nez v2, :cond_31b

    .line 513
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    const/4 v14, 0x1

    move-object/from16 v7, p0

    move-wide v12, v5

    invoke-direct/range {v7 .. v14}, Lcom/android/calendar/CalendarController;->launchEditEvent(JJJZ)V

    goto/16 :goto_1d

    .line 515
    :cond_31b
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x4

    cmp-long v2, v2, v7

    if-nez v2, :cond_33b

    .line 516
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-wide v12, v5

    invoke-direct/range {v7 .. v14}, Lcom/android/calendar/CalendarController;->launchEditEvent(JJJZ)V

    goto/16 :goto_1d

    .line 518
    :cond_33b
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x10

    cmp-long v2, v2, v7

    if-nez v2, :cond_35a

    .line 519
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    move-object/from16 v7, p0

    move-wide v12, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/calendar/CalendarController;->launchDeleteEvent(JJJ)V

    goto/16 :goto_1d

    .line 521
    :cond_35a
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x100

    cmp-long v2, v2, v7

    if-nez v2, :cond_1d

    .line 522
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v7}, Lcom/android/calendar/CalendarController;->launchSearch(JLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_1d
.end method

.method public sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V
    .registers 30
    .parameter "sender"
    .parameter "eventType"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "x"
    .parameter "y"
    .parameter "selectedMillis"

    .prologue
    .line 256
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v14, p12

    invoke-virtual/range {v0 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 258
    return-void
.end method

.method public sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V
    .registers 22
    .parameter "sender"
    .parameter "eventType"
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "x"
    .parameter "y"
    .parameter "extraLong"
    .parameter "selectedMillis"

    .prologue
    .line 276
    new-instance v2, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v2}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 277
    .local v2, info:Lcom/android/calendar/CalendarController$EventInfo;
    iput-wide p2, v2, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    .line 278
    const-wide/16 v3, 0x8

    cmp-long v3, p2, v3

    if-eqz v3, :cond_13

    const-wide/16 v3, 0x4

    cmp-long v3, p2, v3

    if-nez v3, :cond_16

    .line 279
    :cond_13
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 281
    :cond_16
    iput-wide p4, v2, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 282
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 283
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v3, p6, p7}, Landroid/text/format/Time;->set(J)V

    .line 284
    const-wide/16 v3, -0x1

    cmp-long v3, p14, v3

    if-eqz v3, :cond_6c

    .line 285
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    .line 286
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    move-wide/from16 v0, p14

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 290
    :goto_48
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 291
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v3, p8, p9}, Landroid/text/format/Time;->set(J)V

    .line 292
    move/from16 v0, p10

    iput v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->x:I

    .line 293
    move/from16 v0, p11

    iput v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->y:I

    .line 294
    move-wide/from16 v0, p12

    iput-wide v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    .line 295
    invoke-virtual {p0, p1, v2}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 296
    return-void

    .line 288
    :cond_6c
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    goto :goto_48
.end method

.method public setEventId(J)V
    .registers 3
    .parameter "eventId"

    .prologue
    .line 719
    iput-wide p1, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 720
    return-void
.end method

.method public setTime(J)V
    .registers 4
    .parameter "millisTime"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 609
    return-void
.end method

.method public setViewType(I)V
    .registers 2
    .parameter "viewType"

    .prologue
    .line 714
    iput p1, p0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 715
    return-void
.end method
