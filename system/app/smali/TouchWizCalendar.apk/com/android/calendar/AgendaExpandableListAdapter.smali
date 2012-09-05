.class public Lcom/android/calendar/AgendaExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "AgendaExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;,
        Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;,
        Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;,
        Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;,
        Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public final AGENDA_PROJECTION:[Ljava/lang/String;

.field private OFF_BY_ONE_BUG:I

.field private mAdapterInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgendaActivity:Landroid/app/Activity;

.field private mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;

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

.field private mCheckedStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDoneSettingUpHeaderFooter:Z

.field private mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

.field private mFooterView:Landroid/widget/LinearLayout;

.field private mForced:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mHeaderView:Landroid/widget/LinearLayout;

.field private mHideDeclined:Z

.field private mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

.field private mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

.field private mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

.field private mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;",
            ">;"
        }
    .end annotation
.end field

.field private mRequeryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;

.field private mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRowCount:I

.field private mShuttingDown:Z

.field private mStartDay:I

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-string v0, "AgendaExpandableListAdapter"

    sput-object v0, Lcom/android/calendar/AgendaExpandableListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/calendar/AgendaExpandableListView;)V
    .registers 11
    .parameter "agendaActivity"
    .parameter "agendaListView"

    .prologue
    const v7, 0x7f030004

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1592
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 71
    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "event_id"

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v3, "eventLocation"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "allDay"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "hasAlarm"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "calendar_color"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "rrule"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "begin"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "end"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "selfAttendeeStatus"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "calendar_id"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "duration"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "eventTimezone"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "startDay"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "endDay"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "contact_data_id"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "contact_id"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "contact_account_type"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "facebook_schedule_id"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "facebook_photo_url"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    .line 140
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    .line 142
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 144
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 152
    iput-boolean v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mDoneSettingUpHeaderFooter:Z

    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 194
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mCheckedStrings:Ljava/util/HashMap;

    .line 196
    iput-boolean v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAllChecked:Z

    .line 198
    iput-boolean v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mBeforeTodayChecked:Z

    .line 201
    iput-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    .line 207
    iput-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    .line 1593
    iput-object p2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;

    .line 1594
    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    .line 1595
    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    .line 1596
    new-instance v1, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;-><init>(Lcom/android/calendar/AgendaExpandableListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    .line 1597
    new-instance v1, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;-><init>(Lcom/android/calendar/AgendaExpandableListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;

    .line 1598
    new-instance v1, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;-><init>(Lcom/android/calendar/AgendaExpandableListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    .line 1600
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1606
    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/calendar/AgendaActivity;

    if-eqz v1, :cond_127

    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v1}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v1

    if-nez v1, :cond_127

    .line 1608
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1610
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    .line 1611
    invoke-virtual {v0, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mFooterView:Landroid/widget/LinearLayout;

    .line 1612
    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    const v2, 0x7f0f000e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderText:Landroid/widget/TextView;

    .line 1613
    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1621
    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaExpandableListView;->addHeaderView(Landroid/view/View;)V

    .line 1622
    iput v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->OFF_BY_ONE_BUG:I

    .line 1626
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :goto_126
    return-void

    .line 1624
    :cond_127
    iput v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->OFF_BY_ONE_BUG:I

    goto :goto_126
.end method

.method private DayChange(IZII)I
    .registers 7
    .parameter "day"
    .parameter "isStart"
    .parameter "qtype"
    .parameter "diff"

    .prologue
    .line 1264
    const/4 v0, 0x0

    .line 1265
    .local v0, retVal:I
    add-int v0, p1, p4

    .line 1266
    packed-switch p3, :pswitch_data_22

    .line 1284
    :cond_6
    :goto_6
    return v0

    .line 1268
    :pswitch_7
    const v1, 0x24dc87

    if-ge v0, v1, :cond_6

    .line 1269
    if-eqz p2, :cond_12

    .line 1270
    const v0, 0x24dc87

    goto :goto_6

    .line 1272
    :cond_12
    move v0, p1

    goto :goto_6

    .line 1276
    :pswitch_14
    const v1, 0x259d23

    if-le v0, v1, :cond_6

    .line 1277
    if-eqz p2, :cond_1d

    .line 1278
    move v0, p1

    goto :goto_6

    .line 1280
    :cond_1d
    const v0, 0x259d23

    goto :goto_6

    .line 1266
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_7
        :pswitch_14
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/calendar/AgendaExpandableListAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mStartDay:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/AgendaExpandableListAdapter;I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/AgendaExpandableListAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/AgendaExpandableListAdapter;Landroid/text/format/Time;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/AgendaExpandableListAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->OFF_BY_ONE_BUG:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/AgendaExpandableListAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mDoneSettingUpHeaderFooter:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/AgendaExpandableListAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mDoneSettingUpHeaderFooter:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->queueQuery(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mFooterView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/AgendaExpandableListAdapter;IZII)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/AgendaExpandableListAdapter;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AgendaExpandableListAdapter;->updateHeaderFooter(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/AgendaExpandableListAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/calendar/AgendaExpandableListAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    return p1
.end method

.method static synthetic access$2012(Lcom/android/calendar/AgendaExpandableListAdapter;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/AgendaExpandableListAdapter;)Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/AgendaExpandableListAdapter;Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;)Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaExpandableListAdapter$OnLoadCompleteListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/AgendaExpandableListAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/AgendaExpandableListAdapter;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/AgendaExpandableListAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mForced:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/AgendaExpandableListAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/calendar/AgendaExpandableListAdapter;->requery()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/AgendaExpandableListAdapter;IILandroid/text/format/Time;I)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/AgendaExpandableListAdapter;->queueQuery(IILandroid/text/format/Time;I)Z

    move-result v0

    return v0
.end method

.method private buildQueryUri(II)Landroid/net/Uri;
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1071
    .local v0, path:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1072
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1074
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1075
    .local v1, uri:Landroid/net/Uri;
    return-object v1
.end method

.method private calculateQueryDuration(II)I
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1250
    const/16 v0, 0x3c

    .line 1251
    .local v0, queryDuration:I
    iget v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    if-eqz v1, :cond_10

    .line 1252
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    div-int v0, v1, v2

    .line 1255
    :cond_10
    const/16 v1, 0x3c

    if-le v0, v1, :cond_17

    .line 1256
    const/16 v0, 0x3c

    .line 1260
    :cond_16
    :goto_16
    return v0

    .line 1257
    :cond_17
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_16

    .line 1258
    const/16 v0, 0x1e

    goto :goto_16
.end method

.method private doQuery(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)V
    .registers 21
    .parameter "queryData"

    .prologue
    .line 1138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    .line 1139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v16, v0

    .line 1140
    .local v16, start:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v14, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1141
    .local v14, end:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/android/calendar/AgendaExpandableListAdapter;->calculateQueryDuration(II)I

    move-result v15

    .line 1142
    .local v15, queryDuration:I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryType:I

    packed-switch v2, :pswitch_data_190

    .line 1192
    .end local v14           #end:I
    .end local v15           #queryDuration:I
    .end local v16           #start:I
    :cond_33
    :goto_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->cancelOperation(I)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v2, :cond_100

    .line 1199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v0, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-wide/from16 v17, v0

    .line 1202
    .local v17, startMillis:J
    const-wide/16 v2, -0x1

    cmp-long v2, v17, v2

    if-nez v2, :cond_bb

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    const/4 v3, 0x0

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/calendar/Event;->PROJECTION_DELETE:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v7, v4, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v9, v4, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "dtstart ASC, title ASC"

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    .end local v17           #startMillis:J
    :goto_7a
    return-void

    .line 1144
    .restart local v14       #end:I
    .restart local v15       #queryDuration:I
    .restart local v16       #start:I
    :pswitch_7b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    .line 1145
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    neg-int v6, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v6}, Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    goto :goto_33

    .line 1149
    :pswitch_9c
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2, v3, v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    .line 1150
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v15}, Lcom/android/calendar/AgendaExpandableListAdapter;->DayChange(IZII)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    goto/16 :goto_33

    .line 1224
    .end local v14           #end:I
    .end local v15           #queryDuration:I
    .end local v16           #start:I
    .restart local v17       #startMillis:J
    :cond_bb
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v3, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v5, v2, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget v7, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartDay:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget v8, v2, Lcom/android/calendar/AgendaDeleteActivity;->mEndDay:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQueryUriforDelete(JJII)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    const-wide/16 v2, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "startDay ASC, begin ASC, title ASC"

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 1235
    .end local v17           #startMillis:J
    :cond_100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/SearchResult;

    if-eqz v2, :cond_141

    .line 1236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/calendar/SearchResult;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/SearchResult;

    invoke-virtual {v2}, Lcom/android/calendar/SearchResult;->getSearchString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1238
    .local v5, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    const/4 v3, 0x0

    sget-object v6, Lcom/android/calendar/Event;->PROJECTION_SEARCH:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "dtstart ASC, title ASC"

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 1240
    .end local v5           #uri:Landroid/net/Uri;
    :cond_141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v2

    if-eqz v2, :cond_16a

    .line 1241
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    const/4 v7, 0x0

    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/android/calendar/Event;->PROJECTION_DELETE:[Ljava/lang/String;

    const-wide/16 v2, -0x1

    const-wide/16 v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v11, v12}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "dtstart ASC, title ASC"

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v13}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 1244
    :cond_16a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "startDay ASC, begin ASC, title ASC"

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v13}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 1142
    nop

    :pswitch_data_190
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_9c
    .end packed-switch
