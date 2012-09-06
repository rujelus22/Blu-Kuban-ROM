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
    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsNotificationData;->mSyncLock:Ljava/lang/Object;

    return-void
.end method

.method static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "db"
    .parameter "account"

    .prologue
    .line 666
    const-wide/16 v0, 0xc8

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/content/EsNotificationData;->deleteOldNotifications(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 667
    return-void
.end method

.method public static deactivateAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 676
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/service/AndroidNotification;->cancel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 677
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->cancel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 678
    return-void
.end method

.method private static deleteOldNotifications(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 21
    .parameter "db"
    .parameter "keepCount"

    .prologue
    .line 615
    const-string v2, "notifications"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getRowsCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v11

    .line 617
    .local v11, count:J
    const-string v2, "EsNotificationData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 618
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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_37
    sub-long v2, v11, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_40

    .line 656
    :cond_3f
    :goto_3f
    return-void

    .line 626
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

    .line 630
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_3f

    .line 635
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v15, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 637
    .local v15, sb:Ljava/lang/StringBuffer;
    :try_start_5f
    const-string v2, "notif_id"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 638
    const/4 v14, 0x1

    .line 639
    .local v14, first:Z
    :goto_6b
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 640
    if-eqz v14, :cond_8c

    .line 641
    const/4 v14, 0x0

    .line 645
    :goto_74
    const/16 v2, 0x27

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 646
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    const/16 v2, 0x27

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_86
    .catchall {:try_start_5f .. :try_end_86} :catchall_87

    goto :goto_6b

    .line 652
    .end local v14           #first:Z
    :catchall_87
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    .line 643
    .restart local v14       #first:Z
    :cond_8c
    const/16 v2, 0x2c

    :try_start_8e
    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_74

    .line 650
    :cond_92
    const/16 v2, 0x29

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_97
    .catchall {:try_start_8e .. :try_end_97} :catchall_87

    .line 652
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 655
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

    .line 468
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 471
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

    .line 475
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_1e

    move-wide v1, v10

    .line 487
    :goto_1d
    return-wide v1

    .line 480
    :cond_1e
    :try_start_1e
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 481
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_32

    move-result-wide v1

    .line 484
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1d

    :cond_2d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-wide v1, v10

    .line 487
    goto :goto_1d

    .line 484
    :catchall_32
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getNotificationsToDisplay(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/database/Cursor;
    .registers 12
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v9, 0x4

    const/4 v4, 0x0

    .line 530
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 533
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "notifications"

    sget-object v2, Lcom/google/android/apps/plus/content/EsNotificationData$NotificationQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "read=0 AND seen=0 AND enabled=1"

    const-string v7, "timestamp DESC"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 538
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_76

    .line 539
    const-string v1, "EsNotificationData"

    invoke-static {v1, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 540
    :goto_22
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 541
    const-string v1, "EsNotificationData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNotificationsNotRead: unread notification id: "

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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 551
    :cond_72
    const/4 v1, -0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 555
    :cond_76
    return-object v8
.end method

.method public static getOldestUnreadNotificationTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)D
    .registers 14
    .parameter "context"
    .parameter "account"

    .prologue
    const-wide/high16 v10, -0x4010

    const/4 v4, 0x0

    .line 499
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 502
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

    .line 506
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_1f

    move-wide v1, v10

    .line 518
    :goto_1e
    return-wide v1

    .line 511
    :cond_1f
    :try_start_1f
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 512
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_33

    move-result-wide v1

    .line 515
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1e

    :cond_2e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-wide v1, v10

    .line 518
    goto :goto_1e

    .line 515
    :catchall_33
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static insertNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;D)V
    .registers 29
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
    .line 129
    .local p2, notifications:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v16

    .line 130
    .local v16, notificationsCount:I
    if-nez v16, :cond_1d

    .line 131
    const-wide/16 v3, 0x0

    cmpg-double v3, p3, v3

    if-gtz v3, :cond_1c

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 256
    :cond_1c
    :goto_1c
    return-void

    .line 141
    :cond_1d
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 145
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_25
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 147
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v22, timestamps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
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

    .line 152
    .local v11, cursor:Landroid/database/Cursor;
    :goto_3a
    :try_start_3a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 153
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_3a .. :try_end_53} :catchall_54

    goto :goto_3a

    .line 158
    :catchall_54
    move-exception v3

    :try_start_55
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    .line 249
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v22           #timestamps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :catchall_59
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 158
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v22       #timestamps:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_5e
    :try_start_5e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 162
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 163
    .local v23, values:Landroid/content/ContentValues;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_6a
    :goto_6a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_276

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    .line 164
    .local v15, notif:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getId()Ljava/lang/String;

    move-result-object v14

    .line 165
    .local v14, id:Ljava/lang/String;
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getTimestamp()D

    move-result-wide v20

    .line 167
    .local v20, timestamp:D
    const-string v3, "EsNotificationData"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_112

    .line 168
    const-string v4, "EsNotificationData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", snippet: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getActivitySnippet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", message: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", timestamp: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", read: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getRead()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", has push enabled: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasPushEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasPushEnabled()Z

    move-result v3

    if-eqz v3, :cond_14d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", push enabled: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getPushEnabled()Z

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

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_112
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Double;

    .line 183
    .local v17, oldTimestamp:Ljava/lang/Double;
    if-eqz v17, :cond_150

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v3, v3, v20

    if-nez v3, :cond_150

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getRead()Z

    move-result v3

    if-nez v3, :cond_150

    .line 184
    const-string v3, "EsNotificationData"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 185
    const-string v3, "EsNotificationData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore notification with same timestamp and not read. Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    .line 168
    .end local v17           #oldTimestamp:Ljava/lang/Double;
    :cond_14d
    const-string v3, ""

    goto :goto_107

    .line 191
    .restart local v17       #oldTimestamp:Ljava/lang/Double;
    :cond_150
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 193
    const-string v3, "notif_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v3, "type"

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getType()Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasNotificationType()Z

    move-result v3

    if-eqz v3, :cond_17e

    .line 196
    const-string v3, "notification_type"

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getNotificationType()Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_17e
    const-string v3, "snippet"

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getActivitySnippet()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v3, "message"

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getDisplayMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v3, "timestamp"

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 202
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasPushEnabled()Z

    move-result v3

    if-eqz v3, :cond_260

    .line 203
    const-string v3, "enabled"

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getPushEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 209
    :goto_1b4
    const-string v3, "read"

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getRead()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 210
    const-string v3, "seen"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasCircleData()Z

    move-result v3

    if-eqz v3, :cond_1e4

    .line 213
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getCircleData()Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;

    move-result-object v10

    .line 214
    .local v10, circleData:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    const-string v3, "circle_data"

    invoke-static {v10}, Lcom/google/android/apps/plus/content/DbCircleActionData;->serialize(Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;)[B

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 218
    .end local v10           #circleData:Lcom/google/wireless/tacotruck/proto/Data$CircleActionData;
    :cond_1e4
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasPhotoData()Z

    move-result v3

    if-eqz v3, :cond_21f

    .line 219
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getPhotoData()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;

    move-result-object v18

    .line 220
    .local v18, photoActionData:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    const-string v3, "pd_gaia_id"

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPersonId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v3, "pd_album_id"

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v3, "pd_photo_id"

    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;->getPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 228
    .end local v18           #photoActionData:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionData;
    :cond_21f
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasStreamData()Z

    move-result v3

    if-eqz v3, :cond_234

    .line 229
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getStreamData()Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;

    move-result-object v19

    .line 230
    .local v19, streamActionData:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    const-string v3, "activity_id"

    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;->getActivityId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v19           #streamActionData:Lcom/google/wireless/tacotruck/proto/Data$StreamActionData;
    :cond_234
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->hasEventsData()Z

    move-result v3

    if-eqz v3, :cond_254

    .line 235
    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getEventsData()Lcom/google/wireless/tacotruck/proto/Data$EventActionData;

    move-result-object v12

    .line 236
    .local v12, eventActionData:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
    const-string v3, "ed_event_id"

    invoke-virtual {v12}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getEventId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v3, "ed_creator_id"

    invoke-virtual {v12}, Lcom/google/wireless/tacotruck/proto/Data$EventActionData;->getCreatorObfuscatedId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v12           #eventActionData:Lcom/google/wireless/tacotruck/proto/Data$EventActionData;
    :cond_254
    const-string v3, "notifications"

    const-string v4, "notif_id"

    const/4 v5, 0x5

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_6a

    .line 207
    :cond_260
    const-string v4, "enabled"

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getRead()Z

    move-result v3

    if-nez v3, :cond_274

    const/4 v3, 0x1

    :goto_269
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_1b4

    :cond_274
    const/4 v3, 0x0

    goto :goto_269

    .line 247
    .end local v14           #id:Ljava/lang/String;
    .end local v15           #notif:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .end local v17           #oldTimestamp:Ljava/lang/Double;
    .end local v20           #timestamp:D
    :cond_276
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_279
    .catchall {:try_start_5e .. :try_end_279} :catchall_59

    .line 249
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 253
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_1c
.end method

.method public static markAllNotificationsAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 423
    const-string v2, "EsNotificationData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 424
    const-string v2, "EsNotificationData"

    const-string v3, "markAllNotificationsAsRead"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_12
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 430
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 431
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    const-string v2, "notifications"

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 435
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 437
    return-void
.end method

.method public static markAllNotificationsAsSeen(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 446
    const-string v2, "EsNotificationData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 447
    const-string v2, "EsNotificationData"

    const-string v3, "markAllNotificationsAsSeen"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_12
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 453
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 454
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "seen"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v2, "notifications"

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 457
    return-void
.end method

.method public static markNotificationAsRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "notificationId"

    .prologue
    const/4 v5, 0x1

    .line 399
    const-string v2, "EsNotificationData"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 400
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

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_22
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 406
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 407
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    const-string v2, "notifications"

    const-string v3, "notif_id=?"

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 412
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->NOTIFICATIONS_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 414
    return-void
.end method

.method public static syncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 29
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
    .line 268
    sget-object v24, Lcom/google/android/apps/plus/content/EsNotificationData;->mSyncLock:Ljava/lang/Object;

    monitor-enter v24

    .line 269
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 270
    monitor-exit v24

    .line 388
    :goto_a
    return-void

    .line 273
    :cond_b
    const-string v6, "EsNotificationData"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 274
    const-string v6, "EsNotificationData"

    const-string v7, "syncNotifications starting sync stream"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1b
    const-string v6, "Notifications"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 280
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsNotificationData;->getOldestUnreadNotificationTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)D

    move-result-wide v22

    .line 281
    .local v22, timestamp:D
    const-wide/16 v6, 0x0

    cmpg-double v6, v22, v6

    if-gez v6, :cond_116

    .line 283
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsNotificationData;->getLatestNotificationTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)D

    move-result-wide v22

    .line 284
    const-string v6, "EsNotificationData"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 285
    const-string v6, "EsNotificationData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "syncNotifications latest notification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_53
    const-wide/16 v6, 0x0

    cmpl-double v6, v22, v6

    if-lez v6, :cond_5d

    .line 289
    const-wide/high16 v6, 0x3ff0

    add-double v22, v22, v6

    .line 301
    :cond_5d
    :goto_5d
    const/4 v13, 0x0

    .line 302
    .local v13, continuationToken:Ljava/lang/String;
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 304
    .local v21, notificationsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;>;"
    const/4 v14, 0x0

    .line 305
    .local v14, error:Z
    const/16 v16, 0x0

    .local v16, i:I
    :goto_66
    const/4 v6, 0x3

    move/from16 v0, v16

    if-ge v0, v6, :cond_e2

    .line 306
    const-string v6, "EsNotificationData"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_98

    .line 307
    const-string v6, "EsNotificationData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "syncNotifications continuation token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", chunk: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_98
    new-instance v5, Lcom/google/android/apps/plus/api/GetNotificationsOperation;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v11, p2

    invoke-direct/range {v5 .. v11}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;ZLcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 313
    .local v5, gno:Lcom/google/android/apps/plus/api/GetNotificationsOperation;
    if-nez v16, :cond_13b

    move-wide/from16 v6, v22

    :goto_ab
    invoke-virtual {v5, v6, v7, v13}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->getNotifications(DLjava/lang/String;)V

    .line 314
    new-instance v6, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v6}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->start(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 315
    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->hasError()Z

    move-result v6

    if-eqz v6, :cond_13f

    .line 317
    const-string v6, "EsNotificationData"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 318
    const-string v6, "EsNotificationData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "syncNotifications error in chunk: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_e1
    const/4 v14, 0x1

    .line 370
    .end local v5           #gno:Lcom/google/android/apps/plus/api/GetNotificationsOperation;
    :cond_e2
    if-nez v14, :cond_107

    .line 371
    new-instance v20, Ljava/util/ArrayList;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 374
    .local v20, notifications:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;>;"
    new-instance v6, Lcom/google/android/apps/plus/content/EsNotificationData$1;

    invoke-direct {v6}, Lcom/google/android/apps/plus/content/EsNotificationData$1;-><init>()V

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsNotificationData;->insertNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;D)V

    .line 383
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/service/AndroidNotification;->update(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 386
    .end local v20           #notifications:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;>;"
    :cond_107
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    .line 387
    monitor-exit v24

    goto/16 :goto_a

    .end local v13           #continuationToken:Ljava/lang/String;
    .end local v14           #error:Z
    .end local v16           #i:I
    .end local v21           #notificationsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;>;"
    .end local v22           #timestamp:D
    :catchall_113
    move-exception v6

    monitor-exit v24
    :try_end_115
    .catchall {:try_start_3 .. :try_end_115} :catchall_113

    throw v6

    .line 294
    .restart local v22       #timestamp:D
    :cond_116
    :try_start_116
    const-string v6, "EsNotificationData"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 295
    const-string v6, "EsNotificationData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "syncNotifications oldest unread time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    .line 313
    .restart local v5       #gno:Lcom/google/android/apps/plus/api/GetNotificationsOperation;
    .restart local v13       #continuationToken:Ljava/lang/String;
    .restart local v14       #error:Z
    .restart local v16       #i:I
    .restart local v21       #notificationsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;>;"
    :cond_13b
    const-wide/16 v6, 0x0

    goto/16 :goto_ab

    .line 324
    :cond_13f
    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->getNotifications()Ljava/util/List;

    move-result-object v12

    .line 325
    .local v12, chunkNotifications:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;>;"
    if-eqz v12, :cond_e2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_e2

    .line 332
    const-string v6, "EsNotificationData"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_170

    .line 333
    const-string v6, "EsNotificationData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "syncNotifications retrieved: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_170
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_174
    :goto_174
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_215

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    .line 339
    .local v19, notif:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getId()Ljava/lang/String;

    move-result-object v18

    .line 340
    .local v18, id:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    .line 341
    .local v15, existingNotif:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    if-eqz v15, :cond_20a

    .line 344
    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getTimestamp()D

    move-result-wide v6

    invoke-virtual {v15}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getTimestamp()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1d7

    .line 346
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v6, "EsNotificationData"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_174

    .line 349
    const-string v6, "EsNotificationData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "syncNotifications replacing notification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is newer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getTimestamp()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_174

    .line 353
    :cond_1d7
    const-string v6, "EsNotificationData"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_174

    .line 354
    const-string v6, "EsNotificationData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "syncNotifications ignoring notification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is older: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getTimestamp()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_174

    .line 359
    :cond_20a
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_174

    .line 363
    .end local v15           #existingNotif:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    .end local v18           #id:Ljava/lang/String;
    .end local v19           #notif:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
    :cond_215
    invoke-virtual {v5}, Lcom/google/android/apps/plus/api/GetNotificationsOperation;->getContinuationToken()Ljava/lang/String;
    :try_end_218
    .catchall {:try_start_116 .. :try_end_218} :catchall_113

    move-result-object v13

    .line 364
    if-eqz v13, :cond_e2

    .line 305
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_66
.end method
