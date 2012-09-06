.class public Lcom/android/calendar/month/MonthByWeekAdapter;
.super Lcom/android/calendar/month/SimpleWeeksAdapter;
.source "MonthByWeekAdapter.java"


# static fields
.field protected static DEFAULT_QUERY_DAYS:I


# instance fields
.field private mAnimateTime:J

.field private mAnimateToday:Z

.field protected mController:Lcom/android/calendar/CalendarController;

.field protected mEventDayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstJulianDay:I

.field protected mHomeTimeZone:Ljava/lang/String;

.field protected mIsMiniMonth:Z

.field protected mOrientation:I

.field protected mQueryDays:I

.field private mShowAgendaWithMonth:Z

.field protected mTempTime:Landroid/text/format/Time;

.field protected mToday:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/16 v0, 0x38

    sput v0, Lcom/android/calendar/month/MonthByWeekAdapter;->DEFAULT_QUERY_DAYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/month/SimpleWeeksAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 50
    iput-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mOrientation:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEvents:Ljava/util/ArrayList;

    .line 57
    iput-boolean v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    .line 58
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateTime:J

    .line 62
    const-string v0, "mini_month"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 63
    const-string v0, "mini_month"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3d

    move v0, v1

    :goto_31
    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    .line 65
    :cond_33
    const v0, 0x7f090001

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mShowAgendaWithMonth:Z

    .line 66
    return-void

    :cond_3d
    move v0, v2

    .line 63
    goto :goto_31
.end method