.end method

.method private findDayPositionNearestTime(Landroid/text/format/Time;)I
    .registers 5
    .parameter "time"

    .prologue
    .line 940
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 941
    .local v0, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_10

    .line 942
    iget v1, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v2, p1}, Lcom/android/calendar/AgendaByDayAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v2

    add-int/2addr v1, v2

    .line 944
    :goto_f
    return v1

    :cond_10
    const/4 v1, -0x1

    goto :goto_f
.end method

.method private formatDateString(I)Ljava/lang/String;
    .registers 9
    .parameter "julianDay"

    .prologue
    .line 713
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 714
    .local v4, time:Landroid/text/format/Time;
    invoke-static {v4, p1}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 715
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 717
    .local v2, millis:J
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, dateFormat:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00e8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, format:Ljava/lang/String;
    if-eqz v0, :cond_45

    .line 721
    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 722
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00e9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 728
    :cond_45
    :goto_45
    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    return-object v5

    .line 723
    :cond_4c
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 724
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_45
.end method

.method private getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .registers 10
    .parameter "time"

    .prologue
    .line 952
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 953
    .local v5, tmpTime:Landroid/text/format/Time;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 954
    .local v3, timeInMillis:J
    iget-wide v6, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    .line 955
    .local v0, day:I
    iget-object v7, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v7

    .line 956
    :try_start_13
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 957
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v0, :cond_19

    iget v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt v0, v6, :cond_19

    .line 958
    monitor-exit v7

    .line 962
    .end local v2           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_2e
    return-object v2

    .line 961
    :cond_2f
    monitor-exit v7

    .line 962
    const/4 v2, 0x0

    goto :goto_2e

    .line 961
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_32
    move-exception v6

    monitor-exit v7
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_32

    throw v6
