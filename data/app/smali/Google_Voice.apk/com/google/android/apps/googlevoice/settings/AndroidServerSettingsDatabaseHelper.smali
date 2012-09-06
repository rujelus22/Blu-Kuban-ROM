.class Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AndroidServerSettingsDatabaseHelper.java"


# static fields
.field private static final DB_COLUMN_SERVER_SETTINGS:Ljava/lang/String; = "server_settings_values"

.field private static final DB_NAME:Ljava/lang/String; = "server_settings.db"

.field private static final DB_NAME_PREFIX:Ljava/lang/String; = "server_settings"

.field private static final DB_NAME_SUFFIX:Ljava/lang/String; = ".db"

.field private static final DB_TABLE_SERVER_SETTINGS:Ljava/lang/String; = "server_settings"

.field private static final DB_VERSION:I = 0x3


# instance fields
.field private backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

.field private final backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;)V
    .registers 6
    .parameter "context"
    .parameter "backgroundThreadFactory"

    .prologue
    .line 42
    const-string v0, "server_settings.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    .line 44
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteOpenHelper;[B)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->writeToDatabase(Landroid/database/sqlite/SQLiteOpenHelper;[B)V

    return-void
.end method

.method private static writeToDatabase(Landroid/database/sqlite/SQLiteOpenHelper;[B)V
    .registers 7
    .parameter "sqliteHelper"
    .parameter "bytes"

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 109
    const-string v2, "server_settings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "server_settings_values"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 112
    const-string v2, "server_settings"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_22

    .line 114
    if-eqz v0, :cond_21

    .line 115
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    :cond_21
    return-void

    .line 114
    .end local v1           #values:Landroid/content/ContentValues;
    :catchall_22
    move-exception v2

    if-eqz v0, :cond_28

    .line 115
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_28
    throw v2
.end method


# virtual methods
.method declared-synchronized getBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;
    .registers 2

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    if-nez v0, :cond_16

    .line 97
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_e

    .line 98
    const-string v0, "AndroidServerSettingsDatabaseHelper: creating & starting DatabaseSaver"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 100
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->backgroundThreadFactory:Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/BackgroundThreadFactory;->createBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;

    .line 102
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->backgroundThread:Lcom/google/android/apps/googlevoice/BackgroundThread;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-object v0

    .line 96
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadFromDatabase(Lcom/google/android/apps/googlevoice/model/Settings;)V
    .registers 14
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 63
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 64
    const-string v1, "server_settings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "server_settings_values"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 67
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_4a

    move-result v1

    if-eq v1, v11, :cond_2b

    .line 75
    if-eqz v10, :cond_25

    .line 76
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_25
    if-eqz v0, :cond_2a

    .line 79
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 82
    :cond_2a
    :goto_2a
    return-void

    .line 70
    :cond_2b
    :try_start_2b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 72
    .local v9, bytes:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v8

    .line 73
    .local v8, apiSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;
    invoke-virtual {p1, v8}, Lcom/google/android/apps/googlevoice/model/Settings;->loadFromApiSettings(Lcom/google/grandcentral/api2/Api2$ApiSettings;)V
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_4a

    .line 75
    if-eqz v10, :cond_44

    .line 76
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_44
    if-eqz v0, :cond_2a

    .line 79
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2a

    .line 75
    .end local v8           #apiSettings:Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .end local v9           #bytes:[B
    :catchall_4a
    move-exception v1

    if-eqz v10, :cond_50

    .line 76
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_50
    if-eqz v0, :cond_55

    .line 79
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_55
    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    .line 48
    const-string v0, "create table %s (%s blob)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "server_settings"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "server_settings_values"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 55
    const-string v0, "drop table %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "server_settings"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    return-void
.end method

.method public saveToDatabase(Lcom/google/android/apps/googlevoice/model/Settings;)V
    .registers 5
    .parameter "settings"

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/model/Settings;->saveToApiSettings()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->toByteArray()[B

    move-result-object v0

    .line 86
    .local v0, serializedSettings:[B
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;->getBackgroundThread()Lcom/google/android/apps/googlevoice/BackgroundThread;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper$1;-><init>(Lcom/google/android/apps/googlevoice/settings/AndroidServerSettingsDatabaseHelper;[B)V

    invoke-interface {v1, v2}, Lcom/google/android/apps/googlevoice/BackgroundThread;->runInBackground(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method
