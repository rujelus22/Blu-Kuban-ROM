.class public final Lcom/google/android/apps/plus/content/EsAnalyticsData;
.super Ljava/lang/Object;
.source "EsAnalyticsData.java"


# direct methods
.method public static bulkInsert(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$LogEnvelope;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "events"

    .prologue
    .line 55
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_39

    move-result-object v0

    .line 60
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 62
    :try_start_b
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->getEventList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

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
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_34

    goto :goto_18

    .line 69
    .end local v1           #event:Lcom/google/wireless/webapps/Analytics$Event;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_34
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 56
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_39
    move-exception v2

    .line 71
    :goto_3a
    return-void

    .line 67
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_3b
    :try_start_3b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_34

    .line 69
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3a
.end method

.method private static createLogEnvelopeBuilder(Landroid/content/Context;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    .registers 8
    .parameter "context"

    .prologue
    .line 133
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$LogEnvelope;->newBuilder()Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v1

    .line 134
    .local v1, envelope:Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    sget-object v5, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->ANDROID_OS:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    invoke-virtual {v1, v5}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->setClient(Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->setSendTimeMsec(J)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    .line 136
    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->setPlatform(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    .line 138
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 139
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, packageName:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 141
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->setVersion(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_27} :catch_28

    .line 146
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    .end local v4           #packageName:Ljava/lang/String;
    :goto_27
    return-object v1

    .line 143
    :catch_28
    move-exception v0

    .line 144
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_27
.end method

.method public static insert(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event;)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "event"

    .prologue
    .line 34
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_1d

    move-result-object v0

    .line 39
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_data"

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$Event;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 41
    const-string v3, "analytics_events"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 42
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #values:Landroid/content/ContentValues;
    :goto_1c
    return-void

    .line 35
    :catch_1d
    move-exception v1

    .line 36
    .local v1, ex:Ljava/lang/Exception;
    goto :goto_1c
.end method

.method public static removeAll(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    .registers 18
    .parameter "context"
    .parameter "account"

    .prologue
    .line 83
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAnalyticsData;->createLogEnvelopeBuilder(Landroid/content/Context;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;

    move-result-object v11

    .line 87
    .local v11, envelope:Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    :try_start_4
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_2c

    move-result-object v0

    .line 92
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 94
    const/4 v1, 0x1

    :try_start_10
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "event_data"

    aput-object v3, v2, v1

    .line 97
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "analytics_events"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 99
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_32

    .line 100
    invoke-virtual {v11}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->build()Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_57

    move-result-object v1

    .line 121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_2b
    return-object v1

    .line 88
    :catch_2c
    move-exception v14

    .line 89
    .local v14, ex:Ljava/lang/Exception;
    invoke-virtual {v11}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->build()Lcom/google/wireless/webapps/Analytics$LogEnvelope;

    move-result-object v1

    goto :goto_2b

    .line 103
    .end local v14           #ex:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_32
    :try_start_32
    const-string v1, "event_data"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 104
    .local v8, columnIndex:I
    const/4 v15, 0x0

    .local v15, position:I
    :goto_39
    invoke-interface {v9, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 105
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_52

    move-result-object v13

    .line 107
    .local v13, eventData:[B
    :try_start_43
    invoke-static {v13}, Lcom/google/wireless/webapps/Analytics$Event;->parseFrom([B)Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v12

    .line 108
    .local v12, event:Lcom/google/wireless/webapps/Analytics$Event;
    invoke-virtual {v11, v12}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->addEvent(Lcom/google/wireless/webapps/Analytics$Event;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_43 .. :try_end_4a} :catch_4d

    .line 104
    .end local v12           #event:Lcom/google/wireless/webapps/Analytics$Event;
    :goto_4a
    add-int/lit8 v15, v15, 0x1

    goto :goto_39

    .line 109
    :catch_4d
    move-exception v10

    .line 110
    .local v10, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4e
    invoke-virtual {v10}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_4a

    .line 114
    .end local v8           #columnIndex:I
    .end local v10           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    .end local v13           #eventData:[B
    .end local v15           #position:I
    :catchall_52
    move-exception v1

    :try_start_53
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_57

    .line 121
    .end local v2           #columns:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :catchall_57
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 114
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v8       #columnIndex:I
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v15       #position:I
    :cond_5c
    :try_start_5c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 117
    const-string v1, "analytics_events"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 119
    invoke-virtual {v11}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$Builder;->build()Lcom/google/wireless/webapps/Analytics$LogEnvelope;
    :try_end_6c
    .catchall {:try_start_5c .. :try_end_6c} :catchall_57

    move-result-object v1

    .line 121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2b
.end method