.method private sendEventsToView(Lcom/android/calendar/month/MonthWeekEventsView;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 227
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1d

    .line 228
    const-string v3, "MonthByWeek"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 229
    const-string v3, "MonthByWeek"

    const-string v4, "No events loaded, did not pass any events to view."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_19
    invoke-virtual {p1, v6, v6}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 246
    :goto_1c
    return-void

    .line 234
    :cond_1d
    invoke-virtual {p1}, Lcom/android/calendar/month/MonthWeekEventsView;->getFirstJulianDay()I

    move-result v2

    .line 235
    .local v2, viewJulianDay:I
    iget v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 236
    .local v1, start:I
    iget v3, p1, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    add-int v0, v1, v3

    .line 237
    .local v0, end:I
    if-ltz v1, :cond_33

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v0, v3, :cond_63

    .line 238
    :cond_33
    const-string v3, "MonthByWeek"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 239
    const-string v3, "MonthByWeek"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Week is outside range of loaded events. viewStart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " eventsStart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_5f
    invoke-virtual {p1, v6, v6}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_1c

    .line 245
    :cond_63
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_1c
.end method

.method private updateTimeZones()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 87
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 89
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mTempTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method public animateToday()V
    .registers 3

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateTime:J

    .line 71
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 160
    iget-boolean v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v7, :cond_9

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/month/SimpleWeeksAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 223
    :goto_8
    return-object v6

    .line 164
    :cond_9
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 166
    .local v4, params:Landroid/widget/AbsListView$LayoutParams;
    const/4 v2, 0x0

    .line 167
    .local v2, drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 168
    .local v3, isAnimatingToday:Z
    if-eqz p2, :cond_e5

    move-object v6, p2

    .line 169
    check-cast v6, Lcom/android/calendar/month/MonthWeekEventsView;

    .line 172
    .local v6, v:Lcom/android/calendar/month/MonthWeekEventsView;
    iget-boolean v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    if-eqz v7, :cond_dd

    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v7, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/calendar/month/MonthWeekEventsView;->updateToday(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_dd

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 177
    .local v0, currentTime:J
    iget-wide v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateTime:J

    sub-long v7, v0, v7

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-lez v7, :cond_d3

    .line 178
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    .line 179
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateTime:J

    .line 192
    .end local v0           #currentTime:J
    :goto_3a
    if-nez v2, :cond_41

    .line 193
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 195
    .restart local v2       #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_41
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 197
    invoke-virtual {v6, v4}, Lcom/android/calendar/month/MonthWeekEventsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/calendar/month/MonthWeekEventsView;->setClickable(Z)V

    .line 199
    invoke-virtual {v6, p0}, Lcom/android/calendar/month/MonthWeekEventsView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    const/4 v5, -0x1

    .line 202
    .local v5, selectedDay:I
    iget v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedWeek:I

    if-ne v7, p1, :cond_57

    .line 203
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget v5, v7, Landroid/text/format/Time;->weekDay:I

    .line 206
    :cond_57
    const-string v7, "height"

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mNumWeeks:I

    div-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v7, "selected_day"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v8, "show_wk_num"

    iget-boolean v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mShowWeekNumber:Z

    if-eqz v7, :cond_ee

    const/4 v7, 0x1

    :goto_7c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v7, "week_start"

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstDayOfWeek:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v7, "num_days"

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mDaysPerWeek:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v7, "week"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v7, "focus_month"

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFocusMonth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v7, "orientation"

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mOrientation:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    if-eqz v3, :cond_c7

    .line 217
    const-string v7, "animate_today"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    .line 221
    :cond_c7
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v7, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/android/calendar/month/MonthWeekEventsView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0, v6}, Lcom/android/calendar/month/MonthByWeekAdapter;->sendEventsToView(Lcom/android/calendar/month/MonthWeekEventsView;)V

    goto/16 :goto_8

    .line 181
    .end local v5           #selectedDay:I
    .restart local v0       #currentTime:J
    :cond_d3
    const/4 v3, 0x1

    .line 184
    new-instance v6, Lcom/android/calendar/month/MonthWeekEventsView;

    .end local v6           #v:Lcom/android/calendar/month/MonthWeekEventsView;
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/calendar/month/MonthWeekEventsView;-><init>(Landroid/content/Context;)V

    .restart local v6       #v:Lcom/android/calendar/month/MonthWeekEventsView;
    goto/16 :goto_3a

    .line 187
    .end local v0           #currentTime:J
    :cond_dd
    invoke-virtual {v6}, Lcom/android/calendar/month/MonthWeekEventsView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v2, Ljava/util/HashMap;

    .restart local v2       #drawingParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_3a

    .line 190
    .end local v6           #v:Lcom/android/calendar/month/MonthWeekEventsView;
    :cond_e5
    new-instance v6, Lcom/android/calendar/month/MonthWeekEventsView;

    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/calendar/month/MonthWeekEventsView;-><init>(Landroid/content/Context;)V

    .restart local v6       #v:Lcom/android/calendar/month/MonthWeekEventsView;
    goto/16 :goto_3a

    .line 209
    .restart local v5       #selectedDay:I
    :cond_ee
    const/4 v7, 0x0

    goto :goto_7c
.end method

.method protected init()V
    .registers 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->init()V

    .line 76
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    .line 77
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 79
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    .line 80
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 81
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mTempTime:Landroid/text/format/Time;

    .line 82
    return-void
.end method

.method protected onDayTapped(Landroid/text/format/Time;)V
    .registers 16
    .parameter "day"

    .prologue
    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 260
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 261
    new-instance v13, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v13, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 262
    .local v13, currTime:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 263
    iget v0, v13, Landroid/text/format/Time;->hour:I

    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 264
    iget v0, v13, Landroid/text/format/Time;->minute:I

    iput v0, p1, Landroid/text/format/Time;->minute:I

    .line 265
    iput-boolean v8, p1, Landroid/text/format/Time;->allDay:Z

    .line 266
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 267
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mShowAgendaWithMonth:Z

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-nez v0, :cond_3d

    .line 270
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    const-wide/16 v9, 0x1

    move-object v4, p1

    move-object v5, p1

    move-object v12, v11

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 279
    :goto_3c
    return-void

    .line 274
    :cond_3d
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v4, :cond_4e

    :goto_45
    const-wide/16 v9, 0x5

    move-object v4, p1

    move-object v5, p1

    move-object v12, v11

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_3c

    :cond_4e
    const/4 v8, -0x1

    goto :goto_45
.end method

.method protected refresh()V
    .registers 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstDayOfWeek:I

    .line 251
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mShowWeekNumber:Z

    .line 252
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mOrientation:I

    .line 254
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->updateTimeZones()V

    .line 255
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->notifyDataSetChanged()V

    .line 256
    return-void
.end method

.method public setEvents(IILjava/util/ArrayList;)V
    .registers 14
    .parameter "firstJulianDay"
    .parameter "numDays"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v9, 0x3

    .line 102
    iget-boolean v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v7, :cond_16

    .line 103
    const-string v7, "MonthByWeek"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 104
    const-string v7, "MonthByWeek"

    const-string v8, "Attempted to set events for mini view. Events only supported in full view."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_15
    :goto_15
    return-void

    .line 109
    :cond_16
    iput-object p3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEvents:Ljava/util/ArrayList;

    .line 110
    iput p1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    .line 111
    iput p2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mQueryDays:I

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v2, eventDayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/calendar/Event;>;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_22
    if-ge v3, p2, :cond_2f

    .line 116
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 119
    :cond_2f
    if-eqz p3, :cond_37

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4c

    .line 120
    :cond_37
    const-string v7, "MonthByWeek"

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 121
    const-string v7, "MonthByWeek"

    const-string v8, "No events. Returning early--go schedule something fun."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_46
    iput-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    .line 124
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->refresh()V

    goto :goto_15

    .line 129
    :cond_4c
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 130
    .local v1, event:Lcom/android/calendar/Event;
    iget v7, v1, Lcom/android/calendar/Event;->startDay:I

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    sub-int v6, v7, v8

    .line 131
    .local v6, startDay:I
    iget v7, v1, Lcom/android/calendar/Event;->endDay:I

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    sub-int/2addr v7, v8

    add-int/lit8 v0, v7, 0x1

    .line 132
    .local v0, endDay:I
    if-lt v6, p2, :cond_6d

    if-ltz v0, :cond_50

    .line 133
    :cond_6d
    if-gez v6, :cond_70

    .line 134
    const/4 v6, 0x0

    .line 136
    :cond_70
    if-gt v6, p2, :cond_50

    .line 139
    if-ltz v0, :cond_50

    .line 142
    if-le v0, p2, :cond_77

    .line 143
    move v0, p2

    .line 145
    :cond_77
    move v5, v6

    .local v5, j:I
    :goto_78
    if-ge v5, v0, :cond_50

    .line 146
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    .line 150
    .end local v0           #endDay:I
    .end local v1           #event:Lcom/android/calendar/Event;
    .end local v5           #j:I
    .end local v6           #startDay:I
    :cond_86
    const-string v7, "MonthByWeek"

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 151
    const-string v7, "MonthByWeek"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Processed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " events."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_b0
    iput-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->refresh()V

    goto/16 :goto_15
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .registers 6
    .parameter "selectedTime"

    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 95
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 96
    .local v0, millis:J
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iget v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstDayOfWeek:I

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSelectedWeek:I

    .line 98
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method