.end method

.method private isInRange(II)Z
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x0

    .line 928
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v2

    .line 929
    :try_start_4
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 930
    monitor-exit v2

    move v0, v1

    .line 932
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v0, p1, :cond_2d

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt p2, v0, :cond_2d

    const/4 v0, 0x1

    :goto_28
    monitor-exit v2

    goto :goto_e

    .line 933
    :catchall_2a
    move-exception v0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    move v0, v1

    .line 932
    goto :goto_28
.end method

.method private pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .registers 10
    .parameter "queryType"

    .prologue
    .line 1288
    iget-object v6, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    .line 1289
    const/4 v3, 0x0

    .line 1290
    .local v3, recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :try_start_4
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6e

    .line 1291
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_43

    .line 1292
    const/4 v5, 0x1

    if-ne p1, v5, :cond_30

    .line 1293
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 1299
    :cond_22
    :goto_22
    if-eqz v3, :cond_43

    .line 1300
    iget-object v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_2d

    .line 1301
    iget-object v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1303
    :cond_2d
    monitor-exit v6

    move-object v4, v3

    .line 1329
    .end local v3           #recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .local v4, recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_2f
    return-object v4

    .line 1294
    .end local v4           #recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :cond_30
    if-nez p1, :cond_22

    .line 1295
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 1297
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    goto :goto_22

    .line 1330
    :catchall_40
    move-exception v5

    monitor-exit v6
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_40

    throw v5

    .line 1307
    :cond_43
    :try_start_43
    iget v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    if-eqz v5, :cond_4a

    const/4 v5, 0x2

    if-ne p1, v5, :cond_6e

    .line 1308
    :cond_4a
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRowCount:I

    .line 1309
    const/4 v1, 0x0

    .line 1312
    .local v1, deletedRows:I
    :cond_4e
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1313
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_65

    .line 1315
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_61

    .line 1316
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1318
    :cond_61
    iget v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v1, v5

    .line 1319
    move-object v3, v2

    .line 1321
    :cond_65
    if-nez v2, :cond_4e

    .line 1323
    if-eqz v3, :cond_6e

    .line 1324
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 1325
    iput v1, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 1329
    .end local v1           #deletedRows:I
    .end local v2           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :cond_6e
    monitor-exit v6
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_40

    move-object v4, v3

    .end local v3           #recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v4       #recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    goto :goto_2f
