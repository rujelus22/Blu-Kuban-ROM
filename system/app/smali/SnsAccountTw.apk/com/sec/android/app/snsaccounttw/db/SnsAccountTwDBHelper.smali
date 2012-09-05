.class public Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SnsAccountTwDBHelper.java"


# static fields
.field private static mInstance:Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;


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

    sput-object v0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->mInstance:Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;

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

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->SNS_DB_PRIMARY_KEY_TYPE:Ljava/lang/String;

    .line 49
    const-string v0, "INTEGER"

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->SNS_DB_INTEGER_TYPE:Ljava/lang/String;

    .line 51
    const-string v0, "VARCHAR(10)"

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->SNS_DB_SYNC_TYPE:Ljava/lang/String;

    .line 53
    const-string v0, "VARCHAR(40)"

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->SNS_DB_USERNAME_TYPE:Ljava/lang/String;

    .line 55
    const-string v0, "TIMESTAMP"

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->SNS_DB_TIME_TYPE:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->mInitPollingCycle:I

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->mInitPreviousRequestId:I

    .line 75
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;
    .registers 3
    .parameter "context"

    .prologue
    .line 66
    const-class v1, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->mInstance:Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;

    if-nez v0, :cond_e

    .line 67
    new-instance v0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->mInstance:Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;

    .line 69
    :cond_e
    sget-object v0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->mInstance:Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;
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
    .registers 15
    .parameter "db"

    .prologue
    const/4 v12, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 121
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 122
    .local v11, values:Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 125
    .local v9, c4:Landroid/database/Cursor;
    :try_start_a
    const-string v0, "CREATE TABLE IF NOT EXISTS username_list (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,time TIMESTAMP,username VARCHAR(40));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    const-string v0, "CREATE TABLE IF NOT EXISTS polling_cycle (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,synctype VARCHAR(10),time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_14} :catch_78

    .line 141
    :try_start_14
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
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_2f} :catch_81

    move-result-object v8

    .line 151
    .local v8, c2:Landroid/database/Cursor;
    if-eqz v8, :cond_8a

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8a

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 160
    :goto_3b
    if-eqz v8, :cond_40

    .line 161
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_40
    :try_start_40
    const-string v0, "CREATE TABLE IF NOT EXISTS previous_request_id (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,synctype VARCHAR(10),requestid INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_40 .. :try_end_45} :catch_a5

    .line 176
    :try_start_45
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
    :try_end_60
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_60} :catch_ae

    move-result-object v9

    .line 186
    if-eqz v9, :cond_b7

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_b7

    .line 187
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 195
    :goto_6c
    if-eqz v9, :cond_71

    .line 196
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_71
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 199
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 200
    .end local v8           #c2:Landroid/database/Cursor;
    :goto_77
    return-void

    .line 135
    :catch_78
    move-exception v10

    .line 136
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "SnsAccountTw"

    const-string v1, "Error executing SQL "

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 146
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catch_81
    move-exception v10

    .line 147
    .restart local v10       #e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "SnsAccountTw"

    const-string v1, "Error executing query "

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 154
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v8       #c2:Landroid/database/Cursor;
    :cond_8a
    const-string v0, "synctype"

    const-string v1, "message"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "time"

    iget v1, p0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->mInitPollingCycle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v0, "polling_cycle"

    invoke-virtual {p1, v0, v12, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 157
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_3b

    .line 170
    :catch_a5
    move-exception v10

    .line 171
    .restart local v10       #e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "SnsAccountTw"

    const-string v1, "Error executing SQL "

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 181
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catch_ae
    move-exception v10

    .line 182
    .restart local v10       #e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "SnsAccountTw"

    const-string v1, "Error executing query "

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77

    .line 189
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :cond_b7
    const-string v0, "synctype"

    const-string v1, "message"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "requestid"

    iget v1, p0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->mInitPreviousRequestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v0, "previous_request_id"

    invoke-virtual {p1, v0, v12, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 192
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_6c
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 86
    :try_start_0
    const-string v3, "DROP TABLE IF EXISTS polling_cycle"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const-string v3, "DROP TABLE IF EXISTS username_list"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const-string v3, "DROP TABLE IF EXISTS previous_request_id"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_f} :catch_3b

    .line 94
    invoke-virtual {p0, p1}, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    iget-object v3, p0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3a

    .line 99
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v2, extra:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.snsaccounttwitter.account_type"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 103
    .local v0, account:[Landroid/accounts/Account;
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3a

    .line 104
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string v4, "com.android.contacts"

    invoke-static {v3, v4, v2}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    const-string v3, "SnsAccountTw"

    const-string v4, "onUpgrade : removePeriodicSync spType :2"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0           #account:[Landroid/accounts/Account;
    .end local v2           #extra:Landroid/os/Bundle;
    :cond_3a
    :goto_3a
    return-void

    .line 89
    :catch_3b
    move-exception v1

    .line 90
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "SnsAccountTw"

    const-string v4, "Error executing SQL "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a
.end method
