.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;,
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public final AGENDA_PROJECTION:[Ljava/lang/String;

.field public final AGENDA_SORT_ORDER:Ljava/lang/String;

.field private OFF_BY_ONE_BUG:I

.field private mAdapterInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgendaActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

.field private mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

.field public mAllChecked:Z

.field public mBeforeTodayChecked:Z

.field private mCheckedIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHideDeclined:Z

.field private mLastUsedInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

.field private mNewerRequestsProcessed:I

.field private mNotificationMoment:Z

.field private mOlderRequestsProcessed:I

.field private mOnLoadCompleteListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;

.field private mQueryHandler:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;

.field private mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;",
            ">;"
        }
    .end annotation
.end field

.field private mRequeryHandler:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;

.field private mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRowCount:I

.field private mShuttingDown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const-string v0, "AgendaWindowAdapter"

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;)V
    .registers 8
    .parameter "agendaActivity"
    .parameter "agendaListView"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 264
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    const-string v0, "startDay ASC, begin ASC, title ASC"

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->AGENDA_SORT_ORDER:Ljava/lang/String;

    .line 81
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "event_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "contact_data_id"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "contact_account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "facebook_photo_url"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    .line 137
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 139
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 160
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAllChecked:Z

    .line 161
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mBeforeTodayChecked:Z

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;

    .line 165
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mNotificationMoment:Z

    .line 265
    iput-object p2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    .line 266
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAgendaActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    .line 267
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    .line 268
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryHandler:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;

    .line 269
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRequeryHandler:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;

    .line 274
    iput v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->OFF_BY_ONE_BUG:I

    .line 276
    return-void
.end method

.method private DayChange(IZII)I
    .registers 7
    .parameter "day"
    .parameter "isStart"
    .parameter "qtype"
    .parameter "diff"

    .prologue
    .line 855
    const/4 v0, 0x0

    .line 856
    .local v0, retVal:I
    add-int v0, p1, p4

    .line 857
    packed-switch p3, :pswitch_data_22

    .line 875
    :cond_6
    :goto_6
    return v0

    .line 859
    :pswitch_7
    const v1, 0x24dc87

    if-ge v0, v1, :cond_6

    .line 860
    if-eqz p2, :cond_12

    .line 861
    const v0, 0x24dc87

    goto :goto_6

    .line 863
    :cond_12
    move v0, p1

    goto :goto_6

    .line 867
    :pswitch_14
    const v1, 0x259d23

    if-le v0, v1, :cond_6

    .line 868
    if-eqz p2, :cond_1d

    .line 869
    move v0, p1

    goto :goto_6

    .line 871
    :cond_1d
    const v0, 0x259d23

    goto :goto_6

    .line 857
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_7
        :pswitch_14
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;IZII)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->DayChange(IZII)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$OnLoadCompleteListener;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAgendaActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mNotificationMoment:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRowCount:I

    return p1
.end method

