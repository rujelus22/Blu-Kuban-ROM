.class public Lcom/android/providers/calendar/CalendarInstancesHelper;
.super Ljava/lang/Object;
.source "CalendarInstancesHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;,
        Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;
    }
.end annotation


# static fields
.field private static EXPAND_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

.field private mMetaData:Lcom/android/providers/calendar/MetaData;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 113
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "originalInstanceTime"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->EXPAND_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/calendar/CalendarDatabaseHelper;Lcom/android/providers/calendar/MetaData;)V
    .registers 5
    .parameter "calendarDbHelper"
    .parameter "metaData"

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 149
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 150
    iput-object p2, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mMetaData:Lcom/android/providers/calendar/MetaData;

    .line 151
    new-instance v0, Lcom/android/providers/calendar/CalendarCache;

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarCache;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    .line 152
    return-void
.end method

.method static computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V
    .registers 12
    .parameter "begin"
    .parameter "end"
    .parameter "local"
    .parameter "values"

    .prologue
    .line 931
    invoke-virtual {p4, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 935
    iget-wide v4, p4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v4, v5}, Lcom/android/providers/calendar/MetaData;->getJulianDay(JJ)I

    move-result v2

    .line 937
    .local v2, startDay:I
    iget v4, p4, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p4, Landroid/text/format/Time;->minute:I

    add-int v3, v4, v5

    .line 939
    .local v3, startMinute:I
    invoke-virtual {p4, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 943
    iget-wide v4, p4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v4, v5}, Lcom/android/providers/calendar/MetaData;->getJulianDay(JJ)I

    move-result v0

    .line 945
    .local v0, endDay:I
    iget v4, p4, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p4, Landroid/text/format/Time;->minute:I

    add-int v1, v4, v5

    .line 951
    .local v1, endMinute:I
    if-nez v1, :cond_2a

    if-le v0, v2, :cond_2a

    .line 952
    const/16 v1, 0x5a0

    .line 953
    add-int/lit8 v0, v0, -0x1

    .line 956
    :cond_2a
    const-string v4, "startDay"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 957
    const-string v4, "endDay"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    const-string v4, "startMinute"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 959
    const-string v4, "endMinute"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 960
    return-void
.end method

.method private getEntries(JJ)Landroid/database/Cursor;
    .registers 16
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 603
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 604
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "view_events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 605
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 607
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 608
    .local v8, beginString:Ljava/lang/String;
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 626
    .local v10, endString:Ljava/lang/String;
    const-string v1, "((dtstart <= ? AND (lastDate IS NULL OR lastDate >= ?)) OR (originalInstanceTime IS NOT NULL AND originalInstanceTime <= ? AND originalInstanceTime >= ?)) AND (sync_events != ?) AND (lastSynced = ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 627
    const/4 v1, 0x6

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v4, v1

    const/4 v1, 0x1

    aput-object v8, v4, v1

    const/4 v1, 0x2

    aput-object v10, v4, v1

    const/4 v1, 0x3

    const-wide/32 v2, 0x240c8400

    sub-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x4

    const-string v2, "0"

    aput-object v2, v4, v1

    const/4 v1, 0x5

    const-string v2, "0"

    aput-object v2, v4, v1

    .line 635
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/calendar/CalendarInstancesHelper;->EXPAND_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 637
    .local v9, c:Landroid/database/Cursor;
    const-string v1, "CalInstances"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 638
    const-string v1, "CalInstances"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance expansion:  got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_75
    return-object v9
.end method

