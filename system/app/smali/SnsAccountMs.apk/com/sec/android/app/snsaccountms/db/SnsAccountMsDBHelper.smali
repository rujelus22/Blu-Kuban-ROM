.class public Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SnsAccountMsDBHelper.java"


# static fields
.field private static mInstance:Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;


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

    sput-object v0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->mInstance:Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 73
    const-string v0, "snsAccountTwDB.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 47
    const-string v0, "INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL"

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->SNS_DB_PRIMARY_KEY_TYPE:Ljava/lang/String;

    .line 49
    const-string v0, "INTEGER"

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->SNS_DB_INTEGER_TYPE:Ljava/lang/String;

    .line 51
    const-string v0, "VARCHAR(10)"

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->SNS_DB_SYNC_TYPE:Ljava/lang/String;

    .line 53
    const-string v0, "VARCHAR(40)"

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->SNS_DB_USERNAME_TYPE:Ljava/lang/String;

    .line 55
    const-string v0, "TIMESTAMP"

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->SNS_DB_TIME_TYPE:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->mInitPollingCycle:I

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->mInitPreviousRequestId:I

    .line 75
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 66
    const-class v1, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->mInstance:Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;

    if-nez v0, :cond_e

    .line 67
    new-instance v0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->mInstance:Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;

    .line 69
    :cond_e
    sget-object v0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->mInstance:Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;
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
    .registers 16
    .parameter "db"

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 122
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .local v13, values:Landroid/content/ContentValues;
    const/4 v11, 0x0

    .line 126
    .local v11, c4:Landroid/database/Cursor;
    :try_start_9
    const-string v0, "CREATE TABLE IF NOT EXISTS username_list (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,time TIMESTAMP,username VARCHAR(40));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    const-string v0, "CREATE TABLE IF NOT EXISTS polling_cycle (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,synctype VARCHAR(10),time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_13} :catch_cf

    .line 142
    :try_start_13
    const-string v1, "polling_cycle"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "time"

    aput-object v3, v2, v0

    const-string v3, "synctype = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "contacts"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_2e} :catch_d8

    move-result-object v8

    .line 152
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_e1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e1

    .line 153
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 161
    :goto_3a
    if-eqz v8, :cond_3f

    .line 162
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_3f
    :try_start_3f
    const-string v1, "polling_cycle"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "time"

    aput-object v3, v2, v0

    const-string v3, "synctype = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "message"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_5a} :catch_fe

    move-result-object v9

    .line 175
    .local v9, c2:Landroid/database/Cursor;
    if-eqz v9, :cond_107

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_107

    .line 176
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 184
    :goto_66
    if-eqz v9, :cond_6b

    .line 185
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_6b
    :try_start_6b
    const-string v0, "CREATE TABLE IF NOT EXISTS previous_request_id (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,synctype VARCHAR(10),requestid INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6b .. :try_end_70} :catch_124

    .line 200
    :try_start_70
    const-string v1, "previous_request_id"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "requestid"

    aput-object v3, v2, v0

    const-string v3, "requestid = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "contacts"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_70 .. :try_end_8b} :catch_12d

    move-result-object v10

    .line 210
    .local v10, c3:Landroid/database/Cursor;
    if-eqz v10, :cond_136

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_136

    .line 211
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 219
    :goto_97
    if-eqz v10, :cond_9c

    .line 220
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_9c
    :try_start_9c
    const-string v1, "previous_request_id"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "requestid"

    aput-object v3, v2, v0

    const-string v3, "requestid = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "message"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9c .. :try_end_b7} :catch_153

    move-result-object v11

    .line 232
    if-eqz v11, :cond_15d

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_15d

    .line 233
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 241
    :goto_c3
    if-eqz v11, :cond_c8

    .line 242
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 244
    :cond_c8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 245
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 246
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #c2:Landroid/database/Cursor;
    .end local v10           #c3:Landroid/database/Cursor;
    :goto_ce
    return-void

    .line 136
    :catch_cf
    move-exception v12

    .line 137
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "SnsAccountMs"

    const-string v1, "Error executing SQL "

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ce

    .line 147
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :catch_d8
    move-exception v12

    .line 148
    .restart local v12       #e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "SnsAccountMs"

    const-string v1, "Error executing query "

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ce

    .line 155
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_e1
    const-string v0, "synctype"

    const-string v1, "contacts"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, "time"

    iget v1, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->mInitPollingCycle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v0, "polling_cycle"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 158
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_3a

    .line 170
    :catch_fe
    move-exception v12

    .line 171
    .restart local v12       #e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "SnsAccountMs"

    const-string v1, "Error executing query  "

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ce

    .line 178
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v9       #c2:Landroid/database/Cursor;
    :cond_107
    const-string v0, "synctype"

    const-string v1, "message"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "time"

    iget v1, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->mInitPollingCycle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v0, "polling_cycle"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 181
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_66

    .line 194
    :catch_124
    move-exception v12

    .line 195
    .restart local v12       #e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "SnsAccountMs"

    const-string v1, "Error executing SQL "

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ce

    .line 205
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :catch_12d
    move-exception v12

    .line 206
    .restart local v12       #e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "SnsAccountMs"

    const-string v1, "Error executing query "

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ce

    .line 213
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v10       #c3:Landroid/database/Cursor;
    :cond_136
    const-string v0, "synctype"

    const-string v1, "contacts"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "requestid"

    iget v1, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->mInitPreviousRequestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v0, "previous_request_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 216
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_97

    .line 228
    :catch_153
    move-exception v12

    .line 229
    .restart local v12       #e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "SnsAccountMs"

    const-string v1, "Error executing query "

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ce

    .line 235
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    :cond_15d
    const-string v0, "synctype"

    const-string v1, "message"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "requestid"

    iget v1, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->mInitPreviousRequestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v0, "previous_request_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 238
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_c3
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 87
    :try_start_0
    const-string v3, "DROP TABLE IF EXISTS polling_cycle"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const-string v3, "DROP TABLE IF EXISTS username_list"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string v3, "DROP TABLE IF EXISTS previous_request_id"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_f} :catch_3b

    .line 95
    invoke-virtual {p0, p1}, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    iget-object v3, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3a

    .line 100
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v2, extra:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.snsaccountmyspace.account_type"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 104
    .local v0, account:[Landroid/accounts/Account;
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    .line 105
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string v4, "com.android.contacts"

    invoke-static {v3, v4, v2}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    const-string v3, "SnsAccountMs"

    const-string v4, "onUpgrade : removePeriodicSync spType :1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0           #account:[Landroid/accounts/Account;
    .end local v2           #extra:Landroid/os/Bundle;
    :cond_3a
    :goto_3a
    return-void

    .line 90
    :catch_3b
    move-exception v1

    .line 91
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "SnsAccountMs"

    const-string v4, "Error executing SQL "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a
.end method
