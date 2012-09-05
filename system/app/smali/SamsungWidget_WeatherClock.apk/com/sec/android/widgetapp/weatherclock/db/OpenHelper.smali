.class public Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OpenHelper.java"


# instance fields
.field public final CREATE_SETTING_INFO_TABLE:Ljava/lang/String;

.field public final CREATE_WEATHER_DETAIL_INFO_TABLE:Ljava/lang/String;

.field public final CREATE_WEATHER_LIST_TABLE:Ljava/lang/String;

.field public final CREATE_WEATHER_MAIN_INFO_TABLE:Ljava/lang/String;

.field public final WEATHER_DETAIL_INFO_TABLE:Ljava/lang/String;

.field public final WEATHER_LIST_TABLE:Ljava/lang/String;

.field public final WEATHER_MAIN_INFO_TABLE:Ljava/lang/String;

.field public final WEATHER_SETTING_INFO_TABLE:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 85
    const-string v0, "WeatherClock"

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    const-string v0, "MY_WEATHER_LIST"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->WEATHER_LIST_TABLE:Ljava/lang/String;

    .line 19
    const-string v0, "MY_WEATHER_MAIN_INFO"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->WEATHER_MAIN_INFO_TABLE:Ljava/lang/String;

    .line 20
    const-string v0, "MY_WEATHER_SETTING_INFO"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->WEATHER_SETTING_INFO_TABLE:Ljava/lang/String;

    .line 21
    const-string v0, "MY_WEATHER_DETAIL_INFO"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->WEATHER_DETAIL_INFO_TABLE:Ljava/lang/String;

    .line 23
    const-string v0, "create table MY_WEATHER_LIST(NAME varchar(128),STATE varchar(128),LOCATION varchar(128) UNIQUE,MAIN_DISPLAY integer,SUMMER_TIME integer,LATITUDE varchar(128),LONGITUDE varchar(128),PROVIDER integer);"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->CREATE_WEATHER_LIST_TABLE:Ljava/lang/String;

    .line 34
    const-string v0, "create table MY_WEATHER_MAIN_INFO(LOCATION varchar(128) UNIQUE,TEMP_SCALE integer,CURRENTTEMP double,HIGHTEMP double,LOWTEMP double,ICON_NUM integer,UPDATE_DATE varchar(30),TIMEZONE varchar(128),DATE varchar(128),ONEDAY_HIGH_TEMP double, ONEDAY_LOW_TEMP double, ONEDAY_ICON_NUM integer,TWODAY_HIGH_TEMP double, TWODAY_LOW_TEMP double, TWODAY_ICON_NUM integer,FOURDAY_HIGH_TEMP double, FOURDAY_LOW_TEMP double, THREEDAY_ICON_NUM integer,THREEDAY_HIGH_TEMP double, THREEDAY_LOW_TEMP double, FOURDAY_ICON_NUM integer,FIVEDAY_HIGH_TEMP double, FIVEDAY_LOW_TEMP double, FIVEDAY_ICON_NUM integer,SIXDAY_HIGH_TEMP double, SIXDAY_LOW_TEMP double, SIXDAY_ICON_NUM integer);"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->CREATE_WEATHER_MAIN_INFO_TABLE:Ljava/lang/String;

    .line 53
    const-string v0, "create table MY_WEATHER_SETTING_INFO(TEMP_SCALE integer, AUTO_REFRESH_TIME integer, DB_CHECK integer,ENABLE_CURRENT_LOCATION integer,AUTO_SCROLL integer);"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->CREATE_SETTING_INFO_TABLE:Ljava/lang/String;

    .line 61
    const-string v0, "create table MY_WEATHER_DETAIL_INFO(LOCATION varchar(128) UNIQUE,TEMP_SCALE integer,TODAY_DATE varchar(20),TODAY_TEMP double,TODAY_HIGH_TEMP double,TODAY_LOW_TEMP double,TODAY_ICON_NUM integer,TODAY_WIND_DIRECTION integer,TODAY_WIND_SPEED integer,TODAY_WEATHER_TEXT varchar(128),TODAY_WEATHER_URL varchar(128),ONEDAY_HIGH_TEMP double, ONEDAY_LOW_TEMP double, ONEDAY_ICON_NUM integer, ONEDAY_URL varchar(128),TWODAY_HIGH_TEMP double, TWODAY_LOW_TEMP double, TWODAY_ICON_NUM integer, TWODAY_URL varchar(128),THREEDAY_HIGH_TEMP double, THREEDAY_LOW_TEMP double, THREEDAY_ICON_NUM integer, THREEDAY_URL varchar(128),FOURDAY_HIGH_TEMP double, FOURDAY_LOW_TEMP double, FOURDAY_ICON_NUM integer, FOURDAY_URL varchar(128),FIVEDAY_HIGH_TEMP double, FIVEDAY_LOW_TEMP double, FIVEDAY_ICON_NUM integer, FIVEDAY_URL varchar(128),SIXDAY_HIGH_TEMP double, SIXDAY_LOW_TEMP double, SIXDAY_ICON_NUM integer, SIXDAY_URL varchar(128),UPDATE_DATE varchar(30));"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->CREATE_WEATHER_DETAIL_INFO_TABLE:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->context:Landroid/content/Context;

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "ver"

    .prologue
    .line 91
    const-string v0, "WeatherClock"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    const-string v0, "MY_WEATHER_LIST"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->WEATHER_LIST_TABLE:Ljava/lang/String;

    .line 19
    const-string v0, "MY_WEATHER_MAIN_INFO"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->WEATHER_MAIN_INFO_TABLE:Ljava/lang/String;

    .line 20
    const-string v0, "MY_WEATHER_SETTING_INFO"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->WEATHER_SETTING_INFO_TABLE:Ljava/lang/String;

    .line 21
    const-string v0, "MY_WEATHER_DETAIL_INFO"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->WEATHER_DETAIL_INFO_TABLE:Ljava/lang/String;

    .line 23
    const-string v0, "create table MY_WEATHER_LIST(NAME varchar(128),STATE varchar(128),LOCATION varchar(128) UNIQUE,MAIN_DISPLAY integer,SUMMER_TIME integer,LATITUDE varchar(128),LONGITUDE varchar(128),PROVIDER integer);"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->CREATE_WEATHER_LIST_TABLE:Ljava/lang/String;

    .line 34
    const-string v0, "create table MY_WEATHER_MAIN_INFO(LOCATION varchar(128) UNIQUE,TEMP_SCALE integer,CURRENTTEMP double,HIGHTEMP double,LOWTEMP double,ICON_NUM integer,UPDATE_DATE varchar(30),TIMEZONE varchar(128),DATE varchar(128),ONEDAY_HIGH_TEMP double, ONEDAY_LOW_TEMP double, ONEDAY_ICON_NUM integer,TWODAY_HIGH_TEMP double, TWODAY_LOW_TEMP double, TWODAY_ICON_NUM integer,FOURDAY_HIGH_TEMP double, FOURDAY_LOW_TEMP double, THREEDAY_ICON_NUM integer,THREEDAY_HIGH_TEMP double, THREEDAY_LOW_TEMP double, FOURDAY_ICON_NUM integer,FIVEDAY_HIGH_TEMP double, FIVEDAY_LOW_TEMP double, FIVEDAY_ICON_NUM integer,SIXDAY_HIGH_TEMP double, SIXDAY_LOW_TEMP double, SIXDAY_ICON_NUM integer);"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->CREATE_WEATHER_MAIN_INFO_TABLE:Ljava/lang/String;

    .line 53
    const-string v0, "create table MY_WEATHER_SETTING_INFO(TEMP_SCALE integer, AUTO_REFRESH_TIME integer, DB_CHECK integer,ENABLE_CURRENT_LOCATION integer,AUTO_SCROLL integer);"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->CREATE_SETTING_INFO_TABLE:Ljava/lang/String;

    .line 61
    const-string v0, "create table MY_WEATHER_DETAIL_INFO(LOCATION varchar(128) UNIQUE,TEMP_SCALE integer,TODAY_DATE varchar(20),TODAY_TEMP double,TODAY_HIGH_TEMP double,TODAY_LOW_TEMP double,TODAY_ICON_NUM integer,TODAY_WIND_DIRECTION integer,TODAY_WIND_SPEED integer,TODAY_WEATHER_TEXT varchar(128),TODAY_WEATHER_URL varchar(128),ONEDAY_HIGH_TEMP double, ONEDAY_LOW_TEMP double, ONEDAY_ICON_NUM integer, ONEDAY_URL varchar(128),TWODAY_HIGH_TEMP double, TWODAY_LOW_TEMP double, TWODAY_ICON_NUM integer, TWODAY_URL varchar(128),THREEDAY_HIGH_TEMP double, THREEDAY_LOW_TEMP double, THREEDAY_ICON_NUM integer, THREEDAY_URL varchar(128),FOURDAY_HIGH_TEMP double, FOURDAY_LOW_TEMP double, FOURDAY_ICON_NUM integer, FOURDAY_URL varchar(128),FIVEDAY_HIGH_TEMP double, FIVEDAY_LOW_TEMP double, FIVEDAY_ICON_NUM integer, FIVEDAY_URL varchar(128),SIXDAY_HIGH_TEMP double, SIXDAY_LOW_TEMP double, SIXDAY_ICON_NUM integer, SIXDAY_URL varchar(128),UPDATE_DATE varchar(30));"

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->CREATE_WEATHER_DETAIL_INFO_TABLE:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10
    .parameter "db"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 96
    const-string v6, ""

    const-string v7, "db helper on create"

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-eqz p1, :cond_b5

    .line 100
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 103
    :try_start_e
    const-string v6, "SQL excuted..."

    const-string v7, "DB------>onCreate()"

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v6, "create table MY_WEATHER_LIST(NAME varchar(128),STATE varchar(128),LOCATION varchar(128) UNIQUE,MAIN_DISPLAY integer,SUMMER_TIME integer,LATITUDE varchar(128),LONGITUDE varchar(128),PROVIDER integer);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string v6, "create table MY_WEATHER_MAIN_INFO(LOCATION varchar(128) UNIQUE,TEMP_SCALE integer,CURRENTTEMP double,HIGHTEMP double,LOWTEMP double,ICON_NUM integer,UPDATE_DATE varchar(30),TIMEZONE varchar(128),DATE varchar(128),ONEDAY_HIGH_TEMP double, ONEDAY_LOW_TEMP double, ONEDAY_ICON_NUM integer,TWODAY_HIGH_TEMP double, TWODAY_LOW_TEMP double, TWODAY_ICON_NUM integer,FOURDAY_HIGH_TEMP double, FOURDAY_LOW_TEMP double, THREEDAY_ICON_NUM integer,THREEDAY_HIGH_TEMP double, THREEDAY_LOW_TEMP double, FOURDAY_ICON_NUM integer,FIVEDAY_HIGH_TEMP double, FIVEDAY_LOW_TEMP double, FIVEDAY_ICON_NUM integer,SIXDAY_HIGH_TEMP double, SIXDAY_LOW_TEMP double, SIXDAY_ICON_NUM integer);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v6, "create table MY_WEATHER_DETAIL_INFO(LOCATION varchar(128) UNIQUE,TEMP_SCALE integer,TODAY_DATE varchar(20),TODAY_TEMP double,TODAY_HIGH_TEMP double,TODAY_LOW_TEMP double,TODAY_ICON_NUM integer,TODAY_WIND_DIRECTION integer,TODAY_WIND_SPEED integer,TODAY_WEATHER_TEXT varchar(128),TODAY_WEATHER_URL varchar(128),ONEDAY_HIGH_TEMP double, ONEDAY_LOW_TEMP double, ONEDAY_ICON_NUM integer, ONEDAY_URL varchar(128),TWODAY_HIGH_TEMP double, TWODAY_LOW_TEMP double, TWODAY_ICON_NUM integer, TWODAY_URL varchar(128),THREEDAY_HIGH_TEMP double, THREEDAY_LOW_TEMP double, THREEDAY_ICON_NUM integer, THREEDAY_URL varchar(128),FOURDAY_HIGH_TEMP double, FOURDAY_LOW_TEMP double, FOURDAY_ICON_NUM integer, FOURDAY_URL varchar(128),FIVEDAY_HIGH_TEMP double, FIVEDAY_LOW_TEMP double, FIVEDAY_ICON_NUM integer, FIVEDAY_URL varchar(128),SIXDAY_HIGH_TEMP double, SIXDAY_LOW_TEMP double, SIXDAY_ICON_NUM integer, SIXDAY_URL varchar(128),UPDATE_DATE varchar(30));"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    const-string v6, "create table MY_WEATHER_SETTING_INFO(TEMP_SCALE integer, AUTO_REFRESH_TIME integer, DB_CHECK integer,ENABLE_CURRENT_LOCATION integer,AUTO_SCROLL integer);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    sget-boolean v6, Lcom/sec/android/widgetapp/weatherclock/common/Constants;->USE_FAHRENHEIT:Z

    if-nez v6, :cond_3b

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f07

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3c

    :cond_3b
    move v1, v5

    .line 116
    .local v1, USE_FAHRENHEIT:I
    :cond_3c
    const/4 v0, 0x0

    .line 117
    .local v0, AUTO_REFRESH_IDX:I
    sget-boolean v5, Lcom/sec/android/widgetapp/weatherclock/common/Constants;->USE_THREE_HOURS_AUTO_REFRESH:Z

    if-nez v5, :cond_50

    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 118
    :cond_50
    const/4 v0, 0x2

    .line 119
    :cond_51
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 120
    const/4 v0, 0x3

    .line 121
    :cond_61
    if-eqz v0, :cond_75

    .line 123
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->context:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setAutorefreshSetting(Landroid/content/Context;I)Z

    .line 125
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->context:Landroid/content/Context;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    move-result-wide v3

    .line 126
    .local v3, nextTime:J
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->context:Landroid/content/Context;

    invoke-static {v5, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastTime(Landroid/content/Context;J)Z

    .line 130
    .end local v3           #nextTime:J
    :cond_75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert into MY_WEATHER_SETTING_INFO values ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", 0, 0, 2);"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 137
    const-string v5, "SQL excuted...create table MY_WEATHER_LIST(NAME varchar(128),STATE varchar(128),LOCATION varchar(128) UNIQUE,MAIN_DISPLAY integer,SUMMER_TIME integer,LATITUDE varchar(128),LONGITUDE varchar(128),PROVIDER integer);"

    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 138
    const-string v5, "SQL excuted...create table MY_WEATHER_MAIN_INFO(LOCATION varchar(128) UNIQUE,TEMP_SCALE integer,CURRENTTEMP double,HIGHTEMP double,LOWTEMP double,ICON_NUM integer,UPDATE_DATE varchar(30),TIMEZONE varchar(128),DATE varchar(128),ONEDAY_HIGH_TEMP double, ONEDAY_LOW_TEMP double, ONEDAY_ICON_NUM integer,TWODAY_HIGH_TEMP double, TWODAY_LOW_TEMP double, TWODAY_ICON_NUM integer,FOURDAY_HIGH_TEMP double, FOURDAY_LOW_TEMP double, THREEDAY_ICON_NUM integer,THREEDAY_HIGH_TEMP double, THREEDAY_LOW_TEMP double, FOURDAY_ICON_NUM integer,FIVEDAY_HIGH_TEMP double, FIVEDAY_LOW_TEMP double, FIVEDAY_ICON_NUM integer,SIXDAY_HIGH_TEMP double, SIXDAY_LOW_TEMP double, SIXDAY_ICON_NUM integer);"

    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 139
    const-string v5, "SQL excuted...create table MY_WEATHER_DETAIL_INFO(LOCATION varchar(128) UNIQUE,TEMP_SCALE integer,TODAY_DATE varchar(20),TODAY_TEMP double,TODAY_HIGH_TEMP double,TODAY_LOW_TEMP double,TODAY_ICON_NUM integer,TODAY_WIND_DIRECTION integer,TODAY_WIND_SPEED integer,TODAY_WEATHER_TEXT varchar(128),TODAY_WEATHER_URL varchar(128),ONEDAY_HIGH_TEMP double, ONEDAY_LOW_TEMP double, ONEDAY_ICON_NUM integer, ONEDAY_URL varchar(128),TWODAY_HIGH_TEMP double, TWODAY_LOW_TEMP double, TWODAY_ICON_NUM integer, TWODAY_URL varchar(128),THREEDAY_HIGH_TEMP double, THREEDAY_LOW_TEMP double, THREEDAY_ICON_NUM integer, THREEDAY_URL varchar(128),FOURDAY_HIGH_TEMP double, FOURDAY_LOW_TEMP double, FOURDAY_ICON_NUM integer, FOURDAY_URL varchar(128),FIVEDAY_HIGH_TEMP double, FIVEDAY_LOW_TEMP double, FIVEDAY_ICON_NUM integer, FIVEDAY_URL varchar(128),SIXDAY_HIGH_TEMP double, SIXDAY_LOW_TEMP double, SIXDAY_ICON_NUM integer, SIXDAY_URL varchar(128),UPDATE_DATE varchar(30));"

    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 140
    const-string v5, "SQL excuted...create table MY_WEATHER_SETTING_INFO(TEMP_SCALE integer, AUTO_REFRESH_TIME integer, DB_CHECK integer,ENABLE_CURRENT_LOCATION integer,AUTO_SCROLL integer);"

    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_e .. :try_end_b2} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_b2} :catch_b6

    .line 150
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 153
    .end local v0           #AUTO_REFRESH_IDX:I
    .end local v1           #USE_FAHRENHEIT:I
    :cond_b5
    :goto_b5
    return-void

    .line 143
    :catch_b6
    move-exception v2

    .line 146
    .local v2, ex:Ljava/lang/Exception;
    :try_start_b7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DbHelper.onCreate()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_d1
    .catchall {:try_start_b7 .. :try_end_d1} :catchall_d5

    .line 150
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_b5

    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_d5
    move-exception v5

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 160
    :try_start_3
    const-string v1, "DROP TABLE IF EXISTS MY_WEATHER_LIST"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 161
    const-string v1, "DROP TABLE IF EXISTS MY_WEATHER_MAIN_INFO"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    const-string v1, "DROP TABLE IF EXISTS MY_WEATHER_DETAIL_INFO"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    const-string v1, "DROP TABLE IF EXISTS MY_WEATHER_SETTING_INFO"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 165
    const-string v1, "SQL excuted...DROP TABLE IF EXISTS MY_WEATHER_LIST"

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 166
    const-string v1, "SQL excuted...DROP TABLE IF EXISTS MY_WEATHER_MAIN_INFO"

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 167
    const-string v1, "SQL excuted...DROP TABLE IF EXISTS MY_WEATHER_DETAIL_INFO"

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 168
    const-string v1, "SQL excuted...DROP TABLE IF EXISTS MY_WEATHER_SETTING_INFO"

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_57
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_35

    .line 177
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 180
    :goto_34
    return-void

    .line 170
    :catch_35
    move-exception v0

    .line 173
    .local v0, ex:Ljava/lang/Exception;
    :try_start_36
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

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_57

    .line 177
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_34

    .line 177
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_57
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 178
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method