.method private static getEventValue(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "db"
    .parameter "rowId"
    .parameter "columnName"

    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Events"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, where:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRelevantRecurrenceEntries(Ljava/lang/String;J)Landroid/database/Cursor;
    .registers 13
    .parameter "recurrenceSyncId"
    .parameter "rowId"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 875
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 877
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "view_events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 878
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 880
    if-nez p1, :cond_52

    .line 881
    const-string v8, "_id=?"

    .line 882
    .local v8, where:Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 883
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 897
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_22
    const-string v1, "CalInstances"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 898
    const-string v1, "CalInstances"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving events to expand: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_46
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/calendar/CalendarInstancesHelper;->EXPAND_COLUMNS:[Ljava/lang/String;

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 888
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v8           #where:Ljava/lang/String;
    :cond_52
    const-string v8, "(_sync_id=? OR original_sync_id=?) AND lastSynced = ?"

    .line 890
    .restart local v8       #where:Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 891
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, v2

    aput-object p1, v4, v5

    const-string v1, "0"

    aput-object v1, v4, v6

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_22
.end method

.method static getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;
    .registers 5
    .parameter "syncId"
    .parameter "calendarId"

    .prologue
    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V
    .registers 22
    .parameter "values"
    .parameter "rowId"
    .parameter "db"

    .prologue
    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v3}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v11

    .line 787
    .local v11, fields:Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v8

    .line 790
    .local v8, instancesTimezone:Ljava/lang/String;
    const-string v3, "original_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 791
    .local v13, originalSyncId:Ljava/lang/String;
    if-nez v13, :cond_24

    .line 792
    const-string v3, "original_sync_id"

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getEventValue(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 796
    :cond_24
    if-eqz v13, :cond_6c

    .line 798
    move-object v15, v13

    .line 812
    .local v15, recurrenceSyncId:Ljava/lang/String;
    :cond_27
    :goto_27
    if-nez v15, :cond_86

    .line 816
    const-string v3, "original_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 817
    .local v12, originalId:Ljava/lang/String;
    if-nez v12, :cond_3d

    .line 819
    const-string v3, "original_id"

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getEventValue(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 822
    :cond_3d
    if-eqz v12, :cond_81

    .line 824
    move-object v14, v12

    .line 832
    .local v14, recurrenceId:Ljava/lang/String;
    :goto_40
    const-string v16, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id=Instances.event_id) WHERE Events._id=? OR Events.original_id=?)"

    .line 833
    .local v16, where:Ljava/lang/String;
    const-string v3, "Instances"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v14, v4, v5

    const/4 v5, 0x1

    aput-object v14, v4, v5

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 851
    .end local v12           #originalId:Ljava/lang/String;
    .end local v14           #recurrenceId:Ljava/lang/String;
    .local v10, delCount:I
    :goto_55
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v15, v1, v2}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getRelevantRecurrenceEntries(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v9

    .line 853
    .local v9, entries:Landroid/database/Cursor;
    :try_start_5d
    iget-wide v4, v11, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iget-wide v6, v11, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/calendar/CalendarInstancesHelper;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_9c

    .line 856
    if-eqz v9, :cond_6b

    .line 857
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 860
    :cond_6b
    return-void

    .line 803
    .end local v9           #entries:Landroid/database/Cursor;
    .end local v10           #delCount:I
    .end local v15           #recurrenceSyncId:Ljava/lang/String;
    .end local v16           #where:Ljava/lang/String;
    :cond_6c
    const-string v3, "_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 804
    .restart local v15       #recurrenceSyncId:Ljava/lang/String;
    if-nez v15, :cond_27

    .line 806
    const-string v3, "_sync_id"

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getEventValue(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_27

    .line 827
    .restart local v12       #originalId:Ljava/lang/String;
    :cond_81
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #recurrenceId:Ljava/lang/String;
    goto :goto_40

    .line 840
    .end local v12           #originalId:Ljava/lang/String;
    .end local v14           #recurrenceId:Ljava/lang/String;
    :cond_86
    const-string v16, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id=Instances.event_id) WHERE Events._sync_id=? OR Events.original_sync_id=?)"

    .line 841
    .restart local v16       #where:Ljava/lang/String;
    const-string v3, "Instances"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    const/4 v5, 0x1

    aput-object v15, v4, v5

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .restart local v10       #delCount:I
    goto :goto_55

    .line 856
    .restart local v9       #entries:Landroid/database/Cursor;
    :catchall_9c
    move-exception v3

    if-eqz v9, :cond_a2

    .line 857
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a2
    throw v3
.end method


# virtual methods
.method protected expandInstanceRangeLocked(JJLjava/lang/String;)V
    .registers 13
    .parameter "begin"
    .parameter "end"
    .parameter "localTimezone"

    .prologue
    .line 578
    const-string v0, "CalInstances"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 579
    const-string v0, "CalInstances"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expanding events between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_2b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getEntries(JJ)Landroid/database/Cursor;

    move-result-object v6

    .local v6, entries:Landroid/database/Cursor;
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 584
    :try_start_33
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarInstancesHelper;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_3c

    .line 586
    if-eqz v6, :cond_3b

    .line 587
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 593
    :cond_3b
    return-void

    .line 586
    :catchall_3c
    move-exception v0

    if-eqz v6, :cond_42

    .line 587
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_42
    throw v0
.end method

