.class public Lcom/android/calendar/AgendaWindowAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;,
        Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;,
        Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;,
        Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;,
        Lcom/android/calendar/AgendaWindowAdapter$EventInfo;,
        Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;,
        Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;
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

.field private mAgendaListView:Lcom/android/calendar/AgendaListView;

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

.field private mEventCountHandler:Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;

.field private mFooterView:Landroid/widget/LinearLayout;

.field private mForced:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mHeaderView:Landroid/widget/LinearLayout;

.field private mHideDeclined:Z

.field private mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

.field private mOnLoadCompleteListener:Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

.field private mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

.field private mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;",
            ">;"
        }
    .end annotation
.end field

.field private mRequeryHandler:Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;

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
    .line 75
    const-string v0, "AgendaWindowAdapter"

    sput-object v0, Lcom/android/calendar/AgendaWindowAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/calendar/AgendaListView;)V
    .registers 11
    .parameter "agendaActivity"
    .parameter "agendaListView"

    .prologue
    const v7, 0x7f030004

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 342
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 92
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

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    .line 161
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    .line 163
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 165
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 173
    iput-boolean v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 215
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mCheckedStrings:Ljava/util/HashMap;

    .line 217
    iput-boolean v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAllChecked:Z

    .line 219
    iput-boolean v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mBeforeTodayChecked:Z

    .line 222
    iput-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    .line 228
    iput-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    .line 343
    iput-object p2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    .line 344
    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    .line 345
    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    .line 346
    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;-><init>(Lcom/android/calendar/AgendaWindowAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    .line 347
    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;-><init>(Lcom/android/calendar/AgendaWindowAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRequeryHandler:Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;

    .line 348
    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;-><init>(Lcom/android/calendar/AgendaWindowAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 356
    iget-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/calendar/AgendaActivity;

    if-eqz v1, :cond_127

    iget-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v1}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v1

    if-nez v1, :cond_127

    .line 358
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 360
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    .line 361
    invoke-virtual {v0, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mFooterView:Landroid/widget/LinearLayout;

    .line 362
    iget-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    const v2, 0x7f0f000e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderText:Landroid/widget/TextView;

    .line 363
    iget-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 364
    iget-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaListView;->addHeaderView(Landroid/view/View;)V

    .line 365
    iput v6, p0, Lcom/android/calendar/AgendaWindowAdapter;->OFF_BY_ONE_BUG:I

    .line 369
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :goto_126
    return-void

    .line 367
    :cond_127
    iput v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->OFF_BY_ONE_BUG:I

    goto :goto_126
.end method

.method private DayChange(IZII)I
    .registers 7
    .parameter "day"
    .parameter "isStart"
    .parameter "qtype"
    .parameter "diff"

    .prologue
    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, retVal:I
    add-int v0, p1, p4

    .line 996
    packed-switch p3, :pswitch_data_22

    .line 1014
    :cond_6
    :goto_6
    return v0

    .line 998
    :pswitch_7
    const v1, 0x24dc87

    if-ge v0, v1, :cond_6

    .line 999
    if-eqz p2, :cond_12

    .line 1000
    const v0, 0x24dc87

    goto :goto_6

    .line 1002
    :cond_12
    move v0, p1

    goto :goto_6

    .line 1006
    :pswitch_14
    const v1, 0x259d23

    if-le v0, v1, :cond_6

    .line 1007
    if-eqz p2, :cond_1d

    .line 1008
    move v0, p1

    goto :goto_6

    .line 1010
    :cond_1d
    const v0, 0x259d23

    goto :goto_6

    .line 996
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_7
        :pswitch_14
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/calendar/AgendaWindowAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mStartDay:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/AgendaWindowAdapter;I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/AgendaWindowAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/AgendaWindowAdapter;Landroid/text/format/Time;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/AgendaWindowAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->OFF_BY_ONE_BUG:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/AgendaWindowAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/AgendaWindowAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mFooterView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/AgendaWindowAdapter;IZII)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/AgendaWindowAdapter;->DayChange(IZII)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/calendar/AgendaWindowAdapter;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AgendaWindowAdapter;->updateHeaderFooter(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/AgendaWindowAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/calendar/AgendaWindowAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    return p1
.end method

.method static synthetic access$2012(Lcom/android/calendar/AgendaWindowAdapter;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iget v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;)Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/AgendaWindowAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mForced:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/calendar/AgendaWindowAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/calendar/AgendaWindowAdapter;->requery()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/AgendaWindowAdapter;IILandroid/text/format/Time;I)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;I)Z

    move-result v0

    return v0
.end method

.method private buildQueryUri(II)Landroid/net/Uri;
    .registers 7
    .parameter "start"
    .parameter "end"

    .prologue
    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 926
    .local v0, path:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 927
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 928
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 929
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 930
    .local v1, uri:Landroid/net/Uri;
    return-object v1
.end method

.method private calculateQueryDuration(II)I
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 958
    const/16 v0, 0x3c

    .line 959
    .local v0, queryDuration:I
    iget v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    if-eqz v1, :cond_10

    .line 960
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    div-int v0, v1, v2

    .line 963
    :cond_10
    const/16 v1, 0x3c

    if-le v0, v1, :cond_17

    .line 964
    const/16 v0, 0x3c

    .line 968
    :cond_16
    :goto_16
    return v0

    .line 965
    :cond_17
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_16

    .line 966
    const/16 v0, 0x1e

    goto :goto_16
.end method

.method private doQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)V
    .registers 21
    .parameter "queryData"

    .prologue
    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_33

    .line 1019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v16, v0

    .line 1020
    .local v16, start:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v14, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1021
    .local v14, end:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/android/calendar/AgendaWindowAdapter;->calculateQueryDuration(II)I

    move-result v15

    .line 1022
    .local v15, queryDuration:I
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v2, :pswitch_data_190

    .line 1071
    .end local v14           #end:I
    .end local v15           #queryDuration:I
    .end local v16           #start:I
    :cond_33
    :goto_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v2, :cond_100

    .line 1078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v0, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-wide/from16 v17, v0

    .line 1081
    .local v17, startMillis:J
    const-wide/16 v2, -0x1

    cmp-long v2, v17, v2

    if-nez v2, :cond_bb

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    const/4 v3, 0x0

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/calendar/Event;->PROJECTION_DELETE:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v7, v4, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v9, v4, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "dtstart ASC, title ASC"

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    .end local v17           #startMillis:J
    :goto_7a
    return-void

    .line 1024
    .restart local v14       #end:I
    .restart local v15       #queryDuration:I
    .restart local v16       #start:I
    :pswitch_7b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/AgendaWindowAdapter;->DayChange(IZII)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    .line 1025
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    neg-int v6, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v6}, Lcom/android/calendar/AgendaWindowAdapter;->DayChange(IZII)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_33

    .line 1029
    :pswitch_9c
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2, v3, v4}, Lcom/android/calendar/AgendaWindowAdapter;->DayChange(IZII)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1030
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v15}, Lcom/android/calendar/AgendaWindowAdapter;->DayChange(IZII)I

    move-result v2

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    goto/16 :goto_33

    .line 1103
    .end local v14           #end:I
    .end local v15           #queryDuration:I
    .end local v16           #start:I
    .restart local v17       #startMillis:J
    :cond_bb
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v3, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v5, v2, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget v7, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartDay:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget v8, v2, Lcom/android/calendar/AgendaDeleteActivity;->mEndDay:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/AgendaWindowAdapter;->buildQueryUriforDelete(JJII)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AgendaWindowAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    const-wide/16 v2, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "startDay ASC, begin ASC, title ASC"

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 1143
    .end local v17           #startMillis:J
    :cond_100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/SearchResult;

    if-eqz v2, :cond_141

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/calendar/SearchResult;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/SearchResult;

    invoke-virtual {v2}, Lcom/android/calendar/SearchResult;->getSearchString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1146
    .local v5, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    const/4 v3, 0x0

    sget-object v6, Lcom/android/calendar/Event;->PROJECTION_SEARCH:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "dtstart ASC, title ASC"

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 1148
    .end local v5           #uri:Landroid/net/Uri;
    :cond_141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v2

    if-eqz v2, :cond_16a

    .line 1149
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    const/4 v7, 0x0

    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/android/calendar/Event;->PROJECTION_DELETE:[Ljava/lang/String;

    const-wide/16 v2, -0x1

    const-wide/16 v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v11, v12}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "dtstart ASC, title ASC"

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v13}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 1152
    :cond_16a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/AgendaWindowAdapter;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/AgendaWindowAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "startDay ASC, begin ASC, title ASC"

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v13}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 1022
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
    .line 469
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 470
    .local v0, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_10

    .line 471
    iget v1, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v2, p1}, Lcom/android/calendar/AgendaByDayAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v2

    add-int/2addr v1, v2

    .line 473
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
    .line 1158
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1159
    .local v4, time:Landroid/text/format/Time;
    invoke-static {v4, p1}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 1160
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 1162
    .local v2, millis:J
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, dateFormat:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00e8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1165
    .local v1, format:Ljava/lang/String;
    if-eqz v0, :cond_45

    .line 1166
    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 1167
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00e9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1173
    :cond_45
    :goto_45
    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    return-object v5

    .line 1168
    :cond_4c
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1169
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

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
    .line 497
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 498
    .local v5, tmpTime:Landroid/text/format/Time;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 499
    .local v3, timeInMillis:J
    iget-wide v6, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    .line 500
    .local v0, day:I
    iget-object v7, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v7

    .line 501
    :try_start_13
    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

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

    .line 502
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v0, :cond_19

    iget v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt v0, v6, :cond_19

    .line 503
    monitor-exit v7

    .line 507
    .end local v2           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_2e
    return-object v2

    .line 506
    :cond_2f
    monitor-exit v7

    .line 507
    const/4 v2, 0x0

    goto :goto_2e

    .line 506
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

    .line 949
    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v2

    .line 950
    :try_start_4
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 951
    monitor-exit v2

    move v0, v1

    .line 953
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v0, p1, :cond_2d

    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt p2, v0, :cond_2d

    const/4 v0, 0x1

    :goto_28
    monitor-exit v2

    goto :goto_e

    .line 954
    :catchall_2a
    move-exception v0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    move v0, v1

    .line 953
    goto :goto_28
