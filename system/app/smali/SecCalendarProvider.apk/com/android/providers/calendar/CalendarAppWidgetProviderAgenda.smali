.class public Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;
.super Landroid/appwidget/AppWidgetProvider;
.source "CalendarAppWidgetProviderAgenda.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$1;,
        Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;,
        Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;
    }
.end annotation


# static fields
.field static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static layoutId:I

.field public static mIsContactsChanged:Z

.field private static mObserver:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;


# instance fields
.field private agenda_layout_default:I

.field private mAgendaItem:[I

.field private mAgendaItemTitleList:[I

.field private mAgendaItemWhenList:[I

.field private mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 77
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "allDay"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 155
    const/high16 v0, 0x7f03

    sput v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mObserver:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;

    .line 159
    sput-boolean v3, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mIsContactsChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0xa

    .line 61
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 120
    const/high16 v0, 0x7f03

    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    .line 122
    new-array v0, v1, [I

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mAgendaItemTitleList:[I

    .line 127
    new-array v0, v1, [I

    fill-array-data v0, :array_3a

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mAgendaItemWhenList:[I

    .line 132
    new-array v0, v1, [I

    fill-array-data v0, :array_52

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mAgendaItem:[I

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mTimeZone:Ljava/util/TimeZone;

    .line 451
    return-void

    .line 122
    :array_22
    .array-data 0x4
        0x13t 0x0t 0x9t 0x7ft
        0x19t 0x0t 0x9t 0x7ft
        0x1ct 0x0t 0x9t 0x7ft
        0x1ft 0x0t 0x9t 0x7ft
        0x22t 0x0t 0x9t 0x7ft
        0x25t 0x0t 0x9t 0x7ft
        0x28t 0x0t 0x9t 0x7ft
        0x2bt 0x0t 0x9t 0x7ft
        0x2et 0x0t 0x9t 0x7ft
        0x16t 0x0t 0x9t 0x7ft
    .end array-data

    .line 127
    :array_3a
    .array-data 0x4
        0x12t 0x0t 0x9t 0x7ft
        0x18t 0x0t 0x9t 0x7ft
        0x1bt 0x0t 0x9t 0x7ft
        0x1et 0x0t 0x9t 0x7ft
        0x21t 0x0t 0x9t 0x7ft
        0x24t 0x0t 0x9t 0x7ft
        0x27t 0x0t 0x9t 0x7ft
        0x2at 0x0t 0x9t 0x7ft
        0x2dt 0x0t 0x9t 0x7ft
        0x15t 0x0t 0x9t 0x7ft
    .end array-data

    .line 132
    :array_52
    .array-data 0x4
        0x7t 0x0t 0x9t 0x7ft
        0x8t 0x0t 0x9t 0x7ft
        0x9t 0x0t 0x9t 0x7ft
        0xat 0x0t 0x9t 0x7ft
        0xbt 0x0t 0x9t 0x7ft
        0xct 0x0t 0x9t 0x7ft
        0xdt 0x0t 0x9t 0x7ft
        0xet 0x0t 0x9t 0x7ft
        0xft 0x0t 0x9t 0x7ft
        0x10t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;Landroid/content/Context;IZ)Landroid/widget/RemoteViews;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getAppWidgetUpdate(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private buildMarkedEvents(Landroid/database/Cursor;J)Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;
    .registers 8
    .parameter "cursor"
    .parameter "now"

    .prologue
    .line 375
    const-string v1, "CalendarAppWidgetProviderAgenda"

    const-string v2, "buildMarkedEvents"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$1;)V

    .line 377
    .local v0, events:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 378
    :goto_11
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 379
    iget v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;->realCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;->realCount:I

    .line 381
    const-string v1, "CalendarAppWidgetProviderAgenda"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildMarkedEvents events tot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;->realCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 384
    :cond_38
    return-object v0
.end method

.method public static convertEventTimezoneToLocal(Landroid/text/format/Time;JLjava/lang/String;)J
    .registers 6
    .parameter "recycle"
    .parameter "utcTime"
    .parameter "eventTimezone"

    .prologue
    .line 795
    if-nez p0, :cond_7

    .line 796
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 798
    .restart local p0
    :cond_7
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 799
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 800
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 801
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private convertUtcToLocal(Landroid/text/format/Time;J)J
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 896
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mTimeZone:Ljava/util/TimeZone;

    .line 897
    if-nez p1, :cond_11

    .line 898
    new-instance p1, Landroid/text/format/Time;

    invoke-direct {p1}, Landroid/text/format/Time;-><init>()V

    .line 900
    :cond_11
    const-string v0, "UTC"

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 901
    invoke-virtual {p1, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 902
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 903
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private getAppWidgetNoEvents(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 972
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getSizeInformation(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 974
    const-string v0, "CalendarAppWidgetProviderAgenda"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppWidgetNoEvents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getSizeInformation(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getSizeInformation(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    .line 980
    :goto_2c
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 981
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->setNoEventsVisible(Landroid/widget/RemoteViews;ZLandroid/content/Context;)Landroid/widget/RemoteViews;

    .line 984
    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getLaunchPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v1

    .line 985
    const/high16 v2, 0x7f09

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 987
    return-object v0

    .line 977
    :cond_47
    const/high16 v0, 0x7f03

    iput v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    goto :goto_2c
.end method

.method private getAppWidgetUpdate(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;
    .registers 61
    .parameter "context"
    .parameter "WidgetID"
    .parameter "flag"

    .prologue
    .line 457
    const-string v4, "CalendarAppWidgetProviderAgenda"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppWidgetUpdate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/16 v55, 0x0

    .line 459
    .local v55, zone:Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v55

    .line 460
    new-instance v45, Landroid/text/format/Time;

    move-object/from16 v0, v45

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 461
    .local v45, time:Landroid/text/format/Time;
    invoke-virtual/range {v45 .. v45}, Landroid/text/format/Time;->setToNow()V

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v42

    .line 463
    .local v42, res:Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 464
    .local v5, resolver:Landroid/content/ContentResolver;
    const/16 v29, 0x0

    .line 465
    .local v29, cursor:Landroid/database/Cursor;
    const/16 v52, 0x0

    .line 466
    .local v52, views:Landroid/widget/RemoteViews;
    if-nez p3, :cond_5b

    .line 469
    const-string v4, "CalendarAppWidgetProviderAgenda"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "do not acess DB flag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v53, v52

    .line 680
    :cond_5a
    :goto_5a
    return-object v53

    .line 472
    :cond_5b
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getSizeInformation(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f6

    .line 474
    const-string v4, "CalendarAppWidgetProviderAgenda"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppWidgetUpdate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct/range {p0 .. p2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getSizeInformation(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getSizeInformation(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    .line 480
    :goto_89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 482
    .local v8, now:J
    const-string v4, "CalendarAppWidgetProviderAgenda"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppWidgetUpdate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :try_start_a5
    const-string v4, "CalendarAppWidgetProviderAgenda"

    const-string v6, "####### Query do it ####### "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-wide/32 v6, 0x5265c00

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getUpcomingInstancesCursor(Landroid/content/ContentResolver;JJ)Landroid/database/Cursor;

    move-result-object v29

    .line 488
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v6, 0x1

    if-ge v4, v6, :cond_fd

    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getNextMidnightTimeMillis()J

    move-result-wide v50

    .line 491
    .local v50, triggerTime:J
    const-string v4, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/AlarmManager;

    .line 492
    .local v25, am:Landroid/app/AlarmManager;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v40

    .line 494
    .local v40, pendingUpdate:Landroid/app/PendingIntent;
    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 495
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move-wide/from16 v1, v50

    move-object/from16 v3, v40

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 497
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 498
    const/16 v29, 0x0

    .line 500
    const-string v4, "CalendarAppWidgetProviderAgenda"

    const-string v6, "cursor null: "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getAppWidgetNoEvents(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    :try_end_ee
    .catchall {:try_start_a5 .. :try_end_ee} :catchall_44f

    move-result-object v53

    .line 674
    if-eqz v29, :cond_5a

    .line 675
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5a

    .line 477
    .end local v8           #now:J
    .end local v25           #am:Landroid/app/AlarmManager;
    .end local v40           #pendingUpdate:Landroid/app/PendingIntent;
    .end local v50           #triggerTime:J
    :cond_f6
    const/high16 v4, 0x7f03

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    goto :goto_89

    .line 503
    .restart local v8       #now:J
    :cond_fd
    :try_start_fd
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v8, v9}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->buildMarkedEvents(Landroid/database/Cursor;J)Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;

    move-result-object v31

    .line 504
    .local v31, events:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;
    new-instance v53, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    move-object/from16 v0, v53

    invoke-direct {v0, v4, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V
    :try_end_114
    .catchall {:try_start_fd .. :try_end_114} :catchall_44f

    .line 505
    .end local v52           #views:Landroid/widget/RemoteViews;
    .local v53, views:Landroid/widget/RemoteViews;
    const/4 v4, 0x0

    :try_start_115
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->setNoEventsVisible(Landroid/widget/RemoteViews;ZLandroid/content/Context;)Landroid/widget/RemoteViews;

    .line 508
    const/16 v33, 0x2

    .line 509
    .local v33, flagss:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v0, v6, v7, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v30

    .line 511
    .local v30, dayOfWeek:Ljava/lang/String;
    const v4, 0x7f090004

    move-object/from16 v0, v53

    move-object/from16 v1, v30

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 512
    const v4, 0x7f090003

    move-object/from16 v0, v45

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 514
    const-wide/16 v36, -0x1

    .line 516
    .local v36, minTriggerTime:J
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToFirst()Z

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getNextMidnightTimeMillis()J

    move-result-wide v36

    .line 519
    const/16 v23, 0x0

    .line 520
    .local v23, ag_index:I
    const/16 v22, 0x1

    .line 521
    .local v22, FirstEvnet:Z
    new-instance v35, Landroid/text/format/Time;

    move-object/from16 v0, v35

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 522
    .local v35, midNight:Landroid/text/format/Time;
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iput v4, v0, Landroid/text/format/Time;->hour:I

    .line 523
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iput v4, v0, Landroid/text/format/Time;->minute:I

    .line 524
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iput v4, v0, Landroid/text/format/Time;->second:I

    .line 525
    const/4 v4, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v43

    .line 528
    .local v43, startMillis:J
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getCalendarPreferenceNotificationMoment(Landroid/content/Context;)Z

    move-result v38

    .line 529
    .local v38, notificationMoment:Z
    const v15, 0x80a10

    .line 530
    .local v15, allDayflags:I
    const/16 v21, 0xa01

    .line 531
    .local v21, flags:I
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_24d

    .line 533
    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    .line 538
    :goto_187
    new-instance v46, Landroid/text/format/Time;

    invoke-direct/range {v46 .. v46}, Landroid/text/format/Time;-><init>()V

    .line 539
    .local v46, times:Landroid/text/format/Time;
    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v47, v0

    .line 544
    .local v47, timezone:Ljava/lang/String;
    :cond_192
    const-string v4, "CalendarAppWidgetProviderAgenda"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loop: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 547
    .local v11, start:J
    const/4 v4, 0x2

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 548
    .local v13, end:J
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_251

    const/16 v24, 0x1

    .line 549
    .local v24, allDay:Z
    :goto_1c5
    const/16 v4, 0x9

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_255

    const/16 v32, 0x1

    .line 551
    .local v32, facebook:Z
    :goto_1d1
    const/16 v54, 0x0

    .line 554
    .local v54, whenString:Ljava/lang/String;
    const-string v4, "CalendarAppWidgetProviderAgenda"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppWidgetUpdate allday :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    if-eqz v24, :cond_2f7

    .line 558
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v13

    .line 559
    const-wide/16 v6, 0x1

    add-long v6, v6, v43

    cmp-long v4, v13, v6

    if-gez v4, :cond_259

    .line 560
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;->realCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v31

    iput v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;->realCount:I

    .line 629
    :cond_208
    :goto_208
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_192

    .line 631
    :goto_20e
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;->realCount:I

    if-nez v4, :cond_3ac

    .line 633
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getNextMidnightTimeMillis()J

    move-result-wide v50

    .line 634
    .restart local v50       #triggerTime:J
    const-string v4, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/AlarmManager;

    .line 635
    .restart local v25       #am:Landroid/app/AlarmManager;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v40

    .line 637
    .restart local v40       #pendingUpdate:Landroid/app/PendingIntent;
    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 638
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move-wide/from16 v1, v50

    move-object/from16 v3, v40

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 640
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 641
    const/16 v29, 0x0

    .line 642
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getAppWidgetNoEvents(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    :try_end_23f
    .catchall {:try_start_115 .. :try_end_23f} :catchall_278

    move-result-object v52

    .line 674
    if-eqz v29, :cond_245

    .line 675
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_245
    move-object/from16 v56, v53

    .end local v53           #views:Landroid/widget/RemoteViews;
    .local v56, views:Landroid/widget/RemoteViews;
    move-object/from16 v53, v52

    move-object/from16 v52, v56

    .end local v56           #views:Landroid/widget/RemoteViews;
    .restart local v52       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_5a

    .line 535
    .end local v11           #start:J
    .end local v13           #end:J
    .end local v24           #allDay:Z
    .end local v25           #am:Landroid/app/AlarmManager;
    .end local v32           #facebook:Z
    .end local v40           #pendingUpdate:Landroid/app/PendingIntent;
    .end local v46           #times:Landroid/text/format/Time;
    .end local v47           #timezone:Ljava/lang/String;
    .end local v50           #triggerTime:J
    .end local v52           #views:Landroid/widget/RemoteViews;
    .end local v54           #whenString:Ljava/lang/String;
    .restart local v53       #views:Landroid/widget/RemoteViews;
    :cond_24d
    or-int/lit8 v21, v21, 0x40

    goto/16 :goto_187

    .line 548
    .restart local v11       #start:J
    .restart local v13       #end:J
    .restart local v46       #times:Landroid/text/format/Time;
    .restart local v47       #timezone:Ljava/lang/String;
    :cond_251
    const/16 v24, 0x0

    goto/16 :goto_1c5

    .line 549
    .restart local v24       #allDay:Z
    :cond_255
    const/16 v32, 0x0

    goto/16 :goto_1d1

    .line 563
    .restart local v32       #facebook:Z
    .restart local v54       #whenString:Ljava/lang/String;
    :cond_259
    const/4 v4, 0x0

    :try_start_25a
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11, v12}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v11

    .line 566
    const-wide/32 v6, 0x5265c00

    add-long v6, v6, v43

    const-wide/16 v16, 0x1

    sub-long v6, v6, v16

    cmp-long v4, v11, v6

    if-lez v4, :cond_281

    .line 567
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;->realCount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v31

    iput v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;->realCount:I
    :try_end_277
    .catchall {:try_start_25a .. :try_end_277} :catchall_278

    goto :goto_208

    .line 674
    .end local v11           #start:J
    .end local v13           #end:J
    .end local v15           #allDayflags:I
    .end local v21           #flags:I
    .end local v22           #FirstEvnet:Z
    .end local v23           #ag_index:I
    .end local v24           #allDay:Z
    .end local v30           #dayOfWeek:Ljava/lang/String;
    .end local v32           #facebook:Z
    .end local v33           #flagss:I
    .end local v35           #midNight:Landroid/text/format/Time;
    .end local v36           #minTriggerTime:J
    .end local v38           #notificationMoment:Z
    .end local v43           #startMillis:J
    .end local v46           #times:Landroid/text/format/Time;
    .end local v47           #timezone:Ljava/lang/String;
    .end local v54           #whenString:Ljava/lang/String;
    :catchall_278
    move-exception v4

    move-object/from16 v52, v53

    .end local v31           #events:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;
    .end local v53           #views:Landroid/widget/RemoteViews;
    .restart local v52       #views:Landroid/widget/RemoteViews;
    :goto_27b
    if-eqz v29, :cond_280

    .line 675
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_280
    throw v4

    .end local v52           #views:Landroid/widget/RemoteViews;
    .restart local v11       #start:J
    .restart local v13       #end:J
    .restart local v15       #allDayflags:I
    .restart local v21       #flags:I
    .restart local v22       #FirstEvnet:Z
    .restart local v23       #ag_index:I
    .restart local v24       #allDay:Z
    .restart local v30       #dayOfWeek:Ljava/lang/String;
    .restart local v31       #events:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;
    .restart local v32       #facebook:Z
    .restart local v33       #flagss:I
    .restart local v35       #midNight:Landroid/text/format/Time;
    .restart local v36       #minTriggerTime:J
    .restart local v38       #notificationMoment:Z
    .restart local v43       #startMillis:J
    .restart local v46       #times:Landroid/text/format/Time;
    .restart local v47       #timezone:Ljava/lang/String;
    .restart local v53       #views:Landroid/widget/RemoteViews;
    .restart local v54       #whenString:Ljava/lang/String;
    :cond_281
    move-object/from16 v10, p1

    .line 571
    :try_start_283
    invoke-static/range {v10 .. v15}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v54

    .line 573
    const-string v4, "CalendarAppWidgetProviderAgenda"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppWidgetUpdate all day Date :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_2a1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mAgendaItemWhenList:[I

    aget v4, v4, v23

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 607
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_38e

    .line 608
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getLaunchPendingIntentFirst(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v39

    .line 609
    .local v39, pendingIntent:Landroid/app/PendingIntent;
    const/high16 v4, 0x7f09

    move-object/from16 v0, v53

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 610
    const/16 v22, 0x0

    .line 619
    .end local v39           #pendingIntent:Landroid/app/PendingIntent;
    :cond_2c8
    :goto_2c8
    const/4 v4, 0x3

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 620
    .local v49, titleString:Ljava/lang/String;
    if-eqz v49, :cond_2d7

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2e0

    .line 621
    :cond_2d7
    const v4, 0x7f07003d

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 623
    :cond_2e0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mAgendaItemTitleList:[I

    aget v4, v4, v23

    move-object/from16 v0, v53

    move-object/from16 v1, v49

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 625
    add-int/lit8 v23, v23, 0x1

    .line 627
    const/16 v4, 0xa

    move/from16 v0, v23

    if-ne v0, v4, :cond_208

    goto/16 :goto_20e

    .line 576
    .end local v49           #titleString:Ljava/lang/String;
    :cond_2f7
    if-eqz v32, :cond_35a

    .line 577
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11, v12}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v11

    .line 578
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v13

    .line 589
    :cond_307
    :goto_307
    move-object/from16 v0, v45

    invoke-virtual {v0, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 590
    cmp-long v4, v13, v36

    if-gez v4, :cond_312

    .line 591
    move-wide/from16 v36, v13

    :cond_312
    move-object/from16 v16, p1

    move-wide/from16 v17, v11

    move-wide/from16 v19, v13

    .line 593
    invoke-static/range {v16 .. v21}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v54

    .line 597
    const-string v4, "CalendarAppWidgetProviderAgenda"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppWidgetUpdate others Date start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " End: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string v4, "CalendarAppWidgetProviderAgenda"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppWidgetUpdate others Date :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a1

    .line 579
    :cond_35a
    if-nez v38, :cond_307

    .line 581
    invoke-static/range {v47 .. v47}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_307

    .line 583
    const-string v4, "CalendarAppWidgetProviderAgenda"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppWidgetUpdate Timezone empty:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-static {v0, v11, v12, v1}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->convertEventTimezoneToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v11

    .line 585
    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-static {v0, v13, v14, v1}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->convertEventTimezoneToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v13

    goto/16 :goto_307

    .line 611
    :cond_38e
    if-eqz v22, :cond_2c8

    .line 612
    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 613
    .local v26, begin:J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getLaunchPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v39

    .line 614
    .restart local v39       #pendingIntent:Landroid/app/PendingIntent;
    const/high16 v4, 0x7f09

    move-object/from16 v0, v53

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 615
    const/16 v22, 0x0

    goto/16 :goto_2c8

    .line 646
    .end local v26           #begin:J
    .end local v39           #pendingIntent:Landroid/app/PendingIntent;
    :cond_3ac
    const/16 v48, 0x4

    .line 647
    .local v48, titleLines:I
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getLayoutType(Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;)I

    move-result v28

    .line 648
    .local v28, count:I
    if-lez v28, :cond_444

    .line 649
    const v4, 0x7f07002e

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 650
    .local v34, format:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    .line 651
    .local v41, plusMore:Ljava/lang/String;
    const v4, 0x7f090005

    move-object/from16 v0, v53

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 653
    const-string v4, "CalendarAppWidgetProviderAgenda"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppWidgetUpdate event count :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const v4, 0x7f090005

    const/4 v6, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 655
    add-int/lit8 v48, v48, -0x1

    .line 660
    .end local v34           #format:Ljava/lang/String;
    .end local v41           #plusMore:Ljava/lang/String;
    :goto_402
    const-wide/16 v6, -0x1

    cmp-long v4, v36, v6

    if-eqz v4, :cond_40c

    cmp-long v4, v36, v8

    if-gez v4, :cond_410

    .line 661
    :cond_40c
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getNextMidnightTimeMillis()J

    move-result-wide v36

    .line 663
    :cond_410
    const-string v4, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/AlarmManager;

    .line 664
    .restart local v25       #am:Landroid/app/AlarmManager;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v40

    .line 666
    .restart local v40       #pendingUpdate:Landroid/app/PendingIntent;
    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 667
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move-wide/from16 v1, v36

    move-object/from16 v3, v40

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 671
    const v4, 0x7f090013

    const-string v6, "setMaxLines"

    move-object/from16 v0, v53

    move/from16 v1, v48

    invoke-virtual {v0, v4, v6, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_43b
    .catchall {:try_start_283 .. :try_end_43b} :catchall_278

    .line 674
    if-eqz v29, :cond_440

    .line 675
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_440
    move-object/from16 v52, v53

    .line 680
    .end local v53           #views:Landroid/widget/RemoteViews;
    .restart local v52       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_5a

    .line 657
    .end local v25           #am:Landroid/app/AlarmManager;
    .end local v40           #pendingUpdate:Landroid/app/PendingIntent;
    .end local v52           #views:Landroid/widget/RemoteViews;
    .restart local v53       #views:Landroid/widget/RemoteViews;
    :cond_444
    const v4, 0x7f090005

    const/16 v6, 0x8

    :try_start_449
    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_44e
    .catchall {:try_start_449 .. :try_end_44e} :catchall_278

    goto :goto_402

    .line 674
    .end local v11           #start:J
    .end local v13           #end:J
    .end local v15           #allDayflags:I
    .end local v21           #flags:I
    .end local v22           #FirstEvnet:Z
    .end local v23           #ag_index:I
    .end local v24           #allDay:Z
    .end local v28           #count:I
    .end local v30           #dayOfWeek:Ljava/lang/String;
    .end local v31           #events:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;
    .end local v32           #facebook:Z
    .end local v33           #flagss:I
    .end local v35           #midNight:Landroid/text/format/Time;
    .end local v36           #minTriggerTime:J
    .end local v38           #notificationMoment:Z
    .end local v43           #startMillis:J
    .end local v46           #times:Landroid/text/format/Time;
    .end local v47           #timezone:Ljava/lang/String;
    .end local v48           #titleLines:I
    .end local v53           #views:Landroid/widget/RemoteViews;
    .end local v54           #whenString:Ljava/lang/String;
    .restart local v52       #views:Landroid/widget/RemoteViews;
    :catchall_44f
    move-exception v4

    goto/16 :goto_27b
.end method

.method public static getCalendarPreferenceNotificationMoment(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 805
    const/4 v0, 0x0

    .line 807
    .local v0, cal:Landroid/content/Context;
    :try_start_1
    const-string v3, "com.android.calendar"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_14

    move-result-object v0

    .line 811
    :goto_8
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 813
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_notification_moment"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    return v3

    .line 808
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :catch_14
    move-exception v1

    .line 809
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 4
    .parameter "context"

    .prologue
    .line 369
    const-string v0, "CalendarAppWidgetProviderAgenda"

    const-string v1, "getComponentName : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.providers.calendar"

    const-string v2, "com.android.providers.calendar.CalendarAppWidgetProviderAgenda"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getLaunchPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 825
    const-string v0, "CalendarAppWidgetProviderAgenda"

    const-string v1, "getLaunchPendingIntent:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 827
    const-string v0, "content://com.android.calendar/time"

    .line 828
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const/high16 v2, 0x1420

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 831
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_3b

    .line 832
    const-string v2, "DETAIL_VIEW"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 835
    :cond_3b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 836
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 838
    const/4 v0, 0x0

    const/high16 v2, 0x800

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getLaunchPendingIntentFirst(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 844
    const-string v0, "CalendarAppWidgetProviderAgenda"

    const-string v1, "getLaunchPendingIntentFirst:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 850
    const/4 v7, 0x0

    .line 851
    const-string v6, "content://com.android.calendar/time"

    .line 852
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 853
    const-wide/32 v2, 0x5265c00

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getUpcomingInstancesCursor(Landroid/content/ContentResolver;JJ)Landroid/database/Cursor;

    move-result-object v1

    .line 854
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 856
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 858
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_79

    .line 860
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 862
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 863
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 865
    iget-object v3, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 866
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6, v3}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->convertEventTimezoneToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v5

    .line 867
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v4, v7, v8, v3}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->convertEventTimezoneToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v3

    .line 869
    const-string v7, "beginTime"

    invoke-virtual {v2, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 870
    const-string v5, "endTime"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 871
    const-string v3, "DETAIL_VIEW"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 882
    :goto_66
    const/high16 v3, 0x1420

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 883
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 884
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 886
    const/4 v0, 0x0

    const/high16 v1, 0x800

    invoke-static {p1, v0, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 875
    :cond_79
    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-eqz v0, :cond_a0

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 877
    const-string v3, "DETAIL_VIEW"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 879
    :goto_9b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_66

    :cond_a0
    move-object v0, v6

    goto :goto_9b
.end method

.method private getLayoutType(Landroid/widget/RemoteViews;Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 907
    .line 909
    iget v0, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    packed-switch v0, :pswitch_data_be

    .line 964
    :goto_6
    return v2

    .line 912
    :pswitch_7
    const-string v0, "CalendarAppWidgetProviderAgenda"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLayoutType layout x1 :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/4 v0, 0x1

    .line 950
    :goto_22
    iget v1, p2, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;->realCount:I

    sub-int/2addr v1, v0

    .line 951
    if-gez v1, :cond_2a

    .line 954
    iget v0, p2, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$MarkedEvents;->realCount:I

    move v1, v2

    :cond_2a
    move v3, v2

    .line 958
    :goto_2b
    if-ge v3, v0, :cond_bc

    .line 959
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mAgendaItem:[I

    aget v4, v4, v3

    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 958
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 919
    :pswitch_37
    const-string v0, "CalendarAppWidgetProviderAgenda"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLayoutType layout x2 :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v0, 0x3

    .line 921
    goto :goto_22

    .line 926
    :pswitch_53
    const-string v0, "CalendarAppWidgetProviderAgenda"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLayoutType layout x3 :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const/4 v0, 0x5

    .line 928
    goto :goto_22

    .line 934
    :pswitch_6f
    const-string v0, "CalendarAppWidgetProviderAgenda"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLayoutType layout x4 :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/4 v0, 0x7

    .line 936
    goto :goto_22

    .line 942
    :pswitch_8b
    const-string v0, "CalendarAppWidgetProviderAgenda"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLayoutType layout x5 :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/16 v0, 0x9

    .line 944
    goto/16 :goto_22

    .line 961
    :goto_a9
    const/16 v2, 0xa

    if-ge v0, v2, :cond_b9

    .line 962
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mAgendaItem:[I

    aget v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 961
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    :cond_b9
    move v2, v1

    .line 964
    goto/16 :goto_6

    :cond_bc
    move v0, v3

    goto :goto_a9

    .line 909
    :pswitch_data_be
    .packed-switch 0x7f030000
        :pswitch_7
        :pswitch_37
        :pswitch_53
        :pswitch_6f
        :pswitch_8b
        :pswitch_37
        :pswitch_53
        :pswitch_6f
        :pswitch_8b
        :pswitch_37
        :pswitch_53
        :pswitch_6f
        :pswitch_8b
    .end packed-switch
.end method

.method private getNextMidnightTimeMillis()J
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1050
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1051
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 1052
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 1053
    iput v4, v2, Landroid/text/format/Time;->hour:I

    .line 1054
    iput v4, v2, Landroid/text/format/Time;->minute:I

    .line 1055
    iput v4, v2, Landroid/text/format/Time;->second:I

    .line 1056
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1057
    .local v0, midnight:J
    return-wide v0
.end method

.method private getPrefNameBase(I)Ljava/lang/String;
    .registers 7
    .parameter "widgetId"

    .prologue
    .line 427
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSizeInformation(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7
    .parameter "c"
    .parameter "id"

    .prologue
    .line 445
    const-string v2, "calendar_agendawidget"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 447
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-direct {p0, p2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getPrefNameBase(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, nameBase:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getUpcomingInstancesCursor(Landroid/content/ContentResolver;JJ)Landroid/database/Cursor;
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 995
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 996
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 997
    const/16 v1, 0x17

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 998
    const/16 v1, 0x3b

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 999
    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 1001
    const-string v3, "CalendarAppWidgetProviderAgenda"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUpcomingInstancesCursor end milli:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%d/%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1005
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s=1 AND %s!=%d AND %s!=1"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "visible"

    aput-object v4, v3, v7

    const-string v4, "selfAttendeeStatus"

    aput-object v4, v3, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x3

    const-string v5, "deleted"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1008
    const-string v0, "CalendarAppWidgetProviderAgenda"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUpcomingInstancesCursor selection:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    sget-object v2, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 415
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V
    .registers 9
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetId"
    .parameter "flag"

    .prologue
    .line 397
    const-string v1, "CalendarAppWidgetProviderAgenda"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performUpdate Id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0, p1, p3, p4}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getAppWidgetUpdate(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 400
    .local v0, views:Landroid/widget/RemoteViews;
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 401
    return-void
.end method

.method private removeSizeInformation(Landroid/content/Context;I)V
    .registers 8
    .parameter "c"
    .parameter "id"

    .prologue
    .line 419
    const-string v3, "calendar_agendawidget"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 420
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 421
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getPrefNameBase(I)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, nameBase:Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 423
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    return-void
.end method

.method private setContentObserver(Landroid/content/Context;J)V
    .registers 17
    .parameter "c"
    .parameter "searchDuration"

    .prologue
    .line 316
    const-string v7, "CalendarAppWidgetProviderAgenda"

    const-string v8, "setContentObserver"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 318
    .local v3, endt:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 319
    const/16 v7, 0x17

    iput v7, v3, Landroid/text/format/Time;->hour:I

    .line 320
    const/16 v7, 0x3b

    iput v7, v3, Landroid/text/format/Time;->minute:I

    .line 321
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 322
    .local v1, end:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 324
    .local v4, now:J
    sget-object v7, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "%d/%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 326
    .local v6, uri:Landroid/net/Uri;
    const-string v7, "CalendarAppWidgetProviderAgenda"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setContentObserver uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 328
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v7, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mObserver:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;

    if-nez v7, :cond_66

    .line 329
    new-instance v7, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;

    invoke-direct {v7, p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;Landroid/content/Context;)V

    sput-object v7, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mObserver:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;

    .line 331
    :cond_66
    const/4 v7, 0x1

    sget-object v8, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mObserver:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 332
    return-void
.end method

.method private setNoEventsVisible(Landroid/widget/RemoteViews;ZLandroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 13
    .parameter "views"
    .parameter "noEvents"
    .parameter "context"

    .prologue
    .line 693
    const-string v6, "CalendarAppWidgetProviderAgenda"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setNoEventsVisible : noEvents =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v5, 0x0

    .line 695
    .local v5, zone:Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    .line 696
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 697
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 699
    const/4 v1, 0x2

    .line 701
    .local v1, flagss:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, dayOfWeek:Ljava/lang/String;
    const v6, 0x7f090033

    iget v7, v4, Landroid/text/format/Time;->monthDay:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 706
    const v7, 0x7f090033

    if-eqz p2, :cond_ce

    const/4 v6, 0x0

    :goto_44
    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 708
    const v6, 0x7f090032

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 709
    const v7, 0x7f090032

    if-eqz p2, :cond_d2

    const/4 v6, 0x0

    :goto_53
    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 712
    const v6, 0x7f090030

    const-string v7, " "

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 713
    const v7, 0x7f090030

    if-eqz p2, :cond_d6

    const/4 v6, 0x0

    :goto_64
    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 715
    const v6, 0x7f090004

    invoke-virtual {p1, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 717
    const v6, 0x7f090003

    iget v7, v4, Landroid/text/format/Time;->monthDay:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 718
    const v7, 0x7f090034

    if-eqz p2, :cond_d9

    const/4 v6, 0x0

    :goto_7f
    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 720
    const v7, 0x7f090003

    if-eqz p2, :cond_dc

    const/16 v6, 0x8

    :goto_89
    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 721
    const v7, 0x7f090004

    if-eqz p2, :cond_de

    const/16 v6, 0x8

    :goto_93
    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 723
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090033

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 726
    if-eqz p2, :cond_e0

    const/16 v3, 0x8

    .line 727
    .local v3, otherViews:I
    :goto_a4
    const v6, 0x7f090012

    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 728
    const v6, 0x7f090013

    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 729
    if-eqz p2, :cond_174

    .line 733
    iget v6, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->agenda_layout_default:I

    packed-switch v6, :pswitch_data_17e

    .line 779
    :goto_b7
    const v6, 0x7f090005

    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 781
    const/4 v2, 0x0

    .local v2, i:I
    :goto_be
    const/16 v6, 0xa

    if-ge v2, v6, :cond_17d

    .line 783
    iget-object v6, p0, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mAgendaItem:[I

    aget v6, v6, v2

    const/16 v7, 0x8

    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 781
    add-int/lit8 v2, v2, 0x1

    goto :goto_be

    .line 706
    .end local v2           #i:I
    .end local v3           #otherViews:I
    :cond_ce
    const/16 v6, 0x8

    goto/16 :goto_44

    .line 709
    :cond_d2
    const/16 v6, 0x8

    goto/16 :goto_53

    .line 713
    :cond_d6
    const/16 v6, 0x8

    goto :goto_64

    .line 718
    :cond_d9
    const/16 v6, 0x8

    goto :goto_7f

    .line 720
    :cond_dc
    const/4 v6, 0x0

    goto :goto_89

    .line 721
    :cond_de
    const/4 v6, 0x0

    goto :goto_93

    .line 726
    :cond_e0
    const/4 v3, 0x0

    goto :goto_a4

    .line 736
    .restart local v3       #otherViews:I
    :pswitch_e2
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const v8, 0x7f020003

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_b7

    .line 739
    :pswitch_ed
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const v8, 0x7f020004

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_b7

    .line 742
    :pswitch_f8
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const v8, 0x7f020005

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_b7

    .line 745
    :pswitch_103
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const v8, 0x7f020006

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_b7

    .line 749
    :pswitch_10e
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const/high16 v8, 0x7f02

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_b7

    .line 752
    :pswitch_118
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const v8, 0x7f020007

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_b7

    .line 755
    :pswitch_123
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const v8, 0x7f020008

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_b7

    .line 758
    :pswitch_12e
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const v8, 0x7f020009

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_b7

    .line 762
    :pswitch_13a
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const/high16 v8, 0x7f02

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_b7

    .line 765
    :pswitch_145
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const v8, 0x7f02000a

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_b7

    .line 768
    :pswitch_151
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const v8, 0x7f02000b

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_b7

    .line 771
    :pswitch_15d
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const v8, 0x7f02000c

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_b7

    .line 775
    :pswitch_169
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const/high16 v8, 0x7f02

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_b7

    .line 789
    :cond_174
    const/high16 v6, 0x7f09

    const-string v7, "setBackgroundResource"

    const/high16 v8, 0x7f02

    invoke-virtual {p1, v6, v7, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 791
    :cond_17d
    return-object p1

    .line 733
    :pswitch_data_17e
    .packed-switch 0x7f030000
        :pswitch_e2
        :pswitch_ed
        :pswitch_f8
        :pswitch_103
        :pswitch_10e
        :pswitch_118
        :pswitch_123
        :pswitch_12e
        :pswitch_13a
        :pswitch_145
        :pswitch_151
        :pswitch_15d
        :pswitch_169
    .end packed-switch
.end method

.method private storeSizeInformation(Landroid/content/Context;II)V
    .registers 11
    .parameter "c"
    .parameter "widgetId"
    .parameter "layoutid"

    .prologue
    .line 431
    const-string v4, "calendar_agendawidget"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 432
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 434
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, p2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getPrefNameBase(I)Ljava/lang/String;

    move-result-object v3

    .line 435
    .local v3, wID:Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getPrefNameBase(I)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, layID:Ljava/lang/String;
    const-string v4, "CalendarAppWidgetProviderAgenda"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " layID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 442
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 7
    .parameter "c"
    .parameter "widgetIds"

    .prologue
    .line 309
    move-object v0, p2

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v3, :cond_d

    aget v2, v0, v1

    .line 310
    .local v2, id:I
    invoke-direct {p0, p1, v2}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->removeSizeInformation(Landroid/content/Context;I)V

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 312
    .end local v2           #id:I
    :cond_d
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 276
    const-string v3, "CalendarAppWidgetProviderAgenda"

    const-string v4, "onDisabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 279
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 280
    .local v2, pendingUpdate:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 285
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mObserver:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;

    if-eqz v3, :cond_26

    .line 286
    sget-object v3, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mObserver:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 287
    const/4 v3, 0x0

    sput-object v3, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mObserver:Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda$CalendarObserver;

    .line 289
    :cond_26
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 168
    invoke-super/range {p0 .. p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 171
    const-string v12, "CalendarAppWidgetProviderAgenda"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onReceive : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_118

    .line 174
    const-string v12, "widgetspanx"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 175
    .local v8, spanX:I
    const-string v12, "widgetspany"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 176
    .local v9, spanY:I
    const-string v12, "widgetId"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 177
    .local v11, widgetId:I
    if-gez v11, :cond_65

    .line 179
    const-string v12, "CalendarAppWidgetProviderAgenda"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invalid widgetId : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    .end local v8           #spanX:I
    .end local v9           #spanY:I
    .end local v11           #widgetId:I
    :cond_64
    :goto_64
    return-void

    .line 184
    .restart local v8       #spanX:I
    .restart local v9       #spanY:I
    .restart local v11       #widgetId:I
    :cond_65
    const-string v12, "CalendarAppWidgetProviderAgenda"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WIDGET_RESIZE spanX : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", spanY : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v12, 0x2

    if-ne v8, v12, :cond_d8

    .line 187
    packed-switch v9, :pswitch_data_1e2

    .line 236
    :cond_8d
    :goto_8d
    sget v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    if-lez v12, :cond_64

    .line 237
    sget v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v11, v12}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->storeSizeInformation(Landroid/content/Context;II)V

    .line 239
    const-string v12, "CalendarAppWidgetProviderAgenda"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UPDATE appWidgetid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12, v11, v13}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    goto :goto_64

    .line 189
    :pswitch_bb
    const/high16 v12, 0x7f03

    sput v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    goto :goto_8d

    .line 192
    :pswitch_c0
    const v12, 0x7f030001

    sput v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    goto :goto_8d

    .line 195
    :pswitch_c6
    const v12, 0x7f030002

    sput v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    goto :goto_8d

    .line 198
    :pswitch_cc
    const v12, 0x7f030003

    sput v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    goto :goto_8d

    .line 201
    :pswitch_d2
    const v12, 0x7f030004

    sput v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    goto :goto_8d

    .line 204
    :cond_d8
    const/4 v12, 0x3

    if-ne v8, v12, :cond_f7

    .line 205
    packed-switch v9, :pswitch_data_1f0

    goto :goto_8d

    .line 207
    :pswitch_df
    const v12, 0x7f030005

    sput v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    goto :goto_8d

    .line 210
    :pswitch_e5
    const v12, 0x7f030006

    sput v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    goto :goto_8d

    .line 213
    :pswitch_eb
    const v12, 0x7f030007

    sput v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    goto :goto_8d

    .line 216
    :pswitch_f1
    const v12, 0x7f030008

    sput v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    goto :goto_8d

    .line 219
    :cond_f7
    const/4 v12, 0x4

    if-ne v8, v12, :cond_8d

    .line 220
    packed-switch v9, :pswitch_data_1fc

    goto :goto_8d

    .line 222
    :pswitch_fe
    const v12, 0x7f030009

    sput v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    goto :goto_8d

    .line 225
    :pswitch_104
    const v12, 0x7f03000a

    sput v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    goto :goto_8d

    .line 228
    :pswitch_10a
    const v12, 0x7f03000b

    sput v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    goto/16 :goto_8d

    .line 231
    :pswitch_111
    const v12, 0x7f03000c

    sput v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->layoutId:I

    goto/16 :goto_8d

    .line 244
    .end local v8           #spanX:I
    .end local v9           #spanY:I
    .end local v11           #widgetId:I
    :cond_118
    const-string v12, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_160

    const-string v12, "com.android.calendar.APPWIDGET_UPDATE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_160

    const-string v12, "sec.android.intent.action.HOME_RESUME"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_160

    const-string v12, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_160

    const-string v12, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_160

    const-string v12, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_160

    const-string v12, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b6

    .line 253
    :cond_160
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 254
    .local v3, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v10

    .line 255
    .local v10, thisAppWidget:Landroid/content/ComponentName;
    invoke-virtual {v3, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 256
    .local v2, appWidgetIds:[I
    move-object v4, v2

    .local v4, arr$:[I
    array-length v7, v4

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_16f
    if-ge v5, v7, :cond_64

    aget v6, v4, v5

    .line 258
    .local v6, id:I
    const-string v12, "CalendarAppWidgetProviderAgenda"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onUpdate appWidgetIds: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mIsContactsChanged:Z

    .line 261
    const-string v12, "CalendarAppWidgetProviderAgenda"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_HOME_RESUME: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mIsContactsChanged:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    sget-boolean v13, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mIsContactsChanged:Z

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12, v6, v13}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    .line 256
    add-int/lit8 v5, v5, 0x1

    goto :goto_16f

    .line 264
    .end local v2           #appWidgetIds:[I
    .end local v3           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v4           #arr$:[I
    .end local v5           #i$:I
    .end local v6           #id:I
    .end local v7           #len$:I
    .end local v10           #thisAppWidget:Landroid/content/ComponentName;
    :cond_1b6
    const-string v12, "sec.android.intent.action.HOME_PAUSE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_64

    .line 265
    const/4 v12, 0x0

    sput-boolean v12, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mIsContactsChanged:Z

    .line 266
    const-string v12, "CalendarAppWidgetProviderAgenda"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ACTION_HOME_PAUSE: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mIsContactsChanged:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    .line 187
    nop

    :pswitch_data_1e2
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_c0
        :pswitch_c6
        :pswitch_cc
        :pswitch_d2
    .end packed-switch

    .line 205
    :pswitch_data_1f0
    .packed-switch 0x2
        :pswitch_df
        :pswitch_e5
        :pswitch_eb
        :pswitch_f1
    .end packed-switch

    .line 220
    :pswitch_data_1fc
    .packed-switch 0x2
        :pswitch_fe
        :pswitch_104
        :pswitch_10a
        :pswitch_111
    .end packed-switch
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 11
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 297
    move-object v0, p3

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v3, :cond_2e

    aget v2, v0, v1

    .line 299
    .local v2, id:I
    const-string v4, "CalendarAppWidgetProviderAgenda"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpdate appWidgetIds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mIsContactsChanged:Z

    .line 301
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    sget-boolean v5, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->mIsContactsChanged:Z

    invoke-direct {p0, p1, v4, v2, v5}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->performUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 303
    .end local v2           #id:I
    :cond_2e
    const-wide/32 v4, 0x5265c00

    invoke-direct {p0, p1, v4, v5}, Lcom/android/providers/calendar/CalendarAppWidgetProviderAgenda;->setContentObserver(Landroid/content/Context;J)V

    .line 304
    return-void
.end method
