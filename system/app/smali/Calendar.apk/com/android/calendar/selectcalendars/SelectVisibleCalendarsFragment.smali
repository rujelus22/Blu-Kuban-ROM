.class public Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;
.super Landroid/app/Fragment;
.source "SelectVisibleCalendarsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION_ARGS:[Ljava/lang/String;

.field private static mCalendarItemLayout:I

.field private static mQueryToken:I

.field private static mUpdateToken:I


# instance fields
.field private mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

.field private mContext:Landroid/app/Activity;

.field private mCursor:Landroid/database/Cursor;

.field private mList:Landroid/widget/ListView;

.field private mService:Lcom/android/calendar/AsyncQueryService;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "(account_name=ownerAccount) AS \"primary\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    .line 61
    const v0, 0x7f040029

    sput v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCalendarItemLayout:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "itemLayout"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    .line 74
    sput p1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCalendarItemLayout:I

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;)Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method


# virtual methods
.method public eventsChanged()V
    .registers 9

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    if-eqz v0, :cond_25

    .line 166
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    sget v1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/AsyncQueryService;->cancelOperation(I)I

    .line 167
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v0}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    .line 168
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    sget v1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sync_events=?"

    sget-object v6, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    const-string v7, "account_name"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_25
    return-void
.end method

.method public getSupportedEventTypes()J
    .registers 3

    .prologue
    .line 175
    const-wide/16 v0, 0x80

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .registers 6
    .parameter "event"

    .prologue
    .line 180
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 181
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->eventsChanged()V

    .line 183
    :cond_b
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContext:Landroid/app/Activity;

    sget v2, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCalendarItemLayout:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    .line 129
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContext:Landroid/app/Activity;

    .line 81
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;-><init>(Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "icicle"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 109
    const v1, 0x7f04002e

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    .line 110
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    const v2, 0x7f1000a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mList:Landroid/widget/ListView;

    .line 114
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090007

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 116
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    const v2, 0x7f1000a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_3c

    .line 119
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .end local v0           #v:Landroid/view/View;
    :cond_3c
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    return-object v1
.end method

.method public onDetach()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 93
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_14

    .line 94
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 95
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 96
    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;

    .line 98
    :cond_14
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getCount()I

    move-result v0

    if-gt v0, p3, :cond_d

    .line 138
    :cond_c
    :goto_c
    return-void

    .line 137
    :cond_d
    invoke-virtual {p0, p3}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->toggleVisibility(I)V

    goto :goto_c
.end method

.method public onResume()V
    .registers 9

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v0}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    .line 144
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    sget v1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sync_events=?"

    sget-object v6, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    const-string v7, "account_name"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public toggleVisibility(I)V
    .registers 12
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 152
    const-string v0, "Calendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toggling calendar at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v0}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mUpdateToken:I

    .line 154
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 155
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v4, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getVisible(I)I

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    .line 158
    .local v9, visibility:I
    const-string v0, "visible"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    sget v1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mUpdateToken:I

    const-wide/16 v7, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 160
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, p1, v9}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->setVisible(II)V

    .line 161
    return-void
.end method
