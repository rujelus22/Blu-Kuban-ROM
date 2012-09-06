.class public Lcom/google/android/apps/plus/content/EsNetworkData;
.super Ljava/lang/Object;
.source "EsNetworkData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/content/EsNetworkData$StatsQuery;,
        Lcom/google/android/apps/plus/content/EsNetworkData$TransactionIdsQuery;
    }
.end annotation


# static fields
.field private static final mSyncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsNetworkData;->mSyncLock:Ljava/lang/Object;

    return-void
.end method

.method static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 2
    .parameter "db"
    .parameter "account"

    .prologue
    .line 331
    return-void
.end method

.method public static clearTransactionData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 281
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 284
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 286
    const-string v1, "network_data_transactions"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_27

    .line 290
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->NETWORK_DATA_TRANSACTIONS_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 297
    return-void

    .line 290
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static deleteOldTransactions(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 18
    .parameter "db"

    .prologue
    .line 230
    const-string v1, "network_data_transactions"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getRowsCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v10

    .line 232
    .local v10, count:J
    const-string v1, "EsNetworkData"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 233
    const-string v1, "EsNetworkData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteOldTransactions count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_2b
    const-wide/16 v1, 0x64

    sub-long v1, v10, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_36

    .line 272
    :cond_35
    :goto_35
    return-void

    .line 241
    :cond_36
    const-string v2, "network_data_transactions"

    sget-object v3, Lcom/google/android/apps/plus/content/EsNetworkData$TransactionIdsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "time ASC"

    const-wide/16 v15, 0x64

    sub-long v15, v10, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 246
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_35

    .line 251
    new-instance v14, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v14, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 253
    .local v14, sb:Ljava/lang/StringBuffer;
    :try_start_57
    const-string v1, "_id"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " IN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    const/4 v13, 0x1

    .line 255
    .local v13, first:Z
    :goto_63
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 256
    if-eqz v13, :cond_84

    .line 257
    const/4 v13, 0x0

    .line 261
    :goto_6c
    const/16 v1, 0x27

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 262
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    const/16 v1, 0x27

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_7e
    .catchall {:try_start_57 .. :try_end_7e} :catchall_7f

    goto :goto_63

    .line 268
    .end local v13           #first:Z
    :catchall_7f
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    .line 259
    .restart local v13       #first:Z
    :cond_84
    const/16 v1, 0x2c

    :try_start_86
    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6c

    .line 266
    :cond_8a
    const/16 v1, 0x29

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_7f

    .line 268
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 271
    const-string v1, "network_data_transactions"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_35
.end method

.method public static insertData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;Ljava/lang/Exception;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "metrics"
    .parameter "exception"

    .prologue
    const/4 v5, 0x0

    .line 75
    sget-boolean v2, Lcom/google/android/apps/plus/util/EsLog;->ENABLE_DOGFOOD_FEATURES:Z

    if-eqz v2, :cond_13

    .line 76
    if-nez p2, :cond_14

    .line 77
    const-string v2, "EsNetworkData"

    const-string v3, "Please use HttpTransactionMetrics for network traffic tracking"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :cond_13
    :goto_13
    return-void

    .line 82
    :cond_14
    if-nez p3, :cond_27

    .line 83
    const-string v2, "EsNetworkData"

    const-string v3, " + "

    invoke-virtual {p2, v2, v3}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_1d
    if-nez p1, :cond_40

    .line 89
    const-string v2, "EsNetworkData"

    const-string v3, "Account not specified"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 85
    :cond_27
    const-string v2, "EsNetworkData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 95
    :cond_40
    :try_start_40
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_47} :catch_74

    move-result-object v0

    .line 105
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_48
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 108
    invoke-static {v0, p2, p3}, Lcom/google/android/apps/plus/content/EsNetworkData;->insertTransaction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;Ljava/lang/Exception;)V

    .line 110
    if-nez p3, :cond_53

    .line 112
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/content/EsNetworkData;->updateStats(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 115
    :cond_53
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_92

    .line 117
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->NETWORK_DATA_TRANSACTIONS_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/content/EsProvider;->NETWORK_DATA_STATS_URI:Landroid/net/Uri;

    invoke-static {v3, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_13

    .line 96
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_74
    move-exception v1

    .line 100
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "EsNetworkData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot insert network data for operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 117
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_92
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private static insertTransaction(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;Ljava/lang/Exception;)V
    .registers 7
    .parameter "db"
    .parameter "metrics"
    .parameter "exception"

    .prologue
    .line 141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    const-string v1, "network_duration"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    const-string v1, "process_duration"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getProcessingDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    const-string v1, "sent"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getSentBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    const-string v1, "recv"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getReceivedBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    const-string v1, "req_count"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getRequestCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    if-eqz p2, :cond_92

    .line 152
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 153
    const-string v1, "exception"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_92
    :goto_92
    const-string v1, "network_data_transactions"

    const-string v2, "_id"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 164
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsNetworkData;->deleteOldTransactions(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 165
    return-void

    .line 156
    :cond_9d
    const-string v1, "exception"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92
.end method

.method public static resetStatsData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 306
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 309
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 311
    const-string v1, "network_data_stats"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 313
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_27

    .line 315
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/content/EsProvider;->NETWORK_DATA_STATS_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 322
    return-void

    .line 315
    :catchall_27
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static updateStats(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V
    .registers 14
    .parameter "db"
    .parameter "metrics"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getName()Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, name:Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    aput-object v9, v4, v1

    .line 176
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v11, Lcom/google/android/apps/plus/content/EsNetworkData;->mSyncLock:Ljava/lang/Object;

    monitor-enter v11

    .line 177
    :try_start_d
    const-string v1, "network_data_stats"

    sget-object v2, Lcom/google/android/apps/plus/content/EsNetworkData$StatsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 180
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_1f

    .line 181
    monitor-exit v11
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_a3

    .line 222
    :goto_1e
    return-void

    .line 185
    :cond_1f
    :try_start_1f
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v10, values:Landroid/content/ContentValues;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 187
    const-string v0, "last"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    const-string v0, "network_duration"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getDuration()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    const-string v0, "process_duration"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getProcessingDuration()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    const-string v0, "sent"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getSentBytes()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string v0, "recv"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getReceivedBytes()J

    move-result-wide v1

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    const-string v0, "req_count"

    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getRequestCount()J

    move-result-wide v5

    add-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    const-string v0, "network_data_stats"

    const-string v1, "name=?"

    invoke-virtual {p0, v0, v10, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_1f .. :try_end_9d} :catchall_10f

    .line 219
    :goto_9d
    :try_start_9d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 221
    monitor-exit v11

    goto/16 :goto_1e

    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_a3
    move-exception v0

    monitor-exit v11
    :try_end_a5
    .catchall {:try_start_9d .. :try_end_a5} :catchall_a3

    throw v0

    .line 204
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_a6
    :try_start_a6
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "first"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    const-string v0, "last"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    const-string v0, "network_duration"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    const-string v0, "process_duration"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getProcessingDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    const-string v0, "sent"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getSentBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    const-string v0, "recv"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;->getReceivedBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    const-string v0, "req_count"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v0, "network_data_stats"

    const-string v1, "_id"

    invoke-virtual {p0, v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_10e
    .catchall {:try_start_a6 .. :try_end_10e} :catchall_10f

    goto :goto_9d

    .line 219
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_10f
    move-exception v0

    :try_start_110
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_114
    .catchall {:try_start_110 .. :try_end_114} :catchall_a3
.end method