.end method

.method private queueQuery(IILandroid/text/format/Time;I)Z
    .registers 7
    .parameter "start"
    .parameter "end"
    .parameter "goToTime"
    .parameter "queryType"

    .prologue
    .line 1116
    new-instance v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;

    invoke-direct {v0, p4}, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;-><init>(I)V

    .line 1117
    .local v0, queryData:Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;
    iput-object p3, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 1118
    iput p1, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    .line 1119
    iput p2, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    .line 1120
    invoke-direct {p0, v0}, Lcom/android/calendar/AgendaExpandableListAdapter;->queueQuery(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z

    move-result v1

    return v1
.end method

.method private queueQuery(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)Z
    .registers 6
    .parameter "queryData"

    .prologue
    .line 1125
    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v3

    .line 1126
    const/4 v2, 0x0

    :try_start_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1127
    .local v1, queuedQuery:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1128
    .local v0, doQueryNow:Ljava/lang/Boolean;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1129
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1130
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 1131
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->doQuery(Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;)V

    .line 1133
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2b

    .line 1134
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 1133
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
    .line 1094
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1095
    .local v2, dayAdapterInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v12, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v12

    .line 1096
    :try_start_15
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1097
    .local v8, doQueryNow:Ljava/lang/Boolean;
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1099
    new-instance v10, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v10, time:Landroid/text/format/Time;
    iget v0, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    invoke-static {v10, v0}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 1101
    new-instance v11, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v11, time2:Landroid/text/format/Time;
    iget v0, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-static {v11, v0}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 1106
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 1107
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;

    const/4 v1, 0x0

    iget v3, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    iget v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "startDay ASC, begin ASC, title ASC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    .end local v10           #time:Landroid/text/format/Time;
    .end local v11           #time2:Landroid/text/format/Time;
    :cond_63
    monitor-exit v12

    goto :goto_6

    .end local v8           #doQueryNow:Ljava/lang/Boolean;
    :catchall_65
    move-exception v0

    monitor-exit v12
    :try_end_67
    .catchall {:try_start_15 .. :try_end_67} :catchall_65

    throw v0

    .line 1113
    .end local v2           #dayAdapterInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :cond_68
    return-void
.end method

.method private updateHeaderFooter(II)V
    .registers 13
    .parameter "start"
    .parameter "end"

    .prologue
    const v9, 0x7f0f000f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 685
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v4, v4, Lcom/android/calendar/AgendaActivity;

    if-eqz v4, :cond_7f

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v4

    if-nez v4, :cond_7f

    .line 687
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0054

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 693
    .local v3, showOlderFormat:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 694
    .local v1, headerShowing:Landroid/widget/TextView;
    new-array v4, v8, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    const v4, 0x24dc87

    if-gt p1, v4, :cond_80

    .line 696
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 701
    :goto_51
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, showNewerFormat:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 703
    .local v0, footerShowing:Landroid/widget/TextView;
    new-array v4, v8, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/calendar/AgendaExpandableListAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    const v4, 0x259d23

    if-lt p2, v4, :cond_86

    .line 705
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 710
    .end local v0           #footerShowing:Landroid/widget/TextView;
    .end local v1           #headerShowing:Landroid/widget/TextView;
    .end local v2           #showNewerFormat:Ljava/lang/String;
    .end local v3           #showOlderFormat:Ljava/lang/String;
    :cond_7f
    :goto_7f
    return-void

    .line 698
    .restart local v1       #headerShowing:Landroid/widget/TextView;
    .restart local v3       #showOlderFormat:Ljava/lang/String;
    :cond_80
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_51

    .line 707
    .restart local v0       #footerShowing:Landroid/widget/TextView;
    .restart local v2       #showNewerFormat:Ljava/lang/String;
    :cond_86
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_7f
.end method


# virtual methods
.method public buildQuerySelection()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1033
    const-string v0, "deleted=0 AND (eventStatus!=2 OR eventStatus is null) AND visible=1"

    .line 1036
    .local v0, where:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHideDeclined:Z

    if-eqz v1, :cond_19

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND selfAttendeeStatus!=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1041
    :cond_19
    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->getHideContactsEventsSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1043
    return-object v0
.end method

.method public buildQuerySelectionforDelete(JJ)Ljava/lang/String;
    .registers 11
    .parameter "start"
    .parameter "end"

    .prologue
    const-wide/16 v4, -0x1

    .line 1048
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "visible=1 AND deleted=0 AND (eventStatus!=2 OR eventStatus is null) AND calendar_access_level>=500"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v0, select:Ljava/lang/StringBuffer;
    iget-boolean v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHideDeclined:Z

    if-eqz v2, :cond_12

    .line 1052
    const-string v2, " AND selfAttendeeStatus!=2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1055
    :cond_12
    cmp-long v2, p1, v4

    if-eqz v2, :cond_2c

    .line 1056
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND dtstart>="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1058
    :cond_2c
    cmp-long v2, p3, v4

    if-eqz v2, :cond_46

    .line 1059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND dtstart<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1062
    :cond_46
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getHideContactsEventsSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1066
    .end local v0           #select:Ljava/lang/StringBuffer;
    .local v1, select:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public buildQueryUriforDelete(JJII)Landroid/net/Uri;
    .registers 11
    .parameter "beginMs"
    .parameter "EndMs"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v2, 0x2f

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    .local v0, path:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1082
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1083
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1084
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1086
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1087
    const-string v2, "content://com.android.calendar/instances/whenbydayandgroup"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1090
    .local v1, uri:Landroid/net/Uri;
    return-object v1
.end method

.method public close()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1740
    invoke-virtual {p0}, Lcom/android/calendar/AgendaExpandableListAdapter;->stopImageLoaderThread()V

    .line 1741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mShuttingDown:Z

    .line 1742
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/AgendaExpandableListAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1743
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    if-eqz v0, :cond_14

    .line 1744
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;

    invoke-virtual {v0, v3}, Lcom/android/calendar/AgendaExpandableListAdapter$QueryHandler;->cancelOperation(I)V

    .line 1748
    :cond_14
    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v1

    .line 1749
    :try_start_17
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;

    if-eqz v0, :cond_21

    .line 1750
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mRequeryHandler:Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/calendar/AgendaExpandableListAdapter$RequeryHandler;->cancelOperation(I)V

    .line 1752
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_2c

    .line 1753
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    if-eqz v0, :cond_2b

    .line 1754
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    invoke-virtual {v0, v3}, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->cancelOperation(I)V

    .line 1756
    :cond_2b
    return-void

    .line 1752
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .registers 7
    .parameter "position"

    .prologue
    .line 1334
    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v3

    .line 1335
    :try_start_3
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_1c

    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_1c

    .line 1337
    iget-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    monitor-exit v3

    .line 1346
    :goto_1b
    return-object v1

    .line 1339
    :cond_1c
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1340
    .local v1, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget v2, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_22

    iget v2, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_22

    .line 1341
    iput-object v1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1342
    monitor-exit v3

    goto :goto_1b

    .line 1345
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
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

    .line 1346
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public getChild(II)Ljava/lang/Object;
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1665
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .registers 9
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1675
    const/4 v0, 0x0

    .line 1676
    .local v0, groupCount:I
    const/4 v3, 0x0

    .line 1677
    .local v3, infoDayCount:I
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1678
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaByDayAdapter;->getDayCount()I

    move-result v3

    .line 1679
    add-int/2addr v0, v3

    .line 1680
    if-le v0, p1, :cond_8

    .line 1681
    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    sub-int v5, v0, v3

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/android/calendar/AgendaByDayAdapter;->getMeetingCountPerOneDay(I)I

    move-result v4

    int-to-long v4, v4

    .line 1685
    .end local v2           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_28
    return-wide v4

    :cond_29
    int-to-long v4, p2

    goto :goto_28
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1716
    const/4 v0, 0x0

    .line 1717
    .local v0, groupCount:I
    const/4 v3, 0x0

    .line 1718
    .local v3, infoDayCount:I
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v5

    .line 1719
    :try_start_5
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1720
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaByDayAdapter;->getDayCount()I

    move-result v3

    .line 1721
    add-int/2addr v0, v3

    .line 1722
    if-le v0, p1, :cond_b

    .line 1723
    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget-object v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    sub-int v7, v0, v3

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Lcom/android/calendar/AgendaByDayAdapter;->getDayPosition(I)I

    move-result v6

    add-int/2addr v6, p2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6, p4, p5}, Lcom/android/calendar/AgendaByDayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    monitor-exit v5

    .line 1730
    .end local v2           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_34
    return-object v4

    .line 1729
    :cond_35
    monitor-exit v5

    .line 1730
    const/4 v4, 0x0

    goto :goto_34

    .line 1729
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_38
    move-exception v4

    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v4
