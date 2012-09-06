.class public Lcom/android/calendar/agenda/AgendaWindowAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;
.implements Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;,
        Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;,
        Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;,
        Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAdapterInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

.field mCleanQueryInitiated:Z

.field private mContext:Landroid/content/Context;

.field private mDoneSettingUpHeaderFooter:Z

.field private mEmptyCursorCount:I

.field private mFooterView:Landroid/widget/TextView;

.field private mFormatter:Ljava/util/Formatter;

.field private mHeaderView:Landroid/widget/TextView;

.field private mHideDeclined:Z

.field private final mIsTabletConfig:Z

.field private mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

.field mListViewScrollState:I

.field private mNewerRequests:I

.field private mNewerRequestsProcessed:I

.field private mOlderRequests:I

.field private mOlderRequestsProcessed:I

.field private mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

.field private final mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field private mRowCount:I

.field private mSearchQuery:Ljava/lang/String;

.field private mSelectedInstanceId:J

.field private final mSelectedItemBackgroundColor:I

.field private final mSelectedItemTextColor:I

.field private mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

.field private mShowEventOnStart:Z

.field private mShuttingDown:Z

.field private mStickyHeaderSize:I

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTZUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 103
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

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

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "canOrganizerRespond"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/agenda/AgendaListView;Z)V
    .registers 11
    .parameter "context"
    .parameter "agendaListView"
    .parameter "showEventOnStart"

    .prologue
    const v6, 0x7f040006

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 315
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 150
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    .line 152
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 156
    iput-boolean v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    .line 160
    iput-boolean v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    .line 161
    const/16 v1, 0x2c

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    .line 191
    new-instance v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;)V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    .line 203
    iput v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mListViewScrollState:I

    .line 208
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 497
    iput-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 316
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    .line 318
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemBackgroundColor:I

    .line 320
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemTextColor:I

    .line 321
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f090006

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsTabletConfig:Z

    .line 323
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    .line 324
    iput-object p2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    .line 325
    new-instance v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 328
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFormatter:Ljava/util/Formatter;

    .line 330
    iput-boolean p3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    .line 333
    iget-boolean v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    if-nez v1, :cond_89

    .line 334
    iput v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    .line 336
    :cond_89
    iput-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    .line 338
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 340
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    .line 341
    invoke-virtual {v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    .line 342
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    const v2, 0x7f0c0045

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 343
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaListView;->addHeaderView(Landroid/view/View;)V

    .line 344
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaWindowAdapter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;)Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Landroid/database/Cursor;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorPositionByPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/calendar/agenda/AgendaWindowAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I

    return p1
.end method

