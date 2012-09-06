.class public Lcom/google/android/apps/plus/content/EsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EsDatabaseHelper.java"


# static fields
.field private static final MASTER_COLUMNS:[Ljava/lang/String;

.field private static final MESSAGE_COLUMNS:[Ljava/lang/String;

.field private static sAlarmsInitialized:Z

.field private static sHelpers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/apps/plus/content/EsDatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastDatabaseDeletionTimestamp:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeleted:Z

.field private mIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->MASTER_COLUMNS:[Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sHelpers:Landroid/util/SparseArray;

    .line 489
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "message_id"

    aput-object v1, v0, v2

    const-string v1, "conversation_id"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "author_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "notification_seen"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "image_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->MESSAGE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .parameter "context"
    .parameter "index"

    .prologue
    .line 129
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

    const/16 v2, 0x3ec

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 131
    iput-object p1, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 132
    iput p2, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mIndex:I

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/content/EsDatabaseHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->doDeleteDatabase()V

    return-void
.end method

.method private declared-synchronized doDeleteDatabase()V
    .registers 4

    .prologue
    .line 1121
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mDeleted:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2a

    if-eqz v1, :cond_7

    .line 1135
    :goto_5
    monitor-exit p0

    return-void

    .line 1125
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1126
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1128
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mDeleted:Z

    .line 1129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sLastDatabaseDeletionTimestamp:J

    .line 1131
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1132
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1134
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_2a

    goto :goto_5

    .line 1121
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

    .line 1042
    const-string v1, "sqlite_master"

    sget-object v2, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->MASTER_COLUMNS:[Ljava/lang/String;

    const-string v3, "type=\'table\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1044
    .local v9, tableCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_4d

    .line 1046
    :try_start_11
    const-string v8, "DROP TABLE IF EXISTS "

    .line 1047
    .local v8, dropPrefix:Ljava/lang/String;
    :cond_13
    :goto_13
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1048
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1051
    .local v10, tableName:Ljava/lang/String;
    const-string v0, "android_"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "sqlite_"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1054
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

    .line 1057
    .end local v8           #dropPrefix:Ljava/lang/String;
    .end local v10           #tableName:Ljava/lang/String;
    :catchall_45
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #dropPrefix:Ljava/lang/String;
    :cond_4a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1060
    .end local v8           #dropPrefix:Ljava/lang/String;
    :cond_4d
    return-void
.end method

.method private dropAllViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 13
    .parameter "db"

    .prologue
    const/4 v4, 0x0

    .line 1066
    const-string v1, "sqlite_master"

    sget-object v2, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->MASTER_COLUMNS:[Ljava/lang/String;

    const-string v3, "type=\'view\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1068
    .local v9, viewCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3d

    .line 1070
    :try_start_11
    const-string v8, "DROP VIEW IF EXISTS "

    .line 1071
    .local v8, dropPrefix:Ljava/lang/String;
    :goto_13
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1072
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1073
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

    .line 1076
    .end local v8           #dropPrefix:Ljava/lang/String;
    .end local v10           #viewName:Ljava/lang/String;
    :catchall_35
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #dropPrefix:Ljava/lang/String;
    :cond_3a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1079
    .end local v8           #dropPrefix:Ljava/lang/String;
    :cond_3d
    return-void
.end method

.method public static declared-synchronized getDatabaseHelper(Landroid/content/Context;I)Lcom/google/android/apps/plus/content/EsDatabaseHelper;
    .registers 7
    .parameter "context"
    .parameter "index"

    .prologue
    .line 101
    const-class v2, Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    monitor-enter v2

    if-nez p0, :cond_10

    .line 102
    :try_start_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "Context is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 101
    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 104
    :cond_10
    if-gez p1, :cond_2b

    .line 105
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

    .line 107
    :cond_2b
    sget-object v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    .line 108
    .local v0, helper:Lcom/google/android/apps/plus/content/EsDatabaseHelper;
    if-nez v0, :cond_3f

    .line 109
    new-instance v0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    .end local v0           #helper:Lcom/google/android/apps/plus/content/EsDatabaseHelper;
    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;-><init>(Landroid/content/Context;I)V

    .line 110
    .restart local v0       #helper:Lcom/google/android/apps/plus/content/EsDatabaseHelper;
    sget-object v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sHelpers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    :cond_3f
    sget-boolean v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sAlarmsInitialized:Z

    if-nez v1, :cond_4c

    .line 114
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->scheduleDatabaseCleanupAlarm(Landroid/content/Context;)V

    .line 115
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->scheduleSyncAlarm(Landroid/content/Context;)V

    .line 116
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sAlarmsInitialized:Z
    :try_end_4c
    .catchall {:try_start_12 .. :try_end_4c} :catchall_d

    .line 119
    :cond_4c
    monitor-exit v2

    return-object v0
.end method

.method public static getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getIndex()I

    move-result v0

    .line 88
    .local v0, index:I
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;I)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    return-object v1
.end method

.method static getRowsCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 15
    .parameter "db"
    .parameter "table"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1169
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

    .line 1174
    .local v8, cc:Landroid/database/Cursor;
    :try_start_13
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1175
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_25

    move-result-wide v9

    .line 1180
    .local v9, count:J
    :goto_1e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1183
    return-wide v9

    .line 1177
    .end local v9           #count:J
    :cond_22
    const-wide/16 v9, 0x0

    .restart local v9       #count:J
    goto :goto_1e

    .line 1180
    .end local v9           #count:J
    :catchall_25
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isDatabaseRecentlyDeleted()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1149
    sget-wide v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->sLastDatabaseDeletionTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_a

    .line 1153
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

.method private preserveStreamViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 14
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 971
    const-string v1, "circles"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "circle_id"

    aput-object v0, v2, v3

    const-string v3, "show != 0"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 975
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_15
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 976
    .local v9, count:I
    new-array v8, v9, [Ljava/lang/String;

    .line 977
    .local v8, circleIds:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1c
    if-ge v11, v9, :cond_2b

    .line 978
    invoke-interface {v10, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 979
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v11

    .line 977
    add-int/lit8 v11, v11, 0x1

    goto :goto_1c

    .line 982
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mIndex:I

    invoke-static {v0, v1, v8}, Lcom/google/android/apps/plus/content/EsAccountsData;->onUpgradeStreamViewList(Landroid/content/Context;I[Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_15 .. :try_end_32} :catchall_36

    .line 984
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 986
    return-void

    .line 984
    .end local v8           #circleIds:[Ljava/lang/String;
    .end local v9           #count:I
    .end local v11           #i:I
    :catchall_36
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private rebuildTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 1017
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->rebuildTables(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1018
    return-void
.end method

.method private upgradeToVersion1000(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 915
    const-string v0, "DROP TABLE IF EXISTS event_theme_images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 916
    return-void
.end method

.method private upgradeToVersion1001(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 919
    const-string v0, "DROP TABLE IF EXISTS profiles"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 920
    const-string v0, "CREATE TABLE profiles (profile_person_id TEXT PRIMARY KEY,contact_update_time INT,contact_proto BLOB,profile_update_time INT,profile_proto BLOB,plus_one_update_time INT,plus_one_proto BLOB,FOREIGN KEY (profile_person_id) REFERENCES  contacts(person_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 930
    const-string v0, "UPDATE contacts SET last_updated_time = NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 931
    const-string v0, "UPDATE account_status SET people_sync_time = NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method private upgradeToVersion1002(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 935
    const-string v0, "ALTER TABLE contacts ADD COLUMN profile_state INT DEFAULT(0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 938
    const-string v0, "UPDATE contacts SET profile_state=1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 939
    return-void
.end method

.method private upgradeToVersion1003(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 942
    const-string v0, "DELETE FROM events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 943
    const-string v0, "DELETE FROM event_activities"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 944
    return-void
.end method

.method private upgradeToVersion1004(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 953
    :try_start_0
    const-string v0, "ALTER TABLE account_status  ADD COLUMN last_stats_sync_time INT DEFAULT(-1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 956
    const-string v0, "ALTER TABLE account_status  ADD COLUMN last_contacted_time INT DEFAULT(-1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 960
    const-string v0, "ALTER TABLE account_status  ADD COLUMN wipeout_stats INT DEFAULT(0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 965
    :goto_f
    return-void

    .line 962
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method private upgradeToVersion758(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 458
    const-string v0, "ALTER TABLE photos_home  ADD COLUMN sort_order INT NOT NULL DEFAULT(50)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 462
    const-string v0, "UPDATE photos_home SET sort_order = 1 WHERE type = 3"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method private upgradeToVersion759(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 467
    const-string v0, "CREATE TABLE platform_audience (package_name TEXT PRIMARY KEY, audience_data BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method private upgradeToVersion761(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 12
    .parameter "db"

    .prologue
    .line 502
    const-string v0, "CREATE TABLE messages2  (_id INTEGER PRIMARY KEY, message_id TEXT, conversation_id INT, author_id TEXT, text TEXT, timestamp INT, status INT, type INT, notification_seen INT, image_url TEXT, FOREIGN KEY (conversation_id) REFERENCES conversations (_id) ON DELETE CASCADE,FOREIGN KEY (author_id) REFERENCES participants (participant_id) ON DELETE CASCADE, UNIQUE (conversation_id,timestamp) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 503
    const/4 v8, 0x0

    .line 505
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_6
    const-string v1, "messages"

    sget-object v2, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->MESSAGE_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 506
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 507
    .local v9, values:Landroid/content/ContentValues;
    :goto_19
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 508
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 509
    const-string v0, "message_id"

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v0, "conversation_id"

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v0, "author_id"

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v0, "text"

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v0, "timestamp"

    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 514
    const-string v0, "status"

    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 515
    const-string v0, "type"

    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    const-string v0, "notification_seen"

    const/4 v1, 0x7

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 517
    const-string v0, "image_url"

    const/16 v1, 0x8

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v0, "messages2"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_93
    .catchall {:try_start_6 .. :try_end_93} :catchall_94

    goto :goto_19

    .line 521
    .end local v9           #values:Landroid/content/ContentValues;
    :catchall_94
    move-exception v0

    if-eqz v8, :cond_9a

    .line 522
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9a
    throw v0

    .line 521
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_9b
    if-eqz v8, :cond_a0

    .line 522
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 525
    :cond_a0
    const-string v0, "drop table messages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 526
    const-string v0, "alter table messages_2 rename to messages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method private upgradeToVersion800(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 532
    const-string v0, "DELETE FROM photo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 538
    const-string v0, "DELETE FROM photo_comment"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 539
    const-string v0, "DELETE FROM photo_plusone"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 540
    const-string v0, "DELETE FROM photos_of_user"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 541
    const-string v0, "DELETE FROM photos_from_circle"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 542
    const-string v0, "DELETE FROM photo_stream"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 543
    const-string v0, "DELETE FROM photo_shape"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 545
    const-string v0, "ALTER TABLE photo  ADD COLUMN downloadable BOOLEAN"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method private upgradeToVersion802(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 552
    const-string v0, "UPDATE profiles SET profile_proto=NULL, profile_update_time = NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private upgradeToVersion804(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 556
    const-string v0, "CREATE TABLE plus_pages (gaia_id TEXT PRIMARY KEY, name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method private upgradeToVersion806(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 562
    const-string v0, "CREATE TABLE messenger_suggestions  (_id INTEGER PRIMARY KEY, participant_id TEXT UNIQUE ON CONFLICT REPLACE, full_name TEXT, first_name TEXT,sequence INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method private upgradeToVersion807(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 571
    const-string v0, "ALTER TABLE activities  ADD COLUMN event_id TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method private upgradeToVersion808(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 576
    const-string v0, "ALTER TABLE account_status  ADD COLUMN event_list_sync_time INT DEFAULT(-1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method private upgradeToVersion812(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 581
    const-string v0, "ALTER TABLE notifications  ADD COLUMN ed_event_id TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 583
    const-string v0, "ALTER TABLE notifications  ADD COLUMN ed_creator_id TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method private upgradeToVersion813(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 590
    const-string v0, "DROP TABLE IF EXISTS photos_home"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 591
    const-string v0, "DROP TABLE IF EXISTS photos_home_cover"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 592
    const-string v0, "DROP TABLE IF EXISTS photos_of_user"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 593
    const-string v0, "DROP TABLE IF EXISTS photos_from_circle"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 594
    const-string v0, "DROP TABLE IF EXISTS photo_stream"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 595
    const-string v0, "DROP TABLE IF EXISTS photo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 596
    const-string v0, "DROP TABLE IF EXISTS photo_comment"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 597
    const-string v0, "DROP TABLE IF EXISTS photo_shape"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 600
    const-string v0, "DROP VIEW IF EXISTS photos_home_view"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 601
    const-string v0, "DROP VIEW IF EXISTS photo_view"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 604
    const-string v0, "CREATE TABLE photo_home (_id INTEGER PRIMARY KEY AUTOINCREMENT, type INT NOT NULL, photo_count INT, sort_order INT NOT NULL DEFAULT(50), timestamp INT, notification_count INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 612
    const-string v0, "CREATE TABLE photo_home_cover (photo_home_key INT NOT NULL, photo_id INT, url TEXT NOT NULL, width INT, height INT, size INT, image BLOB, FOREIGN KEY (photo_home_key) REFERENCES photo_home(_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 622
    const-string v0, "CREATE TABLE photos_of_user (photo_id INT NOT NULL, photo_of_user_id TEXT NOT NULL, FOREIGN KEY (photo_id) REFERENCES photo(photo_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 627
    const-string v0, "CREATE TABLE photos_in_circle (_id INTEGER PRIMARY KEY, photo_id INT NOT NULL, circle_id TEXT, show_order INT DEFAULT \'0\', FOREIGN KEY (photo_id) REFERENCES photo(photo_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 634
    const-string v0, "CREATE TABLE photos_in_stream (_id INTEGER PRIMARY KEY, photo_id INT, stream_id TEXT NOT NULL, user_id TEXT NOT NULL, FOREIGN KEY (photo_id) REFERENCES photo(photo_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 641
    const-string v0, "CREATE TABLE photo (_id INTEGER PRIMARY KEY AUTOINCREMENT, photo_id INT NOT NULL, url TEXT, title TEXT, description TEXT, action_state INT, comment_count INT, owner_id TEXT, plus_one_key INT NOT NULL, width INT, height INT, album_id INT NOT NULL, activities BLOB, timestamp INT, entity_version INT, fingerprint BLOB, video_data BLOB, upload_status INT NOT NULL DEFAULT(0), downloadable BOOLEAN, UNIQUE (photo_id) FOREIGN KEY (album_id) REFERENCES album(album_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 664
    const-string v0, "CREATE TABLE photo_shape (shape_id INTEGER PRIMARY KEY,photo_id INT NOT NULL,subject_id TEXT,creator_id TEXT NOT NULL,status INT DEFAULT \'0\' NOT NULL,bounds BLOB, FOREIGN KEY (photo_id) REFERENCES photo(photo_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 673
    const-string v0, "CREATE TABLE photo_comment (_id INTEGER PRIMARY KEY, photo_id INT NOT NULL, comment_id TEXT UNIQUE NOT NULL, author_id TEXT NOT NULL, content TEXT, create_time INT, truncated INT, update_time INT, plusone_data BLOB, FOREIGN KEY (photo_id) REFERENCES photo(photo_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 686
    const-string v0, "CREATE TABLE photos_in_activity (_id INTEGER PRIMARY KEY, photo_id INT, activity_id TEXT NOT NULL, media_url TEXT, FOREIGN KEY (photo_id) REFERENCES photo(photo_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 693
    const-string v0, "CREATE TABLE photos_in_album (_id INTEGER PRIMARY KEY, photo_id INT NOT NULL, album_id INT NOT NULL, FOREIGN KEY (photo_id) REFERENCES photo(photo_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method private upgradeToVersion814(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 701
    const-string v0, "CREATE TABLE photos_in_event (_id INTEGER PRIMARY KEY, photo_id INT NOT NULL, event_id TEXT NOT NULL, UNIQUE (photo_id, event_id) FOREIGN KEY (photo_id) REFERENCES photo(photo_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method private upgradeToVersion815(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 710
    const-string v0, "CREATE TABLE activities2 (_id INTEGER PRIMARY KEY, activity_id TEXT UNIQUE NOT NULL, data_state INT NOT NULL DEFAULT (0), author_id TEXT NOT NULL, source INT NOT NULL, source_name TEXT, total_comment_count INT NOT NULL, plus_one_data BLOB, public INT NOT NULL, acl_display TEXT, can_comment INT NOT NULL, can_reshare INT NOT NULL, has_muted INT NOT NULL, has_read INT NOT NULL, loc BLOB, explanations BLOB, media BLOB, created INT NOT NULL, modified INT NOT NULL, updated INT NOT NULL, a2a_hangout_data BLOB, event_id TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 734
    const-string v0, "INSERT INTO activities2 (_id, activity_id, data_state, author_id, source,source_name, total_comment_count, plus_one_data, public, acl_display,can_comment, can_reshare, has_muted, has_read, loc, explanations, media,created, modified, updated, a2a_hangout_data, event_id) SELECT _id,activity_id, data_state, author_id, source, source_name,total_comment_count, plus_one_data, public, acl_display, can_comment, can_reshare, has_muted, has_read, loc, explanations, media, created, modified, updated, a2a_hangout_data, event_id FROM activities;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 743
    const-string v0, "DROP TABLE activities;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 744
    const-string v0, "ALTER TABLE activities2 RENAME TO activities;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 745
    return-void
.end method

.method private upgradeToVersion816(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 748
    const-string v0, "ALTER TABLE notifications  ADD COLUMN seen INT DEFAULT(1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method private upgradeToVersion817(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 753
    const-string v0, "CREATE TABLE event_theme_images (image_url TEXT NOT NULL PRIMARY KEY,image_data BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 757
    const-string v0, "ALTER TABLE account_status  ADD COLUMN event_themes_sync_time INT DEFAULT(-1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method private upgradeToVersion818(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 762
    const-string v0, "DROP TABLE IF EXISTS event_themes;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 763
    const-string v0, "CREATE TABLE event_themes (_id INTEGER PRIMARY KEY AUTOINCREMENT, theme_id INTEGER UNIQUE NOT NULL, is_default INT DEFAULT(0), is_featured INT DEFAULT(0), image_url TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 770
    const-string v0, "UPDATE account_status SET event_themes_sync_time = -1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method private upgradeToVersion819(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 774
    const-string v0, "ALTER TABLE activities  ADD COLUMN photo_collection BLOB"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method private upgradeToVersion820(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 779
    const-string v0, "DROP TABLE IF EXISTS event_activities;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 780
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 782
    const-string v0, "CREATE TABLE events(_id INTEGER PRIMARY KEY AUTOINCREMENT, event_id TEXT UNIQUE NOT NULL, owner_gaia_id TEXT NOT NULL, activity_id TEXT UNIQUE, name TEXT, update_timestamp INT, refresh_timestamp INT, event_data BLOB, end_time INT NOT NULL, mine BOOLEAN DEFAULT \'0\' NOT NULL,activity_refresh_timestamp INT DEFAULT(-1),fingerprint INT DEFAULT(0),can_invite_people INT DEFAULT(0),can_post_photos INT DEFAULT(0));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 798
    const-string v0, "CREATE TABLE event_activities ( _id INTEGER PRIMARY KEY AUTOINCREMENT,  event_id TEXT NOT NULL,  type INT,  owner_gaia_id TEXT,  owner_name TEXT,  timestamp INT,  data BLOB, fingerprint INT DEFAULT(0), FOREIGN KEY (event_id) REFERENCES events(event_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method private upgradeToVersion821(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 811
    const-string v0, "DROP VIEW IF EXISTS activity_view"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 812
    return-void
.end method

.method private upgradeToVersion822(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 815
    const-string v0, "ALTER TABLE events ADD COLUMN polling_token TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 816
    return-void
.end method

.method private upgradeToVersion823(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 819
    const-string v0, "ALTER TABLE activities ADD COLUMN popular_post INT DEFAULT(0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method private upgradeToVersion824(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 823
    const-string v0, "ALTER TABLE account_status  ADD COLUMN last_stats_sync_time INT DEFAULT(-1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 826
    const-string v0, "ALTER TABLE account_status  ADD COLUMN last_contacted_time INT DEFAULT(-1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method private upgradeToVersion825(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 831
    const-string v0, "ALTER TABLE events ADD COLUMN invitee_roster_timestamp INT DEFAULT(-1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 832
    const-string v0, "ALTER TABLE events ADD COLUMN invitee_roster BLOB"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method private upgradeToVersion826(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 836
    const-string v0, "ALTER TABLE account_status  ADD COLUMN wipeout_stats INT DEFAULT(0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 838
    return-void
.end method

.method private upgradeToVersion827(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 841
    const-string v0, "DELETE FROM activities"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 842
    const-string v0, "DELETE FROM activity_comments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 843
    const-string v0, "DELETE FROM activity_streams"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 844
    const-string v0, "DELETE FROM media"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method private upgradeToVersion900(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 848
    const-string v0, "DELETE FROM activities"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 849
    const-string v0, "DELETE FROM activity_comments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 850
    const-string v0, "DELETE FROM activity_streams"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 851
    const-string v0, "DELETE FROM media"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 853
    const-string v0, "ALTER TABLE activities ADD COLUMN content_flags INT NOT NULL DEFAULT(0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 854
    return-void
.end method

.method private upgradeToVersion901(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 857
    const-string v0, "CREATE TABLE hangout_suggestions (_id INTEGER PRIMARY KEY, participant_id TEXT UNIQUE ON CONFLICT REPLACE, full_name TEXT, first_name TEXT,sequence INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 863
    return-void
.end method

.method private upgradeToVersion902(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 866
    const-string v0, "DELETE FROM activities"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 867
    const-string v0, "DELETE FROM activity_comments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 868
    const-string v0, "DELETE FROM activity_streams"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 869
    const-string v0, "DELETE FROM media"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method private upgradeToVersion903(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 873
    const-string v0, "DELETE FROM activities"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 874
    const-string v0, "DELETE FROM activity_comments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 875
    const-string v0, "DELETE FROM activity_streams"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 876
    const-string v0, "DELETE FROM media"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method private upgradeToVersion904(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 880
    const-string v0, "ALTER TABLE notifications ADD COLUMN notification_type TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method private upgradeToVersion905(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 884
    const-string v0, "UPDATE media SET data = NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 885
    return-void
.end method

.method private upgradeToVersion906(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 888
    const-string v0, "DELETE FROM events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 889
    const-string v0, "ALTER TABLE events ADD COLUMN start_time INT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 890
    return-void
.end method

.method private upgradeToVersion907(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 893
    const-string v0, "ALTER TABLE events ADD COLUMN resume_token TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method private upgradeToVersion908(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 897
    const-string v0, "ALTER TABLE events ADD COLUMN display_time INT DEFAULT (0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 898
    return-void
.end method

.method private upgradeToVersion909(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 901
    const-string v0, "DELETE FROM events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 902
    const-string v0, "DELETE FROM event_activities"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 903
    const-string v0, "ALTER TABLE event_activities ADD COLUMN url TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 904
    const-string v0, "ALTER TABLE event_activities ADD COLUMN comment TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 905
    return-void
.end method

.method private upgradeToVersion912(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 908
    const-string v0, "DELETE FROM activities"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 909
    const-string v0, "DELETE FROM activity_comments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 910
    const-string v0, "DELETE FROM activity_streams"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 911
    const-string v0, "DELETE FROM media"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method private upgradeViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .parameter "db"

    .prologue
    .line 994
    const-string v4, "EsDatabaseHelper"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 995
    const-string v4, "EsDatabaseHelper"

    const-string v5, "Upgrade database views"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_10
    const-string v2, "DROP VIEW IF EXISTS "

    .line 999
    .local v2, viewPrefix:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/plus/content/EsProvider;->getViewNames()[Ljava/lang/String;

    move-result-object v1

    .line 1000
    .local v1, viewName:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    array-length v4, v1

    if-ge v0, v4, :cond_35

    .line 1001
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

    .line 1000
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1004
    :cond_35
    invoke-static {}, Lcom/google/android/apps/plus/content/EsProvider;->getViewSQLs()[Ljava/lang/String;

    move-result-object v3

    .line 1005
    .local v3, viewSQL:[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_3a
    array-length v4, v3

    if-ge v0, v4, :cond_45

    .line 1006
    aget-object v4, v3, v0

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 1008
    :cond_45
    return-void
.end method


# virtual methods
.method public createNewDatabase()V
    .registers 2

    .prologue
    .line 1141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mDeleted:Z

    .line 1142
    return-void
.end method

.method public deleteDatabase()V
    .registers 5

    .prologue
    .line 1107
    new-instance v1, Lcom/google/android/apps/plus/content/EsDatabaseHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper$1;-><init>(Lcom/google/android/apps/plus/content/EsDatabaseHelper;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1115
    return-void
.end method

.method public declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    .prologue
    .line 1086
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mDeleted:Z

    if-eqz v0, :cond_10

    .line 1087
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database deleted"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 1086
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1089
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
    .line 1097
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mDeleted:Z

    if-eqz v0, :cond_10

    .line 1098
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database deleted"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 1097
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1100
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
    .line 150
    invoke-static {}, Lcom/google/android/apps/plus/content/EsProvider;->getTableSQLs()[Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, sqls:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 152
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 155
    :cond_10
    invoke-static {}, Lcom/google/android/apps/plus/content/EsProvider;->getIndexSQLs()[Ljava/lang/String;

    move-result-object v1

    .line 156
    const/4 v0, 0x0

    :goto_15
    array-length v2, v1

    if-ge v0, v2, :cond_20

    .line 157
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 160
    :cond_20
    invoke-static {}, Lcom/google/android/apps/plus/content/EsProvider;->getViewSQLs()[Ljava/lang/String;

    move-result-object v1

    .line 161
    const/4 v0, 0x0

    :goto_25
    array-length v2, v1

    if-ge v0, v2, :cond_30

    .line 162
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 165
    :cond_30
    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/google/android/apps/plus/content/EsProvider;->insertVirtualCircles(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 167
    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/plus/util/RingtoneUtils;->registerHangoutRingtoneIfNecessary(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->rebuildTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 176
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 140
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_b

    .line 141
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    :cond_b
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 10
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v5, 0x2f8

    .line 183
    const-string v2, "EsDatabaseHelper"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 184
    const-string v2, "EsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrade database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2d
    if-ge p2, v5, :cond_32

    .line 189
    :try_start_2f
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->preserveStreamViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 192
    :cond_32
    if-ge p3, p2, :cond_38

    .line 194
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->rebuildTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 455
    :cond_37
    :goto_37
    return-void

    .line 198
    :cond_38
    const/16 v2, 0x2f4

    if-ge p2, v2, :cond_91

    .line 201
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->rebuildTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 202
    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mIndex:I

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/content/EsAccountsData;->onAccountUpgradeRequired(Landroid/content/Context;I)V

    .line 204
    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccountUnsafe(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 205
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_37

    .line 206
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    const-string v3, "com.google.android.apps.plus.content.EsProvider"

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_60
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_60} :catch_61

    goto :goto_37

    .line 448
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :catch_61
    move-exception v1

    .line 449
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "EsDatabaseHelper"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 450
    const-string v2, "EsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to upgrade database: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 453
    :cond_8d
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->rebuildTables(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_37

    .line 213
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    :cond_91
    const/16 v2, 0x2f6

    if-ge p2, v2, :cond_9a

    .line 214
    :try_start_95
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion758(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 215
    const/16 p2, 0x2f6

    .line 219
    :cond_9a
    const/16 v2, 0x2f7

    if-ge p2, v2, :cond_a3

    .line 220
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion759(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 221
    const/16 p2, 0x2f7

    .line 224
    :cond_a3
    if-ge p2, v5, :cond_a7

    .line 226
    const/16 p2, 0x2f8

    .line 229
    :cond_a7
    const/16 v2, 0x2f9

    if-ge p2, v2, :cond_b0

    .line 230
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion761(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 231
    const/16 p2, 0x2f9

    .line 234
    :cond_b0
    const/16 v2, 0x320

    if-ge p2, v2, :cond_b9

    .line 235
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion800(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 236
    const/16 p2, 0x320

    .line 239
    :cond_b9
    const/16 v2, 0x321

    if-ge p2, v2, :cond_bf

    .line 241
    const/16 p2, 0x321

    .line 244
    :cond_bf
    const/16 v2, 0x322

    if-ge p2, v2, :cond_c8

    .line 245
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion802(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 246
    const/16 p2, 0x322

    .line 249
    :cond_c8
    const/16 v2, 0x323

    if-ge p2, v2, :cond_ce

    .line 251
    const/16 p2, 0x323

    .line 254
    :cond_ce
    const/16 v2, 0x324

    if-ge p2, v2, :cond_d7

    .line 255
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion804(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 256
    const/16 p2, 0x324

    .line 259
    :cond_d7
    const/16 v2, 0x326

    if-ge p2, v2, :cond_e0

    .line 260
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion806(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 261
    const/16 p2, 0x326

    .line 264
    :cond_e0
    const/16 v2, 0x327

    if-ge p2, v2, :cond_e9

    .line 265
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion807(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 266
    const/16 p2, 0x327

    .line 269
    :cond_e9
    const/16 v2, 0x328

    if-ge p2, v2, :cond_f2

    .line 270
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion808(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 271
    const/16 p2, 0x328

    .line 274
    :cond_f2
    const/16 v2, 0x32c

    if-ge p2, v2, :cond_fb

    .line 275
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion812(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 276
    const/16 p2, 0x32c

    .line 279
    :cond_fb
    const/16 v2, 0x32d

    if-ge p2, v2, :cond_104

    .line 280
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion813(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 281
    const/16 p2, 0x32d

    .line 284
    :cond_104
    const/16 v2, 0x32e

    if-ge p2, v2, :cond_10d

    .line 285
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion814(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 286
    const/16 p2, 0x32e

    .line 289
    :cond_10d
    const/16 v2, 0x32f

    if-ge p2, v2, :cond_116

    .line 290
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion815(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 291
    const/16 p2, 0x32f

    .line 294
    :cond_116
    const/16 v2, 0x330

    if-ge p2, v2, :cond_11f

    .line 295
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion816(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 296
    const/16 p2, 0x330

    .line 299
    :cond_11f
    const/16 v2, 0x331

    if-ge p2, v2, :cond_128

    .line 300
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion817(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 301
    const/16 p2, 0x331

    .line 304
    :cond_128
    const/16 v2, 0x332

    if-ge p2, v2, :cond_131

    .line 305
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion818(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 306
    const/16 p2, 0x332

    .line 309
    :cond_131
    const/16 v2, 0x333

    if-ge p2, v2, :cond_13a

    .line 310
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion819(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 311
    const/16 p2, 0x333

    .line 314
    :cond_13a
    const/16 v2, 0x334

    if-ge p2, v2, :cond_143

    .line 315
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion820(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 316
    const/16 p2, 0x334

    .line 319
    :cond_143
    const/16 v2, 0x335

    if-ge p2, v2, :cond_14c

    .line 320
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion821(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 321
    const/16 p2, 0x335

    .line 324
    :cond_14c
    const/16 v2, 0x336

    if-ge p2, v2, :cond_155

    .line 325
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion822(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 326
    const/16 p2, 0x336

    .line 329
    :cond_155
    const/16 v2, 0x337

    if-ge p2, v2, :cond_15e

    .line 330
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion823(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 331
    const/16 p2, 0x337

    .line 334
    :cond_15e
    const/16 v2, 0x338

    if-ge p2, v2, :cond_167

    .line 335
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion824(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 336
    const/16 p2, 0x338

    .line 339
    :cond_167
    const/16 v2, 0x339

    if-ge p2, v2, :cond_170

    .line 340
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion825(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 341
    const/16 p2, 0x339

    .line 344
    :cond_170
    const/16 v2, 0x33a

    if-ge p2, v2, :cond_179

    .line 345
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion826(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 346
    const/16 p2, 0x33a

    .line 349
    :cond_179
    const/16 v2, 0x33b

    if-ge p2, v2, :cond_182

    .line 350
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion827(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 351
    const/16 p2, 0x33b

    .line 354
    :cond_182
    const/16 v2, 0x384

    if-ge p2, v2, :cond_18b

    .line 355
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion900(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 356
    const/16 p2, 0x384

    .line 359
    :cond_18b
    const/16 v2, 0x385

    if-ge p2, v2, :cond_194

    .line 360
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion901(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 361
    const/16 p2, 0x385

    .line 364
    :cond_194
    const/16 v2, 0x386

    if-ge p2, v2, :cond_19d

    .line 365
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion902(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 366
    const/16 p2, 0x386

    .line 369
    :cond_19d
    const/16 v2, 0x387

    if-ge p2, v2, :cond_1a6

    .line 370
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion903(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 371
    const/16 p2, 0x387

    .line 374
    :cond_1a6
    const/16 v2, 0x388

    if-ge p2, v2, :cond_1af

    .line 375
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion904(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 376
    const/16 p2, 0x388

    .line 379
    :cond_1af
    const/16 v2, 0x389

    if-ge p2, v2, :cond_1b8

    .line 380
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion905(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 381
    const/16 p2, 0x389

    .line 384
    :cond_1b8
    const/16 v2, 0x38a

    if-ge p2, v2, :cond_1c1

    .line 385
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion906(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 386
    const/16 p2, 0x38a

    .line 389
    :cond_1c1
    const/16 v2, 0x38b

    if-ge p2, v2, :cond_1ca

    .line 390
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion907(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 391
    const/16 p2, 0x38b

    .line 394
    :cond_1ca
    const/16 v2, 0x38c

    if-ge p2, v2, :cond_1d3

    .line 395
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion908(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 396
    const/16 p2, 0x38c

    .line 399
    :cond_1d3
    const/16 v2, 0x38d

    if-ge p2, v2, :cond_1dc

    .line 400
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion909(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 401
    const/16 p2, 0x38d

    .line 404
    :cond_1dc
    const/16 v2, 0x38f

    if-ge p2, v2, :cond_1e7

    .line 405
    iget-object v2, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/apps/plus/util/RingtoneUtils;->registerHangoutRingtoneIfNecessary(Landroid/content/Context;)V

    .line 406
    const/16 p2, 0x38f

    .line 409
    :cond_1e7
    const/16 v2, 0x390

    if-ge p2, v2, :cond_1f0

    .line 410
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion912(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 411
    const/16 p2, 0x390

    .line 414
    :cond_1f0
    const/16 v2, 0x3e8

    if-ge p2, v2, :cond_1f9

    .line 415
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion1000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 416
    const/16 p2, 0x3e8

    .line 419
    :cond_1f9
    const/16 v2, 0x3e9

    if-ge p2, v2, :cond_202

    .line 420
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion1001(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 421
    const/16 p2, 0x3e9

    .line 424
    :cond_202
    const/16 v2, 0x3ea

    if-ge p2, v2, :cond_20b

    .line 425
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion1002(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 426
    const/16 p2, 0x3ea

    .line 429
    :cond_20b
    const/16 v2, 0x3eb

    if-ge p2, v2, :cond_214

    .line 430
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion1003(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 431
    const/16 p2, 0x3eb

    .line 434
    :cond_214
    const/16 v2, 0x3ec

    if-ge p2, v2, :cond_21d

    .line 435
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeToVersion1004(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 436
    const/16 p2, 0x3ec

    .line 447
    :cond_21d
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->upgradeViews(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_220
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_95 .. :try_end_220} :catch_61

    goto/16 :goto_37
.end method

.method public rebuildTables(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "db"
    .parameter "account"

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1026
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->dropAllViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1028
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1030
    if-eqz p2, :cond_3d

    .line 1031
    invoke-virtual {p2}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, gaiaId:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE account_status SET user_id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IS NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1036
    .end local v0           #gaiaId:Ljava/lang/String;
    :cond_3d
    return-void
.end method