.end method

.method public getChildrenCount(I)I
    .registers 9
    .parameter "groupPosition"

    .prologue
    .line 1641
    const/4 v0, 0x0

    .line 1642
    .local v0, groupCount:I
    const/4 v3, 0x0

    .line 1643
    .local v3, infoDayCount:I
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v5

    .line 1644
    :try_start_5
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1645
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaByDayAdapter;->getDayCount()I

    move-result v3

    .line 1646
    add-int/2addr v0, v3

    .line 1647
    if-le v0, p1, :cond_b

    .line 1648
    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    sub-int v6, v0, v3

    sub-int v6, p1, v6

    invoke-virtual {v4, v6}, Lcom/android/calendar/AgendaByDayAdapter;->getMeetingCountPerOneDay(I)I

    move-result v4

    monitor-exit v5

    .line 1653
    .end local v2           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_2b
    return v4

    .line 1652
    :cond_2c
    monitor-exit v5

    .line 1653
    const/4 v4, 0x0

    goto :goto_2b

    .line 1652
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_2f
    move-exception v4

    monitor-exit v5
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_2f

    throw v4
.end method

.method public getEventByPosition(II)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .registers 15
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v9, 0x0

    .line 1404
    const/4 v4, 0x0

    .line 1405
    .local v4, infoDayCount:I
    const/4 v1, 0x0

    .line 1406
    .local v1, groupCount:I
    iget-object v10, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1407
    .local v3, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v10, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v10}, Lcom/android/calendar/AgendaByDayAdapter;->getDayCount()I

    move-result v4

    .line 1408
    add-int/2addr v1, v4

    .line 1409
    if-le v1, p1, :cond_9

    .line 1410
    iget-object v10, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    sub-int v11, v1, v4

    sub-int v11, p1, v11

    invoke-virtual {v10, v11}, Lcom/android/calendar/AgendaByDayAdapter;->getDayPosition(I)I

    move-result v10

    add-int/2addr v10, p2

    add-int/lit8 v6, v10, 0x1

    .line 1413
    .local v6, listPosition:I
    iget-object v10, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v10, v6}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v7

    .line 1414
    .local v7, position:I
    const/high16 v10, -0x8000

    if-ne v7, v10, :cond_37

    move-object v0, v9

    .line 1452
    .end local v3           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .end local v6           #listPosition:I
    .end local v7           #position:I
    :cond_36
    :goto_36
    return-object v0

    .line 1418
    .restart local v3       #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v6       #listPosition:I
    .restart local v7       #position:I
    :cond_37
    new-instance v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;-><init>()V

    .line 1419
    .local v0, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    const/4 v5, 0x0

    .line 1420
    .local v5, isDayHeader:Z
    if-gez v7, :cond_41

    .line 1421
    neg-int v7, v7

    .line 1422
    const/4 v5, 0x1

    .line 1425
    :cond_41
    iget-object v10, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v10, :cond_9

    iget-object v10, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ge v7, v10, :cond_9

    .line 1428
    :try_start_4d
    iget-object v9, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v9, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1429
    iget-object v9, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v10, 0x7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 1433
    if-eqz v5, :cond_79

    .line 1434
    new-instance v8, Landroid/text/format/Time;

    iget-object v9, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v9, v10}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1435
    .local v8, time:Landroid/text/format/Time;
    iget-wide v9, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 1436
    invoke-static {v8}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 1437
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 1440
    .end local v8           #time:Landroid/text/format/Time;
    :cond_79
    if-nez v5, :cond_36

    .line 1441
    iget-object v9, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v10, 0x8

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    .line 1442
    iget-object v9, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v10, 0xb

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    .line 1443
    iget-object v9, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J
    :try_end_98
    .catch Landroid/database/StaleDataException; {:try_start_4d .. :try_end_98} :catch_99

    goto :goto_36

    .line 1445
    :catch_99
    move-exception v9

    goto :goto_36

    .end local v0           #event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .end local v3           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .end local v5           #isDayHeader:Z
    .end local v6           #listPosition:I
    .end local v7           #position:I
    :cond_9b
    move-object v0, v9

    .line 1452
    goto :goto_36