.end method

.method private pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .registers 10
    .parameter "queryType"

    .prologue
    .line 841
    iget-object v6, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    .line 842
    const/4 v3, 0x0

    .line 843
    .local v3, recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :try_start_4
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6e

    .line 844
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_43

    .line 845
    const/4 v5, 0x1

    if-ne p1, v5, :cond_30

    .line 846
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 852
    :cond_22
    :goto_22
    if-eqz v3, :cond_43

    .line 853
    iget-object v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_2d

    .line 854
    iget-object v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 856
    :cond_2d
    monitor-exit v6

    move-object v4, v3

    .line 882
    .end local v3           #recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .local v4, recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_2f
    return-object v4

    .line 847
    .end local v4           #recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #recycleMe:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :cond_30
    if-nez p1, :cond_22

    .line 848
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 850
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    goto :goto_22

    .line 883
    :catchall_40
    move-exception v5

    monitor-exit v6
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_40

    throw v5

    .line 860
    :cond_43
    :try_start_43
    iget v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    if-eqz v5, :cond_4a

    const/4 v5, 0x2

    if-ne p1, v5, :cond_6e

    .line 861
    :cond_4a
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    .line 862
    const/4 v1, 0x0

    .line 865
    .local v1, deletedRows:I
    :cond_4e
    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 866
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_65

    .line 868
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_61

    .line 869
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 871
    :cond_61
    iget v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v1, v5

    .line 872
    move-object v3, v2

    .line 874
    :cond_65
    if-nez v2, :cond_4e

    .line 876
    if-eqz v3, :cond_6e

    .line 877
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 878
    iput v1, v3, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 882
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
    .line 972
    new-instance v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v0, p4}, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    .line 973
    .local v0, queryData:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    iput-object p3, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 974
    iput p1, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 975
    iput p2, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    .line 976
    invoke-direct {p0, v0}, Lcom/android/calendar/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z

    move-result v1

    return v1
