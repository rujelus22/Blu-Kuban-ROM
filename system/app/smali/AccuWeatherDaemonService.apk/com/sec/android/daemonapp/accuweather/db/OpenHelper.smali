.class public Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OpenHelper.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "WeatherClock"

.field private static final DB_VERSION:I = 0x14


# instance fields
.field public final CREATE_SETTING_INFO_TABLE:Ljava/lang/String;

.field public final WEATHER_SETTING_INFO_TABLE:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 27
    const-string v0, "WeatherClock"

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    const-string v0, "MY_WEATHER_SETTING_INFO"

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->WEATHER_SETTING_INFO_TABLE:Ljava/lang/String;

    .line 21
    const-string v0, "create table MY_WEATHER_SETTING_INFO(AUTO_REFRESH_TIME integer);"

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->CREATE_SETTING_INFO_TABLE:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "ver"

    .prologue
    .line 33
    const-string v0, "WeatherClock"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    const-string v0, "MY_WEATHER_SETTING_INFO"

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->WEATHER_SETTING_INFO_TABLE:Ljava/lang/String;

    .line 21
    const-string v0, "create table MY_WEATHER_SETTING_INFO(AUTO_REFRESH_TIME integer);"

    iput-object v0, p0, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->CREATE_SETTING_INFO_TABLE:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 9
    .parameter "db"

    .prologue
    .line 38
    const-string v4, ""

    const-string v5, "db helper on create"

    invoke-static {v4, v5}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    if-eqz p1, :cond_78

    .line 42
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 45
    :try_start_c
    const-string v4, "SQL excuted..."

    const-string v5, "DB------>onCreate()"

    invoke-static {v4, v5}, Lcom/sec/android/daemonapp/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v4, "create table MY_WEATHER_SETTING_INFO(AUTO_REFRESH_TIME integer);"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, AUTO_REFRESH_IDX:I
    sget-boolean v4, Lcom/sec/android/daemonapp/common/Constants;->USE_THREE_HOURS_AUTO_REFRESH:Z

    if-nez v4, :cond_2c

    iget-object v4, p0, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 56
    :cond_2c
    const/4 v0, 0x2

    .line 57
    :cond_2d
    iget-object v4, p0, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 58
    const/4 v0, 0x3

    .line 59
    :cond_3d
    if-eqz v0, :cond_51

    .line 61
    iget-object v4, p0, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->context:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sec/android/daemonapp/common/Util;->setAutorefreshSetting(Landroid/content/Context;I)Z

    .line 63
    iget-object v4, p0, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->context:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/sec/android/daemonapp/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    move-result-wide v2

    .line 64
    .local v2, nextTime:J
    iget-object v4, p0, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->context:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/sec/android/daemonapp/common/Util;->setLastTime(Landroid/content/Context;J)Z

    .line 68
    .end local v2           #nextTime:J
    :cond_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert into MY_WEATHER_SETTING_INFO values ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 75
    const-string v4, "SQL excuted...create table MY_WEATHER_SETTING_INFO(AUTO_REFRESH_TIME integer);"

    invoke-static {v4}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_c .. :try_end_75} :catchall_98
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_75} :catch_79

    .line 85
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    .end local v0           #AUTO_REFRESH_IDX:I
    :cond_78
    :goto_78
    return-void

    .line 78
    :catch_79
    move-exception v1

    .line 81
    .local v1, ex:Ljava/lang/Exception;
    :try_start_7a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DbHelper.onCreate()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_7a .. :try_end_94} :catchall_98

    .line 85
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_78

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_98
    move-exception v4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 95
    :try_start_3
    const-string v1, "DROP TABLE IF EXISTS MY_WEATHER_SETTING_INFO"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 97
    const-string v1, "SQL excuted...DROP TABLE IF EXISTS MY_WEATHER_SETTING_INFO"

    invoke-static {v1}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_39
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_17

    .line 106
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 107
    invoke-virtual {p0, p1}, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    :goto_16
    return-void

    .line 99
    :catch_17
    move-exception v0

    .line 102
    .local v0, ex:Ljava/lang/Exception;
    :try_start_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DbHelper.onUpgrade()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_18 .. :try_end_32} :catchall_39

    .line 106
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 107
    invoke-virtual {p0, p1}, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_16

    .line 106
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_39
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 107
    invoke-virtual {p0, p1}, Lcom/sec/android/daemonapp/accuweather/db/OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method