.end method

.method public getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .registers 13
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1353
    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    invoke-direct {v1}, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;-><init>()V

    .line 1354
    .local v1, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    iget v7, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->OFF_BY_ONE_BUG:I

    sub-int/2addr p1, v7

    .line 1355
    if-gez p1, :cond_d

    .line 1356
    const/4 p1, 0x0

    .line 1358
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 1359
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-nez v2, :cond_15

    move-object v1, v5

    .line 1400
    .end local v1           #event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    :cond_14
    :goto_14
    return-object v1

    .line 1363
    .restart local v1       #event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    :cond_15
    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v8, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v8, p1, v8

    invoke-virtual {v7, v8}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result p1

    .line 1364
    const/high16 v7, -0x8000

    if-ne p1, v7, :cond_25

    move-object v1, v5

    .line 1365
    goto :goto_14

    .line 1368
    :cond_25
    const/4 v3, 0x0

    .line 1369
    .local v3, isDayHeader:Z
    if-gez p1, :cond_2a

    .line 1370
    neg-int p1, p1

    .line 1371
    const/4 v3, 0x1

    .line 1374
    :cond_2a
    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v7, :cond_b1

    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_b1

    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge p1, v7, :cond_b1

    .line 1375
    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1376
    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x7

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 1377
    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_93

    const/4 v0, 0x1

    .line 1379
    .local v0, allDay:Z
    :goto_56
    if-eqz v0, :cond_95

    .line 1380
    new-instance v4, Landroid/text/format/Time;

    iget-object v7, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1381
    .local v4, time:Landroid/text/format/Time;
    iget-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 1382
    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 1393
    .end local v4           #time:Landroid/text/format/Time;
    :cond_74
    :goto_74
    if-nez v3, :cond_14

    .line 1394
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v7, 0x8

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    .line 1395
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v7, 0xb

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    .line 1396
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    goto :goto_14

    .end local v0           #allDay:Z
    :cond_93
    move v0, v6

    .line 1377
    goto :goto_56

    .line 1383
    .restart local v0       #allDay:Z
    :cond_95
    if-eqz v3, :cond_74

    .line 1384
    new-instance v4, Landroid/text/format/Time;

    iget-object v7, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1385
    .restart local v4       #time:Landroid/text/format/Time;
    iget-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v4, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1386
    invoke-static {v4}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 1390
    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    goto :goto_74

    .end local v0           #allDay:Z
    .end local v4           #time:Landroid/text/format/Time;
    :cond_b1
    move-object v1, v5

    .line 1400
    goto/16 :goto_14
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 1659
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .registers 6

    .prologue
    .line 1630
    const/4 v0, 0x0

    .line 1631
    .local v0, count:I
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v4

    .line 1632
    :try_start_4
    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1633
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v3, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v3}, Lcom/android/calendar/AgendaByDayAdapter;->getDayCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_a

    .line 1635
    .end local v2           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :cond_1e
    monitor-exit v4

    .line 1636
    return v0

    .line 1635
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_20
    move-exception v3

    monitor-exit v4
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v3
.end method

