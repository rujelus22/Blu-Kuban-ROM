.class public Lcom/android/calendar/alerts/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/AlertActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTIONARG:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/calendar/alerts/AlertAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mDismissAllButton:Landroid/widget/Button;

.field private mListView:Landroid/widget/ListView;

.field private mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

.field private mSnoozeAllButton:Landroid/widget/Button;

.field private mViewListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 56
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "state"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    .line 85
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/alerts/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 201
    new-instance v0, Lcom/android/calendar/alerts/AlertActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/alerts/AlertActivity$1;-><init>(Lcom/android/calendar/alerts/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/alerts/AlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/alerts/AlertActivity;)Lcom/android/calendar/alerts/AlertAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mAdapter:Lcom/android/calendar/alerts/AlertAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/alerts/AlertActivity;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActivity;->dismissAlarm(J)V

    return-void
.end method

.method private dismissAlarm(J)V
    .registers 12
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 111
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 112
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/calendar/alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v7, 0x0

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 116
    return-void
.end method

.method private dismissFiredAlarms()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 103
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 104
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/calendar/alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v5, "state=1"

    .line 106
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v7, 0x0

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 108
    return-void
.end method

.method private static makeContentValues(JJJJI)Landroid/content/ContentValues;
    .registers 15
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "alarmTime"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x0

    .line 187
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v3, "begin"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    const-string v3, "end"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string v3, "alarmTime"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 193
    .local v0, currentTime:J
    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    const-string v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v3, "minutes"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    return-object v2
.end method

.method public static scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    .registers 8
    .parameter "context"
    .parameter "manager"
    .parameter "alarmTime"

    .prologue
    const/4 v3, 0x0

    .line 174
    if-nez p1, :cond_b

    .line 175
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/app/AlarmManager;

    .line 178
    .restart local p1
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EVENT_REMINDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 180
    const-string v2, "alarmTime"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 181
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 182
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {p1, v3, p2, p3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 183
    return-void
.end method


# virtual methods
.method public getItemForView(Landroid/view/View;)Landroid/database/Cursor;
    .registers 4
    .parameter "view"

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 342
    .local v0, index:I
    if-gez v0, :cond_a

    .line 343
    const/4 v1, 0x0

    .line 345
    :goto_9
    return-object v1

    :cond_a
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    goto :goto_9
.end method

.method public onClick(Landroid/view/View;)V
    .registers 21
    .parameter "v"

    .prologue
    .line 290
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/alerts/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v9, :cond_86

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/32 v11, 0x493e0

    add-long v7, v9, v11

    .line 293
    .local v7, alarmTime:J
    const-string v9, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/calendar/alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 295
    .local v16, nm:Landroid/app/NotificationManager;
    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_78

    .line 298
    const-wide/16 v17, 0x0

    .line 299
    .local v17, scheduleAlarmTime:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v10, -0x1

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 300
    :goto_31
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_7f

    .line 301
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 302
    .local v1, eventId:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x4

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 303
    .local v3, begin:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 308
    .local v5, end:J
    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/android/calendar/alerts/AlertActivity;->makeContentValues(JJJJI)Landroid/content/ContentValues;

    move-result-object v13

    .line 312
    .local v13, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    if-eqz v9, :cond_67

    .line 313
    move-wide/from16 v17, v7

    .line 315
    :cond_67
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    const/4 v10, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    sget-object v12, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v14, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;J)V

    goto :goto_31

    .line 320
    .end local v1           #eventId:J
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v13           #values:Landroid/content/ContentValues;
    .end local v17           #scheduleAlarmTime:J
    :cond_78
    const-string v9, "AlertActivity"

    const-string v10, "Cursor object is null. Ignore the Snooze request."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_7f
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertActivity;->dismissFiredAlarms()V

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertActivity;->finish()V

    .line 334
    .end local v7           #alarmTime:J
    .end local v16           #nm:Landroid/app/NotificationManager;
    :cond_85
    :goto_85
    return-void

    .line 325
    :cond_86
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v9, :cond_85

    .line 326
    const-string v9, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/calendar/alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 328
    .restart local v16       #nm:Landroid/app/NotificationManager;
    const/4 v9, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertActivity;->dismissFiredAlarms()V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/alerts/AlertActivity;->finish()V

    goto :goto_85
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 231
    const v0, 0x7f040009

    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->setContentView(I)V

    .line 232
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->setTitle(I)V

    .line 234
    new-instance v0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;-><init>(Lcom/android/calendar/alerts/AlertActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    .line 235
    new-instance v0, Lcom/android/calendar/alerts/AlertAdapter;

    const v1, 0x7f04000a

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/alerts/AlertAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mAdapter:Lcom/android/calendar/alerts/AlertAdapter;

    .line 237
    const v0, 0x7f100018

    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    .line 238
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->mAdapter:Lcom/android/calendar/alerts/AlertAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 242
    const v0, 0x7f100019

    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    .line 243
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Lcom/android/calendar/alerts/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    .line 245
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 283
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 284
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 257
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_19

    .line 258
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    .line 259
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/calendar/alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "state=?"

    sget-object v6, Lcom/android/calendar/alerts/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    const-string v7, "begin ASC,title ASC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v3           #uri:Landroid/net/Uri;
    :cond_18
    :goto_18
    return-void

    .line 262
    :cond_19
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-nez v0, :cond_18

    .line 263
    const-string v0, "AlertActivity"

    const-string v1, "Cursor#requery() failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 265
    iput-object v2, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_18
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 273
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 275
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 276
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 278
    :cond_f
    return-void
.end method
