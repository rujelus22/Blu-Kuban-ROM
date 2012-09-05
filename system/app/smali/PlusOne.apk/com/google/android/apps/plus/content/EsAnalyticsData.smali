.class public final Lcom/google/android/apps/plus/content/EsAnalyticsData;
.super Ljava/lang/Object;
.source "EsAnalyticsData.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bulkInsert(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$LogEnvelope;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "events"

    .prologue
    .line 55
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAnalyticsData;->getWritableDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_35

    move-result-object v0

    .line 60
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 62
    :try_start_7
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getEventList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/webapps/Analytics$Event;

    .line 64
    .local v1, event:Lcom/google/wireless/webapps/Analytics$Event;
    const-string v5, "event_data"

    invoke-virtual {v1}, Lcom/google/wireless/webapps/Analytics$Event;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 65
    const-string v5, "analytics_events"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_30

    goto :goto_14

    .line 69
    .end local v1           #event:Lcom/google/wireless/webapps/Analytics$Event;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_30
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 56
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_35
    move-exception v2

    .line 71
    :goto_36
    return-void

    .line 67
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_37
    :try_start_37
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_30

    .line 69
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_36
.end method

.method private static createLogEnvelopeBuilder(Landroid/content/Context;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 8
    .parameter "context"

    .prologue
    .line 130
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->newBuilder()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v1

    .line 131
    .local v1, envelope:Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    sget-object v5, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->ANDROID_OS:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    invoke-virtual {v1, v5}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->setClient(Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    .line 132
    invoke-static {}, Lcom/google/android/apps/plus/analytics/AnalyticsClock;->now()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->setSendTimeMsec(J)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    .line 133
    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->setPlatform(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    .line 135
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 136
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, packageName:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 138
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->setVersion(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_27} :catch_28

    .line 143
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    .end local v4           #packageName:Ljava/lang/String;
    :goto_27
    return-object v1

    .line 140
    :catch_28
    move-exception v0

    .line 141
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_27
.end method

.method private static getWritableDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static insert(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event;)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "event"

    .prologue
    .line 38
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAnalyticsData;->getWritableDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_19

    move-result-object v0

    .line 43
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 44
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_data"

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$Event;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 45
    const-string v3, "analytics_events"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 46
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #values:Landroid/content/ContentValues;
    :goto_18
    return-void

    .line 39
    :catch_19
    move-exception v1

    .line 40
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_18
.end method

.method public static removeAll(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    .registers 18
    .parameter "context"
    .parameter "account"

    .prologue
    .line 80
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAnalyticsData;->createLogEnvelopeBuilder(Landroid/content/Context;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v11

    .line 84
    .local v11, envelope:Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    :try_start_4
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsAnalyticsData;->getWritableDatabase(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_28

    move-result-object v0

    .line 89
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 91
    const/4 v1, 0x1

    :try_start_c
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "event_data"

    aput-object v3, v2, v1

    .line 94
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "analytics_events"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 96
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_2e

    .line 97
    invoke-virtual {v11}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->build()Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_53

    move-result-object v1

    .line 118
    :goto_24
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 116
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_27
    return-object v1

    .line 85
    :catch_28
    move-exception v14

    .line 86
    .local v14, ex:Ljava/lang/Exception;
    invoke-virtual {v11}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->build()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v1

    goto :goto_27

    .line 100
    .end local v14           #ex:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_2e
    :try_start_2e
    const-string v1, "event_data"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 101
    .local v8, columnIndex:I
    const/4 v15, 0x0

    .local v15, position:I
    :goto_35
    invoke-interface {v9, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 102
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_4e

    move-result-object v13

    .line 104
    .local v13, eventData:[B
    :try_start_3f
    invoke-static {v13}, Lcom/google/wireless/webapps/Analytics$Event;->parseFrom([B)Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v12

    .line 105
    .local v12, event:Lcom/google/wireless/webapps/Analytics$Event;
    invoke-virtual {v11, v12}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->addEvent(Lcom/google/wireless/webapps/Analytics$Event;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_4e
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3f .. :try_end_46} :catch_49

    .line 101
    .end local v12           #event:Lcom/google/wireless/webapps/Analytics$Event;
    :goto_46
    add-int/lit8 v15, v15, 0x1

    goto :goto_35

    .line 106
    :catch_49
    move-exception v10

    .line 107
    .local v10, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4a
    invoke-virtual {v10}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_46

    .line 111
    .end local v8           #columnIndex:I
    .end local v10           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    .end local v13           #eventData:[B
    .end local v15           #position:I
    :catchall_4e
    move-exception v1

    :try_start_4f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    .line 118
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :catchall_53
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 111
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v8       #columnIndex:I
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v15       #position:I
    :cond_58
    :try_start_58
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 114
    const-string v1, "analytics_events"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 116
    invoke-virtual {v11}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->build()Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_53

    move-result-object v1

    goto :goto_24
.end method