.method public getGroupId(I)J
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 1670
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1697
    const/4 v0, 0x0

    .line 1698
    .local v0, groupCount:I
    const/4 v3, 0x0

    .line 1699
    .local v3, infoDayCount:I
    iget-object v5, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v5

    .line 1700
    :try_start_5
    iget-object v4, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1701
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaByDayAdapter;->getDayCount()I

    move-result v3

    .line 1702
    add-int/2addr v0, v3

    .line 1703
    if-le v0, p1, :cond_b

    .line 1704
    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget-object v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    sub-int v7, v0, v3

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Lcom/android/calendar/AgendaByDayAdapter;->getDayPosition(I)I

    move-result v6

    invoke-virtual {v4, v6, p3, p4}, Lcom/android/calendar/AgendaByDayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    monitor-exit v5

    .line 1710
    .end local v2           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_31
    return-object v4

    .line 1709
    :cond_32
    monitor-exit v5

    .line 1710
    const/4 v4, 0x0

    goto :goto_31

    .line 1709
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_35
    move-exception v4

    monitor-exit v5
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_35

    throw v4
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 1691
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 1736
    const/4 v0, 0x1

    return v0
.end method

.method public refresh(Landroid/text/format/Time;Z)V
    .registers 21
    .parameter "goToTime"
    .parameter "forced"

    .prologue
    .line 870
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/AgendaExpandableListAdapter;->mForced:Z

    .line 871
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mStartDay:I

    .line 873
    if-nez p2, :cond_3c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mStartDay:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mStartDay:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/AgendaExpandableListAdapter;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaListView:Lcom/android/calendar/AgendaExpandableListView;

    invoke-direct/range {p0 .. p1}, Lcom/android/calendar/AgendaExpandableListAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->OFF_BY_ONE_BUG:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaExpandableListView;->setSelection(I)V

    .line 925
    :cond_3b
    :goto_3b
    return-void

    .line 879
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v2, :cond_f5

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v0, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-wide/from16 v16, v0

    .line 882
    .local v16, startMillis:J
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_ae

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    const/4 v3, 0x0

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "COUNT(*) AS _count"

    aput-object v7, v6, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v7, v4, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v9, v4, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    .end local v16           #startMillis:J
    :goto_80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v15, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 920
    .local v15, start:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v14, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 922
    .local v14, end:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/calendar/AgendaExpandableListAdapter;->updateHeaderFooter(II)V

    goto :goto_3b

    .line 895
    .end local v14           #end:I
    .end local v15           #start:I
    .restart local v16       #startMillis:J
    :cond_ae
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v3, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v5, v2, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget v7, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartDay:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget v8, v2, Lcom/android/calendar/AgendaDeleteActivity;->mEndDay:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQueryUriforDelete(JJII)Landroid/net/Uri;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "COUNT(*) AS _count"

    aput-object v3, v6, v2

    const-wide/16 v2, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .line 906
    .end local v16           #startMillis:J
    :cond_f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/SearchResult;

    if-eqz v2, :cond_13b

    .line 907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/calendar/SearchResult;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/SearchResult;

    invoke-virtual {v2}, Lcom/android/calendar/SearchResult;->getSearchString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 909
    .local v5, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "COUNT(*) AS _count"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_80

    .line 913
    .end local v5           #uri:Landroid/net/Uri;
    :cond_13b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AgendaExpandableListAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;

    const/4 v7, 0x0

    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "COUNT(*) AS _count"

    aput-object v3, v10, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AgendaExpandableListAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v13}, Lcom/android/calendar/AgendaExpandableListAdapter$EventCountHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_80
.end method

.method public setHideDeclinedEvents(Z)V
    .registers 2
    .parameter "hideDeclined"

    .prologue
    .line 796
    iput-boolean p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mHideDeclined:Z

    .line 797
    return-void
.end method

.method public stopImageLoaderThread()V
    .registers 5

    .prologue
    .line 1759
    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v3

    .line 1760
    :try_start_3
    iget-object v2, p0, Lcom/android/calendar/AgendaExpandableListAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1761
    .local v1, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v2, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaByDayAdapter;->stopImageLoaderThread()V

    goto :goto_9

    .line 1763
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
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

    .line 1764
    return-void
.end method
