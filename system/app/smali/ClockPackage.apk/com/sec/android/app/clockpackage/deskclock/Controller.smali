.class public Lcom/sec/android/app/clockpackage/deskclock/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/Controller$WeatherColumns;
    }
.end annotation


# static fields
.field private static mInst:Lcom/sec/android/app/clockpackage/deskclock/Controller;


# instance fields
.field private mCtx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 181
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/Controller;->mInst:Lcom/sec/android/app/clockpackage/deskclock/Controller;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/Controller;->mCtx:Landroid/content/Context;

    .line 185
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/clockpackage/deskclock/Controller;
    .registers 3
    .parameter "ctx"

    .prologue
    .line 188
    const-class v1, Lcom/sec/android/app/clockpackage/deskclock/Controller;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/Controller;->mInst:Lcom/sec/android/app/clockpackage/deskclock/Controller;

    if-nez v0, :cond_e

    .line 189
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/Controller;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/deskclock/Controller;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/clockpackage/deskclock/Controller;->mInst:Lcom/sec/android/app/clockpackage/deskclock/Controller;

    .line 191
    :cond_e
    sget-object v0, Lcom/sec/android/app/clockpackage/deskclock/Controller;->mInst:Lcom/sec/android/app/clockpackage/deskclock/Controller;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 188
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public fetchWeatherRows()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 195
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v7, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;>;"
    const/4 v6, 0x0

    .line 198
    .local v6, mCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/deskclock/Controller$WeatherColumns;->TABLE_URI:Landroid/net/Uri;

    const/16 v2, 0x3c

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "WEATHER_INDEX"

    aput-object v3, v2, v9

    const-string v3, "WEATHER_CITY_NAME"

    aput-object v3, v2, v10

    const-string v3, "WEATHER_CITY_STATE"

    aput-object v3, v2, v11

    const-string v3, "WEATHER_CITY_LOCATION"

    aput-object v3, v2, v12

    const-string v3, "WEATHER_CITY_TIME"

    aput-object v3, v2, v13

    const/4 v3, 0x5

    const-string v4, "WEATHER_UNITS_TEMP"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "WEATHER_UNITS_DIST"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "WEATHER_UNITS_SPEED"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "WEATHER_UNITS_PRES"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "WEATHER_UNITS_PREC"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "WEATHER_TODAY_URL"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "WEATHER_TODAY_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "WEATHER_TODAY_WEATHERTEXT"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "WEATHER_TODAY_WEATHERICON"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "WEATHER_TODAY_SUNRISE"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "WEATHER_TODAY_SUNSET"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "WEATHER_TODAY_WINDSPEED"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "WEATHER_TODAY_WINDDIRECTION"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "WEATHER_FORECAST_MAIN_URL"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "WEATHER_FORECAST_DAY1_URL"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "WEATHER_FORECAST_DAY1_DATE"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "WEATHER_FORECAST_DAY1_WEATHERTEXT"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "WEATHER_FORECAST_DAY1_WEATHERICON"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "WEATHER_FORECAST_DAY1_HIGH_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "WEATHER_FORECAST_DAY1_LOW_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "WEATHER_FORECAST_NIGHT1_WEATHERTEXT"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "WEATHER_FORECAST_NIGHT1_WEATHERICON"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "WEATHER_FORECAST_NIGHT1_HIGH_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "WEATHER_FORECAST_NIGHT1_LOW_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "WEATHER_FORECAST_DAY2_URL"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "WEATHER_FORECAST_DAY2_DATE"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "WEATHER_FORECAST_DAY2_WEATHERTEXT"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "WEATHER_FORECAST_DAY2_WEATHERICON"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "WEATHER_FORECAST_DAY2_HIGH_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "WEATHER_FORECAST_DAY2_LOW_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "WEATHER_FORECAST_NIGHT2_WEATHERTEXT"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "WEATHER_FORECAST_NIGHT2_WEATHERICON"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "WEATHER_FORECAST_NIGHT2_HIGH_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "WEATHER_FORECAST_NIGHT2_LOW_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "WEATHER_FORECAST_DAY3_URL"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "WEATHER_FORECAST_DAY3_DATE"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "WEATHER_FORECAST_DAY3_WEATHERTEXT"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "WEATHER_FORECAST_DAY3_WEATHERICON"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "WEATHER_FORECAST_DAY3_HIGH_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "WEATHER_FORECAST_DAY3_LOW_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "WEATHER_FORECAST_NIGHT3_WEATHERTEXT"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "WEATHER_FORECAST_NIGHT3_WEATHERICON"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "WEATHER_FORECAST_NIGHT3_HIGH_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "WEATHER_FORECAST_NIGHT3_LOW_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "WEATHER_FORECAST_DAY4_URL"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "WEATHER_FORECAST_DAY4_DATE"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "WEATHER_FORECAST_DAY4_WEATHERTEXT"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "WEATHER_FORECAST_DAY4_WEATHERICON"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "WEATHER_FORECAST_DAY4_HIGH_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string v4, "WEATHER_FORECAST_DAY4_LOW_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string v4, "WEATHER_FORECAST_NIGHT4_WEATHERTEXT"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string v4, "WEATHER_FORECAST_NIGHT4_WEATHERICON"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string v4, "WEATHER_FORECAST_NIGHT4_HIGH_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string v4, "WEATHER_FORECAST_NIGHT4_LOW_TEMPERATURE"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string v4, "WEATHER_TIME"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "WEATHER_INDEX ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 268
    if-eqz v6, :cond_36a

    .line 269
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_367

    .line 271
    :cond_182
    new-instance v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;

    invoke-direct {v8}, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;-><init>()V

    .line 272
    .local v8, weatherInfo:Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherIndex:I

    .line 274
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherCityName:Ljava/lang/String;

    .line 275
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherCityState:Ljava/lang/String;

    .line 276
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    .line 277
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherCityTime:Ljava/lang/String;

    .line 279
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherUnitsTemp:Ljava/lang/String;

    .line 280
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherUnitsDist:Ljava/lang/String;

    .line 281
    const/4 v0, 0x7

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherUnitsSpeed:Ljava/lang/String;

    .line 282
    const/16 v0, 0x8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherUnitsPres:Ljava/lang/String;

    .line 283
    const/16 v0, 0x9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherUnitsPrec:Ljava/lang/String;

    .line 285
    const/16 v0, 0xa

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherTodayUrl:Ljava/lang/String;

    .line 286
    const/16 v0, 0xb

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherTodayTemperature:I

    .line 287
    const/16 v0, 0xc

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherTodayWeatherText:Ljava/lang/String;

    .line 288
    const/16 v0, 0xd

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherTodayWeatherIcon:I

    .line 290
    const/16 v0, 0xe

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherTodayWeatherSunrise:Ljava/lang/String;

    .line 292
    const/16 v0, 0xf

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherTodayWeatherSunset:Ljava/lang/String;

    .line 295
    const/16 v0, 0x10

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherTodayWindSpeed:Ljava/lang/String;

    .line 296
    const/16 v0, 0x11

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherTodayWindDirection:Ljava/lang/String;

    .line 299
    const/16 v0, 0x12

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastMainUrl:Ljava/lang/String;

    .line 301
    const/16 v0, 0x13

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay1Url:Ljava/lang/String;

    .line 302
    const/16 v0, 0x14

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay1Date:Ljava/lang/String;

    .line 304
    const/16 v0, 0x15

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay1WeatherText:Ljava/lang/String;

    .line 306
    const/16 v0, 0x16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay1WeatherIcon:I

    .line 308
    const/16 v0, 0x17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay1HighTemperature:I

    .line 310
    const/16 v0, 0x18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay1LowTemperature:I

    .line 313
    const/16 v0, 0x19

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight1WeatherText:Ljava/lang/String;

    .line 315
    const/16 v0, 0x1a

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight1WeatherIcon:I

    .line 317
    const/16 v0, 0x1b

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight1HighTemperature:I

    .line 319
    const/16 v0, 0x1c

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight1LowTemperature:I

    .line 322
    const/16 v0, 0x1d

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay2Url:Ljava/lang/String;

    .line 323
    const/16 v0, 0x1e

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay2Date:Ljava/lang/String;

    .line 325
    const/16 v0, 0x1f

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay2WeatherText:Ljava/lang/String;

    .line 327
    const/16 v0, 0x20

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay2WeatherIcon:I

    .line 329
    const/16 v0, 0x21

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay2HighTemperature:I

    .line 331
    const/16 v0, 0x22

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay2LowTemperature:I

    .line 334
    const/16 v0, 0x23

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight2WeatherText:Ljava/lang/String;

    .line 336
    const/16 v0, 0x24

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight2WeatherIcon:I

    .line 338
    const/16 v0, 0x25

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight2HighTemperature:I

    .line 340
    const/16 v0, 0x26

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight2LowTemperature:I

    .line 343
    const/16 v0, 0x27

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay3Url:Ljava/lang/String;

    .line 344
    const/16 v0, 0x28

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay3Date:Ljava/lang/String;

    .line 346
    const/16 v0, 0x29

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay3WeatherText:Ljava/lang/String;

    .line 348
    const/16 v0, 0x2a

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay3WeatherIcon:I

    .line 350
    const/16 v0, 0x2b

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay3HighTemperature:I

    .line 352
    const/16 v0, 0x2c

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay3LowTemperature:I

    .line 355
    const/16 v0, 0x2d

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight3WeatherText:Ljava/lang/String;

    .line 357
    const/16 v0, 0x2e

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight3WeatherIcon:I

    .line 359
    const/16 v0, 0x2f

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight3HighTemperature:I

    .line 361
    const/16 v0, 0x30

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight3LowTemperature:I

    .line 364
    const/16 v0, 0x31

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay4Url:Ljava/lang/String;

    .line 365
    const/16 v0, 0x32

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay4Date:Ljava/lang/String;

    .line 367
    const/16 v0, 0x33

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay4WeatherText:Ljava/lang/String;

    .line 369
    const/16 v0, 0x34

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay4WeatherIcon:I

    .line 371
    const/16 v0, 0x35

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay4HighTemperature:I

    .line 373
    const/16 v0, 0x36

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastDay4LowTemperature:I

    .line 376
    const/16 v0, 0x37

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight4WeatherText:Ljava/lang/String;

    .line 378
    const/16 v0, 0x38

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight4WeatherIcon:I

    .line 380
    const/16 v0, 0x39

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight4HighTemperature:I

    .line 382
    const/16 v0, 0x3a

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherForecastNight4LowTemperature:I

    .line 385
    const/16 v0, 0x3b

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;->WeatherTime:Ljava/lang/Long;

    .line 387
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_182

    .line 391
    .end local v8           #weatherInfo:Lcom/sec/android/app/clockpackage/deskclock/AccuWeatherContainer;
    :cond_367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_36a
    return-object v7
.end method

.method public getInfoAlarmPrefs(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 402
    const/4 v6, 0x0

    .line 403
    .local v6, city:Ljava/lang/String;
    const-string v0, "content://InfoAlarm/INFOALARM_PREFERENCE"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 406
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/Controller;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "PREF_VALUE"

    aput-object v3, v2, v8

    const-string v3, "PREF_KEY = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 409
    .local v7, mCursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 410
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 413
    :cond_2a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 415
    return-object v6
.end method