.end method

.method private queueQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)Z
    .registers 6
    .parameter "queryData"

    .prologue
    .line 981
    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v3

    .line 982
    const/4 v2, 0x0

    :try_start_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 983
    .local v1, queuedQuery:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 984
    .local v0, doQueryNow:Ljava/lang/Boolean;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 985
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 986
    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 987
    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)V

    .line 989
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2b

    .line 990
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 989
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
    .line 804
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

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

    .line 805
    .local v2, dayAdapterInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v12, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v12

    .line 806
    :try_start_15
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 807
    .local v8, doQueryNow:Ljava/lang/Boolean;
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 809
    new-instance v10, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 810
    .local v10, time:Landroid/text/format/Time;
    iget v0, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    invoke-static {v10, v0}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 811
    new-instance v11, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 812
    .local v11, time2:Landroid/text/format/Time;
    iget v0, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-static {v11, v0}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 816
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRequeryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 817
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRequeryHandler:Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;

    const/4 v1, 0x0

    iget v3, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    iget v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    invoke-direct {p0, v3, v4}, Lcom/android/calendar/AgendaWindowAdapter;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->AGENDA_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "startDay ASC, begin ASC, title ASC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 821
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

    .line 823
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

    .line 1183
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v4, v4, Lcom/android/calendar/AgendaActivity;

    if-eqz v4, :cond_7f

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v4

    if-nez v4, :cond_7f

    .line 1185
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0054

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0052

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1187
    .local v3, showOlderFormat:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1188
    .local v1, headerShowing:Landroid/widget/TextView;
    new-array v4, v8, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    const v4, 0x24dc87

    if-gt p1, v4, :cond_80

    .line 1190
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1195
    :goto_51
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0053

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1196
    .local v2, showNewerFormat:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1197
    .local v0, footerShowing:Landroid/widget/TextView;
    new-array v4, v8, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/calendar/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    const v4, 0x259d23

    if-lt p2, v4, :cond_86

    .line 1199
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1204
    .end local v0           #footerShowing:Landroid/widget/TextView;
    .end local v1           #headerShowing:Landroid/widget/TextView;
    .end local v2           #showNewerFormat:Ljava/lang/String;
    .end local v3           #showOlderFormat:Ljava/lang/String;
    :cond_7f
    :goto_7f
    return-void

    .line 1192
    .restart local v1       #headerShowing:Landroid/widget/TextView;
    .restart local v3       #showOlderFormat:Ljava/lang/String;
    :cond_80
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_51

    .line 1201
    .restart local v0       #footerShowing:Landroid/widget/TextView;
    .restart local v2       #showNewerFormat:Ljava/lang/String;
    :cond_86
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mFooterView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_7f
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public buildQuerySelection()Ljava/lang/String;
    .registers 4

    .prologue
    .line 888
    const-string v0, "deleted=0 AND (eventStatus!=2 OR eventStatus is null) AND visible=1"

    .line 891
    .local v0, where:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHideDeclined:Z

    if-eqz v1, :cond_19

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND selfAttendeeStatus!=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 896
    :cond_19
    iget-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/calendar/Utils;->getHideContactsEventsSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 898
    return-object v0
