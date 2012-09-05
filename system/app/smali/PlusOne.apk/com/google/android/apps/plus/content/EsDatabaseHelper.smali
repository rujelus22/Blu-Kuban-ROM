.class public Lcom/google/android/apps/plus/content/EsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EsDatabaseHelper.java"


# static fields
.field private static final MASTER_COLUMNS:[Ljava/lang/String;

.field private static sAlarmsInitialized:Z

.field private static sHelpers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/apps/plus/content/EsDatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastDatabaseDeletionTimestamp:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeleted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->MASTER_COLUMNS:[Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sHelpers:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .parameter "context"
    .parameter "index"

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x259

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 120
    iput-object p1, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/content/EsDatabaseHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->doDeleteDatabase()V

    return-void
.end method

.method private declared-synchronized doDeleteDatabase()V
    .registers 4

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mDeleted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2a

    if-eqz v1, :cond_7

    .line 343
    :goto_5
    monitor-exit p0

    return-void

    .line 333
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 334
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 336
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mDeleted:Z

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sLastDatabaseDeletionTimestamp:J

    .line 339
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 340
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 342
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_2a

    goto :goto_5

    .line 329
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 13
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 250
    const-string v1, "sqlite_master"

    sget-object v2, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->MASTER_COLUMNS:[Ljava/lang/String;

    const-string v3, "type=\'table\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 252
    .local v9, tableCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4d

    .line 254
    :try_start_11
    const-string v8, "DROP TABLE IF EXISTS "

    .line 255
    .local v8, dropPrefix:Ljava/lang/String;
    :cond_13
    :goto_13
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 256
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 259
    .local v10, tableName:Ljava/lang/String;
    const-string v0, "android_"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "sqlite_"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_11 .. :try_end_44} :catchall_45

    goto :goto_13

    .line 265
    .end local v8           #dropPrefix:Ljava/lang/String;
    .end local v10           #tableName:Ljava/lang/String;
    :catchall_45
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #dropPrefix:Ljava/lang/String;
    :cond_4a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 268
    .end local v8           #dropPrefix:Ljava/lang/String;
    :cond_4d
    return-void
.end method

.method private dropAllViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 13
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 274
    const-string v1, "sqlite_master"

    sget-object v2, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->MASTER_COLUMNS:[Ljava/lang/String;

    const-string v3, "type=\'view\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 276
    .local v9, viewCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3d

    .line 278
    :try_start_11
    const-string v8, "DROP VIEW IF EXISTS "

    .line 279
    .local v8, dropPrefix:Ljava/lang/String;
    :goto_13
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 280
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 281
    .local v10, viewName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP VIEW IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_35

    goto :goto_13

    .line 284
    .end local v8           #dropPrefix:Ljava/lang/String;
    .end local v10           #viewName:Ljava/lang/String;
    :catchall_35
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #dropPrefix:Ljava/lang/String;
    :cond_3a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 287
    .end local v8           #dropPrefix:Ljava/lang/String;
    :cond_3d
    return-void
.end method

.method public static declared-synchronized getDatabaseHelper(Landroid/content/Context;I)Lcom/google/android/apps/plus/content/EsDatabaseHelper;
    .registers 7
    .parameter "context"
    .parameter "index"

    .prologue
    .line 90
    const-class v2, Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    monitor-enter v2

    if-nez p0, :cond_10

    .line 91
    :try_start_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "Context is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 90
    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 93
    :cond_10
    if-gez p1, :cond_2b

    .line 94
    :try_start_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid account index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_2b
    sget-object v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sHelpers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    .line 97
    .local v0, helper:Lcom/google/android/apps/plus/content/EsDatabaseHelper;
    if-nez v0, :cond_47

    .line 98
    new-instance v0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    .end local v0           #helper:Lcom/google/android/apps/plus/content/EsDatabaseHelper;
    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;-><init>(Landroid/content/Context;I)V

    .line 99
    .restart local v0       #helper:Lcom/google/android/apps/plus/content/EsDatabaseHelper;
    sget-object v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sHelpers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_47
    sget-boolean v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sAlarmsInitialized:Z

    if-nez v1, :cond_54

    .line 103
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->scheduleDatabaseCleanupAlarm(Landroid/content/Context;)V

    .line 104
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->scheduleSyncAlarm(Landroid/content/Context;)V

    .line 105
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sAlarmsInitialized:Z
    :try_end_54
    .catchall {:try_start_12 .. :try_end_54} :catchall_d

    .line 108
    :cond_54
    monitor-exit v2

    return-object v0
.end method

.method public static getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 77
    .local v0, index:I
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;I)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    return-object v1
.end method

.method public static isDatabaseRecentlyDeleted()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 357
    sget-wide v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sLastDatabaseDeletionTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    .line 361
    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sLastDatabaseDeletionTimestamp:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v1, v1, v3

    if-gez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method private rebuildTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 226
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->rebuildTables(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 227
    return-void
.end method

.method private upgradeViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .parameter "db"

    .prologue
    .line 203
    const-string v4, "EsDatabaseHelper"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 204
    const-string v4, "EsDatabaseHelper"

    const-string v5, "Upgrade database views"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_10
    const-string v2, "DROP VIEW IF EXISTS "

    .line 208
    .local v2, viewPrefix:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/plus/content/EsProvider;->getViewNames()[Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, viewName:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    array-length v4, v1

    if-ge v0, v4, :cond_35

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP VIEW IF EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 213
    :cond_35
    invoke-static {}, Lcom/google/android/apps/plus/content/EsProvider;->getViewSQLs()[Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, viewSQL:[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_3a
    array-length v4, v3

    if-ge v0, v4, :cond_45

    .line 215
    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 217
    :cond_45
    return-void
.end method


# virtual methods
.method public createNewDatabase()V
    .registers 2

    .prologue
    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mDeleted:Z

    .line 350
    return-void
.end method

.method public deleteDatabase()V
    .registers 5

    .prologue
    .line 315
    new-instance v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper$1;-><init>(Lcom/google/android/apps/plus/content/EsDatabaseHelper;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 323
    return-void
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .prologue
    .line 294
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mDeleted:Z

    if-eqz v0, :cond_10

    .line 295
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database deleted"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 294
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 297
    :cond_10
    :try_start_10
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .prologue
    .line 305
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mDeleted:Z

    if-eqz v0, :cond_10

    .line 306
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database deleted"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 305
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 308
    :cond_10
    :try_start_10
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 138
    invoke-static {}, Lcom/google/android/apps/plus/content/EsProvider;->getTableSQLs()[Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, sqls:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 140
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 143
    :cond_10
    invoke-static {}, Lcom/google/android/apps/plus/content/EsProvider;->getIndexSQLs()[Ljava/lang/String;

    move-result-object v1

    .line 144
    const/4 v0, 0x0

    :goto_15
    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 145
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 148
    :cond_20
    invoke-static {}, Lcom/google/android/apps/plus/content/EsProvider;->getViewSQLs()[Ljava/lang/String;

    move-result-object v1

    .line 149
    const/4 v0, 0x0

    :goto_25
    array-length v2, v1

    if-ge v0, v2, :cond_30

    .line 150
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 153
    :cond_30
    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsProvider;->insertVirtualCircles(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 154
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->rebuildTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 162
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_b

    .line 129
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    :cond_b
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 169
    const-string v1, "EsDatabaseHelper"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 170
    const-string v1, "EsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrade database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_2b
    if-ge p3, p2, :cond_31

    .line 176
    :try_start_2d
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->rebuildTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 195
    :goto_30
    return-void

    .line 180
    :cond_31
    const/16 v1, 0x259

    if-ge p2, v1, :cond_3a

    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->rebuildTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 184
    const/16 p2, 0x259

    .line 187
    :cond_3a
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeViews(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_3d} :catch_3e

    goto :goto_30

    .line 188
    :catch_3e
    move-exception v0

    .line 189
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "EsDatabaseHelper"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 190
    const-string v1, "EsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upgrade database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :cond_6a
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->rebuildTables(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_30
.end method

.method public rebuildTables(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter "db"
    .parameter "account"

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 235
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->dropAllViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 239
    if-eqz p2, :cond_2b

    .line 240
    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v0

    .line 241
    .local v0, userId:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE account_status SET user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE user_id=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    .end local v0           #userId:J
    :cond_2b
    return-void
.end method
