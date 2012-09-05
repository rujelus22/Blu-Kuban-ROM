.class public Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SnsAccountFbDBHelper.java"


# static fields
.field private static mInstance:Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;


# instance fields
.field private final SNS_DB_INTEGER_TYPE:Ljava/lang/String;

.field private final SNS_DB_PRIMARY_KEY_TYPE:Ljava/lang/String;

.field private final SNS_DB_SYNC_TYPE:Ljava/lang/String;

.field private final SNS_DB_TIME_TYPE:Ljava/lang/String;

.field private final SNS_DB_USERNAME_TYPE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInitPollingCycle:I

.field private mInitPreviousRequestId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mInstance:Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 73
    const-string v0, "snsAccountFbDB.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 47
    const-string v0, "INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL"

    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->SNS_DB_PRIMARY_KEY_TYPE:Ljava/lang/String;

    .line 49
    const-string v0, "INTEGER"

    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->SNS_DB_INTEGER_TYPE:Ljava/lang/String;

    .line 51
    const-string v0, "VARCHAR(10)"

    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->SNS_DB_SYNC_TYPE:Ljava/lang/String;

    .line 53
    const-string v0, "VARCHAR(40)"

    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->SNS_DB_USERNAME_TYPE:Ljava/lang/String;

    .line 55
    const-string v0, "TIMESTAMP"

    iput-object v0, p0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->SNS_DB_TIME_TYPE:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mInitPollingCycle:I

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mInitPreviousRequestId:I

    .line 75
    iput-object p1, p0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 66
    const-class v1, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mInstance:Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;

    if-nez v0, :cond_e

    .line 67
    new-instance v0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mInstance:Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;

    .line 69
    :cond_e
    sget-object v0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mInstance:Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 20
    .parameter "db"

    .prologue
    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 124
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 125
    .local v17, values:Landroid/content/ContentValues;
    const/4 v15, 0x0

    .line 128
    .local v15, c6:Landroid/database/Cursor;
    :try_start_9
    const-string v2, "CREATE TABLE IF NOT EXISTS username_list (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,time TIMESTAMP,username VARCHAR(40));"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v2, "CREATE TABLE IF NOT EXISTS polling_cycle (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,synctype VARCHAR(10),time INTEGER);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_17} :catch_133

    .line 144
    :try_start_17
    const-string v3, "polling_cycle"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "time"

    aput-object v5, v4, v2

    const-string v5, "synctype = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "contacts"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_33} :catch_13e

    move-result-object v10

    .line 154
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_149

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_149

    .line 155
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 163
    :goto_3f
    if-eqz v10, :cond_44

    .line 164
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_44
    :try_start_44
    const-string v3, "polling_cycle"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "time"

    aput-object v5, v4, v2

    const-string v5, "synctype = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "calendar"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_60
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_44 .. :try_end_60} :catch_170

    move-result-object v11

    .line 177
    .local v11, c2:Landroid/database/Cursor;
    if-eqz v11, :cond_17b

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_17b

    .line 178
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 186
    :goto_6c
    if-eqz v11, :cond_71

    .line 187
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_71
    :try_start_71
    const-string v3, "polling_cycle"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "time"

    aput-object v5, v4, v2

    const-string v5, "synctype = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "message"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_71 .. :try_end_8d} :catch_1a2

    move-result-object v12

    .line 200
    .local v12, c3:Landroid/database/Cursor;
    if-eqz v12, :cond_1ad

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1ad

    .line 201
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 209
    :goto_99
    if-eqz v12, :cond_9e

    .line 210
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_9e
    :try_start_9e
    const-string v2, "CREATE TABLE IF NOT EXISTS previous_request_id (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,synctype VARCHAR(10),requestid INTEGER);"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9e .. :try_end_a5} :catch_1d4

    .line 225
    :try_start_a5
    const-string v3, "previous_request_id"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "requestid"

    aput-object v5, v4, v2

    const-string v5, "requestid = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "contacts"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a5 .. :try_end_c1} :catch_1e0

    move-result-object v13

    .line 235
    .local v13, c4:Landroid/database/Cursor;
    if-eqz v13, :cond_1ec

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1ec

    .line 236
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 244
    :goto_cd
    if-eqz v13, :cond_d2

    .line 245
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 248
    :cond_d2
    :try_start_d2
    const-string v3, "previous_request_id"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "requestid"

    aput-object v5, v4, v2

    const-string v5, "requestid = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "calendar"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ee
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d2 .. :try_end_ee} :catch_213

    move-result-object v14

    .line 258
    .local v14, c5:Landroid/database/Cursor;
    if-eqz v14, :cond_21f

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_21f

    .line 259
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 267
    :goto_fa
    if-eqz v14, :cond_ff

    .line 268
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_ff
    :try_start_ff
    const-string v3, "previous_request_id"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "requestid"

    aput-object v5, v4, v2

    const-string v5, "requestid = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "message"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ff .. :try_end_11b} :catch_246

    move-result-object v15

    .line 281
    if-eqz v15, :cond_252

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_252

    .line 282
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 290
    :goto_127
    if-eqz v15, :cond_12c

    .line 291
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_12c
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 295
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #c2:Landroid/database/Cursor;
    .end local v12           #c3:Landroid/database/Cursor;
    .end local v13           #c4:Landroid/database/Cursor;
    .end local v14           #c5:Landroid/database/Cursor;
    :goto_132
    return-void

    .line 138
    :catch_133
    move-exception v16

    .line 139
    .local v16, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "SnsAccountFb"

    const-string v3, "Error executing SQL "

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_132

    .line 149
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    :catch_13e
    move-exception v16

    .line 150
    .restart local v16       #e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "SnsAccountFb"

    const-string v3, "Error executing query "

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_132

    .line 157
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v10       #c:Landroid/database/Cursor;
    :cond_149
    const-string v2, "synctype"

    const-string v3, "contacts"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "time"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mInitPollingCycle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v2, "polling_cycle"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 160
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_3f

    .line 172
    :catch_170
    move-exception v16

    .line 173
    .restart local v16       #e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "SnsAccountFb"

    const-string v3, "Error executing query "

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_132

    .line 180
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v11       #c2:Landroid/database/Cursor;
    :cond_17b
    const-string v2, "synctype"

    const-string v3, "calendar"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v2, "time"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mInitPollingCycle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const-string v2, "polling_cycle"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 183
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_6c

    .line 195
    :catch_1a2
    move-exception v16

    .line 196
    .restart local v16       #e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "SnsAccountFb"

    const-string v3, "Error executing query "

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_132

    .line 203
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v12       #c3:Landroid/database/Cursor;
    :cond_1ad
    const-string v2, "synctype"

    const-string v3, "message"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v2, "time"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mInitPollingCycle:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string v2, "polling_cycle"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 206
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_99

    .line 219
    :catch_1d4
    move-exception v16

    .line 220
    .restart local v16       #e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "SnsAccountFb"

    const-string v3, "Error executing SQL "

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_132

    .line 230
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1e0
    move-exception v16

    .line 231
    .restart local v16       #e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "SnsAccountFb"

    const-string v3, "Error executing query "

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_132

    .line 238
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v13       #c4:Landroid/database/Cursor;
    :cond_1ec
    const-string v2, "synctype"

    const-string v3, "contacts"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v2, "requestid"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mInitPreviousRequestId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v2, "previous_request_id"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 241
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_cd

    .line 253
    :catch_213
    move-exception v16

    .line 254
    .restart local v16       #e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "SnsAccountFb"

    const-string v3, "Error executing query "

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_132

    .line 261
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v14       #c5:Landroid/database/Cursor;
    :cond_21f
    const-string v2, "synctype"

    const-string v3, "calendar"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v2, "requestid"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mInitPreviousRequestId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    const-string v2, "previous_request_id"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 264
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_fa

    .line 276
    :catch_246
    move-exception v16

    .line 277
    .restart local v16       #e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "SnsAccountFb"

    const-string v3, "Error executing query "

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_132

    .line 284
    .end local v16           #e:Landroid/database/sqlite/SQLiteException;
    :cond_252
    const-string v2, "synctype"

    const-string v3, "message"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v2, "requestid"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mInitPreviousRequestId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v2, "previous_request_id"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 287
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_127
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 10
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v5, 0x0

    .line 87
    :try_start_1
    const-string v3, "DROP TABLE IF EXISTS polling_cycle"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const-string v3, "DROP TABLE IF EXISTS username_list"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string v3, "DROP TABLE IF EXISTS previous_request_id"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_10} :catch_42

    .line 95
    invoke-virtual {p0, p1}, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_41

    .line 100
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v2, extra:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sec/android/app/snsaccountfb/db/SnsAccountFbDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 104
    .local v0, account:[Landroid/accounts/Account;
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_41

    .line 105
    aget-object v3, v0, v5

    const-string v4, "com.android.contacts"

    invoke-static {v3, v4, v2}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    aget-object v3, v0, v5

    const-string v4, "com.android.calendar"

    invoke-static {v3, v4, v2}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 109
    const-string v3, "SnsAccountFb"

    const-string v4, "onUpgrade : removePeriodicSync spType :0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0           #account:[Landroid/accounts/Account;
    .end local v2           #extra:Landroid/os/Bundle;
    :cond_41
    :goto_41
    return-void

    .line 90
    :catch_42
    move-exception v1

    .line 91
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "SnsAccountFb"

    const-string v4, "Error executing SQL "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41
.end method