.end method

.method public buildQuerySelectionforDelete(JJ)Ljava/lang/String;
    .registers 11
    .parameter "start"
    .parameter "end"

    .prologue
    const-wide/16 v4, -0x1

    .line 903
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "visible=1 AND deleted=0 AND (eventStatus!=2 OR eventStatus is null) AND calendar_access_level>=500"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 906
    .local v0, select:Ljava/lang/StringBuffer;
    iget-boolean v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHideDeclined:Z

    if-eqz v2, :cond_12

    .line 907
    const-string v2, " AND selfAttendeeStatus!=2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 910
    :cond_12
    cmp-long v2, p1, v4

    if-eqz v2, :cond_2c

    .line 911
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

    .line 913
    :cond_2c
    cmp-long v2, p3, v4

    if-eqz v2, :cond_46

    .line 914
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

    .line 917
    :cond_46
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getHideContactsEventsSelection(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 921
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

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 935
    .local v0, path:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 937
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 939
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 941
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 942
    const-string v2, "content://com.android.calendar/instances/whenbydayandgroup"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 945
    .local v1, uri:Landroid/net/Uri;
    return-object v1
.end method

.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 826
    invoke-virtual {p0}, Lcom/android/calendar/AgendaWindowAdapter;->stopImageLoaderThread()V

    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mShuttingDown:Z

    .line 828
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 829
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    if-eqz v0, :cond_14

    .line 830
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 832
    :cond_14
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRequeryHandler:Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;

    if-eqz v0, :cond_1d

    .line 833
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRequeryHandler:Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter$RequeryHandler;->cancelOperation(I)V

    .line 835
    :cond_1d
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;

    if-eqz v0, :cond_26

    .line 836
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->cancelOperation(I)V

    .line 838
    :cond_26
    return-void
.end method

.method public getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .registers 7
    .parameter "position"

    .prologue
    .line 478
    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v3

    .line 479
    :try_start_3
    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_1c

    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_1c

    .line 481
    iget-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    monitor-exit v3

    .line 490
    :goto_1b
    return-object v1

    .line 483
    :cond_1c
    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

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

    .line 484
    .local v1, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget v2, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_22

    iget v2, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_22

    .line 485
    iput-object v1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 486
    monitor-exit v3

    goto :goto_1b

    .line 489
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

    .line 490
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public getAllChecked()Z
    .registers 2

    .prologue
    .line 702
    iget-boolean v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAllChecked:Z

    return v0
.end method

.method public getBeforeTodayChecked()Z
    .registers 2

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mBeforeTodayChecked:Z

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
    .line 690
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mCheckedIds:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCheckStrings()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mCheckedStrings:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 407
    iget v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method public getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .registers 10
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 514
    new-instance v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;-><init>()V

    .line 515
    .local v0, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    iget v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->OFF_BY_ONE_BUG:I

    sub-int/2addr p1, v5

    .line 516
    if-gez p1, :cond_d

    .line 517
    const/4 p1, 0x0

    .line 519
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 520
    .local v1, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-nez v1, :cond_15

    move-object v0, v4

    .line 567
    .end local v0           #event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    :cond_14
    :goto_14
    return-object v0

    .line 524
    .restart local v0       #event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    :cond_15
    iget-object v5, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v6, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v6, p1, v6

    invoke-virtual {v5, v6}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result p1

    .line 525
    const/high16 v5, -0x8000

    if-ne p1, v5, :cond_25

    move-object v0, v4

    .line 526
    goto :goto_14

    .line 529
    :cond_25
    const/4 v2, 0x0

    .line 530
    .local v2, isDayHeader:Z
    if-gez p1, :cond_2a

    .line 531
    neg-int p1, p1

    .line 532
    const/4 v2, 0x1

    .line 535
    :cond_2a
    iget-object v5, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_89

    iget-object v5, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge p1, v5, :cond_89

    .line 536
    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 537
    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 540
    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->title:Ljava/lang/String;

    .line 553
    if-eqz v2, :cond_6a

    .line 554
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/AgendaWindowAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 555
    .local v3, time:Landroid/text/format/Time;
    iget-wide v4, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 556
    invoke-static {v3}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 557
    invoke-virtual {v3, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 560
    .end local v3           #time:Landroid/text/format/Time;
    :cond_6a
    if-nez v2, :cond_14

    .line 561
    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    .line 562
    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v5, 0xb

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    .line 563
    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    goto :goto_14

    :cond_89
    move-object v0, v4

    .line 567
    goto :goto_14
.end method

.method public getEventIdByPosition(I)J
    .registers 7
    .parameter "position"

    .prologue
    const-wide/16 v0, -0x1

    .line 629
    iget v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->OFF_BY_ONE_BUG:I

    sub-int/2addr p1, v3

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 631
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-nez v2, :cond_c

    .line 650
    :cond_b
    :goto_b
    return-wide v0

    .line 635
    :cond_c
    iget-object v3, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result p1

    .line 636
    const/high16 v3, -0x8000

    if-eq p1, v3, :cond_b

    .line 640
    if-ltz p1, :cond_b

    .line 644
    iget-object v3, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v3, :cond_b

    iget-object v3, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_b

    .line 645
    iget-object v3, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 646
    iget-object v3, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 647
    .local v0, id:J
    goto :goto_b
.end method

.method public getEventInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    .registers 13
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 574
    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    invoke-direct {v1}, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;-><init>()V

    .line 575
    .local v1, event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    iget v7, p0, Lcom/android/calendar/AgendaWindowAdapter;->OFF_BY_ONE_BUG:I

    sub-int/2addr p1, v7

    .line 576
    if-gez p1, :cond_d

    .line 577
    const/4 p1, 0x0

    .line 579
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 580
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-nez v2, :cond_15

    move-object v1, v5

    .line 621
    .end local v1           #event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    :cond_14
    :goto_14
    return-object v1

    .line 584
    .restart local v1       #event:Lcom/android/calendar/AgendaWindowAdapter$EventInfo;
    :cond_15
    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v8, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v8, p1, v8

    invoke-virtual {v7, v8}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result p1

    .line 585
    const/high16 v7, -0x8000

    if-ne p1, v7, :cond_25

    move-object v1, v5

    .line 586
    goto :goto_14

    .line 589
    :cond_25
    const/4 v3, 0x0

    .line 590
    .local v3, isDayHeader:Z
    if-gez p1, :cond_2a

    .line 591
    neg-int p1, p1

    .line 592
    const/4 v3, 0x1

    .line 595
    :cond_2a
    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v7, :cond_a9

    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge p1, v7, :cond_a9

    .line 596
    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 597
    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x7

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 598
    iget-object v7, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_8b

    const/4 v0, 0x1

    .line 600
    .local v0, allDay:Z
    :goto_4e
    if-eqz v0, :cond_8d

    .line 601
    new-instance v4, Landroid/text/format/Time;

    iget-object v7, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 602
    .local v4, time:Landroid/text/format/Time;
    iget-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->setJulianDay(Landroid/text/format/Time;I)J

    .line 603
    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 614
    .end local v4           #time:Landroid/text/format/Time;
    :cond_6c
    :goto_6c
    if-nez v3, :cond_14

    .line 615
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v7, 0x8

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->end:J

    .line 616
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v7, 0xb

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->duration:Ljava/lang/String;

    .line 617
    iget-object v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->id:J

    goto :goto_14

    .end local v0           #allDay:Z
    :cond_8b
    move v0, v6

    .line 598
    goto :goto_4e

    .line 604
    .restart local v0       #allDay:Z
    :cond_8d
    if-eqz v3, :cond_6c

    .line 605
    new-instance v4, Landroid/text/format/Time;

    iget-object v7, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 606
    .restart local v4       #time:Landroid/text/format/Time;
    iget-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v4, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 607
    invoke-static {v4}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 611
    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    goto :goto_6c

    .end local v0           #allDay:Z
    .end local v4           #time:Landroid/text/format/Time;
    :cond_a9
    move-object v1, v5

    .line 621
    goto/16 :goto_14
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter "position"

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 413
    .local v0, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 414
    iget-object v1, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaByDayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 416
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
    .line 428
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 429
    .local v0, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 430
    iget v1, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0x14

    iget v2, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    .line 432
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
    .line 386
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 387
    .local v0, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 388
    iget-object v1, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v1

    .line 390
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
    .line 449
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 450
    .local v0, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 451
    iget-object v3, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v4, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v4, p1, v4

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/calendar/AgendaByDayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 462
    .local v2, v:Landroid/view/View;
    :goto_10
    return-object v2

    .line 454
    .end local v2           #v:Landroid/view/View;
    :cond_11
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 455
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

    .line 456
    move-object v2, v1

    .restart local v2       #v:Landroid/view/View;
    goto :goto_10
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 374
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .registers 5
    .parameter "position"

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 398
    .local v0, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 399
    iget-object v1, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaByDayAdapter;->isEnabled(I)Z

    move-result v1

    .line 401
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public refresh(Landroid/text/format/Time;Z)V
    .registers 21
    .parameter "goToTime"
    .parameter "forced"

    .prologue
    .line 713
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/AgendaWindowAdapter;->mForced:Z

    .line 714
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mStartDay:I

    .line 716
    if-nez p2, :cond_3c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mStartDay:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/AgendaWindowAdapter;->mStartDay:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/AgendaWindowAdapter;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-direct/range {p0 .. p1}, Lcom/android/calendar/AgendaWindowAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/AgendaWindowAdapter;->OFF_BY_ONE_BUG:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaListView;->setSelection(I)V

    .line 800
    :cond_3b
    :goto_3b
    return-void

    .line 722
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/AgendaDeleteActivity;

    if-eqz v2, :cond_f5

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v0, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-wide/from16 v16, v0

    .line 725
    .local v16, startMillis:J
    const-wide/16 v2, -0x1

    cmp-long v2, v16, v2

    if-nez v2, :cond_ae

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;

    const/4 v3, 0x0

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "COUNT(*) AS _count"

    aput-object v7, v6, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v7, v4, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v9, v4, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    .end local v16           #startMillis:J
    :goto_80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v15, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 796
    .local v15, start:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v14, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 798
    .local v14, end:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/android/calendar/AgendaWindowAdapter;->updateHeaderFooter(II)V

    goto :goto_3b

    .line 738
    .end local v14           #end:I
    .end local v15           #start:I
    .restart local v16       #startMillis:J
    :cond_ae
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/AgendaWindowAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v3, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget-wide v5, v2, Lcom/android/calendar/AgendaDeleteActivity;->mEndMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget v7, v2, Lcom/android/calendar/AgendaDeleteActivity;->mStartDay:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaDeleteActivity;

    iget v8, v2, Lcom/android/calendar/AgendaDeleteActivity;->mEndDay:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/calendar/AgendaWindowAdapter;->buildQueryUriforDelete(JJII)Landroid/net/Uri;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "COUNT(*) AS _count"

    aput-object v3, v6, v2

    const-wide/16 v2, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    move v3, v11

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .line 778
    .end local v16           #startMillis:J
    :cond_f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/SearchResult;

    if-eqz v2, :cond_13b

    .line 779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/calendar/SearchResult;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/SearchResult;

    invoke-virtual {v2}, Lcom/android/calendar/SearchResult;->getSearchString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 781
    .local v5, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;

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

    invoke-virtual/range {v2 .. v9}, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_80

    .line 784
    .end local v5           #uri:Landroid/net/Uri;
    :cond_13b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaWindowAdapter;->mAgendaActivity:Landroid/app/Activity;

    check-cast v2, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaActivity;->isPick()Z

    move-result v2

    if-eqz v2, :cond_169

    .line 785
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AgendaWindowAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;

    const/4 v7, 0x0

    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "COUNT(*) AS _count"

    aput-object v3, v10, v2

    const-wide/16 v2, -0x1

    const-wide/16 v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v11, v12}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelectionforDelete(JJ)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v13}, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_80

    .line 789
    :cond_169
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AgendaWindowAdapter;->mEventCountHandler:Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;

    const/4 v7, 0x0

    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "COUNT(*) AS _count"

    aput-object v3, v10, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AgendaWindowAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v13}, Lcom/android/calendar/AgendaWindowAdapter$EventCountHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_80