.method static synthetic access$1512(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRowCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mLastUsedInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;Landroid/text/format/Time;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->OFF_BY_ONE_BUG:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$808(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    return v0
.end method

.method static synthetic access$908(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    return v0
.end method

.method private buildQueryUri(II)Landroid/net/Uri;
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    .local v0, path:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 790
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 792
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 793
    .local v1, uri:Landroid/net/Uri;
    return-object v1
.end method

.method private calculateQueryDuration(II)I
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 819
    const/16 v0, 0x3c

    .line 820
    .local v0, queryDuration:I
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRowCount:I

    if-eqz v1, :cond_10

    .line 821
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRowCount:I

    div-int v0, v1, v2

    .line 824
    :cond_10
    const/16 v1, 0x3c

    if-le v0, v1, :cond_17

    .line 825
    const/16 v0, 0x3c

    .line 829
    :cond_16
    :goto_16
    return v0

    .line 826
    :cond_17
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_16

    .line 827
    const/16 v0, 0x1e

    goto :goto_16
.end method

.method private doQuery(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;)V
    .registers 13
    .parameter "queryData"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 879
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 880
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    iget v10, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 881
    .local v10, start:I
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    iget v8, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 882
    .local v8, end:I
    invoke-direct {p0, v10, v8}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->calculateQueryDuration(II)I

    move-result v9

    .line 883
    .local v9, queryDuration:I
    iget v0, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v0, :pswitch_data_64

    .line 904
    .end local v8           #end:I
    .end local v9           #queryDuration:I
    .end local v10           #start:I
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryHandler:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 909
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryHandler:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;

    iget v2, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    iget v3, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "startDay ASC, begin ASC, title ASC"

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    return-void

    .line 885
    .restart local v8       #end:I
    .restart local v9       #queryDuration:I
    .restart local v10       #start:I
    :pswitch_44
    const/4 v0, -0x1

    invoke-direct {p0, v10, v1, v1, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->DayChange(IZII)I

    move-result v0

    iput v0, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    .line 886
    iget v0, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    neg-int v2, v9

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->DayChange(IZII)I

    move-result v0

    iput v0, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_27

    .line 889
    :pswitch_55
    invoke-direct {p0, v8, v3, v3, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->DayChange(IZII)I

    move-result v0

    iput v0, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    .line 890
    iget v0, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    invoke-direct {p0, v0, v1, v3, v9}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->DayChange(IZII)I

    move-result v0

    iput v0, p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_27

    .line 883
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_44
        :pswitch_55
    .end packed-switch
.end method

.method private findDayPositionNearestTime(Landroid/text/format/Time;)I
    .registers 5
    .parameter "time"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 384
    .local v0, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_10

    .line 385
    iget v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v2

    add-int/2addr v1, v2

    .line 387
    :goto_f
    return v1

    :cond_10
    const/4 v1, -0x1

    goto :goto_f
.end method

.method private getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .registers 10
    .parameter "time"

    .prologue
    .line 411
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 412
    .local v5, tmpTime:Landroid/text/format/Time;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 413
    .local v3, timeInMillis:J
    iget-wide v6, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v6, v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getJulianDay(JJ)I

    move-result v0

    .line 414
    .local v0, day:I
    iget-object v7, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v7

    .line 415
    :try_start_13
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 416
    .local v2, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    iget v6, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v0, :cond_19

    iget v6, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-ge v0, v6, :cond_19

    .line 417
    monitor-exit v7

    .line 421
    .end local v2           #info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    :goto_2e
    return-object v2

    .line 420
    :cond_2f
    monitor-exit v7

    .line 421
    const/4 v2, 0x0

    goto :goto_2e

    .line 420
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_32
    move-exception v6

    monitor-exit v7
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_32

    throw v6
.end method

.method private pruneAdapterInfo(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .registers 10
    .parameter "queryType"

    .prologue
    .line 702
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    .line 703
    const/4 v3, 0x0

    .line 704
    .local v3, recycleMe:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    :try_start_4
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6e

    .line 705
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_43

    .line 706
    const/4 v5, 0x1

    if-ne p1, v5, :cond_30

    .line 707
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 713
    :cond_22
    :goto_22
    if-eqz v3, :cond_43

    .line 714
    iget-object v5, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_2d

    .line 715
    iget-object v5, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 717
    :cond_2d
    monitor-exit v6

    move-object v4, v3

    .line 743
    .end local v3           #recycleMe:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .local v4, recycleMe:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    :goto_2f
    return-object v4

    .line 708
    .end local v4           #recycleMe:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #recycleMe:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    :cond_30
    if-nez p1, :cond_22

    .line 709
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 711
    const/4 v5, 0x0

    iput v5, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->size:I

    goto :goto_22

    .line 744
    :catchall_40
    move-exception v5

    monitor-exit v6
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_40

    throw v5

    .line 721
    :cond_43
    :try_start_43
    iget v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRowCount:I

    if-eqz v5, :cond_4a

    const/4 v5, 0x2

    if-ne p1, v5, :cond_6e

    .line 722
    :cond_4a
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRowCount:I

    .line 723
    const/4 v1, 0x0

    .line 726
    .local v1, deletedRows:I
    :cond_4e
    iget-object v5, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 727
    .local v2, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_65

    .line 729
    iget-object v5, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_61

    .line 730
    iget-object v5, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 732
    :cond_61
    iget v5, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v1, v5

    .line 733
    move-object v3, v2

    .line 735
    :cond_65
    if-nez v2, :cond_4e

    .line 737
    if-eqz v3, :cond_6e

    .line 738
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 739
    iput v1, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 743
    .end local v1           #deletedRows:I
    .end local v2           #info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    :cond_6e
    monitor-exit v6
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_40

    move-object v4, v3

    .end local v3           #recycleMe:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v4       #recycleMe:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    goto :goto_2f
.end method

.method private queueQuery(IILandroid/text/format/Time;I)Z
    .registers 7
    .parameter "start"
    .parameter "end"
    .parameter "goToTime"
    .parameter "queryType"

    .prologue
    .line 833
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v0, p4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    .line 834
    .local v0, queryData:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;
    iput-object p3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 835
    iput p1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->start:I

    .line 836
    iput p2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;->end:I

    .line 837
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->queueQuery(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;)Z

    move-result v1

    return v1
.end method

.method private queueQuery(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;)Z
    .registers 6
    .parameter "queryData"

    .prologue
    .line 842
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v3

    .line 843
    const/4 v2, 0x0

    :try_start_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 844
    .local v1, queuedQuery:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 845
    .local v0, doQueryNow:Ljava/lang/Boolean;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 846
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 847
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->doQuery(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QuerySpec;)V

    .line 850
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2b

    .line 851
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 850
    .end local v0           #doQueryNow:Ljava/lang/Boolean;
    .end local v1           #queuedQuery:Ljava/lang/Boolean;
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method private requery()V
    .registers 14

    .prologue
    .line 663
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 664
    .local v2, dayAdapterInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v12, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v12

    .line 665
    :try_start_15
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 666
    .local v8, doQueryNow:Ljava/lang/Boolean;
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 668
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 669
    .local v10, time:Landroid/text/format/Time;
    iget v0, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    invoke-static {v10, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 670
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 671
    .local v11, time2:Landroid/text/format/Time;
    iget v0, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-static {v11, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 674
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 675
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRequeryHandler:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;

    const/4 v1, 0x0

    iget v3, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    iget v4, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-direct {p0, v3, v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "startDay ASC, begin ASC, title ASC"

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    .end local v10           #time:Landroid/text/format/Time;
    .end local v11           #time2:Landroid/text/format/Time;
    :cond_55
    monitor-exit v12

    goto :goto_6

    .end local v8           #doQueryNow:Ljava/lang/Boolean;
    :catchall_57
    move-exception v0

    monitor-exit v12
    :try_end_59
    .catchall {:try_start_15 .. :try_end_59} :catchall_57

    throw v0

    .line 681
    .end local v2           #dayAdapterInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    :cond_5a
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public buildQuerySelection()Ljava/lang/String;
    .registers 4

    .prologue
    .line 749
    const-string v0, "deleted=0 AND (eventStatus!=2 OR eventStatus is null)"

    .line 750
    .local v0, where:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mHideDeclined:Z

    if-eqz v1, :cond_20

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND visible=1 AND selfAttendeeStatus!=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 758
    :goto_19
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getHideContactsEventsSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    return-object v0

    .line 755
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND visible=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mShuttingDown:Z

    .line 685
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 686
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryHandler:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;

    if-eqz v0, :cond_11

    .line 687
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mQueryHandler:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 689
    :cond_11
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRequeryHandler:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;

    if-eqz v0, :cond_1a

    .line 690
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRequeryHandler:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$RequeryHandler;->cancelOperation(I)V

    .line 699
    :cond_1a
    return-void
.end method

.method public getAdapterInfoByPosition(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    .registers 7
    .parameter "position"

    .prologue
    .line 392
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v3

    .line 393
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mLastUsedInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mLastUsedInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_1c

    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mLastUsedInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mLastUsedInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_1c

    .line 395
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mLastUsedInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    monitor-exit v3

    .line 405
    :goto_1b
    return-object v1

    .line 397
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 398
    .local v1, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    iget v2, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_22

    iget v2, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget v4, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_22

    .line 400
    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mLastUsedInfo:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 401
    monitor-exit v3

    goto :goto_1b

    .line 404
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_40
    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3d

    .line 405
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public getAllChecked()Z
    .registers 2

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAllChecked:Z

    return v0
.end method

.method public getBeforeTodayChecked()Z
    .registers 2

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mBeforeTodayChecked:Z

    return v0
.end method

.method public getCheckIds()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mCheckedIds:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method public getEventByPosition(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;
    .registers 11
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 431
    new-instance v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;-><init>()V

    .line 432
    .local v1, event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;
    iget v7, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->OFF_BY_ONE_BUG:I

    sub-int/2addr p1, v7

    .line 433
    if-gez p1, :cond_d

    .line 434
    const/4 p1, 0x0

    .line 436
    :cond_d
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 437
    .local v2, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    if-nez v2, :cond_15

    move-object v1, v5

    .line 474
    .end local v1           #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;
    :cond_14
    :goto_14
    return-object v1

    .line 441
    .restart local v1       #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;
    :cond_15
    iget-object v7, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    iget v8, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v8, p1, v8

    invoke-virtual {v7, v8}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result p1

    .line 442
    const/high16 v7, -0x8000

    if-ne p1, v7, :cond_25

    move-object v1, v5

    .line 443
    goto :goto_14

    .line 446
    :cond_25
    const/4 v3, 0x0

    .line 447
    .local v3, isDayHeader:Z
    if-gez p1, :cond_2a

    .line 448
    neg-int p1, p1

    .line 449
    const/4 v3, 0x1

    .line 452
    :cond_2a
    iget-object v7, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge p1, v7, :cond_80

    .line 453
    iget-object v5, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 454
    iget-object v5, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v7, 0x7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;->begin:J

    .line 455
    iget-object v5, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_7e

    const/4 v0, 0x1

    .line 457
    .local v0, allDay:Z
    :goto_4a
    if-eqz v3, :cond_5f

    .line 458
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 459
    .local v4, time:Landroid/text/format/Time;
    iget-wide v7, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v4, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 460
    invoke-static {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 464
    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;->begin:J

    .line 467
    .end local v4           #time:Landroid/text/format/Time;
    :cond_5f
    if-nez v3, :cond_14

    .line 468
    iget-object v5, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v7, 0x8

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;->end:J

    .line 469
    iget-object v5, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v7, 0xb

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    .line 470
    iget-object v5, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$EventInfo;->id:J

    goto :goto_14

    .end local v0           #allDay:Z
    :cond_7e
    move v0, v6

    .line 455
    goto :goto_4a

    :cond_80
    move-object v1, v5

    .line 474
    goto :goto_14
.end method

.method public getEventCount(II)I
    .registers 12
    .parameter "startDay"
    .parameter "endDay"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1342
    const/4 v7, 0x0

    .line 1348
    .local v7, count:I
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v3

    .line 1349
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAgendaActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "COUNT(*) AS _count"

    aput-object v5, v2, v8

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1353
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2c

    .line 1354
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1355
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1357
    :cond_29
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1361
    :cond_2c
    return v7
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter "position"

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 320
    .local v0, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 321
    iget-object v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 323
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 336
    .local v0, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 337
    iget v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0x14

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->start:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    .line 339
    :goto_10
    return-wide v1

    :cond_11
    const-wide/16 v1, -0x1

    goto :goto_10
.end method

.method public getItemViewType(I)I
    .registers 5
    .parameter "position"

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 294
    .local v0, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 295
    iget-object v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v1

    .line 297
    :goto_10
    return v1

    :cond_11
    const/4 v1, -0x1

    goto :goto_10
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 364
    .local v0, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 365
    iget-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    iget v4, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v4, p1, v4

    invoke-virtual {v3, v4, p2, p3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 377
    .local v2, v:Landroid/view/View;
    :goto_10
    return-object v2

    .line 369
    .end local v2           #v:Landroid/view/View;
    :cond_11
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 370
    .local v1, tv:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bug! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    move-object v2, v1

    .restart local v2       #v:Landroid/view/View;
    goto :goto_10
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 281
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .registers 5
    .parameter "position"

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 305
    .local v0, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 306
    iget-object v1, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    iget v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->isEnabled(I)Z

    move-result v1

    .line 308
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public refresh(Landroid/text/format/Time;Z)V
    .registers 12
    .parameter "goToTime"
    .parameter "forced"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 608
    invoke-virtual {p1, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-wide v5, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getJulianDay(JJ)I

    move-result v2

    .line 617
    .local v2, startDay:I
    add-int/lit8 v0, v2, 0x1e

    .line 618
    .local v0, endDay:I
    const v3, 0x259d23

    if-le v0, v3, :cond_17

    .line 619
    const v0, 0x259d23

    .line 623
    :cond_17
    const/4 v1, 0x0

    .line 632
    .local v1, eventCount:I
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->getEventCount(II)I

    move-result v1

    .line 637
    if-nez v1, :cond_30

    .line 638
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    invoke-virtual {v3, v8}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setVisibility(I)V

    .line 639
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    iget-object v3, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mNoEventContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAgendaActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->reloadCurrentDayEvents()V

    .line 659
    :goto_2f
    return-void

    .line 645
    :cond_30
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    invoke-virtual {v3, v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setVisibility(I)V

    .line 646
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    iget-object v3, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mNoEventContainer:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4a

    if-eqz p2, :cond_4a

    .line 652
    invoke-direct {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->requery()V

    goto :goto_2f

    .line 658
    :cond_4a
    const/4 v3, 0x2

    invoke-direct {p0, v2, v0, p1, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;I)Z

    goto :goto_2f
.end method

.method public setCheckIds(Ljava/util/HashMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 592
    return-void
.end method

.method public setHideDeclinedEvents(Z)V
    .registers 2
    .parameter "hideDeclined"

    .prologue
    .line 1308
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mHideDeclined:Z

    .line 1309
    return-void
.end method

.method public setNotificationMoment(Z)V
    .registers 6
    .parameter "notificationMoment"

    .prologue
    .line 1312
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mNotificationMoment:Z

    .line 1313
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v3

    .line 1314
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 1315
    .local v1, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v2, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->setNotificationMoment(Z)V

    goto :goto_b

    .line 1317
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 1318
    return-void
.end method

.method public stopImageLoaderThread()V
    .registers 5

    .prologue
    .line 1321
    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v3

    .line 1322
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;

    .line 1323
    .local v1, info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v2, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaByDayAdapter;->stopImageLoaderThread()V

    goto :goto_9

    .line 1325
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter$DayAdapterInfo;
    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1e
    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1b

    .line 1326
    return-void
.end method
