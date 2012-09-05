.class public Lcom/sec/android/daemonapp/accuweather/db/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# instance fields
.field private dbThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDbOpenHelper:Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;

.field private mResultType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->dbThreads:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mResultType:I

    .line 32
    iput-object p1, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;

    invoke-direct {v0, p1}, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/daemonapp/accuweather/db/DBHelper;Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/daemonapp/accuweather/db/DBHelper;)Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;

    return-object v0
.end method

.method private openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 8
    .parameter "writable"

    .prologue
    const/4 v5, -0x1

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mResultType:I

    .line 184
    if-eqz p1, :cond_e

    .line 186
    :try_start_7
    iget-object v4, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;

    invoke-virtual {v4}, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 211
    :goto_d
    return-object v0

    .line 190
    :cond_e
    iget-object v4, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;

    invoke-virtual {v4}, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_13} :catch_15
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_7 .. :try_end_13} :catch_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_13} :catch_27

    move-result-object v0

    goto :goto_d

    .line 193
    :catch_15
    move-exception v1

    .line 195
    .local v1, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v4, "///////////openDatabase/SQLiteFullException"

    invoke-static {v4}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V

    .line 197
    iput v5, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mResultType:I

    goto :goto_d

    .line 199
    .end local v1           #fe:Landroid/database/sqlite/SQLiteFullException;
    :catch_1e
    move-exception v2

    .line 201
    .local v2, ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v4, "///////////openDatabase/SQLiteDiskIOException"

    invoke-static {v4}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V

    .line 203
    iput v5, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mResultType:I

    goto :goto_d

    .line 205
    .end local v2           #ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_27
    move-exception v3

    .line 207
    .local v3, le:Landroid/database/sqlite/SQLiteException;
    const-string v4, "///////////openDatabase/SQLiteException"

    invoke-static {v4}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V

    .line 208
    iput v5, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mResultType:I

    goto :goto_d
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->close()V

    .line 48
    iput-object v1, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;

    .line 49
    iput-object v1, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public declared-synchronized deleteMe(Ljava/lang/Thread;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 38
    monitor-enter p0

    if-eqz p1, :cond_16

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 40
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->dbThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 41
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->dbThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 43
    :cond_16
    monitor-exit p0

    return-void

    .line 38
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAutoRefreshTime()I
    .registers 12

    .prologue
    .line 96
    const/4 v9, 0x0

    .line 97
    .local v9, time:I
    const-class v10, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    monitor-enter v10

    .line 99
    const/4 v1, 0x0

    :try_start_5
    invoke-direct {p0, v1}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 100
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_36

    .line 102
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_SETTING_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "AUTO_REFRESH_TIME"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 104
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_33

    .line 106
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 108
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 110
    :cond_30
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 114
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_36
    monitor-exit v10

    .line 115
    return v9

    .line 114
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_38
    move-exception v1

    monitor-exit v10
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public getAutoRefreshTime(Landroid/os/Handler;)I
    .registers 4
    .parameter "handler"

    .prologue
    .line 55
    new-instance v0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper$1;

    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->dbThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper$1;-><init>(Lcom/sec/android/daemonapp/accuweather/db/DBHelper;Ljava/lang/String;Landroid/os/Handler;)V

    .line 86
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 87
    iget-object v1, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->dbThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    const/4 v1, 0x0

    return v1
.end method

.method public getResultType()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mResultType:I

    return v0
.end method

.method public updateAutoRefreshTime(I)I
    .registers 11
    .parameter "time"

    .prologue
    .line 120
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UAR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, result:I
    const-class v6, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;

    monitor-enter v6

    .line 125
    const/4 v5, 0x1

    :try_start_1d
    invoke-direct {p0, v5}, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 126
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_41

    .line 128
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v4, vals:Landroid/content/ContentValues;
    const-string v5, "AUTO_REFRESH_TIME"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_53

    .line 134
    :try_start_31
    iget-object v5, p0, Lcom/sec/android/daemonapp/accuweather/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "MY_WEATHER_SETTING_INFO"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_53
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_31 .. :try_end_3d} :catch_43
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_31 .. :try_end_3d} :catch_4b

    .line 135
    const/4 v3, 0x1

    .line 151
    :goto_3e
    :try_start_3e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 153
    .end local v4           #vals:Landroid/content/ContentValues;
    :cond_41
    monitor-exit v6

    .line 154
    return v3

    .line 138
    .restart local v4       #vals:Landroid/content/ContentValues;
    :catch_43
    move-exception v1

    .line 140
    .local v1, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "///////////updateAutoRefreshTime/SQLiteFullException"

    invoke-static {v5}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V

    .line 142
    const/4 v3, -0x1

    .line 149
    goto :goto_3e

    .line 144
    .end local v1           #fe:Landroid/database/sqlite/SQLiteFullException;
    :catch_4b
    move-exception v2

    .line 146
    .local v2, ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v5, "///////////updateAutoRefreshTime/SQLiteDiskIOException"

    invoke-static {v5}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V

    .line 148
    const/4 v3, -0x1

    goto :goto_3e

    .line 153
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    .end local v4           #vals:Landroid/content/ContentValues;
    :catchall_53
    move-exception v5

    monitor-exit v6
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_53

    throw v5
.end method
