.class public Lcom/android/providers/calendar/CalendarAlarmManager;
.super Ljava/lang/Object;
.source "CalendarAlarmManager.java"


# static fields
.field static final SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri;

.field static final SCHEDULE_ALARM_URI:Landroid/net/Uri;


# instance fields
.field protected mAlarmLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field protected mContext:Landroid/content/Context;

.field protected mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    sget-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "schedule_alarms_remove"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarAlarmManager;->SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri;

    .line 63
    sget-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "schedule_alarms"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarAlarmManager;->SCHEDULE_ALARM_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarAlarmManager;->initializeWithContext(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method private static removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 480
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 481
    const-string v0, "CalendarProvider2"

    const-string v1, "removing scheduled alarms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_10
    const-string v0, "CalendarAlerts"

    const-string v1, "state=0"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 485
    return-void
.end method

.method private scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/calendar/CalendarProvider2;)V
    .registers 59
    .parameter "db"
    .parameter "cp2"

    .prologue
    .line 258
    new-instance v50, Landroid/text/format/Time;

    invoke-direct/range {v50 .. v50}, Landroid/text/format/Time;-><init>()V

    .line 260
    .local v50, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    .line 261
    .local v27, currentMillis:J
    const-wide/32 v13, 0x6ddd00

    sub-long v45, v27, v13

    .line 262
    .local v45, start:J
    const-wide/32 v13, 0x5265c00

    add-long v30, v45, v13

    .line 263
    .local v30, end:J
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 264
    move-object/from16 v0, v50

    move-wide/from16 v1, v45

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 265
    const-string v3, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 266
    .local v47, startTimeStr:Ljava/lang/String;
    const-string v3, "CalendarProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "runScheduleNextAlarm() start search: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v47

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v47           #startTimeStr:Ljava/lang/String;
    :cond_45
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v44, v0

    const/4 v3, 0x0

    const-wide/32 v13, 0x247a6100

    sub-long v13, v27, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v44, v3

    .line 278
    .local v44, selectArg:[Ljava/lang/String;
    const-string v3, "CalendarAlerts"

    const-string v13, "_id IN (SELECT ca._id FROM CalendarAlerts AS ca LEFT OUTER JOIN Instances USING (event_id,begin,end) LEFT OUTER JOIN Reminders AS r ON (ca.event_id=r.event_id AND ca.minutes=r.minutes) LEFT OUTER JOIN view_events AS e ON (ca.event_id=e._id) WHERE Instances.begin ISNULL   OR ca.alarmTime<?   OR (r.minutes ISNULL       AND ca.minutes<>0)   OR e.visible=0)"

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v42

    .line 281
    .local v42, rowsDeleted:I
    move-wide/from16 v37, v30

    .line 282
    .local v37, nextAlarmTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 283
    .local v12, resolver:Landroid/content/ContentResolver;
    move-wide/from16 v0, v27

    invoke-static {v12, v0, v1}, Landroid/provider/CalendarContract$CalendarAlerts;->findNextAlarmTime(Landroid/content/ContentResolver;J)J

    move-result-wide v53

    .line 284
    .local v53, tmpAlarmTime:J
    const-wide/16 v13, -0x1

    cmp-long v3, v53, v13

    if-eqz v3, :cond_7e

    cmp-long v3, v53, v37

    if-gez v3, :cond_7e

    .line 285
    move-wide/from16 v37, v53

    .line 310
    :cond_7e
    invoke-virtual/range {v50 .. v50}, Landroid/text/format/Time;->setToNow()V

    .line 311
    const/4 v3, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 312
    move-object/from16 v0, v50

    iget-wide v13, v0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v15, 0x3e8

    mul-long v34, v13, v15

    .line 314
    .local v34, localOffset:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " -("

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v34

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ") "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 315
    .local v24, allDayOffset:Ljava/lang/String;
    const-string v48, "SELECT begin"

    .line 316
    .local v48, subQueryPrefix:Ljava/lang/String;
    const-string v49, " -(minutes*60000) AS myAlarmTime,Instances.event_id AS eventId,begin,end,title,allDay,method,minutes FROM Instances INNER JOIN view_events ON (view_events._id=Instances.event_id) INNER JOIN Reminders ON (Instances.event_id=Reminders.event_id) WHERE visible=1 AND myAlarmTime>=CAST(? AS INT) AND myAlarmTime<=CAST(? AS INT) AND end>=? AND method=1"

    .line 332
    .local v49, subQuerySuffix:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " AND "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "allDay"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "=1"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 334
    .local v25, allDayQuery:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " AND "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "allDay"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "=0"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 339
    .local v39, nonAllDayQuery:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT * FROM ("

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " UNION ALL "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ")"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " WHERE 0=(SELECT count(*) FROM "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "CalendarAlerts"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " CA"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " WHERE CA."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "event_id"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "=eventId"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " AND CA."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "begin"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "begin"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " AND CA."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "alarmTime"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "=myAlarmTime)"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, " ORDER BY myAlarmTime,"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "begin"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ","

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "title"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 346
    .local v40, query:Ljava/lang/String;
    const/4 v3, 0x6

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v41, v0

    const/4 v3, 0x0

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v41, v3

    const/4 v3, 0x1

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v41, v3

    const/4 v3, 0x2

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v41, v3

    const/4 v3, 0x3

    invoke-static/range {v45 .. v46}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v41, v3

    const/4 v3, 0x4

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v41, v3

    const/4 v3, 0x5

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v41, v3

    .line 350
    .local v41, queryParams:[Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v10

    .line 351
    .local v10, instancesTimezone:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v3

    const-string v13, "home"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 355
    .local v11, isHomeTimezone:Z
    const-wide/32 v13, 0x5265c00

    sub-long v4, v45, v13

    const-wide/32 v13, 0x5265c00

    add-long v6, v30, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRangeLocked(JJZZLjava/lang/String;Z)V

    .line 365
    const/16 v29, 0x0

    .line 367
    .local v29, cursor:Landroid/database/Cursor;
    :try_start_1e7
    move-object/from16 v0, p1

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 369
    const-string v3, "begin"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 370
    .local v26, beginIndex:I
    const-string v3, "end"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 371
    .local v32, endIndex:I
    const-string v3, "eventId"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 372
    .local v33, eventIdIndex:I
    const-string v3, "myAlarmTime"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 373
    .local v22, alarmTimeIndex:I
    const-string v3, "minutes"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 375
    .local v36, minutesIndex:I
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_259

    .line 376
    move-object/from16 v0, v50

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 377
    const-string v3, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 378
    .local v23, alarmTimeStr:Ljava/lang/String;
    const-string v3, "CalendarProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cursor results: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " nextAlarmTime: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v23           #alarmTimeStr:Ljava/lang/String;
    :cond_259
    :goto_259
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_34e

    .line 390
    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 391
    .local v8, alarmTime:J
    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 392
    .local v4, eventId:J
    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 393
    .local v21, minutes:I
    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 394
    .local v6, startTime:J
    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 396
    .local v17, endTime:J
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2e2

    .line 397
    move-object/from16 v0, v50

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 398
    const-string v3, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 399
    .local v43, schedTime:Ljava/lang/String;
    move-object/from16 v0, v50

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 400
    const-string v3, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 402
    .restart local v47       #startTimeStr:Ljava/lang/String;
    const-string v3, "CalendarProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  looking at id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v47

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " alarm: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v43           #schedTime:Ljava/lang/String;
    .end local v47           #startTimeStr:Ljava/lang/String;
    :cond_2e2
    cmp-long v3, v8, v37

    if-gez v3, :cond_335

    .line 408
    move-wide/from16 v37, v8

    :cond_2e8
    move-object v3, v12

    .line 421
    invoke-static/range {v3 .. v9}, Landroid/provider/CalendarContract$CalendarAlerts;->alarmExists(Landroid/content/ContentResolver;JJJ)Z

    move-result v3

    if-eqz v3, :cond_370

    .line 422
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_259

    .line 423
    const-string v3, "title"

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v52

    .line 424
    .local v52, titleIndex:I
    move-object/from16 v0, v29

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 425
    .local v51, title:Ljava/lang/String;
    const-string v3, "CalendarProvider2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  alarm exists for id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, v51

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32c
    .catchall {:try_start_1e7 .. :try_end_32c} :catchall_32e

    goto/16 :goto_259

    .line 445
    .end local v4           #eventId:J
    .end local v6           #startTime:J
    .end local v8           #alarmTime:J
    .end local v17           #endTime:J
    .end local v21           #minutes:I
    .end local v22           #alarmTimeIndex:I
    .end local v26           #beginIndex:I
    .end local v32           #endIndex:I
    .end local v33           #eventIdIndex:I
    .end local v36           #minutesIndex:I
    .end local v51           #title:Ljava/lang/String;
    .end local v52           #titleIndex:I
    :catchall_32e
    move-exception v3

    if-eqz v29, :cond_334

    .line 446
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_334
    throw v3

    .line 409
    .restart local v4       #eventId:J
    .restart local v6       #startTime:J
    .restart local v8       #alarmTime:J
    .restart local v17       #endTime:J
    .restart local v21       #minutes:I
    .restart local v22       #alarmTimeIndex:I
    .restart local v26       #beginIndex:I
    .restart local v32       #endIndex:I
    .restart local v33       #eventIdIndex:I
    .restart local v36       #minutesIndex:I
    :cond_335
    const-wide/32 v13, 0xea60

    add-long v13, v13, v37

    cmp-long v3, v8, v13

    if-lez v3, :cond_2e8

    .line 412
    :try_start_33e
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_34e

    .line 413
    const-string v3, "CalendarProvider2"

    const-string v13, "This event alarm (and all later ones) will be scheduled later"

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34e
    .catchall {:try_start_33e .. :try_end_34e} :catchall_32e

    .line 445
    .end local v4           #eventId:J
    .end local v6           #startTime:J
    .end local v8           #alarmTime:J
    .end local v17           #endTime:J
    .end local v21           #minutes:I
    :cond_34e
    if-eqz v29, :cond_353

    .line 446
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 451
    :cond_353
    if-lez v42, :cond_35c

    .line 452
    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleAlarm(J)V

    .line 460
    :cond_35c
    const-wide v13, 0x7fffffffffffffffL

    cmp-long v3, v37, v13

    if-eqz v3, :cond_393

    .line 461
    const-wide/32 v13, 0xea60

    add-long v13, v13, v37

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarmCheck(J)V

    .line 465
    :goto_36f
    return-void

    .restart local v4       #eventId:J
    .restart local v6       #startTime:J
    .restart local v8       #alarmTime:J
    .restart local v17       #endTime:J
    .restart local v21       #minutes:I
    :cond_370
    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v19, v8

    .line 432
    :try_start_374
    invoke-static/range {v12 .. v21}, Landroid/provider/CalendarContract$CalendarAlerts;->insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;

    move-result-object v55

    .line 434
    .local v55, uri:Landroid/net/Uri;
    if-nez v55, :cond_38c

    .line 435
    const-string v3, "CalendarProvider2"

    const/4 v13, 0x6

    invoke-static {v3, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_259

    .line 436
    const-string v3, "CalendarProvider2"

    const-string v13, "runScheduleNextAlarm() insert into CalendarAlerts table failed"

    invoke-static {v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_259

    .line 442
    :cond_38c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleAlarm(J)V
    :try_end_391
    .catchall {:try_start_374 .. :try_end_391} :catchall_32e

    goto/16 :goto_259

    .line 463
    .end local v4           #eventId:J
    .end local v6           #startTime:J
    .end local v8           #alarmTime:J
    .end local v17           #endTime:J
    .end local v21           #minutes:I
    .end local v55           #uri:Landroid/net/Uri;
    :cond_393
    const-wide/32 v13, 0x5265c00

    add-long v13, v13, v27

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarmCheck(J)V

    goto :goto_36f
.end method


# virtual methods
.method acquireScheduleNextAlarmWakeLock()V
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarAlarmManager;->getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 179
    return-void
.end method

.method public cancel(Landroid/app/PendingIntent;)V
    .registers 3
    .parameter "operation"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 493
    return-void
.end method

.method getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 162
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1c

    .line 163
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 167
    .local v0, powerManager:Landroid/os/PowerManager;
    const-string v1, "ScheduleNextAlarmWakeLock"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 172
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 174
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_1c
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mScheduleNextAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v1
.end method

.method protected initializeWithContext(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    .line 134
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmLock:Ljava/lang/Object;

    .line 137
    return-void
.end method

.method releaseScheduleNextAlarmWakeLock()V
    .registers 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarAlarmManager;->getScheduleNextAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 183
    return-void
.end method

.method rescheduleMissedAlarms()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarAlarmManager;->rescheduleMissedAlarms(Landroid/content/ContentResolver;)V

    .line 187
    return-void
.end method

.method public rescheduleMissedAlarms(Landroid/content/ContentResolver;)V
    .registers 4
    .parameter "cr"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {p1, v0, v1}, Landroid/provider/CalendarContract$CalendarAlerts;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 501
    return-void
.end method

.method runScheduleNextAlarm(ZLcom/android/providers/calendar/CalendarProvider2;)V
    .registers 6
    .parameter "removeAlarms"
    .parameter "cp2"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    iget-object v0, p2, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 199
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 201
    if-eqz p1, :cond_10

    .line 202
    :try_start_d
    invoke-static {v0}, Lcom/android/providers/calendar/CalendarAlarmManager;->removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 204
    :cond_10
    invoke-direct {p0, v0, p2}, Lcom/android/providers/calendar/CalendarAlarmManager;->scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/calendar/CalendarProvider2;)V

    .line 205
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    .line 207
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 209
    return-void

    .line 207
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public scheduleAlarm(J)V
    .registers 5
    .parameter "alarmTime"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {v0, v1, p1, p2}, Landroid/provider/CalendarContract$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 497
    return-void
.end method

.method scheduleNextAlarm(Z)V
    .registers 10
    .parameter "removeAlarms"

    .prologue
    const/4 v6, 0x0

    .line 140
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mNextAlarmCheckScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-nez v4, :cond_47

    .line 141
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 142
    const-string v4, "CalendarProvider2"

    const-string v5, "Scheduling check of next Alarm"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.providers.calendar.intent.CalendarProvider2"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "removeAlarms"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x2000

    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 148
    .local v1, pending:Landroid/app/PendingIntent;
    if-eqz v1, :cond_33

    .line 150
    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 152
    :cond_33
    iget-object v4, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x1000

    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long v2, v4, v6

    .line 157
    .local v2, triggerAtTime:J
    const/4 v4, 0x2

    invoke-virtual {p0, v4, v2, v3, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 159
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pending:Landroid/app/PendingIntent;
    .end local v2           #triggerAtTime:J
    :cond_47
    return-void
.end method

.method scheduleNextAlarmCheck(J)V
    .registers 9
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.providers.calendar.SCHEDULE_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/providers/calendar/CalendarReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0x2000

    invoke-static {v1, v5, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_1c

    .line 218
    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarAlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 220
    :cond_1c
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, v5, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 223
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 224
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 225
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 226
    const-string v2, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduleNextAlarmCheck at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_57
    invoke-virtual {p0, v5, p1, p2, v0}, Lcom/android/providers/calendar/CalendarAlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 231
    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .registers 6
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "operation"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarAlarmManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 489
    return-void
.end method