.end method

.method public setAllChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 673
    iput-boolean p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAllChecked:Z

    .line 674
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 675
    iget-object v0, p0, Lcom/android/calendar/AgendaWindowAdapter;->mCheckedStrings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 679
    return-void
.end method

.method public setBeforeTodayChecked(Z)V
    .registers 2
    .parameter "checked"

    .prologue
    .line 682
    iput-boolean p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mBeforeTodayChecked:Z

    .line 683
    if-nez p1, :cond_6

    .line 684
    iput-boolean p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAllChecked:Z

    .line 687
    :cond_6
    return-void
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
    .line 698
    .local p1, checkIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 699
    return-void
.end method

.method public setChecked(IZ)V
    .registers 10
    .parameter "position"
    .parameter "checked"

    .prologue
    .line 654
    iget v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->OFF_BY_ONE_BUG:I

    sub-int/2addr p1, v4

    .line 655
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 656
    .local v2, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-nez v2, :cond_a

    .line 670
    :cond_9
    :goto_9
    return-void

    .line 660
    :cond_a
    iget-object v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    iget v5, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v5, p1, v5

    invoke-virtual {v4, v5, p2}, Lcom/android/calendar/AgendaByDayAdapter;->setChecked(IZ)V

    .line 663
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 665
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getEventIdByPosition(I)J

    move-result-wide v0

    .line 666
    .local v0, id:J
    invoke-virtual {p0, p1}, Lcom/android/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v4

    iget-object v3, v4, Lcom/android/calendar/AgendaWindowAdapter$EventInfo;->title:Ljava/lang/String;

    .line 667
    .local v3, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter;->mCheckedStrings:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method public setHideDeclinedEvents(Z)V
    .registers 2
    .parameter "hideDeclined"

    .prologue
    .line 1677
    iput-boolean p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mHideDeclined:Z

    .line 1678
    return-void
.end method

.method public setOnLoadCompleteListener(Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter;->mOnLoadCompleteListener:Lcom/android/calendar/AgendaWindowAdapter$OnLoadCompleteListener;

    .line 235
    return-void
.end method

.method public stopImageLoaderThread()V
    .registers 5

    .prologue
    .line 1771
    iget-object v3, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v3

    .line 1772
    :try_start_3
    iget-object v2, p0, Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

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

    .line 1773
    .local v1, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v2, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaByDayAdapter;->stopImageLoaderThread()V

    goto :goto_9

    .line 1775
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

    .line 1776
    return-void
.end method