.method protected performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    .registers 85
    .parameter "begin"
    .parameter "end"
    .parameter "localTimezone"
    .parameter "entries"

    .prologue
    .line 180
    new-instance v4, Lcom/android/calendarcommon/RecurrenceProcessor;

    invoke-direct {v4}, Lcom/android/calendarcommon/RecurrenceProcessor;-><init>()V

    .line 184
    .local v4, rp:Lcom/android/calendarcommon/RecurrenceProcessor;
    const-string v19, "ORIGINAL_EVENT_AND_CALENDAR"

    .line 186
    .local v19, ORIGINAL_EVENT_AND_CALENDAR:Ljava/lang/String;
    const-string v11, "eventStatus"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v71

    .line 187
    .local v71, statusColumn:I
    const-string v11, "dtstart"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 188
    .local v32, dtstartColumn:I
    const-string v11, "dtend"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 189
    .local v31, dtendColumn:I
    const-string v11, "eventTimezone"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 190
    .local v41, eventTimezoneColumn:I
    const-string v11, "duration"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 191
    .local v34, durationColumn:I
    const-string v11, "rrule"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v68

    .line 192
    .local v68, rruleColumn:I
    const-string v11, "rdate"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v66

    .line 193
    .local v66, rdateColumn:I
    const-string v11, "exrule"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 194
    .local v44, exruleColumn:I
    const-string v11, "exdate"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 195
    .local v42, exdateColumn:I
    const-string v11, "allDay"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 196
    .local v21, allDayColumn:I
    const-string v11, "_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v49

    .line 197
    .local v49, idColumn:I
    const-string v11, "_sync_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v73

    .line 198
    .local v73, syncIdColumn:I
    const-string v11, "original_sync_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v57

    .line 199
    .local v57, originalEventColumn:I
    const-string v11, "originalInstanceTime"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v59

    .line 200
    .local v59, originalInstanceTimeColumn:I
    const-string v11, "calendar_id"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 201
    .local v27, calendarIdColumn:I
    const-string v11, "deleted"

    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 202
    .local v30, deletedColumn:I
    const/16 v46, -0x1

    .line 208
    .local v46, forLunarCalendarColumn:I
    new-instance v51, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;

    invoke-direct/range {v51 .. v51}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;-><init>()V

    .line 211
    .local v51, instancesMap:Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;
    new-instance v33, Lcom/android/providers/calendar/Duration;

    invoke-direct/range {v33 .. v33}, Lcom/android/providers/calendar/Duration;-><init>()V

    .line 212
    .local v33, duration:Lcom/android/providers/calendar/Duration;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 214
    .local v5, eventTime:Landroid/text/format/Time;
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v50

    .line 229
    .local v50, inLunar:Ljava/lang/Boolean;
    :cond_9d
    :goto_9d
    invoke-interface/range {p6 .. p6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_426

    .line 231
    const/4 v12, 0x0

    .line 233
    .local v12, initialValues:Landroid/content/ContentValues;
    :try_start_a4
    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_191

    const/16 v20, 0x1

    .line 235
    .local v20, allDay:Z
    :goto_b0
    move-object/from16 v0, p6

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 236
    .local v40, eventTimezone:Ljava/lang/String;
    if-nez v20, :cond_c0

    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c2

    .line 240
    :cond_c0
    const-string v40, "UTC"

    .line 243
    :cond_c2
    move-object/from16 v0, p6

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 244
    .local v13, dtstartMillis:J
    move-object/from16 v0, p6

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    .line 246
    .local v39, eventId:Ljava/lang/Long;
    move-object/from16 v0, p6

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_dd
    .catch Lcom/android/calendarcommon/DateException; {:try_start_a4 .. :try_end_dd} :catch_17c
    .catch Landroid/util/TimeFormatException; {:try_start_a4 .. :try_end_dd} :catch_21b

    move-result-object v37

    .line 247
    .local v37, durationStr:Ljava/lang/String;
    if-eqz v37, :cond_e7

    .line 249
    :try_start_e0
    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_e7
    .catch Lcom/android/calendarcommon/DateException; {:try_start_e0 .. :try_end_e7} :catch_195
    .catch Landroid/util/TimeFormatException; {:try_start_e0 .. :try_end_e7} :catch_21b

    .line 266
    :cond_e7
    :goto_e7
    :try_start_e7
    move-object/from16 v0, p6

    move/from16 v1, v73

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v72

    .line 267
    .local v72, syncId:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v57

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v56

    .line 269
    .local v56, originalEvent:Ljava/lang/String;
    const-wide/16 v60, -0x1

    .line 270
    .local v60, originalInstanceTimeMillis:J
    move-object/from16 v0, p6

    move/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_10b

    .line 271
    move-object/from16 v0, p6

    move/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    .line 273
    :cond_10b
    move-object/from16 v0, p6

    move/from16 v1, v71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v70

    .line 274
    .local v70, status:I
    move-object/from16 v0, p6

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_1ef

    const/16 v29, 0x1

    .line 276
    .local v29, deleted:Z
    :goto_11f
    move-object/from16 v0, p6

    move/from16 v1, v68

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v69

    .line 277
    .local v69, rruleStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v67

    .line 278
    .local v67, rdateStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 279
    .local v45, exruleStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 280
    .local v43, exdateStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 282
    .local v25, calendarId:J
    move-object/from16 v0, v72

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;
    :try_end_14e
    .catch Lcom/android/calendarcommon/DateException; {:try_start_e7 .. :try_end_14e} :catch_17c
    .catch Landroid/util/TimeFormatException; {:try_start_e7 .. :try_end_14e} :catch_21b

    move-result-object v74

    .line 284
    .local v74, syncIdKey:Ljava/lang/String;
    const/4 v6, 0x0

    .line 286
    .local v6, recur:Lcom/android/calendarcommon/RecurrenceSet;
    :try_start_150
    new-instance v6, Lcom/android/calendarcommon/RecurrenceSet;

    .end local v6           #recur:Lcom/android/calendarcommon/RecurrenceSet;
    move-object/from16 v0, v69

    move-object/from16 v1, v67

    move-object/from16 v2, v45

    move-object/from16 v3, v43

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/calendarcommon/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15d
    .catch Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException; {:try_start_150 .. :try_end_15d} :catch_1f3
    .catch Lcom/android/calendarcommon/DateException; {:try_start_150 .. :try_end_15d} :catch_17c
    .catch Landroid/util/TimeFormatException; {:try_start_150 .. :try_end_15d} :catch_21b

    .line 295
    .restart local v6       #recur:Lcom/android/calendarcommon/RecurrenceSet;
    if-eqz v6, :cond_345

    :try_start_15f
    invoke-virtual {v6}, Lcom/android/calendarcommon/RecurrenceSet;->hasRecurrence()Z

    move-result v11

    if-eqz v11, :cond_345

    .line 298
    const/4 v11, 0x2

    move/from16 v0, v70

    if-ne v0, v11, :cond_230

    .line 300
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 301
    const-string v11, "CalendarProvider2"

    const-string v15, "Found canceled recurring event in Events table.  Ignoring."

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17a
    .catch Lcom/android/calendarcommon/DateException; {:try_start_15f .. :try_end_17a} :catch_17c
    .catch Landroid/util/TimeFormatException; {:try_start_15f .. :try_end_17a} :catch_21b

    goto/16 :goto_9d

    .line 458
    .end local v6           #recur:Lcom/android/calendarcommon/RecurrenceSet;
    .end local v13           #dtstartMillis:J
    .end local v20           #allDay:Z
    .end local v25           #calendarId:J
    .end local v29           #deleted:Z
    .end local v37           #durationStr:Ljava/lang/String;
    .end local v39           #eventId:Ljava/lang/Long;
    .end local v40           #eventTimezone:Ljava/lang/String;
    .end local v43           #exdateStr:Ljava/lang/String;
    .end local v45           #exruleStr:Ljava/lang/String;
    .end local v56           #originalEvent:Ljava/lang/String;
    .end local v60           #originalInstanceTimeMillis:J
    .end local v67           #rdateStr:Ljava/lang/String;
    .end local v69           #rruleStr:Ljava/lang/String;
    .end local v70           #status:I
    .end local v72           #syncId:Ljava/lang/String;
    .end local v74           #syncIdKey:Ljava/lang/String;
    :catch_17c
    move-exception v38

    .line 459
    .local v38, e:Lcom/android/calendarcommon/DateException;
    :goto_17d
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 460
    const-string v11, "CalendarProvider2"

    const-string v15, "RecurrenceProcessor error "

    move-object/from16 v0, v38

    invoke-static {v11, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9d

    .line 233
    .end local v38           #e:Lcom/android/calendarcommon/DateException;
    :cond_191
    const/16 v20, 0x0

    goto/16 :goto_b0

    .line 251
    .restart local v13       #dtstartMillis:J
    .restart local v20       #allDay:Z
    .restart local v37       #durationStr:Ljava/lang/String;
    .restart local v39       #eventId:Ljava/lang/Long;
    .restart local v40       #eventTimezone:Ljava/lang/String;
    :catch_195
    move-exception v38

    .line 252
    .restart local v38       #e:Lcom/android/calendarcommon/DateException;
    :try_start_196
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1cd

    .line 253
    const-string v11, "CalendarProvider2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "error parsing duration for event "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v39

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v38

    invoke-static {v11, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    :cond_1cd
    const/4 v11, 0x1

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->sign:I

    .line 257
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 258
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->days:I

    .line 259
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->hours:I

    .line 260
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 261
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 262
    const-string v37, "+P0S"

    goto/16 :goto_e7

    .line 274
    .end local v38           #e:Lcom/android/calendarcommon/DateException;
    .restart local v56       #originalEvent:Ljava/lang/String;
    .restart local v60       #originalInstanceTimeMillis:J
    .restart local v70       #status:I
    .restart local v72       #syncId:Ljava/lang/String;
    :cond_1ef
    const/16 v29, 0x0

    goto/16 :goto_11f

    .line 287
    .restart local v25       #calendarId:J
    .restart local v29       #deleted:Z
    .restart local v43       #exdateStr:Ljava/lang/String;
    .restart local v45       #exruleStr:Ljava/lang/String;
    .restart local v67       #rdateStr:Ljava/lang/String;
    .restart local v69       #rruleStr:Ljava/lang/String;
    .restart local v74       #syncIdKey:Ljava/lang/String;
    :catch_1f3
    move-exception v38

    .line 288
    .local v38, e:Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 289
    const-string v11, "CalendarProvider2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not parse RRULE recurrence string: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v69

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v38

    invoke-static {v11, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_219
    .catch Lcom/android/calendarcommon/DateException; {:try_start_196 .. :try_end_219} :catch_17c
    .catch Landroid/util/TimeFormatException; {:try_start_196 .. :try_end_219} :catch_21b

    goto/16 :goto_9d

    .line 462
    .end local v13           #dtstartMillis:J
    .end local v20           #allDay:Z
    .end local v25           #calendarId:J
    .end local v29           #deleted:Z
    .end local v37           #durationStr:Ljava/lang/String;
    .end local v38           #e:Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
    .end local v39           #eventId:Ljava/lang/Long;
    .end local v40           #eventTimezone:Ljava/lang/String;
    .end local v43           #exdateStr:Ljava/lang/String;
    .end local v45           #exruleStr:Ljava/lang/String;
    .end local v56           #originalEvent:Ljava/lang/String;
    .end local v60           #originalInstanceTimeMillis:J
    .end local v67           #rdateStr:Ljava/lang/String;
    .end local v69           #rruleStr:Ljava/lang/String;
    .end local v70           #status:I
    .end local v72           #syncId:Ljava/lang/String;
    .end local v74           #syncIdKey:Ljava/lang/String;
    :catch_21b
    move-exception v38

    .line 463
    .local v38, e:Landroid/util/TimeFormatException;
    :goto_21c
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 464
    const-string v11, "CalendarProvider2"

    const-string v15, "RecurrenceProcessor error "

    move-object/from16 v0, v38

    invoke-static {v11, v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9d

    .line 306
    .end local v38           #e:Landroid/util/TimeFormatException;
    .restart local v6       #recur:Lcom/android/calendarcommon/RecurrenceSet;
    .restart local v13       #dtstartMillis:J
    .restart local v20       #allDay:Z
    .restart local v25       #calendarId:J
    .restart local v29       #deleted:Z
    .restart local v37       #durationStr:Ljava/lang/String;
    .restart local v39       #eventId:Ljava/lang/Long;
    .restart local v40       #eventTimezone:Ljava/lang/String;
    .restart local v43       #exdateStr:Ljava/lang/String;
    .restart local v45       #exruleStr:Ljava/lang/String;
    .restart local v56       #originalEvent:Ljava/lang/String;
    .restart local v60       #originalInstanceTimeMillis:J
    .restart local v67       #rdateStr:Ljava/lang/String;
    .restart local v69       #rruleStr:Ljava/lang/String;
    .restart local v70       #status:I
    .restart local v72       #syncId:Ljava/lang/String;
    .restart local v74       #syncIdKey:Ljava/lang/String;
    :cond_230
    if-eqz v29, :cond_244

    .line 307
    :try_start_232
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x3

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 308
    const-string v11, "CalendarProvider2"

    const-string v15, "Found deleted recurring event in Events table.  Ignoring."

    invoke-static {v11, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 315
    :cond_244
    move-object/from16 v0, v40

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 316
    invoke-virtual {v5, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 317
    move/from16 v0, v20

    iput-boolean v0, v5, Landroid/text/format/Time;->allDay:Z

    .line 319
    if-nez v37, :cond_283

    .line 321
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_261

    .line 322
    const-string v11, "CalendarProvider2"

    const-string v15, "Repeating event has no duration -- should not happen."

    invoke-static {v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_261
    if-eqz v20, :cond_2dd

    .line 327
    const/4 v11, 0x1

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->sign:I

    .line 328
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 329
    const/4 v11, 0x1

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->days:I

    .line 330
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->hours:I

    .line 331
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 332
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 333
    const-string v37, "+P1D"

    .line 358
    :cond_283
    :goto_283
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v50

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    .line 371
    invoke-virtual/range {v4 .. v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;JJ)[J

    move-result-object v28

    .line 376
    .local v28, dates:[J
    if-eqz v20, :cond_33b

    .line 377
    const-string v11, "UTC"

    iput-object v11, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 382
    :goto_296
    invoke-virtual/range {v33 .. v33}, Lcom/android/providers/calendar/Duration;->getMillis()J

    move-result-wide v35

    .line 383
    .local v35, durationMillis:J
    move-object/from16 v22, v28

    .local v22, arr$:[J
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v53, v0
    :try_end_2a1
    .catch Lcom/android/calendarcommon/DateException; {:try_start_232 .. :try_end_2a1} :catch_17c
    .catch Landroid/util/TimeFormatException; {:try_start_232 .. :try_end_2a1} :catch_21b

    .local v53, len$:I
    const/16 v47, 0x0

    .local v47, i$:I
    move-object/from16 v18, v12

    .end local v12           #initialValues:Landroid/content/ContentValues;
    .local v18, initialValues:Landroid/content/ContentValues;
    :goto_2a5
    move/from16 v0, v47

    move/from16 v1, v53

    if-ge v0, v1, :cond_341

    :try_start_2ab
    aget-wide v7, v22, v47

    .line 384
    .local v7, date:J
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_2b2
    .catch Lcom/android/calendarcommon/DateException; {:try_start_2ab .. :try_end_2b2} :catch_417
    .catch Landroid/util/TimeFormatException; {:try_start_2ab .. :try_end_2b2} :catch_421

    .line 385
    .end local v18           #initialValues:Landroid/content/ContentValues;
    .restart local v12       #initialValues:Landroid/content/ContentValues;
    :try_start_2b2
    const-string v11, "event_id"

    move-object/from16 v0, v39

    invoke-virtual {v12, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    const-string v11, "begin"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 388
    add-long v9, v7, v35

    .line 389
    .local v9, dtendMillis:J
    const-string v11, "end"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v11, v5

    .line 391
    invoke-static/range {v7 .. v12}, Lcom/android/providers/calendar/CalendarInstancesHelper;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 393
    move-object/from16 v0, v51

    move-object/from16 v1, v74

    invoke-virtual {v0, v1, v12}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 383
    add-int/lit8 v47, v47, 0x1

    move-object/from16 v18, v12

    .end local v12           #initialValues:Landroid/content/ContentValues;
    .restart local v18       #initialValues:Landroid/content/ContentValues;
    goto :goto_2a5

    .line 337
    .end local v7           #date:J
    .end local v9           #dtendMillis:J
    .end local v18           #initialValues:Landroid/content/ContentValues;
    .end local v22           #arr$:[J
    .end local v28           #dates:[J
    .end local v35           #durationMillis:J
    .end local v47           #i$:I
    .end local v53           #len$:I
    .restart local v12       #initialValues:Landroid/content/ContentValues;
    :cond_2dd
    const/4 v11, 0x1

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->sign:I

    .line 338
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 339
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->days:I

    .line 340
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->hours:I

    .line 341
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 342
    move-object/from16 v0, p6

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_332

    .line 343
    move-object/from16 v0, p6

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 344
    .restart local v9       #dtendMillis:J
    sub-long v15, v9, v13

    const-wide/16 v76, 0x3e8

    div-long v15, v15, v76

    long-to-int v11, v15

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 345
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+P"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v33

    iget v15, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "S"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 346
    goto/16 :goto_283

    .line 347
    .end local v9           #dtendMillis:J
    :cond_332
    const/4 v11, 0x0

    move-object/from16 v0, v33

    iput v11, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 348
    const-string v37, "+P0S"

    goto/16 :goto_283

    .line 379
    .restart local v28       #dates:[J
    :cond_33b
    move-object/from16 v0, p5

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto/16 :goto_296

    .end local v12           #initialValues:Landroid/content/ContentValues;
    .restart local v18       #initialValues:Landroid/content/ContentValues;
    .restart local v22       #arr$:[J
    .restart local v35       #durationMillis:J
    .restart local v47       #i$:I
    .restart local v53       #len$:I
    :cond_341
    move-object/from16 v12, v18

    .line 395
    .end local v18           #initialValues:Landroid/content/ContentValues;
    .restart local v12       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_9d

    .line 397
    .end local v22           #arr$:[J
    .end local v28           #dates:[J
    .end local v35           #durationMillis:J
    .end local v47           #i$:I
    .end local v53           #len$:I
    :cond_345
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V
    :try_end_34a
    .catch Lcom/android/calendarcommon/DateException; {:try_start_2b2 .. :try_end_34a} :catch_17c
    .catch Landroid/util/TimeFormatException; {:try_start_2b2 .. :try_end_34a} :catch_21b

    .line 403
    .end local v12           #initialValues:Landroid/content/ContentValues;
    .restart local v18       #initialValues:Landroid/content/ContentValues;
    if-eqz v56, :cond_377

    const-wide/16 v15, -0x1

    cmp-long v11, v60, v15

    if-eqz v11, :cond_377

    .line 407
    :try_start_352
    const-string v11, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v56

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/CalendarInstancesHelper;->getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v11, "originalInstanceTime"

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    const-string v11, "eventStatus"

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    :cond_377
    move-wide v9, v13

    .line 415
    .restart local v9       #dtendMillis:J
    if-nez v37, :cond_3eb

    .line 416
    move-object/from16 v0, p6

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_38c

    .line 417
    move-object/from16 v0, p6

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 428
    :cond_38c
    :goto_38c
    cmp-long v11, v9, p1

    if-ltz v11, :cond_394

    cmp-long v11, v13, p3

    if-lez v11, :cond_3a8

    .line 429
    :cond_394
    if-eqz v56, :cond_3f2

    const-wide/16 v15, -0x1

    cmp-long v11, v60, v15

    if-eqz v11, :cond_3f2

    .line 430
    const-string v11, "eventStatus"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    :cond_3a8
    const-string v11, "event_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v39

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 442
    const-string v11, "begin"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 443
    const-string v11, "end"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    const-string v11, "deleted"

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 448
    if-eqz v20, :cond_41c

    .line 449
    const-string v11, "UTC"

    iput-object v11, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :goto_3d8
    move-wide v15, v9

    move-object/from16 v17, v5

    .line 453
    invoke-static/range {v13 .. v18}, Lcom/android/providers/calendar/CalendarInstancesHelper;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 456
    move-object/from16 v0, v51

    move-object/from16 v1, v74

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    move-object/from16 v12, v18

    .end local v18           #initialValues:Landroid/content/ContentValues;
    .restart local v12       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_9d

    .line 420
    .end local v12           #initialValues:Landroid/content/ContentValues;
    .restart local v18       #initialValues:Landroid/content/ContentValues;
    :cond_3eb
    move-object/from16 v0, v33

    invoke-virtual {v0, v13, v14}, Lcom/android/providers/calendar/Duration;->addTo(J)J

    move-result-wide v9

    goto :goto_38c

    .line 432
    :cond_3f2
    const-string v11, "CalendarProvider2"

    const/4 v15, 0x6

    invoke-static {v11, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 433
    const-string v11, "CalendarProvider2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unexpected event outside window: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, v72

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 458
    .end local v9           #dtendMillis:J
    :catch_417
    move-exception v38

    move-object/from16 v12, v18

    .end local v18           #initialValues:Landroid/content/ContentValues;
    .restart local v12       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_17d

    .line 451
    .end local v12           #initialValues:Landroid/content/ContentValues;
    .restart local v9       #dtendMillis:J
    .restart local v18       #initialValues:Landroid/content/ContentValues;
    :cond_41c
    move-object/from16 v0, p5

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;
    :try_end_420
    .catch Lcom/android/calendarcommon/DateException; {:try_start_352 .. :try_end_420} :catch_417
    .catch Landroid/util/TimeFormatException; {:try_start_352 .. :try_end_420} :catch_421

    goto :goto_3d8

    .line 462
    .end local v9           #dtendMillis:J
    :catch_421
    move-exception v38

    move-object/from16 v12, v18

    .end local v18           #initialValues:Landroid/content/ContentValues;
    .restart local v12       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_21c

    .line 491
    .end local v6           #recur:Lcom/android/calendarcommon/RecurrenceSet;
    .end local v12           #initialValues:Landroid/content/ContentValues;
    .end local v13           #dtstartMillis:J
    .end local v20           #allDay:Z
    .end local v25           #calendarId:J
    .end local v29           #deleted:Z
    .end local v37           #durationStr:Ljava/lang/String;
    .end local v39           #eventId:Ljava/lang/Long;
    .end local v40           #eventTimezone:Ljava/lang/String;
    .end local v43           #exdateStr:Ljava/lang/String;
    .end local v45           #exruleStr:Ljava/lang/String;
    .end local v56           #originalEvent:Ljava/lang/String;
    .end local v60           #originalInstanceTimeMillis:J
    .end local v67           #rdateStr:Ljava/lang/String;
    .end local v69           #rruleStr:Ljava/lang/String;
    .end local v70           #status:I
    .end local v72           #syncId:Ljava/lang/String;
    .end local v74           #syncIdKey:Ljava/lang/String;
    :cond_426
    invoke-virtual/range {v51 .. v51}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->keySet()Ljava/util/Set;

    move-result-object v52

    .line 492
    .local v52, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v52 .. v52}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v47

    :cond_42e
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4aa

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Ljava/lang/String;

    .line 493
    .restart local v74       #syncIdKey:Ljava/lang/String;
    move-object/from16 v0, v51

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;

    .line 494
    .local v54, list:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    invoke-virtual/range {v54 .. v54}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .local v48, i$:Ljava/util/Iterator;
    :cond_448
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_42e

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Landroid/content/ContentValues;

    .line 498
    .local v75, values:Landroid/content/ContentValues;
    const-string v11, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_448

    .line 502
    const-string v11, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 503
    .local v58, originalEventPlusCalendar:Ljava/lang/String;
    const-string v11, "originalInstanceTime"

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v63

    .line 504
    .local v63, originalTime:J
    move-object/from16 v0, v51

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;

    .line 506
    .local v62, originalList:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    if-eqz v62, :cond_448

    .line 516
    invoke-virtual/range {v62 .. v62}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->size()I

    move-result v11

    add-int/lit8 v55, v11, -0x1

    .local v55, num:I
    :goto_484
    if-ltz v55, :cond_448

    .line 517
    move-object/from16 v0, v62

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->get(I)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Landroid/content/ContentValues;

    .line 518
    .local v65, originalValues:Landroid/content/ContentValues;
    const-string v11, "begin"

    move-object/from16 v0, v65

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 519
    .local v23, beginTime:J
    cmp-long v11, v23, v63

    if-nez v11, :cond_4a7

    .line 521
    move-object/from16 v0, v62

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->remove(I)Ljava/lang/Object;

    .line 516
    :cond_4a7
    add-int/lit8 v55, v55, -0x1

    goto :goto_484

    .line 543
    .end local v23           #beginTime:J
    .end local v48           #i$:Ljava/util/Iterator;
    .end local v54           #list:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    .end local v55           #num:I
    .end local v58           #originalEventPlusCalendar:Ljava/lang/String;
    .end local v62           #originalList:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    .end local v63           #originalTime:J
    .end local v65           #originalValues:Landroid/content/ContentValues;
    .end local v74           #syncIdKey:Ljava/lang/String;
    .end local v75           #values:Landroid/content/ContentValues;
    :cond_4aa
    invoke-interface/range {v52 .. v52}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v47

    :cond_4ae
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_526

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Ljava/lang/String;

    .line 544
    .restart local v74       #syncIdKey:Ljava/lang/String;
    move-object/from16 v0, v51

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;

    .line 545
    .restart local v54       #list:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    invoke-virtual/range {v54 .. v54}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .restart local v48       #i$:Ljava/util/Iterator;
    :cond_4c8
    :goto_4c8
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4ae

    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Landroid/content/ContentValues;

    .line 549
    .restart local v75       #values:Landroid/content/ContentValues;
    const-string v11, "eventStatus"

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v70

    .line 550
    .local v70, status:Ljava/lang/Integer;
    const-string v11, "deleted"

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_523

    const-string v11, "deleted"

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    .line 552
    .restart local v29       #deleted:Z
    :goto_4f2
    if-eqz v70, :cond_4fb

    invoke-virtual/range {v70 .. v70}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v15, 0x2

    if-eq v11, v15, :cond_4c8

    :cond_4fb
    if-nez v29, :cond_4c8

    .line 557
    const-string v11, "deleted"

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 560
    const-string v11, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 561
    const-string v11, "originalInstanceTime"

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 562
    const-string v11, "eventStatus"

    move-object/from16 v0, v75

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object/from16 v0, v75

    invoke-virtual {v11, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->instancesReplace(Landroid/content/ContentValues;)J

    goto :goto_4c8

    .line 550
    .end local v29           #deleted:Z
    :cond_523
    const/16 v29, 0x0

    goto :goto_4f2

    .line 567
    .end local v48           #i$:Ljava/util/Iterator;
    .end local v54           #list:Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    .end local v70           #status:Ljava/lang/Integer;
    .end local v74           #syncIdKey:Ljava/lang/String;
    .end local v75           #values:Landroid/content/ContentValues;
    :cond_526
    return-void
.end method

.method public updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V
    .registers 32
    .parameter "values"
    .parameter "rowId"
    .parameter "newEvent"
    .parameter "db"

    .prologue
    .line 663
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v5}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v16

    .line 664
    .local v16, fields:Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_13

    .line 756
    :cond_12
    :goto_12
    return-void

    .line 668
    :cond_13
    const-string v5, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    .line 669
    .local v15, dtstartMillis:Ljava/lang/Long;
    if-nez v15, :cond_38

    .line 670
    if-eqz p4, :cond_27

    .line 672
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "DTSTART missing."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 674
    :cond_27
    const-string v5, "CalInstances"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 675
    const-string v5, "CalInstances"

    const-string v6, "Missing DTSTART.  No need to update instance."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 680
    :cond_38
    if-nez p4, :cond_4d

    .line 686
    const-string v5, "Instances"

    const-string v6, "event_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v7, v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 691
    :cond_4d
    const-string v5, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 692
    .local v23, rrule:Ljava/lang/String;
    const-string v5, "rdate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 693
    .local v22, rdate:Ljava/lang/String;
    const-string v5, "original_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 694
    .local v19, originalId:Ljava/lang/String;
    const-string v5, "original_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 695
    .local v21, originalSyncId:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_dd

    .line 696
    const-string v5, "lastDate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    .line 697
    .local v18, lastDateMillis:Ljava/lang/Long;
    const-string v5, "originalInstanceTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    .line 701
    .local v20, originalInstanceTime:Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_d8

    if-eqz v18, :cond_a5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_d8

    :cond_a5
    const/16 v17, 0x1

    .line 706
    .local v17, insideWindow:Z
    :goto_a7
    if-eqz v20, :cond_db

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_db

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    const-wide/32 v24, 0x240c8400

    sub-long v7, v7, v24

    cmp-long v5, v5, v7

    if-ltz v5, :cond_db

    const/4 v11, 0x1

    .line 713
    .local v11, affectsWindow:Z
    :goto_c7
    if-nez v17, :cond_cb

    if-eqz v11, :cond_12

    .line 714
    :cond_cb
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarInstancesHelper;->updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_12

    .line 701
    .end local v11           #affectsWindow:Z
    .end local v17           #insideWindow:Z
    :cond_d8
    const/16 v17, 0x0

    goto :goto_a7

    .line 706
    .restart local v17       #insideWindow:Z
    :cond_db
    const/4 v11, 0x0

    goto :goto_c7

    .line 722
    .end local v17           #insideWindow:Z
    .end local v18           #lastDateMillis:Ljava/lang/Long;
    .end local v20           #originalInstanceTime:Ljava/lang/Long;
    :cond_dd
    const-string v5, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 723
    .local v14, dtendMillis:Ljava/lang/Long;
    if-nez v14, :cond_e8

    .line 724
    move-object v14, v15

    .line 732
    :cond_e8
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_12

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v16

    iget-wide v7, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_12

    .line 733
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 734
    .local v10, instanceValues:Landroid/content/ContentValues;
    const-string v5, "event_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 735
    const-string v5, "begin"

    invoke-virtual {v10, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 736
    const-string v5, "end"

    invoke-virtual {v10, v5, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 738
    const/4 v12, 0x0

    .line 739
    .local v12, allDay:Z
    const-string v5, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 740
    .local v13, allDayInteger:Ljava/lang/Integer;
    if-eqz v13, :cond_12a

    .line 741
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_149

    const/4 v12, 0x1

    .line 745
    :cond_12a
    :goto_12a
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 746
    .local v9, local:Landroid/text/format/Time;
    if-eqz v12, :cond_14b

    .line 747
    const-string v5, "UTC"

    iput-object v5, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 752
    :goto_135
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static/range {v5 .. v10}, Lcom/android/providers/calendar/CalendarInstancesHelper;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 754
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/calendar/CalendarInstancesHelper;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v5, v10}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->instancesInsert(Landroid/content/ContentValues;)J

    goto/16 :goto_12

    .line 741
    .end local v9           #local:Landroid/text/format/Time;
    :cond_149
    const/4 v12, 0x0

    goto :goto_12a

    .line 749
    .restart local v9       #local:Landroid/text/format/Time;
    :cond_14b
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    iput-object v5, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_135
.end method
