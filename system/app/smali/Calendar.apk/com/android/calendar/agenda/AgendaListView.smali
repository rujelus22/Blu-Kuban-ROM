.class public Lcom/android/calendar/agenda/AgendaListView;
.super Landroid/widget/ListView;
.source "AgendaListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mHandler:Landroid/os/Handler;

.field private mMidnightUpdater:Ljava/lang/Runnable;

.field private mPastEventUpdater:Ljava/lang/Runnable;

.field private mShowEventDetailsWithAgenda:Z

.field private mTZUpdater:Ljava/lang/Runnable;

.field private mTime:Landroid/text/format/Time;

.field private mTimeZone:Ljava/lang/String;

.field private mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/android/calendar/agenda/AgendaListView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaListView$1;-><init>(Lcom/android/calendar/agenda/AgendaListView;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTZUpdater:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Lcom/android/calendar/agenda/AgendaListView$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaListView$2;-><init>(Lcom/android/calendar/agenda/AgendaListView;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mMidnightUpdater:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lcom/android/calendar/agenda/AgendaListView$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaListView$3;-><init>(Lcom/android/calendar/agenda/AgendaListView;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mPastEventUpdater:Ljava/lang/Runnable;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaListView;->initView(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/agenda/AgendaListView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaListView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaListView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/agenda/AgendaListView;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/agenda/AgendaListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaListView;->setMidnightUpdater()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/agenda/AgendaListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaListView;->updatePastEvents()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/agenda/AgendaListView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaListView;->setPastEventsUpdater()V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f090003

    const/4 v3, 0x0

    .line 89
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaListView;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    .line 92
    invoke-virtual {p0, p0}, Lcom/android/calendar/agenda/AgendaListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaListView;->setChoiceMode(I)V

    .line 94
    invoke-virtual {p0, v3}, Lcom/android/calendar/agenda/AgendaListView;->setVerticalScrollBarEnabled(Z)V

    .line 95
    new-instance v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {p1, v4}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    invoke-direct {v0, p1, p0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;-><init>(Landroid/content/Context;Lcom/android/calendar/agenda/AgendaListView;Z)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 97
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setSelectedInstanceId(J)V

    .line 98
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaListView;->setCacheColorHint(I)V

    .line 100
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v0, p1, v5, v3}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 102
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mShowEventDetailsWithAgenda:Z

    .line 105
    invoke-virtual {p0, v5}, Lcom/android/calendar/agenda/AgendaListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {p0, v3}, Lcom/android/calendar/agenda/AgendaListView;->setDividerHeight(I)V

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method private resetMidnightUpdater()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mMidnightUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method private resetPastEventsUpdater()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mPastEventUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method private setMidnightUpdater()V
    .registers 8

    .prologue
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, now:J
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 119
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 120
    const v5, 0x15180

    iget v6, v4, Landroid/text/format/Time;->hour:I

    mul-int/lit16 v6, v6, 0xe10

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/text/format/Time;->minute:I

    mul-int/lit8 v6, v6, 0x3c

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/text/format/Time;->second:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v2, v5

    .line 122
    .local v2, runInMillis:J
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaListView;->mMidnightUpdater:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 123
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaListView;->mMidnightUpdater:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void
.end method

.method private setPastEventsUpdater()V
    .registers 11

    .prologue
    const-wide/32 v8, 0x493e0

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 137
    .local v0, now:J
    div-long v4, v0, v8

    mul-long v2, v4, v8

    .line 138
    .local v2, roundedTime:J
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaListView;->mPastEventUpdater:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaListView;->mPastEventUpdater:Ljava/lang/Runnable;

    sub-long v6, v0, v2

    sub-long v6, v8, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    return-void
.end method

.method private shiftPosition(I)V
    .registers 7
    .parameter "offset"

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, firstVisibleItem:Landroid/view/View;
    if-eqz v0, :cond_22

    .line 389
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 390
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 394
    .local v1, position:I
    add-int v4, v1, p1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_1f

    iget v3, v2, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    :goto_1b
    invoke-virtual {p0, v4, v3}, Lcom/android/calendar/agenda/AgendaListView;->setSelectionFromTop(II)V

    .line 416
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_1e
    :goto_1e
    return-void

    .line 394
    .restart local v1       #position:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_1f
    iget v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_1b

    .line 409
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_22
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_1e

    .line 414
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getSelectedItemPosition()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/android/calendar/agenda/AgendaListView;->setSelection(I)V

    goto :goto_1e
.end method

.method private updatePastEvents()Z
    .registers 13

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getChildCount()I

    move-result v0

    .line 153
    .local v0, childCount:I
    const/4 v4, 0x0

    .line 154
    .local v4, needUpdate:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 155
    .local v5, now:J
    new-instance v8, Landroid/text/format/Time;

    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v8, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 156
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 157
    iget-wide v10, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 160
    .local v9, todayJulianDay:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1a
    if-ge v2, v0, :cond_34

    .line 161
    invoke-virtual {p0, v2}, Lcom/android/calendar/agenda/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 162
    .local v3, listItem:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 163
    .local v7, o:Ljava/lang/Object;
    instance-of v10, v7, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    if-eqz v10, :cond_35

    move-object v1, v7

    .line 165
    check-cast v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    .line 166
    .local v1, holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    iget v10, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->julianDay:I

    if-gt v10, v9, :cond_54

    iget-boolean v10, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->grayed:Z

    if-nez v10, :cond_54

    .line 167
    const/4 v4, 0x1

    .line 181
    .end local v1           #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    .end local v3           #listItem:Landroid/view/View;
    .end local v7           #o:Ljava/lang/Object;
    :cond_34
    :goto_34
    return v4

    .line 170
    .restart local v3       #listItem:Landroid/view/View;
    .restart local v7       #o:Ljava/lang/Object;
    :cond_35
    instance-of v10, v7, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    if-eqz v10, :cond_54

    move-object v1, v7

    .line 173
    check-cast v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 174
    .local v1, holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    iget-boolean v10, v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->grayed:Z

    if-nez v10, :cond_54

    iget-boolean v10, v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    if-nez v10, :cond_4a

    iget-wide v10, v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->startTimeMilli:J

    cmp-long v10, v10, v5

    if-lez v10, :cond_52

    :cond_4a
    iget-boolean v10, v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    if-eqz v10, :cond_54

    iget v10, v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->julianDay:I

    if-gt v10, v9, :cond_54

    .line 176
    :cond_52
    const/4 v4, 0x1

    .line 177
    goto :goto_34

    .line 160
    .end local v1           #holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a
.end method


# virtual methods
.method public getFirstVisibleTime()J
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisiblePosition()I

    move-result v3

    .line 286
    .local v3, position:I
    iget-boolean v8, p0, Lcom/android/calendar/agenda/AgendaListView;->mShowEventDetailsWithAgenda:Z

    if-eqz v8, :cond_26

    .line 287
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v7

    .line 288
    .local v7, v:Landroid/view/View;
    if-eqz v7, :cond_26

    .line 289
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 290
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {v7, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 291
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v9}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getStickyHeaderHeight()I

    move-result v9

    if-gt v8, v9, :cond_26

    .line 292
    add-int/lit8 v3, v3, 0x1

    .line 297
    .end local v4           #r:Landroid/graphics/Rect;
    .end local v7           #v:Landroid/view/View;
    :cond_26
    iget-object v8, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v8, v3, v10}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 299
    .local v0, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_50

    .line 300
    new-instance v6, Landroid/text/format/Time;

    iget-object v8, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v6, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 301
    .local v6, t:Landroid/text/format/Time;
    iget-wide v8, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 303
    iget v1, v6, Landroid/text/format/Time;->hour:I

    .line 304
    .local v1, hour:I
    iget v2, v6, Landroid/text/format/Time;->minute:I

    .line 305
    .local v2, minute:I
    iget v5, v6, Landroid/text/format/Time;->second:I

    .line 306
    .local v5, second:I
    iget v8, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->startDay:I

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 307
    iput v1, v6, Landroid/text/format/Time;->hour:I

    .line 308
    iput v2, v6, Landroid/text/format/Time;->minute:I

    .line 309
    iput v5, v6, Landroid/text/format/Time;->second:I

    .line 314
    invoke-virtual {v6, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    .line 316
    .end local v1           #hour:I
    .end local v2           #minute:I
    .end local v5           #second:I
    .end local v6           #t:Landroid/text/format/Time;
    :goto_4f
    return-wide v8

    :cond_50
    const-wide/16 v8, 0x0

    goto :goto_4f
.end method

.method public getFirstVisibleView()Landroid/view/View;
    .registers 6

    .prologue
    .line 250
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 251
    .local v3, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getChildCount()I

    move-result v0

    .line 252
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_1b

    .line 253
    invoke-virtual {p0, v1}, Lcom/android/calendar/agenda/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 254
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 255
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_18

    .line 259
    .end local v2           #listItem:Landroid/view/View;
    :goto_17
    return-object v2

    .line 252
    .restart local v2       #listItem:Landroid/view/View;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 259
    .end local v2           #listItem:Landroid/view/View;
    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public getJulianDayFromPosition(I)I
    .registers 5
    .parameter "position"

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 321
    .local v0, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_13

    .line 322
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v1

    .line 324
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getSelectedInstanceId()J
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedViewHolder()Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedViewHolder()Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V
    .registers 16
    .parameter "time"
    .parameter "id"
    .parameter "searchQuery"
    .parameter "forced"
    .parameter "refreshEventInfo"

    .prologue
    .line 220
    if-nez p1, :cond_15

    .line 221
    iget-object p1, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    .line 222
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v7

    .line 223
    .local v7, goToTime:J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-gtz v0, :cond_12

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 226
    :cond_12
    invoke-virtual {p1, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 228
    .end local v7           #goToTime:J
    :cond_15
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 229
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 234
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 235
    return-void
.end method

.method public isEventVisible(Landroid/text/format/Time;J)Z
    .registers 15
    .parameter "startTime"
    .parameter "id"

    .prologue
    .line 330
    const-wide/16 v9, -0x1

    cmp-long v9, p2, v9

    if-eqz v9, :cond_8

    if-nez p1, :cond_a

    .line 331
    :cond_8
    const/4 v9, 0x0

    .line 360
    :goto_9
    return v9

    .line 334
    :cond_a
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/calendar/agenda/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 336
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_13

    .line 337
    const/4 v9, 0x0

    goto :goto_9

    .line 339
    :cond_13
    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    .line 340
    .local v8, start:I
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 341
    .local v6, milliTime:J
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getChildCount()I

    move-result v1

    .line 342
    .local v1, childCount:I
    iget-object v9, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v9}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCount()I

    move-result v3

    .line 344
    .local v3, eventsInAdapter:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_27
    if-ge v4, v1, :cond_2d

    .line 345
    add-int v9, v4, v8

    if-lt v9, v3, :cond_2f

    .line 360
    :cond_2d
    const/4 v9, 0x0

    goto :goto_9

    .line 348
    :cond_2f
    iget-object v9, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    add-int v10, v4, v8

    invoke-virtual {v9, v10}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v2

    .line 349
    .local v2, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    if-nez v2, :cond_3c

    .line 344
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 352
    :cond_3c
    iget-wide v9, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    cmp-long v9, v9, p2

    if-nez v9, :cond_39

    iget-wide v9, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    cmp-long v9, v9, v6

    if-nez v9, :cond_39

    .line 353
    invoke-virtual {p0, v4}, Lcom/android/calendar/agenda/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 354
    .local v5, listItem:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getHeight()I

    move-result v10

    if-gt v9, v10, :cond_39

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    if-ltz v9, :cond_39

    .line 356
    const/4 v9, 0x1

    goto :goto_9
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 186
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 187
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->close()V

    .line 188
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 24
    .parameter
    .parameter "v"
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
    .line 193
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-eqz v2, :cond_6c

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v15

    .line 196
    .local v15, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v16

    .line 197
    .local v16, oldInstanceId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setSelectedView(Landroid/view/View;)V

    .line 203
    if-eqz v15, :cond_6c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v2

    cmp-long v2, v16, v2

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mShowEventDetailsWithAgenda:Z

    if-nez v2, :cond_6c

    .line 205
    :cond_35
    iget-wide v7, v15, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .line 206
    .local v7, startTime:J
    iget-wide v9, v15, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    .line 207
    .local v9, endTime:J
    iget-boolean v2, v15, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    if-eqz v2, :cond_55

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-static {v2, v7, v8, v3}, Lcom/android/calendar/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v7

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-static {v2, v9, v10, v3}, Lcom/android/calendar/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v9

    .line 211
    :cond_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v1

    .line 212
    .local v1, controller:Lcom/android/calendar/CalendarController;
    const-wide/16 v3, 0x2

    iget-wide v5, v15, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v13

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v14}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 216
    .end local v1           #controller:Lcom/android/calendar/CalendarController;
    .end local v7           #startTime:J
    .end local v9           #endTime:J
    .end local v15           #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .end local v16           #oldInstanceId:J
    :cond_6c
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaListView;->resetMidnightUpdater()V

    .line 431
    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaListView;->resetPastEventsUpdater()V

    .line 432
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 424
    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaListView;->setMidnightUpdater()V

    .line 425
    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaListView;->setPastEventsUpdater()V

    .line 426
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->onResume()V

    .line 427
    return-void
.end method

.method public refresh(Z)V
    .registers 9
    .parameter "forced"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaListView;->mTime:Landroid/text/format/Time;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 239
    return-void
.end method

.method public setHideDeclinedEvents(Z)V
    .registers 3
    .parameter "hideDeclined"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setHideDeclinedEvents(Z)V

    .line 420
    return-void
.end method

.method public setSelectedInstanceId(J)V
    .registers 4
    .parameter "id"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaListView;->mWindowAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setSelectedInstanceId(J)V

    .line 369
    return-void
.end method

.method public shiftSelection(I)V
    .registers 5
    .parameter "offset"

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaListView;->shiftPosition(I)V

    .line 375
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaListView;->getSelectedItemPosition()I

    move-result v0

    .line 376
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 377
    add-int v1, v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/agenda/AgendaListView;->setSelectionFromTop(II)V

    .line 379
    :cond_10
    return-void
.end method
