.class public Lcom/google/android/apps/plus/content/EsNotificationData;
.super Ljava/lang/Object;
.source "EsNotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/content/EsNotificationData$NotificationQuery;,
        Lcom/google/android/apps/plus/content/EsNotificationData$NotificationTimestampsQuery;,
        Lcom/google/android/apps/plus/content/EsNotificationData$NotificationIdsQuery;,
        Lcom/google/android/apps/plus/content/EsNotificationData$IdAndTimestampQuery;
    }
.end annotation


# static fields
.field private static final mSyncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsNotificationData;->mSyncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "db"
    .parameter "account"

    .prologue
    .line 640
    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/content/EsNotificationData;->deleteOldNotifications(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 641
    return-void
.end method

.method public static deactivateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 650
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidNotification;->cancel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 651
    return-void
.end method

.method private static deleteOldNotifications(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 21
    .parameter "db"
    .parameter "keepCount"

    .prologue
    .line 590
    const-string v2, "notifications"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsNotificationData;->getRowsCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v11

    .line 591
    .local v11, count:J
    const-string v2, "EsNotificationData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 592
    const-string v2, "EsNotificationData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteOldNotifications, keep count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", have: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_37
    sub-long v2, v11, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_40

    .line 630
    :cond_3f
    :goto_3f
    return-void

    .line 600
    :cond_40
    const-string v3, "notifications"

    sget-object v4, Lcom/google/android/apps/plus/content/EsNotificationData$NotificationIdsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp ASC"

    sub-long v16, v11, p1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 604
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_3f

    .line 609
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v15, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 611
    .local v15, sb:Ljava/lang/StringBuffer;
    :try_start_5f
    const-string v2, "notif_id"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    const/4 v14, 0x1

    .line 613
    .local v14, first:Z
    :goto_6b
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 614
    if-eqz v14, :cond_8c

    .line 615
    const/4 v14, 0x0

    .line 619
    :goto_74
    const/16 v2, 0x27

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 620
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    const/16 v2, 0x27

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_86
    .catchall {:try_start_5f .. :try_end_86} :catchall_87

    goto :goto_6b

    .line 626
    .end local v14           #first:Z
    :catchall_87
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    .line 617
    .restart local v14       #first:Z
    :cond_8c
    const/16 v2, 0x2c

    :try_start_8e
    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_74

    .line 624
    :cond_92
    const/16 v2, 0x29

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_97
    .catchall {:try_start_8e .. :try_end_97} :catchall_87

    .line 626
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 629
    const-string v2, "notifications"

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3f
.end method

.method public static getLatestNotificationTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)D
    .registers 14
    .parameter "context"
    .parameter "account"

    .prologue
    const-wide/high16 v10, -0x4010

    const/4 v3, 0x0

    .line 421
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 424
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notifications"

    sget-object v2, Lcom/google/android/apps/plus/content/EsNotificationData$NotificationTimestampsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v7, "timestamp DESC"

    const-string v8, "1"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 428
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_1e

    move-wide v1, v10

    .line 440
    :goto_1d
    return-wide v1

    .line 433
    :cond_1e
    :try_start_1e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 434
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2d

    move-result-wide v1

    .line 437
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1d

    :catchall_2d
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_32
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-wide v1, v10

    .line 440
    goto :goto_1d
.end method

.method public static getNotificationsNotSeen(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/database/Cursor;
    .registers 12
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v9, 0x4

    const/4 v4, 0x0

    .line 554
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 557
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notifications"

    sget-object v2, Lcom/google/android/apps/plus/content/EsNotificationData$NotificationQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "seen=0 AND read=0 AND enabled=1"

    const-string v7, "timestamp DESC"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 561
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_96

    .line 562
    const-string v1, "EsNotificationData"

    invoke-static {v1, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 563
    :goto_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 564
    const-string v1, "EsNotificationData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNotificationsNotSeen: unseen notification id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", snippet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", seen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 576
    :cond_92
    const/4 v1, -0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 580
    :cond_96
    return-object v8
.end method

.method public static getOlderUnreadNotificationTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)D
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "notificationId"

    .prologue
    .line 456
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 459
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notifications"

    sget-object v2, Lcom/google/android/apps/plus/content/EsNotificationData$NotificationTimestampsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "notif_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 462
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_20

    .line 463
    const-wide/high16 v10, -0x4010

    .line 511
    :cond_1f
    :goto_1f
    return-wide v10

    .line 466
    :cond_20
    const-wide/high16 v10, -0x4010

    .line 468
    .local v10, timestamp:D
    :try_start_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 469
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    .line 470
    const-string v1, "EsNotificationData"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 471
    const-string v1, "EsNotificationData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOlderUnreadNotificationTimestamp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_22 .. :try_end_58} :catchall_64

    .line 476
    :cond_58
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 479
    const-wide/16 v1, 0x0

    cmpg-double v1, v10, v1

    if-gez v1, :cond_69

    .line 480
    const-wide/high16 v10, -0x4010

    goto :goto_1f

    .line 476
    :catchall_64
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 484
    :cond_69
    const-string v1, "notifications"

    sget-object v2, Lcom/google/android/apps/plus/content/EsNotificationData$NotificationTimestampsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "read=0 AND timestamp< ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 488
    .local v9, cursor1:Landroid/database/Cursor;
    if-nez v9, :cond_85

    .line 489
    const-wide/high16 v10, -0x4010

    goto :goto_1f

    .line 493
    :cond_85
    :try_start_85
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 495
    const-string v1, "EsNotificationData"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 496
    const-string v1, "EsNotificationData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOlderUnreadNotificationTimestamp found older unread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", example timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_85 .. :try_end_bf} :catchall_c6

    .line 500
    :cond_bf
    const-wide/high16 v10, -0x4010

    .line 503
    .end local v10           #timestamp:D
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1f

    .restart local v10       #timestamp:D
    :catchall_c6
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_cb
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 506
    const-string v1, "EsNotificationData"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 507
    const-string v1, "EsNotificationData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOlderUnreadNotificationTimestamp no unread notifications older than: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f
.end method

.method public static getOldestUnreadNotificationTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)D
    .registers 14
    .parameter "context"
    .parameter "account"

    .prologue
    const-wide/high16 v10, -0x4010

    const/4 v4, 0x0

    .line 523
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 526
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notifications"

    sget-object v2, Lcom/google/android/apps/plus/content/EsNotificationData$NotificationTimestampsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "read=0"

    const-string v7, "timestamp ASC"

    const-string v8, "1"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 530
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_1f

    move-wide v1, v10

    .line 542
    :goto_1e
    return-wide v1

    .line 535
    :cond_1f
    :try_start_1f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 536
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2e

    move-result-wide v1

    .line 539
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1e

    :catchall_2e
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_33
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-wide v1, v10

    .line 542
    goto :goto_1e