.method static synthetic access$1904(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$2008(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    return v0
.end method

.method static synthetic access$2108(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->updateHeaderFooter(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->isInRange(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return p1
.end method

.method static synthetic access$2612(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/text/format/Time;J)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)J
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findInstanceIdFromPosition(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    return v0
.end method

.method private buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .registers 13
    .parameter "cursor"
    .parameter "cursorPosition"
    .parameter "isDayHeader"

    .prologue
    const-wide/16 v7, 0x0

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 591
    const/4 v2, -0x1

    if-ne p2, v2, :cond_6e

    .line 592
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 596
    :goto_b
    new-instance v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;-><init>()V

    .line 597
    .local v0, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .line 598
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    .line 599
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->startDay:I

    .line 601
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_72

    const/4 v2, 0x1

    :goto_2d
    iput-boolean v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    .line 602
    iget-boolean v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    if-eqz v2, :cond_74

    .line 603
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 604
    .local v1, time:Landroid/text/format/Time;
    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-static {v4, v5, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 605
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .line 615
    .end local v1           #time:Landroid/text/format/Time;
    :cond_49
    :goto_49
    if-nez p3, :cond_6d

    .line 616
    iget-boolean v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    if-eqz v2, :cond_8f

    .line 617
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 618
    .restart local v1       #time:Landroid/text/format/Time;
    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    invoke-static {v4, v5, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 619
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    .line 624
    .end local v1           #time:Landroid/text/format/Time;
    :goto_65
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    .line 626
    :cond_6d
    return-object v0

    .line 594
    .end local v0           #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    :cond_6e
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_b

    .restart local v0       #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    :cond_72
    move v2, v3

    .line 601
    goto :goto_2d

    .line 606
    :cond_74
    if-eqz p3, :cond_49

    .line 607
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 608
    .restart local v1       #time:Landroid/text/format/Time;
    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 609
    iput v3, v1, Landroid/text/format/Time;->hour:I

    .line 610
    iput v3, v1, Landroid/text/format/Time;->minute:I

    .line 611
    iput v3, v1, Landroid/text/format/Time;->second:I

    .line 612
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    goto :goto_49

    .line 621
    .end local v1           #time:Landroid/text/format/Time;
    :cond_8f
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    goto :goto_65
.end method

.method private buildQuerySelection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 764
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHideDeclined:Z

    if-eqz v0, :cond_7

    .line 765
    const-string v0, "visible=1 AND selfAttendeeStatus!=2"

    .line 769
    :goto_6
    return-object v0

    :cond_7
    const-string v0, "visible=1"

    goto :goto_6
.end method

.method private buildQueryUri(IILjava/lang/String;)Landroid/net/Uri;
    .registers 8
    .parameter "start"
    .parameter "end"
    .parameter "searchQuery"

    .prologue
    .line 774
    if-nez p3, :cond_1a

    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    .line 777
    .local v1, rootUri:Landroid/net/Uri;
    :goto_4
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 778
    .local v0, builder:Landroid/net/Uri$Builder;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 779
    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 780
    if-eqz p3, :cond_15

    .line 781
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 783
    :cond_15
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 774
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #rootUri:Landroid/net/Uri;
    :cond_1a
    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

    goto :goto_4
.end method

.method private calculateQueryDuration(II)I
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 796
    const/16 v0, 0x3c

    .line 797
    .local v0, queryDuration:I
    iget v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    if-eqz v1, :cond_10

    .line 798
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    div-int v0, v1, v2

    .line 801
    :cond_10
    const/16 v1, 0x3c

    if-le v0, v1, :cond_17

    .line 802
    const/16 v0, 0x3c

    .line 807
    :cond_16
    :goto_16
    return v0

    .line 803
    :cond_17
    const/4 v1, 0x7

    if-ge v0, v1, :cond_16

    .line 804
    const/4 v0, 0x7

    goto :goto_16
.end method

.method private doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V
    .registers 13
    .parameter "queryData"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 837
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 838
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v10, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 839
    .local v10, start:I
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v8, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 840
    .local v8, end:I
    invoke-direct {p0, v10, v8}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->calculateQueryDuration(II)I

    move-result v9

    .line 841
    .local v9, queryDuration:I
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v0, :pswitch_data_72

    .line 854
    :goto_27
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    const/16 v2, 0x14

    if-ge v0, v2, :cond_3f

    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-eq v0, v4, :cond_3f

    .line 863
    iput v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    .line 865
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    if-le v0, v10, :cond_39

    .line 866
    iput v10, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 868
    :cond_39
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    if-ge v0, v8, :cond_3f

    .line 869
    iput v8, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    .line 883
    .end local v8           #end:I
    .end local v9           #queryDuration:I
    .end local v10           #start:I
    :cond_3f
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 886
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    iget v2, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildQueryUri(IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 888
    .local v3, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    sget-object v4, Lcom/android/calendar/agenda/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "startDay ASC, begin ASC, title ASC"

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    return-void

    .line 843
    .end local v3           #queryUri:Landroid/net/Uri;
    .restart local v8       #end:I
    .restart local v9       #queryDuration:I
    .restart local v10       #start:I
    :pswitch_5e
    add-int/lit8 v0, v10, -0x1

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    .line 844
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    sub-int/2addr v0, v9

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_27

    .line 847
    :pswitch_68
    add-int/lit8 v0, v8, 0x1

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 848
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/2addr v0, v9

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_27

    .line 841
    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_68
    .end packed-switch
.end method

.method private findEventPositionNearestTime(Landroid/text/format/Time;J)I
    .registers 7
    .parameter "time"
    .parameter "id"

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 502
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_10

    .line 503
    iget v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v2

    add-int/2addr v1, v2

    .line 505
    :goto_f
    return v1

    :cond_10
    const/4 v1, -0x1

    goto :goto_f
.end method

.method private findInstanceIdFromPosition(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 1264
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1265
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 1266
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getInstanceId(I)J

    move-result-wide v1

    .line 1268
    :goto_10
    return-wide v1

    :cond_11
    const-wide/16 v1, -0x1

    goto :goto_10
.end method

.method private formatDateString(I)Ljava/lang/String;
    .registers 11
    .parameter "julianDay"

    .prologue
    const/4 v1, 0x0

    .line 894
    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 895
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 896
    invoke-virtual {v8, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 897
    .local v2, millis:J
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 898
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFormatter:Ljava/util/Formatter;

    const v6, 0x10014

    iget-object v7, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .registers 10
    .parameter "time"

    .prologue
    .line 529
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 530
    .local v5, tmpTime:Landroid/text/format/Time;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 531
    .local v3, timeInMillis:J
    iget-wide v6, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 532
    .local v0, day:I
    iget-object v7, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v7

    .line 533
    :try_start_13
    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 534
    .local v2, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v0, :cond_19

    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt v0, v6, :cond_19

    .line 535
    monitor-exit v7

    .line 539
    .end local v2           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_2e
    return-object v2

    .line 538
    :cond_2f
    monitor-exit v7

    .line 539
    const/4 v2, 0x0

    goto :goto_2e

    .line 538
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_32
    move-exception v6

    monitor-exit v7
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_32

    throw v6
.end method

.method private getCursorByPosition(I)Landroid/database/Cursor;
    .registers 4
    .parameter "position"

    .prologue
    .line 1272
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1273
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_9

    .line 1274
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 1276
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private getCursorPositionByPosition(I)I
    .registers 5
    .parameter "position"

    .prologue
    .line 1280
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1281
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 1282
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v1

    .line 1284
    :goto_10
    return v1

    :cond_11
    const/4 v1, -0x1

    goto :goto_10
.end method

.method private isInRange(II)Z
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x0

    .line 787
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v2

    .line 788
    :try_start_4
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 789
    monitor-exit v2

    move v0, v1

    .line 791
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v0, p1, :cond_2d

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt p2, v0, :cond_2d

    const/4 v0, 0x1

    :goto_28
    monitor-exit v2

    goto :goto_e

    .line 792
    :catchall_2a
    move-exception v0

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    move v0, v1

    .line 791
    goto :goto_28
.end method

.method private pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .registers 10
    .parameter "queryType"

    .prologue
    .line 718
    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    .line 719
    const/4 v3, 0x0

    .line 720
    .local v3, recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :try_start_4
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6a

    .line 721
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_43

    .line 722
    const/4 v5, 0x1

    if-ne p1, v5, :cond_30

    .line 723
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 729
    :cond_22
    :goto_22
    if-eqz v3, :cond_43

    .line 730
    iget-object v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_2d

    .line 731
    iget-object v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 733
    :cond_2d
    monitor-exit v6

    move-object v4, v3

    .line 757
    .end local v3           #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .local v4, recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_2f
    return-object v4

    .line 724
    .end local v4           #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :cond_30
    if-nez p1, :cond_22

    .line 725
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 727
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    goto :goto_22

    .line 758
    :catchall_40
    move-exception v5

    monitor-exit v6
    :try_end_42
    .catchall {:try_start_4 .. :try_end_42} :catchall_40

    throw v5

    .line 737
    :cond_43
    :try_start_43
    iget v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    if-eqz v5, :cond_4a

    const/4 v5, 0x2

    if-ne p1, v5, :cond_6a

    .line 738
    :cond_4a
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    .line 739
    const/4 v1, 0x0

    .line 742
    .local v1, deletedRows:I
    :cond_4e
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 743
    .local v2, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_61

    .line 745
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 746
    iget v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v1, v5

    .line 747
    move-object v3, v2

    .line 749
    :cond_61
    if-nez v2, :cond_4e

    .line 751
    if-eqz v3, :cond_6a

    .line 752
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 753
    iput v1, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 757
    .end local v1           #deletedRows:I
    .end local v2           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :cond_6a
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_43 .. :try_end_6b} :catchall_40

    move-object v4, v3

    .end local v3           #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v4       #recycleMe:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    goto :goto_2f
.end method

.method private queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z
    .registers 10
    .parameter "start"
    .parameter "end"
    .parameter "goToTime"
    .parameter "searchQuery"
    .parameter "queryType"
    .parameter "id"

    .prologue
    .line 812
    new-instance v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v0, p5}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    .line 813
    .local v0, queryData:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    iput-object p3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 814
    iput p1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 815
    iput p2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    .line 816
    iput-object p4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    .line 817
    iput-wide p6, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    .line 818
    invoke-direct {p0, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    move-result v1

    return v1
.end method

.method private queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z
    .registers 6
    .parameter "queryData"

    .prologue
    .line 822
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    .line 824
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v3

    .line 825
    const/4 v2, 0x0

    :try_start_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 826
    .local v1, queuedQuery:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 827
    .local v0, doQueryNow:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 828
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 829
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 830
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V

    .line 832
    :cond_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2f

    .line 833
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 832
    .end local v0           #doQueryNow:Ljava/lang/Boolean;
    .end local v1           #queuedQuery:Ljava/lang/Boolean;
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method private updateHeaderFooter(II)V
    .registers 10
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 904
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0046

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0047

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 908
    return-void
.end method


# virtual methods
.method public OnHeaderHeightChanged(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 1322
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    .line 1323
    return-void
.end method

.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 3

    .prologue
    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShuttingDown:Z

    .line 711
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 712
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    if-eqz v0, :cond_11

    .line 713
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 715
    :cond_11
    return-void
.end method

.method protected getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .registers 7
    .parameter "position"

    .prologue
    .line 510
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v3

    .line 511
    :try_start_3
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_1c

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_1c

    .line 513
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    monitor-exit v3

    .line 523
    :goto_1b
    return-object v1

    .line 515
    :cond_1c
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 516
    .local v1, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_22

    iget v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_22

    .line 518
    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 519
    monitor-exit v3

    goto :goto_1b

    .line 522
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
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

    .line 523
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 382
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method public getEventByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .registers 3
    .parameter "positionInListView"

    .prologue
    .line 543
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEventByPosition(IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .registers 10
    .parameter "positionInListView"
    .parameter "returnEventStartDay"

    .prologue
    const/4 v1, 0x0

    .line 557
    if-gez p1, :cond_4

    .line 586
    :cond_3
    :goto_3
    return-object v1

    .line 561
    :cond_4
    add-int/lit8 v4, p1, -0x1

    .line 562
    .local v4, positionInAdapter:I
    invoke-virtual {p0, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 563
    .local v2, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_3

    .line 567
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 568
    .local v0, cursorPosition:I
    const/high16 v5, -0x8000

    if-eq v0, v5, :cond_3

    .line 572
    const/4 v3, 0x0

    .line 573
    .local v3, isDayHeader:Z
    if-gez v0, :cond_1f

    .line 574
    neg-int v0, v0

    .line 575
    const/4 v3, 0x1

    .line 578
    :cond_1f
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 579
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v5, v0, v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v1

    .line 580
    .local v1, ei:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    if-nez p2, :cond_3

    if-nez v3, :cond_3

    .line 581
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v5

    iput v5, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->startDay:I

    goto :goto_3
.end method

.method public getHeaderItemsNumber(I)I
    .registers 5
    .parameter "headerPosition"

    .prologue
    const/4 v1, -0x1

    .line 1310
    if-ltz p1, :cond_7

    iget-boolean v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsTabletConfig:Z

    if-nez v2, :cond_8

    .line 1317
    :cond_7
    :goto_7
    return v1

    .line 1313
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1314
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_7

    .line 1315
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getHeaderItemsCount(I)I

    move-result v1

    goto :goto_7
.end method

.method public getHeaderPositionFromItemPosition(I)I
    .registers 7
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 1295
    iget-boolean v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsTabletConfig:Z

    if-nez v3, :cond_6

    .line 1304
    :cond_5
    :goto_5
    return v2

    .line 1299
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1300
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_5

    .line 1301
    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getHeaderPosition(I)I

    move-result v1

    .line 1302
    .local v1, pos:I
    if-eq v1, v2, :cond_5

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    add-int/2addr v2, v1

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter "position"

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 388
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 389
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 391
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getItemId(I)J
    .registers 10
    .parameter "position"

    .prologue
    const-wide/16 v2, -0x1

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 405
    .local v1, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v1, :cond_16

    .line 406
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v5, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 407
    .local v0, curPos:I
    const/high16 v4, -0x8000

    if-ne v0, v4, :cond_17

    .line 420
    .end local v0           #curPos:I
    :cond_16
    :goto_16
    return-wide v2

    .line 411
    .restart local v0       #curPos:I
    :cond_17
    if-ltz v0, :cond_33

    .line 412
    iget-object v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 413
    iget-object v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x14

    iget-object v6, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v7, 0x7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    shl-long/2addr v2, v4

    goto :goto_16

    .line 417
    :cond_33
    iget-object v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v2, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v2

    int-to-long v2, v2

    goto :goto_16
.end method

.method public getItemViewType(I)I
    .registers 5
    .parameter "position"

    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 362
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 363
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v1

    .line 365
    :goto_10
    return v1

    :cond_11
    const/4 v1, -0x1

    goto :goto_10
.end method

.method public getSelectedInstanceId()J
    .registers 3

    .prologue
    .line 1255
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide v0
.end method

.method public getSelectedViewHolder()Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .registers 2

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    return-object v0
.end method

.method public getStickyHeaderHeight()I
    .registers 2

    .prologue
    .line 1326
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 426
    iget v11, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    add-int/lit8 v11, v11, -0x1

    move/from16 v0, p1

    if-lt v0, v11, :cond_1d

    iget v11, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    iget v12, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    if-gt v11, v12, :cond_1d

    .line 429
    iget v11, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    .line 430
    new-instance v11, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    invoke-direct {p0, v11}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    .line 433
    :cond_1d
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ge v0, v11, :cond_37

    iget v11, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    iget v12, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    if-gt v11, v12, :cond_37

    .line 436
    iget v11, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    .line 437
    new-instance v11, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    invoke-direct {p0, v11}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    .line 441
    :cond_37
    invoke-virtual/range {p0 .. p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 442
    .local v2, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_89

    .line 443
    iget v11, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v3, p1, v11

    .line 444
    .local v3, offset:I
    iget-object v11, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v11, v3, v0, v1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 449
    .local v8, v:Landroid/view/View;
    iget-object v11, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v11, v3}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->isDayHeaderView(I)Z

    move-result v11

    if-eqz v11, :cond_76

    .line 450
    const v11, 0x7f10000a

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 451
    .local v6, simpleDivider:Landroid/view/View;
    const v11, 0x7f10000b

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 452
    .local v4, pastPresentDivider:Landroid/view/View;
    iget-object v11, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v11, v3}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->isFirstDayAfterYesterday(I)Z

    move-result v11

    if-eqz v11, :cond_7b

    .line 453
    if-eqz v6, :cond_76

    if-eqz v4, :cond_76

    .line 454
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 455
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 471
    .end local v3           #offset:I
    .end local v4           #pastPresentDivider:Landroid/view/View;
    .end local v6           #simpleDivider:Landroid/view/View;
    :cond_76
    :goto_76
    iget-boolean v11, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsTabletConfig:Z

    if-nez v11, :cond_c4

    .line 494
    :cond_7a
    :goto_7a
    return-object v8

    .line 457
    .restart local v3       #offset:I
    .restart local v4       #pastPresentDivider:Landroid/view/View;
    .restart local v6       #simpleDivider:Landroid/view/View;
    :cond_7b
    if-eqz v6, :cond_76

    if-eqz v4, :cond_76

    .line 458
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 459
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_76

    .line 464
    .end local v3           #offset:I
    .end local v4           #pastPresentDivider:Landroid/view/View;
    .end local v6           #simpleDivider:Landroid/view/View;
    .end local v8           #v:Landroid/view/View;
    :cond_89
    const-string v11, "AgendaWindowAdapter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BUG: getAdapterInfoByPosition returned null!!! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v7, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v7, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 466
    .local v7, tv:Landroid/widget/TextView;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bug! "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    move-object v8, v7

    .restart local v8       #v:Landroid/view/View;
    goto :goto_76

    .line 475
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_c4
    const/4 v5, 0x0

    .line 476
    .local v5, selected:Z
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 477
    .local v10, yy:Ljava/lang/Object;
    instance-of v11, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    if-eqz v11, :cond_7a

    move-object v9, v10

    .line 478
    check-cast v9, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 479
    .local v9, vh:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    iget-wide v11, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    iget-wide v13, v9, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->instanceId:J

    cmp-long v11, v11, v13

    if-nez v11, :cond_109

    const/4 v5, 0x1

    .line 480
    :goto_d9
    iget-object v12, v9, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->selectedMarker:Landroid/view/View;

    if-eqz v5, :cond_10b

    iget-boolean v11, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    if-eqz v11, :cond_10b

    const/4 v11, 0x0

    :goto_e2
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 482
    if-eqz v5, :cond_7a

    iget-boolean v11, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    if-eqz v11, :cond_7a

    .line 483
    iput-object v9, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 484
    iget v11, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemBackgroundColor:I

    invoke-virtual {v8, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 485
    iget-object v11, v9, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget v12, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemTextColor:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 486
    iget-object v11, v9, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    iget v12, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemTextColor:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 487
    iget-object v11, v9, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    iget v12, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemTextColor:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7a

    .line 479
    :cond_109
    const/4 v5, 0x0

    goto :goto_d9

    .line 480
    :cond_10b
    const/16 v11, 0x8

    goto :goto_e2
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 349
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .registers 5
    .parameter "position"

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 373
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_11

    .line 374
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->isEnabled(I)Z

    move-result v1

    .line 376
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1234
    return-void
.end method

.method public refresh(Landroid/text/format/Time;JLjava/lang/String;ZZ)V
    .registers 32
    .parameter "goToTime"
    .parameter "id"
    .parameter "searchQuery"
    .parameter "forced"
    .parameter "refreshEventInfo"

    .prologue
    .line 631
    if-eqz p4, :cond_8

    .line 632
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    .line 642
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    move-object/from16 v0, p1

    iget-wide v5, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 644
    .local v9, startDay:I
    if-nez p5, :cond_e6

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v9}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->isInRange(II)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/calendar/agenda/AgendaListView;->isEventVisible(Landroid/text/format/Time;J)Z

    move-result v3

    if-nez v3, :cond_d9

    .line 647
    invoke-direct/range {p0 .. p3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v20

    .line 648
    .local v20, gotoPosition:I
    if-lez v20, :cond_b6

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    add-int/lit8 v4, v20, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    invoke-virtual {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaListView;->setSelectionFromTop(II)V

    .line 651
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mListViewScrollState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_52

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaListView;->smoothScrollBy(II)V

    .line 654
    :cond_52
    if-eqz p6, :cond_b6

    .line 655
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findInstanceIdFromPosition(I)J

    move-result-wide v21

    .line 656
    .local v21, newInstanceId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v3

    cmp-long v3, v21, v3

    if-eqz v3, :cond_b6

    .line 657
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setSelectedInstanceId(J)V

    .line 658
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter$2;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 664
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v23

    .line 665
    .local v23, tempCursor:Landroid/database/Cursor;
    if-eqz v23, :cond_b6

    .line 666
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorPositionByPosition(I)I

    move-result v24

    .line 667
    .local v24, tempCursorPosition:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v19

    .line 670
    .local v19, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v3

    const-wide/16 v5, 0x2

    move-object/from16 v0, v19

    iget-wide v7, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    move-object/from16 v0, v19

    iget-wide v9, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .end local v9           #startDay:I
    move-object/from16 v0, v19

    iget-wide v11, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v16}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 678
    .end local v19           #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .end local v21           #newInstanceId:J
    .end local v23           #tempCursor:Landroid/database/Cursor;
    .end local v24           #tempCursorPosition:I
    :cond_b6
    new-instance v7, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v7, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 679
    .local v7, actualTime:Landroid/text/format/Time;
    if-eqz p1, :cond_da

    .line 680
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 684
    :goto_c6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v3

    const-wide/16 v5, 0x400

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object v8, v7

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 707
    .end local v7           #actualTime:Landroid/text/format/Time;
    .end local v20           #gotoPosition:I
    :cond_d9
    :goto_d9
    return-void

    .line 682
    .restart local v7       #actualTime:Landroid/text/format/Time;
    .restart local v20       #gotoPosition:I
    :cond_da
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v3}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto :goto_c6

    .line 691
    .end local v7           #actualTime:Landroid/text/format/Time;
    .end local v20           #gotoPosition:I
    .restart local v9       #startDay:I
    :cond_e6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    if-eqz v3, :cond_ee

    if-eqz p4, :cond_d9

    .line 693
    :cond_ee
    add-int/lit8 v10, v9, 0x7

    .line 695
    .local v10, endDay:I
    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 696
    const/4 v13, 0x2

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    move-wide/from16 v14, p2

    invoke-direct/range {v8 .. v15}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z

    .line 697
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    .line 702
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    .line 703
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move-wide/from16 v17, p2

    invoke-direct/range {v11 .. v18}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z

    .line 704
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    .line 705
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move-wide/from16 v17, p2

    invoke-direct/range {v11 .. v18}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z

    goto :goto_d9
.end method

.method public setHideDeclinedEvents(Z)V
    .registers 2
    .parameter "hideDeclined"

    .prologue
    .line 1237
    iput-boolean p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHideDeclined:Z

    .line 1238
    return-void
.end method

.method public setScrollState(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 1330
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mListViewScrollState:I

    .line 1331
    return-void
.end method

.method public setSelectedInstanceId(J)V
    .registers 4
    .parameter "selectedInstanceId"

    .prologue
    .line 1259
    iput-wide p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 1260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 1261
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1241
    if-eqz p1, :cond_14

    .line 1242
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1243
    .local v0, vh:Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    if-eqz v1, :cond_14

    .line 1244
    check-cast v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .end local v0           #vh:Ljava/lang/Object;
    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 1245
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    iget-wide v1, v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->instanceId:J

    iput-wide v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 1248
    :cond_14
    return-void
.end method