.end method

.method private static getRowsCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 15
    .parameter "db"
    .parameter "table"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 665
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 667
    .local v8, cc:Landroid/database/Cursor;
    if-nez v8, :cond_18

    .line 668
    const-wide/16 v9, 0x0

    .line 682
    :goto_17
    return-wide v9

    .line 673
    :cond_18
    :try_start_18
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 674
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_2a

    move-result-wide v9

    .line 679
    .local v9, count:J
    :goto_23
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_17

    .line 676
    .end local v9           #count:J
    :cond_27
    const-wide/16 v9, 0x0

    .restart local v9       #count:J
    goto :goto_23

    .line 679
    .end local v9           #count:J
    :catchall_2a
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static insertNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;D)V
    .registers 28
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "earliestNotificationTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;",
            ">;D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    .local p2, notifications:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    .line 123
    .local v15, notificationsCount:I
    if-nez v15, :cond_1d

    .line 124
    const-wide/16 v3, 0x0

    cmpg-double v3, p3, v3

    if-gtz v3, :cond_1c

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 237
    :cond_1c
    :goto_1c
    return-void

    .line 134
    :cond_1d
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 138
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_25
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 140
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v21, timestamps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string v3, "notifications"

    sget-object v4, Lcom/google/android/apps/plus/content/EsNotificationData$IdAndTimestampQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_59

    move-result-object v11

    .line 145
    .local v11, cursor:Landroid/database/Cursor;
    :goto_3a
    :try_start_3a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 146
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_3a .. :try_end_53} :catchall_54

    goto :goto_3a

    .line 151
    :catchall_54
    move-exception v3

    :try_start_55
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    .line 235
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v21           #timestamps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :catchall_59
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 151
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v21       #timestamps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_5e
    :try_start_5e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 155
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v22, values:Landroid/content/ContentValues;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_6a
    :goto_6a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    .line 157
    .local v14, notif:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getId()Ljava/lang/String;

    move-result-object v13

    .line 158
    .local v13, id:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getTimestamp()D

    move-result-wide v19

    .line 160
    .local v19, timestamp:D
    const-string v3, "EsNotificationData"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 161
    const-string v4, "EsNotificationData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", snippet: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getActivitySnippet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", message: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", timestamp: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", read: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getRead()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", has push enabled: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasPushEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasPushEnabled()Z

    move-result v3

    if-eqz v3, :cond_14d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", push enabled: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getPushEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_107
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_112
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    .line 176
    .local v16, oldTimestamp:Ljava/lang/Double;
    if-eqz v16, :cond_150

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v3, v3, v19

    if-nez v3, :cond_150

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getRead()Z

    move-result v3

    if-nez v3, :cond_150

    .line 177
    const-string v3, "EsNotificationData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 178
    const-string v3, "EsNotificationData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore notification with same timestamp and not read. Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    .line 161
    .end local v16           #oldTimestamp:Ljava/lang/Double;
    :cond_14d
    const-string v3, ""

    goto :goto_107

    .line 184
    .restart local v16       #oldTimestamp:Ljava/lang/Double;
    :cond_150
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 186
    const-string v3, "notif_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v3, "type"

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v3, "snippet"

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getActivitySnippet()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v3, "message"

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v3, "timestamp"

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 191
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasPushEnabled()Z

    move-result v3

    if-eqz v3, :cond_236

    .line 192
    const-string v3, "enabled"

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getPushEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 198
    :goto_19f
    const-string v3, "read"

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getRead()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 199
    const-string v3, "seen"

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getRead()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 201
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasCircleData()Z

    move-result v3

    if-eqz v3, :cond_1d2

    .line 202
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getCircleData()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v10

    .line 203
    .local v10, circleData:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    const-string v3, "circle_data"

    invoke-static {v10}, Lcom/google/android/apps/plus/content/DbCircleActionData;->serialize(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)[B

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 207
    .end local v10           #circleData:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    :cond_1d2
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasPhotoData()Z

    move-result v3

    if-eqz v3, :cond_215

    .line 208
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v17

    .line 209
    .local v17, photoActionData:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    const-string v3, "pd_person_id"

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPersonId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    const-string v3, "pd_album_id"

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    const-string v3, "pd_photo_id"

    invoke-virtual/range {v17 .. v17}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    .end local v17           #photoActionData:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    :cond_215
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasStreamData()Z

    move-result v3

    if-eqz v3, :cond_22a

    .line 218
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getStreamData()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v18

    .line 219
    .local v18, streamActionData:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    const-string v3, "activity_id"

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getActivityId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v18           #streamActionData:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    :cond_22a
    const-string v3, "notifications"

    const-string v4, "notif_id"

    const/4 v5, 0x5

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_6a

    .line 196
    :cond_236
    const-string v4, "enabled"

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getRead()Z

    move-result v3

    if-nez v3, :cond_24a

    const/4 v3, 0x1

    :goto_23f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_19f

    :cond_24a
    const/4 v3, 0x0

    goto :goto_23f

    .line 228
    .end local v13           #id:Ljava/lang/String;
    .end local v14           #notif:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .end local v16           #oldTimestamp:Ljava/lang/Double;
    .end local v19           #timestamp:D
    :cond_24c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_25f
    .catchall {:try_start_5e .. :try_end_25f} :catchall_59

    .line 235
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1c
.end method

.method public static markAllNotificationsAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 372
    const-string v2, "EsNotificationData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 373
    const-string v2, "EsNotificationData"

    const-string v3, "markAllNotificationsAsRead"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_12
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 379
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 380
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v2, "seen"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    const-string v2, "notifications"

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 387
    return-void
.end method

.method public static markAllNotificationsAsSeen(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 396
    const-string v2, "EsNotificationData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 397
    const-string v2, "EsNotificationData"

    const-string v3, "markAllNotificationsAsSeen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_12
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 403
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 404
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "seen"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    const-string v2, "notifications"

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 410
    return-void
.end method

.method public static markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "notificationId"

    .prologue
    const/4 v5, 0x1

    .line 346
    const-string v2, "EsNotificationData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 347
    const-string v2, "EsNotificationData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "markNotificationAsRead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_22
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 353
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 354
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string v2, "seen"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v2, "notifications"

    const-string v3, "notif_id=?"

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 362
    return-void
.end method

.method public static syncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 21
    .parameter "context"
    .parameter "account"
    .parameter "syncState"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    sget-object v16, Lcom/google/android/apps/plus/content/EsNotificationData;->mSyncLock:Ljava/lang/Object;

    monitor-enter v16

    .line 250
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 251
    monitor-exit v16

    .line 335
    :goto_a
    return-void

    .line 254
    :cond_b
    const-string v3, "EsNotificationData"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 255
    const-string v3, "EsNotificationData"

    const-string v4, "syncNotifications starting sync stream"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1b
    const-string v3, "Notifications"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 261
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsNotificationData;->getOldestUnreadNotificationTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)D

    move-result-wide v14

    .line 262
    .local v14, timestamp:D
    const-wide/16 v3, 0x0

    cmpg-double v3, v14, v3

    if-gez v3, :cond_ef

    .line 264
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsNotificationData;->getLatestNotificationTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)D

    move-result-wide v14

    .line 265
    const-string v3, "EsNotificationData"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 266
    const-string v3, "EsNotificationData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncNotifications latest notification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_51
    const-wide/16 v3, 0x0

    cmpl-double v3, v14, v3

    if-lez v3, :cond_5a

    .line 270
    const-wide/high16 v3, 0x3ff0

    add-double/2addr v14, v3

    .line 282
    :cond_5a
    :goto_5a
    const/4 v9, 0x0

    .line 283
    .local v9, continuationToken:Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v12, notifications:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;>;"
    const/4 v10, 0x0

    .line 286
    .local v10, error:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_62
    const/4 v3, 0x3

    if-ge v11, v3, :cond_d4

    .line 287
    const-string v3, "EsNotificationData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 288
    const-string v3, "EsNotificationData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncNotifications continuation token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", chunk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_90
    new-instance v2, Lcom/google/android/apps/plus/api/GetNotificationsOperation;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 294
    .local v2, gno:Lcom/google/android/apps/plus/api/GetNotificationsOperation;
    if-nez v11, :cond_112

    move-wide v3, v14

    :goto_a2
    invoke-virtual {v2, v3, v4, v9}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->getNotifications(DLjava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->getHttpTransactionMetrics()Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->start(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 296
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->hasError()Z

    move-result v3

    if-eqz v3, :cond_115

    .line 298
    const-string v3, "EsNotificationData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 299
    const-string v3, "EsNotificationData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncNotifications error in chunk: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_d3
    const/4 v10, 0x1

    .line 326
    .end local v2           #gno:Lcom/google/android/apps/plus/api/GetNotificationsOperation;
    :cond_d4
    if-nez v10, :cond_e0

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v12, v14, v15}, Lcom/google/android/apps/plus/content/EsNotificationData;->insertNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;D)V

    .line 330
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/service/AndroidNotification;->update(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 333
    :cond_e0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    .line 334
    monitor-exit v16

    goto/16 :goto_a

    .end local v9           #continuationToken:Ljava/lang/String;
    .end local v10           #error:Z
    .end local v11           #i:I
    .end local v12           #notifications:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;>;"
    .end local v14           #timestamp:D
    :catchall_ec
    move-exception v3

    monitor-exit v16
    :try_end_ee
    .catchall {:try_start_3 .. :try_end_ee} :catchall_ec

    throw v3

    .line 275
    .restart local v14       #timestamp:D
    :cond_ef
    :try_start_ef
    const-string v3, "EsNotificationData"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 276
    const-string v3, "EsNotificationData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncNotifications oldest unread time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 294
    .restart local v2       #gno:Lcom/google/android/apps/plus/api/GetNotificationsOperation;
    .restart local v9       #continuationToken:Ljava/lang/String;
    .restart local v10       #error:Z
    .restart local v11       #i:I
    .restart local v12       #notifications:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;>;"
    :cond_112
    const-wide/16 v3, 0x0

    goto :goto_a2

    .line 305
    :cond_115
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->getNotifications()Ljava/util/List;

    move-result-object v13

    .line 306
    .local v13, partialNotifications:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;>;"
    if-eqz v13, :cond_d4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_d4

    .line 313
    const-string v3, "EsNotificationData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_146

    .line 314
    const-string v3, "EsNotificationData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncNotifications retrieved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_146
    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 319
    invoke-virtual {v2}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->getContinuationToken()Ljava/lang/String;
    :try_end_14c
    .catchall {:try_start_ef .. :try_end_14c} :catchall_ec

    move-result-object v9

    .line 320
    if-eqz v9, :cond_d4

    .line 286
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_62
.end method
