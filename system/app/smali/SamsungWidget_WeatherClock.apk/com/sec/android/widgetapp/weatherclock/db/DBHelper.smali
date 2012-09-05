.class public Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
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

.field private mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

.field private mResultType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->dbThreads:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mResultType:I

    .line 40
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    .line 42
    return-void
.end method

.method private applySummerTime(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)V
    .registers 8
    .parameter "location"
    .parameter "info"

    .prologue
    .line 1898
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isSummerTime(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1900
    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v2

    .line 1901
    .local v2, today:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    .line 1902
    .local v1, timezone:Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 1903
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1904
    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 1905
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setDate(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1908
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #timezone:Ljava/lang/String;
    .end local v2           #today:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;
    :cond_45
    return-void
.end method

.method private buildDetailWeatherContentValues(Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)Landroid/content/ContentValues;
    .registers 13
    .parameter "info"

    .prologue
    .line 1844
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1846
    .local v0, data:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v6

    .line 1847
    .local v6, today:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;
    const-string v8, "TEMP_SCALE"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1848
    const-string v8, "TODAY_DATE"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const-string v8, "TODAY_TEMP"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getCurrentTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1850
    const-string v8, "TODAY_HIGH_TEMP"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1851
    const-string v8, "TODAY_LOW_TEMP"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1852
    const-string v8, "TODAY_ICON_NUM"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1853
    const-string v8, "UPDATE_DATE"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    const-string v8, "TODAY_WEATHER_TEXT"

    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getIconNum()I

    move-result v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getWeatherText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    const-string v8, "TODAY_WEATHER_URL"

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v3

    .line 1858
    .local v3, oneday:Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
    const-string v8, "ONEDAY_HIGH_TEMP"

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1859
    const-string v8, "ONEDAY_LOW_TEMP"

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1860
    const-string v8, "ONEDAY_ICON_NUM"

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1861
    const-string v8, "ONEDAY_URL"

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v7

    .line 1864
    .local v7, twoday:Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
    const-string v8, "TWODAY_HIGH_TEMP"

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1865
    const-string v8, "TWODAY_LOW_TEMP"

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1866
    const-string v8, "TWODAY_ICON_NUM"

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1867
    const-string v8, "TWODAY_URL"

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    const/4 v8, 0x2

    invoke-virtual {p1, v8}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    .line 1870
    .local v5, threeday:Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
    const-string v8, "THREEDAY_HIGH_TEMP"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1871
    const-string v8, "THREEDAY_LOW_TEMP"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1872
    const-string v8, "THREEDAY_ICON_NUM"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1873
    const-string v8, "THREEDAY_URL"

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v2

    .line 1876
    .local v2, fourday:Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
    const-string v8, "FOURDAY_HIGH_TEMP"

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1877
    const-string v8, "FOURDAY_LOW_TEMP"

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1878
    const-string v8, "FOURDAY_ICON_NUM"

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1879
    const-string v8, "FOURDAY_URL"

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v1

    .line 1882
    .local v1, fiveday:Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
    const-string v8, "FIVEDAY_HIGH_TEMP"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1883
    const-string v8, "FIVEDAY_LOW_TEMP"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1884
    const-string v8, "FIVEDAY_ICON_NUM"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1885
    const-string v8, "FIVEDAY_URL"

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    const/4 v8, 0x5

    invoke-virtual {p1, v8}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v4

    .line 1888
    .local v4, sixday:Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;
    const-string v8, "SIXDAY_HIGH_TEMP"

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1889
    const-string v8, "SIXDAY_LOW_TEMP"

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1890
    const-string v8, "SIXDAY_ICON_NUM"

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1891
    const-string v8, "SIXDAY_URL"

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    return-object v0
.end method

.method private isSummerTime(Ljava/lang/String;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1912
    .line 1913
    const-class v10, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v10

    .line 1915
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1916
    if-eqz v0, :cond_4f

    .line 1918
    const-string v1, "Location=\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1919
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SUMMER_TIME"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1921
    if-eqz v2, :cond_4d

    .line 1923
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1925
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v9, :cond_4b

    move v1, v9

    .line 1930
    :goto_3f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1932
    :goto_42
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v1

    .line 1934
    :goto_46
    monitor-exit v10

    .line 1935
    return v0

    .line 1934
    :catchall_48
    move-exception v0

    monitor-exit v10
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_48

    throw v0

    :cond_4b
    move v1, v8

    goto :goto_3f

    :cond_4d
    move v1, v8

    goto :goto_42

    :cond_4f
    move v0, v8

    goto :goto_46
.end method

.method private openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 9
    .parameter "writable"

    .prologue
    const/4 v6, -0x1

    .line 1940
    const/4 v0, 0x0

    .line 1941
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mResultType:I

    .line 1944
    if-eqz p1, :cond_e

    .line 1946
    :try_start_7
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1975
    :goto_d
    return-object v0

    .line 1950
    :cond_e
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_13} :catch_15
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_7 .. :try_end_13} :catch_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_13} :catch_27
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_30

    move-result-object v0

    goto :goto_d

    .line 1953
    :catch_15
    move-exception v2

    .line 1955
    .local v2, fe:Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "///////////openDatabase/SQLiteFullException"

    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 1957
    iput v6, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mResultType:I

    goto :goto_d

    .line 1959
    .end local v2           #fe:Landroid/database/sqlite/SQLiteFullException;
    :catch_1e
    move-exception v3

    .line 1961
    .local v3, ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v5, "///////////openDatabase/SQLiteDiskIOException"

    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 1963
    iput v6, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mResultType:I

    goto :goto_d

    .line 1965
    .end local v3           #ioe:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_27
    move-exception v4

    .line 1967
    .local v4, le:Landroid/database/sqlite/SQLiteException;
    const-string v5, "///////////openDatabase/SQLiteException"

    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 1968
    iput v6, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mResultType:I

    goto :goto_d

    .line 1970
    .end local v4           #le:Landroid/database/sqlite/SQLiteException;
    :catch_30
    move-exception v1

    .line 1972
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "///////////openDatabase/Exception"

    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 1973
    const v5, 0x7f09006a

    invoke-direct {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->showToastMessage(I)V

    goto :goto_d
.end method

.method private showToastMessage(I)V
    .registers 3
    .parameter "messageID"

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/IActivityVisibleState;

    invoke-interface {v0}, Lcom/sec/android/widgetapp/weatherclock/model/IActivityVisibleState;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1982
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 1984
    :cond_13
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;->close()V

    .line 76
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    .line 77
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method public deleteCitys(Ljava/util/ArrayList;)I
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 1031
    .line 1032
    const-class v12, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v12

    .line 1034
    const/4 v0, 0x1

    :try_start_8
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_114

    move-result-object v0

    .line 1035
    if-eqz v0, :cond_119

    .line 1039
    :try_start_e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v2, v8

    .line 1041
    :goto_12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4f

    .line 1043
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1044
    const-string v3, "Location=\"%s\""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1045
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "MY_WEATHER_MAIN_INFO"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1046
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "MY_WEATHER_DETAIL_INFO"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1047
    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "MY_WEATHER_LIST"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1041
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_12

    .line 1050
    :cond_4f
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LOCATION"

    aput-object v4, v2, v3

    const-string v3, "MAIN_DISPLAY=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1052
    if-eqz v1, :cond_e7

    .line 1054
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_c2

    .line 1056
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1057
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1059
    if-eqz v1, :cond_d4

    .line 1061
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 1063
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1064
    const-string v3, "MAIN_DISPLAY"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1065
    const-string v3, "Location=\"%s\""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1067
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "MY_WEATHER_LIST"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1070
    :cond_be
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v1, v11

    .line 1078
    :cond_c2
    if-eqz v1, :cond_c7

    .line 1080
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1087
    :cond_c7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ca
    .catchall {:try_start_e .. :try_end_ca} :catchall_10f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e .. :try_end_ca} :catch_dc
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_e .. :try_end_ca} :catch_ef
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_ca} :catch_103

    .line 1113
    :try_start_ca
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_114
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_fa

    move v1, v9

    .line 1122
    :goto_ce
    :try_start_ce
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v1

    .line 1124
    :goto_d2
    monitor-exit v12
    :try_end_d3
    .catchall {:try_start_ce .. :try_end_d3} :catchall_114

    .line 1125
    return v0

    .line 1075
    :cond_d4
    :try_start_d4
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Database cursor error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_dc
    .catchall {:try_start_d4 .. :try_end_dc} :catchall_10f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d4 .. :try_end_dc} :catch_dc
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_d4 .. :try_end_dc} :catch_ef
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_dc} :catch_103

    .line 1092
    :catch_dc
    move-exception v1

    .line 1094
    :try_start_dd
    const-string v1, "///////////deleteCitys/SQLiteFullException1"

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_e2
    .catchall {:try_start_dd .. :try_end_e2} :catchall_10f

    .line 1113
    :try_start_e2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_114
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_fd

    move v1, v10

    .line 1120
    goto :goto_ce

    .line 1085
    :cond_e7
    :try_start_e7
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Database cursor error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ef
    .catchall {:try_start_e7 .. :try_end_ef} :catchall_10f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e7 .. :try_end_ef} :catch_dc
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_e7 .. :try_end_ef} :catch_ef
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ef} :catch_103

    .line 1098
    :catch_ef
    move-exception v1

    .line 1100
    :try_start_f0
    const-string v1, "///////////deleteCitys/SQLiteDiskIOException1"

    invoke-static {v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_f0 .. :try_end_f5} :catchall_10f

    .line 1113
    :try_start_f5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_114
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_f8} :catch_100

    move v1, v10

    .line 1120
    goto :goto_ce

    .line 1115
    :catch_fa
    move-exception v1

    move v1, v10

    .line 1121
    goto :goto_ce

    .line 1115
    :catch_fd
    move-exception v1

    move v1, v10

    .line 1121
    goto :goto_ce

    .line 1115
    :catch_100
    move-exception v1

    move v1, v10

    .line 1121
    goto :goto_ce

    .line 1104
    :catch_103
    move-exception v1

    .line 1107
    :try_start_104
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_10f

    .line 1113
    :try_start_107
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_114
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10a} :catch_10c

    move v1, v8

    .line 1120
    goto :goto_ce

    .line 1115
    :catch_10c
    move-exception v1

    move v1, v10

    .line 1121
    goto :goto_ce

    .line 1111
    :catchall_10f
    move-exception v1

    .line 1113
    :try_start_110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_113
    .catchall {:try_start_110 .. :try_end_113} :catchall_114
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_117

    .line 1120
    :goto_113
    :try_start_113
    throw v1

    .line 1124
    :catchall_114
    move-exception v0

    monitor-exit v12
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_114

    throw v0

    .line 1115
    :catch_117
    move-exception v0

    goto :goto_113

    :cond_119
    move v0, v8

    goto :goto_d2
.end method

.method public getAllCityList()Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 551
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 552
    const-class v13, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v13

    .line 554
    const/4 v0, 0x0

    :try_start_b
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_9d

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 557
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_LIST"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "NAME"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "STATE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "MAIN_DISPLAY"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "SUMMER_TIME"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "LATITUDE"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "LONGITUDE"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "PROVIDER"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 559
    if-eqz v14, :cond_9a

    .line 561
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_97

    .line 565
    :cond_5b
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v10, :cond_9f

    move v5, v10

    :goto_74
    const/4 v6, 0x4

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v10, :cond_a1

    move v6, v10

    :goto_7c
    const/4 v7, 0x5

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-interface {v14, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-interface {v14, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 578
    :cond_97
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 580
    :cond_9a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 582
    :cond_9d
    monitor-exit v13

    return-object v12

    :cond_9f
    move v5, v11

    .line 565
    goto :goto_74

    :cond_a1
    move v6, v11

    goto :goto_7c

    .line 583
    :catchall_a3
    move-exception v0

    monitor-exit v13
    :try_end_a5
    .catchall {:try_start_b .. :try_end_a5} :catchall_a3

    throw v0
.end method

.method public getAutoRefreshTime()I
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 1398
    .line 1399
    const-class v9, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v9

    .line 1401
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1402
    if-eqz v0, :cond_40

    .line 1404
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

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

    move-result-object v2

    .line 1406
    if-eqz v2, :cond_3e

    .line 1408
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1410
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1412
    :goto_30
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1414
    :goto_33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v1

    .line 1416
    :goto_37
    monitor-exit v9

    .line 1417
    return v0

    .line 1416
    :catchall_39
    move-exception v0

    monitor-exit v9
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    move v1, v8

    goto :goto_30

    :cond_3e
    move v1, v8

    goto :goto_33

    :cond_40
    move v0, v8

    goto :goto_37
.end method

.method public getAutoscrollSettings()I
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 106
    .line 107
    const-class v9, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v9

    .line 109
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_40

    .line 112
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_SETTING_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "AUTO_SCROLL"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_3e

    .line 116
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 118
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 120
    :goto_30
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 122
    :goto_33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v1

    .line 124
    :goto_37
    monitor-exit v9

    .line 125
    return v0

    .line 124
    :catchall_39
    move-exception v0

    monitor-exit v9
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    move v1, v8

    goto :goto_30

    :cond_3e
    move v1, v8

    goto :goto_33

    :cond_40
    move v0, v8

    goto :goto_37
.end method

.method public getCurrentLocationSettings()I
    .registers 12

    .prologue
    const/4 v9, 0x0

    .line 82
    .line 83
    const-class v10, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v10

    .line 85
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_45

    .line 88
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_SETTING_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ENABLE_CURRENT_LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_43

    .line 92
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 94
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 96
    :goto_35
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 98
    :goto_38
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v1

    .line 100
    :goto_3c
    monitor-exit v10

    .line 101
    return v0

    .line 100
    :catchall_3e
    move-exception v0

    monitor-exit v10
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_3e

    throw v0

    :cond_41
    move v1, v9

    goto :goto_35

    :cond_43
    move v1, v9

    goto :goto_38

    :cond_45
    move v0, v9

    goto :goto_3c
.end method

.method public getDetailUpdateTimestamp(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter

    .prologue
    .line 260
    const-string v8, "0"

    .line 261
    const-class v9, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v9

    .line 263
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_4c

    .line 266
    const-string v1, "Location=\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 267
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_DETAIL_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "UPDATE_DATE"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 269
    if-eqz v2, :cond_4a

    .line 271
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 273
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    :goto_3c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 277
    :goto_3f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v1

    .line 279
    :goto_43
    monitor-exit v9

    .line 280
    return-object v0

    .line 279
    :catchall_45
    move-exception v0

    monitor-exit v9
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_45

    throw v0

    :cond_48
    move-object v1, v8

    goto :goto_3c

    :cond_4a
    move-object v1, v8

    goto :goto_3f

    :cond_4c
    move-object v0, v8

    goto :goto_43
.end method

.method public getDetailWeatherInfo(Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    .registers 12
    .parameter

    .prologue
    .line 1130
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-direct {v8}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;-><init>()V

    .line 1131
    const-class v9, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v9

    .line 1133
    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1134
    if-eqz v0, :cond_2f1

    .line 1136
    const-string v1, "Location=\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1137
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_DETAIL_INFO"

    const/16 v2, 0x21

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "TODAY_DATE"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "TODAY_TEMP"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "TODAY_HIGH_TEMP"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "TODAY_LOW_TEMP"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "TODAY_ICON_NUM"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "TODAY_WEATHER_TEXT"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "TODAY_WEATHER_URL"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "UPDATE_DATE"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "ONEDAY_HIGH_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string v5, "ONEDAY_LOW_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string v5, "ONEDAY_ICON_NUM"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string v5, "ONEDAY_URL"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string v5, "TWODAY_HIGH_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string v5, "TWODAY_LOW_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0xe

    const-string v5, "TWODAY_ICON_NUM"

    aput-object v5, v2, v4

    const/16 v4, 0xf

    const-string v5, "TWODAY_URL"

    aput-object v5, v2, v4

    const/16 v4, 0x10

    const-string v5, "THREEDAY_HIGH_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x11

    const-string v5, "THREEDAY_LOW_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x12

    const-string v5, "THREEDAY_ICON_NUM"

    aput-object v5, v2, v4

    const/16 v4, 0x13

    const-string v5, "THREEDAY_URL"

    aput-object v5, v2, v4

    const/16 v4, 0x14

    const-string v5, "FOURDAY_HIGH_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x15

    const-string v5, "FOURDAY_LOW_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x16

    const-string v5, "FOURDAY_ICON_NUM"

    aput-object v5, v2, v4

    const/16 v4, 0x17

    const-string v5, "FOURDAY_URL"

    aput-object v5, v2, v4

    const/16 v4, 0x18

    const-string v5, "FIVEDAY_HIGH_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x19

    const-string v5, "FIVEDAY_LOW_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x1a

    const-string v5, "FIVEDAY_ICON_NUM"

    aput-object v5, v2, v4

    const/16 v4, 0x1b

    const-string v5, "FIVEDAY_URL"

    aput-object v5, v2, v4

    const/16 v4, 0x1c

    const-string v5, "SIXDAY_HIGH_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x1d

    const-string v5, "SIXDAY_LOW_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x1e

    const-string v5, "SIXDAY_ICON_NUM"

    aput-object v5, v2, v4

    const/16 v4, 0x1f

    const-string v5, "SIXDAY_URL"

    aput-object v5, v2, v4

    const/16 v4, 0x20

    const-string v5, "TEMP_SCALE"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1147
    if-eqz v1, :cond_2ee

    .line 1149
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2eb

    .line 1152
    const-string v2, "TEMP_SCALE"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1155
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;-><init>()V

    .line 1156
    const-string v4, "TODAY_DATE"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setDate(Ljava/lang/String;)V

    .line 1157
    const-string v4, "TODAY_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setCurrentTemp(F)V

    .line 1158
    const-string v4, "TODAY_HIGH_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setHighTemp(F)V

    .line 1159
    const-string v4, "TODAY_LOW_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setLowTemp(F)V

    .line 1160
    const-string v4, "TODAY_ICON_NUM"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setIconNum(I)V

    .line 1161
    const-string v4, "TODAY_WEATHER_TEXT"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setWeatherText(Ljava/lang/String;)V

    .line 1162
    const-string v4, "TODAY_WEATHER_URL"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setUrl(Ljava/lang/String;)V

    .line 1163
    const-string v4, "UPDATE_DATE"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setUpdateDate(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setTempScale(I)V

    .line 1165
    invoke-virtual {v8, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->setTodayWeatherInfo(Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;)V

    .line 1168
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>()V

    .line 1169
    const-string v4, "ONEDAY_HIGH_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setHighTemp(F)V

    .line 1170
    const-string v4, "ONEDAY_LOW_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setLowTemp(F)V

    .line 1171
    const-string v4, "ONEDAY_ICON_NUM"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setIconNum(I)V

    .line 1172
    const-string v4, "ONEDAY_URL"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setUrl(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setTempScale(I)V

    .line 1174
    invoke-virtual {v8, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    .line 1177
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>()V

    .line 1178
    const-string v4, "TWODAY_HIGH_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setHighTemp(F)V

    .line 1179
    const-string v4, "TWODAY_LOW_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setLowTemp(F)V

    .line 1180
    const-string v4, "TWODAY_ICON_NUM"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setIconNum(I)V

    .line 1181
    const-string v4, "TWODAY_URL"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setUrl(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setTempScale(I)V

    .line 1183
    invoke-virtual {v8, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    .line 1186
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>()V

    .line 1187
    const-string v4, "THREEDAY_HIGH_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setHighTemp(F)V

    .line 1188
    const-string v4, "THREEDAY_LOW_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setLowTemp(F)V

    .line 1189
    const-string v4, "THREEDAY_ICON_NUM"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setIconNum(I)V

    .line 1190
    const-string v4, "THREEDAY_URL"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setUrl(Ljava/lang/String;)V

    .line 1191
    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setTempScale(I)V

    .line 1192
    invoke-virtual {v8, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    .line 1195
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>()V

    .line 1196
    const-string v4, "FOURDAY_HIGH_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setHighTemp(F)V

    .line 1197
    const-string v4, "FOURDAY_LOW_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setLowTemp(F)V

    .line 1198
    const-string v4, "FOURDAY_ICON_NUM"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setIconNum(I)V

    .line 1199
    const-string v4, "FOURDAY_URL"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setUrl(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setTempScale(I)V

    .line 1201
    invoke-virtual {v8, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    .line 1204
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>()V

    .line 1205
    const-string v4, "FIVEDAY_HIGH_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setHighTemp(F)V

    .line 1206
    const-string v4, "FIVEDAY_LOW_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setLowTemp(F)V

    .line 1207
    const-string v4, "FIVEDAY_ICON_NUM"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setIconNum(I)V

    .line 1208
    const-string v4, "FIVEDAY_URL"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setUrl(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setTempScale(I)V

    .line 1210
    invoke-virtual {v8, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    .line 1213
    new-instance v3, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    invoke-direct {v3}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>()V

    .line 1214
    const-string v4, "SIXDAY_HIGH_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setHighTemp(F)V

    .line 1215
    const-string v4, "SIXDAY_LOW_TEMP"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setLowTemp(F)V

    .line 1216
    const-string v4, "SIXDAY_ICON_NUM"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setIconNum(I)V

    .line 1217
    const-string v4, "SIXDAY_URL"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setUrl(Ljava/lang/String;)V

    .line 1218
    invoke-virtual {v3, v2}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->setTempScale(I)V

    .line 1219
    invoke-virtual {v8, v3}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    .line 1221
    :cond_2eb
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1223
    :cond_2ee
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1225
    :cond_2f1
    monitor-exit v9

    .line 1226
    return-object v8

    .line 1225
    :catchall_2f3
    move-exception v0

    monitor-exit v9
    :try_end_2f5
    .catchall {:try_start_9 .. :try_end_2f5} :catchall_2f3

    throw v0
.end method

.method public getMainDefaultLocation()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 1757
    .line 1758
    const-class v9, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v9

    .line 1760
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1761
    if-eqz v0, :cond_41

    .line 1763
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LOCATION"

    aput-object v4, v2, v3

    const-string v3, "MAIN_DISPLAY=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1765
    if-eqz v2, :cond_3f

    .line 1767
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1769
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1771
    :goto_31
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1773
    :goto_34
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v1

    .line 1775
    :goto_38
    monitor-exit v9

    .line 1776
    return-object v0

    .line 1775
    :catchall_3a
    move-exception v0

    monitor-exit v9
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    move-object v1, v8

    goto :goto_31

    :cond_3f
    move-object v1, v8

    goto :goto_34

    :cond_41
    move-object v0, v8

    goto :goto_38
.end method

.method public getMainUpdateTimestamp(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter

    .prologue
    .line 235
    const-string v8, "0"

    .line 236
    const-class v9, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v9

    .line 238
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_4c

    .line 241
    const-string v1, "Location=\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 242
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_MAIN_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "UPDATE_DATE"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 244
    if-eqz v2, :cond_4a

    .line 246
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 248
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    :goto_3c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 252
    :goto_3f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v1

    .line 254
    :goto_43
    monitor-exit v9

    .line 255
    return-object v0

    .line 254
    :catchall_45
    move-exception v0

    monitor-exit v9
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_45

    throw v0

    :cond_48
    move-object v1, v8

    goto :goto_3c

    :cond_4a
    move-object v1, v8

    goto :goto_3f

    :cond_4c
    move-object v0, v8

    goto :goto_43
.end method

.method public getMainWeatherInfo(Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    .registers 12
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 635
    .line 636
    const-class v9, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v9

    .line 638
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_1e4

    .line 641
    const-string v1, "Location=\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 642
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_MAIN_INFO"

    const/16 v2, 0x1a

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "CURRENTTEMP"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "HIGHTEMP"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "LOWTEMP"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "ICON_NUM"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "UPDATE_DATE"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "TEMP_SCALE"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "TIMEZONE"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "DATE"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "ONEDAY_HIGH_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string v5, "ONEDAY_LOW_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string v5, "ONEDAY_ICON_NUM"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string v5, "TWODAY_HIGH_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string v5, "TWODAY_LOW_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string v5, "TWODAY_ICON_NUM"

    aput-object v5, v2, v4

    const/16 v4, 0xe

    const-string v5, "THREEDAY_HIGH_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0xf

    const-string v5, "THREEDAY_LOW_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x10

    const-string v5, "THREEDAY_ICON_NUM"

    aput-object v5, v2, v4

    const/16 v4, 0x11

    const-string v5, "FOURDAY_HIGH_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x12

    const-string v5, "FOURDAY_LOW_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x13

    const-string v5, "FOURDAY_ICON_NUM"

    aput-object v5, v2, v4

    const/16 v4, 0x14

    const-string v5, "FIVEDAY_HIGH_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x15

    const-string v5, "FIVEDAY_LOW_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x16

    const-string v5, "FIVEDAY_ICON_NUM"

    aput-object v5, v2, v4

    const/16 v4, 0x17

    const-string v5, "SIXDAY_HIGH_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x18

    const-string v5, "SIXDAY_LOW_TEMP"

    aput-object v5, v2, v4

    const/16 v4, 0x19

    const-string v5, "SIXDAY_ICON_NUM"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 652
    if-eqz v7, :cond_1e2

    .line 654
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 656
    new-instance v8, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    invoke-direct {v8}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;-><init>()V

    .line 657
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    invoke-direct {v1}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;-><init>()V

    .line 658
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setCurrentTemp(F)V

    .line 659
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setHighTemp(F)V

    .line 660
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setLowTemp(F)V

    .line 661
    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setIconNum(I)V

    .line 662
    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setUpdateDate(Ljava/lang/String;)V

    .line 663
    const/4 v2, 0x5

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setTempScale(I)V

    .line 664
    const/4 v2, 0x6

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setTimeZone(Ljava/lang/String;)V

    .line 665
    const/4 v2, 0x7

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->setDate(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v8, v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->setTodayWeatherInfo(Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;)V

    .line 668
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/16 v4, 0x9

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/16 v5, 0xa

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    .line 669
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0xb

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/16 v4, 0xc

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/16 v5, 0xd

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    .line 670
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/16 v4, 0xf

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/16 v5, 0x10

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    .line 671
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x11

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/16 v5, 0x13

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    .line 672
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x14

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/16 v4, 0x15

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/16 v5, 0x16

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    .line 673
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x17

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    const/16 v4, 0x18

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/16 v5, 0x19

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;-><init>(IFFILjava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->addForecastInfo(Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;)V

    move-object v1, v8

    .line 675
    :goto_1d4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 677
    :goto_1d7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v0, v1

    .line 679
    :goto_1db
    monitor-exit v9

    .line 680
    return-object v0

    .line 679
    :catchall_1dd
    move-exception v0

    monitor-exit v9
    :try_end_1df
    .catchall {:try_start_5 .. :try_end_1df} :catchall_1dd

    throw v0

    :cond_1e0
    move-object v1, v8

    goto :goto_1d4

    :cond_1e2
    move-object v1, v8

    goto :goto_1d7

    :cond_1e4
    move-object v0, v8

    goto :goto_1db
.end method

.method public getRegisteredCityCount()I
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 460
    .line 461
    const-class v10, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v10

    .line 463
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_41

    move-result-object v0

    .line 464
    if-eqz v0, :cond_3f

    .line 468
    :try_start_c
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LOCATION"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 470
    if-eqz v2, :cond_46

    .line 472
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 474
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 476
    :goto_30
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_41
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c .. :try_end_33} :catch_39
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_c .. :try_end_33} :catch_3c

    .line 487
    :goto_33
    :try_start_33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v1

    .line 493
    :goto_37
    monitor-exit v10

    .line 494
    return v0

    .line 479
    :catch_39
    move-exception v1

    move v1, v9

    .line 486
    goto :goto_33

    .line 483
    :catch_3c
    move-exception v1

    move v1, v9

    .line 485
    goto :goto_33

    :cond_3f
    move v0, v9

    .line 491
    goto :goto_37

    .line 493
    :catchall_41
    move-exception v0

    monitor-exit v10
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_41

    throw v0

    :cond_44
    move v1, v8

    goto :goto_30

    :cond_46
    move v1, v8

    goto :goto_33
.end method

.method public getResultType()I
    .registers 2

    .prologue
    .line 1988
    iget v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mResultType:I

    return v0
.end method

.method public getTempScaleSetting()I
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 1820
    .line 1821
    const-class v9, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v9

    .line 1823
    const/4 v0, 0x0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1824
    if-eqz v0, :cond_40

    .line 1826
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_SETTING_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TEMP_SCALE"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1828
    if-eqz v2, :cond_3e

    .line 1830
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1832
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1834
    :goto_30
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1836
    :goto_33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v1

    .line 1838
    :goto_37
    monitor-exit v9

    .line 1839
    return v0

    .line 1838
    :catchall_39
    move-exception v0

    monitor-exit v9
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    move v1, v8

    goto :goto_30

    :cond_3e
    move v1, v8

    goto :goto_33

    :cond_40
    move v0, v8

    goto :goto_37
.end method

.method public insertCity(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;Z)I
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 588
    .line 589
    const-class v3, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v3

    .line 591
    const/4 v4, 0x1

    :try_start_7
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 592
    if-eqz v4, :cond_6e

    .line 594
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 596
    const-string v5, "NAME"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v5, "STATE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v5, "LOCATION"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v5, "MAIN_DISPLAY"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 600
    const-string v5, "SUMMER_TIME"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 601
    const-string v5, "LATITUDE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v5, "LONGITUDE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v5, "PROVIDER"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getProvider()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5f
    .catchall {:try_start_7 .. :try_end_5f} :catchall_80

    .line 607
    :try_start_5f
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "MY_WEATHER_LIST"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_80
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5f .. :try_end_6a} :catch_70
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_5f .. :try_end_6a} :catch_78

    move v0, v1

    .line 623
    :goto_6b
    :try_start_6b
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 625
    :cond_6e
    monitor-exit v3

    .line 626
    return v0

    .line 610
    :catch_70
    move-exception v0

    .line 612
    const-string v0, "///////////insertCity/SQLiteFullException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 621
    goto :goto_6b

    .line 616
    :catch_78
    move-exception v0

    .line 618
    const-string v0, "///////////insertCity/SQLiteDiskIOException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 620
    goto :goto_6b

    .line 625
    :catchall_80
    move-exception v0

    monitor-exit v3
    :try_end_82
    .catchall {:try_start_6b .. :try_end_82} :catchall_80

    throw v0
.end method

.method public insertDetailInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1269
    const/4 v0, 0x0

    .line 1270
    const-class v3, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v3

    .line 1272
    const/4 v4, 0x1

    :try_start_7
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1273
    if-eqz v4, :cond_25

    .line 1275
    invoke-direct {p0, p2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->buildDetailWeatherContentValues(Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1276
    const-string v5, "LOCATION"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_37

    .line 1281
    :try_start_16
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "MY_WEATHER_DETAIL_INFO"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_37
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_16 .. :try_end_21} :catch_27
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_16 .. :try_end_21} :catch_2f

    move v0, v1

    .line 1298
    :goto_22
    :try_start_22
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1300
    :cond_25
    monitor-exit v3

    .line 1301
    return v0

    .line 1285
    :catch_27
    move-exception v0

    .line 1287
    const-string v0, "///////////insertDetailInfo/SQLiteFullException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 1296
    goto :goto_22

    .line 1291
    :catch_2f
    move-exception v0

    .line 1293
    const-string v0, "///////////insertDetailInfo/SQLiteDiskIOException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 1295
    goto :goto_22

    .line 1300
    :catchall_37
    move-exception v0

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_37

    throw v0
.end method

.method public insertWeatherMainInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 685
    .line 686
    const-class v2, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v2

    .line 688
    const/4 v3, 0x1

    :try_start_6
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 689
    if-eqz v3, :cond_1e5

    .line 691
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 692
    const-string v4, "LOCATION"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v4, "TEMP_SCALE"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    const-string v4, "CURRENTTEMP"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getCurrentTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 695
    const-string v4, "HIGHTEMP"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 696
    const-string v4, "LOWTEMP"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 697
    const-string v4, "ICON_NUM"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    const-string v4, "UPDATE_DATE"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v4, "TIMEZONE"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v4, "DATE"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v4, "ONEDAY_HIGH_TEMP"

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 703
    const-string v4, "ONEDAY_LOW_TEMP"

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 704
    const-string v4, "ONEDAY_ICON_NUM"

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 706
    const-string v4, "TWODAY_HIGH_TEMP"

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 707
    const-string v4, "TWODAY_LOW_TEMP"

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 708
    const-string v4, "TWODAY_ICON_NUM"

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    const-string v4, "THREEDAY_HIGH_TEMP"

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 711
    const-string v4, "THREEDAY_LOW_TEMP"

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 712
    const-string v4, "THREEDAY_ICON_NUM"

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 714
    const-string v4, "FOURDAY_HIGH_TEMP"

    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 715
    const-string v4, "FOURDAY_LOW_TEMP"

    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 716
    const-string v4, "FOURDAY_ICON_NUM"

    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 718
    const-string v4, "FIVEDAY_HIGH_TEMP"

    const/4 v5, 0x4

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 719
    const-string v4, "FIVEDAY_LOW_TEMP"

    const/4 v5, 0x4

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 720
    const-string v4, "FIVEDAY_ICON_NUM"

    const/4 v5, 0x4

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    const-string v4, "SIXDAY_HIGH_TEMP"

    const/4 v5, 0x5

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 723
    const-string v4, "SIXDAY_LOW_TEMP"

    const/4 v5, 0x5

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 724
    const-string v4, "SIXDAY_ICON_NUM"

    const/4 v5, 0x5

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1d6
    .catchall {:try_start_6 .. :try_end_1d6} :catchall_1f7

    .line 729
    :try_start_1d6
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "MY_WEATHER_MAIN_INFO"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1e1
    .catchall {:try_start_1d6 .. :try_end_1e1} :catchall_1f7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1d6 .. :try_end_1e1} :catch_1e7
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1d6 .. :try_end_1e1} :catch_1ef

    move v0, v1

    .line 746
    :goto_1e2
    :try_start_1e2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 748
    :cond_1e5
    monitor-exit v2

    .line 749
    return v0

    .line 733
    :catch_1e7
    move-exception v0

    .line 735
    const-string v0, "///////////insertWeatherMainInfo/SQLiteFullException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 737
    const/4 v0, -0x1

    .line 744
    goto :goto_1e2

    .line 739
    :catch_1ef
    move-exception v0

    .line 741
    const-string v0, "///////////insertWeatherMainInfo/SQLiteDiskIOException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 743
    const/4 v0, -0x1

    goto :goto_1e2

    .line 748
    :catchall_1f7
    move-exception v0

    monitor-exit v2
    :try_end_1f9
    .catchall {:try_start_1e2 .. :try_end_1f9} :catchall_1f7

    throw v0
.end method

.method public isDBOpen()Z
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    if-eqz v0, :cond_6

    .line 47
    const/4 v0, 0x1

    .line 50
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isMaxCityListAdded()Z
    .registers 4

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 393
    .local v1, result:Z
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getRegisteredCityCount()I

    move-result v0

    .line 395
    .local v0, count:I
    const/16 v2, 0xa

    if-lt v0, v2, :cond_a

    .line 397
    const/4 v1, 0x1

    .line 400
    :cond_a
    return v1
.end method

.method public isRegisterdToMainInfo(Ljava/lang/String;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 906
    .line 907
    const-class v10, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v10

    .line 909
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 910
    if-eqz v0, :cond_48

    .line 912
    const-string v1, "Location=\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 913
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_MAIN_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "LOCATION"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 915
    if-eqz v2, :cond_46

    .line 917
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_44

    move v1, v9

    .line 921
    :goto_38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 923
    :goto_3b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v1

    .line 925
    :goto_3f
    monitor-exit v10

    .line 926
    return v0

    .line 925
    :catchall_41
    move-exception v0

    monitor-exit v10
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_41

    throw v0

    :cond_44
    move v1, v8

    goto :goto_38

    :cond_46
    move v1, v8

    goto :goto_3b

    :cond_48
    move v0, v8

    goto :goto_3f
.end method

.method public isRegisteredToCityList(Ljava/lang/String;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 310
    .line 311
    const-class v10, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v10

    .line 313
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_48

    .line 316
    const-string v1, "Location=\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 317
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "NAME"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_46

    .line 321
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_44

    move v1, v9

    .line 325
    :goto_38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 327
    :goto_3b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v1

    .line 329
    :goto_3f
    monitor-exit v10

    .line 330
    return v0

    .line 329
    :catchall_41
    move-exception v0

    monitor-exit v10
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_41

    throw v0

    :cond_44
    move v1, v8

    goto :goto_38

    :cond_46
    move v1, v8

    goto :goto_3b

    :cond_48
    move v0, v8

    goto :goto_3f
.end method

.method public isRegisteredToDetailInfo(Ljava/lang/String;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1306
    .line 1307
    const-class v10, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v10

    .line 1309
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1310
    if-eqz v0, :cond_48

    .line 1312
    const-string v1, "Location=\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1313
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "MY_WEATHER_DETAIL_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "LOCATION"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1315
    if-eqz v2, :cond_46

    .line 1317
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_44

    move v1, v9

    .line 1321
    :goto_38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1323
    :goto_3b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v0, v1

    .line 1325
    :goto_3f
    monitor-exit v10

    .line 1326
    return v0

    .line 1325
    :catchall_41
    move-exception v0

    monitor-exit v10
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_41

    throw v0

    :cond_44
    move v1, v8

    goto :goto_38

    :cond_46
    move v1, v8

    goto :goto_3b

    :cond_48
    move v0, v8

    goto :goto_3f
.end method

.method public reOpenDB(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 54
    if-nez p1, :cond_9

    .line 55
    const-string v0, ""

    const-string v1, "reOpenDB context null!!!!!!"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_9
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    .line 60
    return-void
.end method

.method public updateAutoRefreshTime(I)I
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1422
    const-string v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update [A.R] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const/4 v0, 0x0

    .line 1424
    const-class v3, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v3

    .line 1426
    const/4 v4, 0x1

    :try_start_1f
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1427
    if-eqz v4, :cond_43

    .line 1429
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1430
    const-string v5, "AUTO_REFRESH_TIME"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_55

    .line 1435
    :try_start_33
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "MY_WEATHER_SETTING_INFO"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_55
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_33 .. :try_end_3f} :catch_45
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_33 .. :try_end_3f} :catch_4d

    move v0, v1

    .line 1452
    :goto_40
    :try_start_40
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1454
    :cond_43
    monitor-exit v3

    .line 1455
    return v0

    .line 1439
    :catch_45
    move-exception v0

    .line 1441
    const-string v0, "///////////updateAutoRefreshTime/SQLiteFullException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 1450
    goto :goto_40

    .line 1445
    :catch_4d
    move-exception v0

    .line 1447
    const-string v0, "///////////updateAutoRefreshTime/SQLiteDiskIOException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 1449
    goto :goto_40

    .line 1454
    :catchall_55
    move-exception v0

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_40 .. :try_end_57} :catchall_55

    throw v0
.end method

.method public updateAutoScrollSettings(I)I
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 168
    const-string v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UdAS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x0

    .line 172
    const-class v3, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v3

    .line 174
    const/4 v4, 0x1

    :try_start_1f
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 175
    if-eqz v4, :cond_43

    .line 177
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 178
    const-string v5, "AUTO_SCROLL"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_55

    .line 183
    :try_start_33
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "MY_WEATHER_SETTING_INFO"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_55
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_33 .. :try_end_3f} :catch_45
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_33 .. :try_end_3f} :catch_4d

    move v0, v1

    .line 199
    :goto_40
    :try_start_40
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 201
    :cond_43
    monitor-exit v3

    .line 202
    return v0

    .line 187
    :catch_45
    move-exception v0

    .line 189
    const-string v0, "///////////updateTempScale/SQLiteFullException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 198
    goto :goto_40

    .line 193
    :catch_4d
    move-exception v0

    .line 195
    const-string v0, "///////////updateTempScale/SQLiteDiskIOException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 197
    goto :goto_40

    .line 201
    :catchall_55
    move-exception v0

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_40 .. :try_end_57} :catchall_55

    throw v0
.end method

.method public updateChangeOrder(Ljava/util/ArrayList;)I
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 1646
    .line 1647
    const-class v5, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v5

    .line 1649
    const/4 v0, 0x1

    :try_start_7
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_cd

    move-result-object v6

    .line 1650
    if-eqz v6, :cond_d2

    .line 1655
    :try_start_d
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1657
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "MY_WEATHER_LIST"

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1659
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    move v4, v1

    .line 1661
    :goto_22
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_91

    .line 1663
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 1664
    const-string v8, "NAME"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getCityName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    const-string v8, "STATE"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    const-string v8, "LOCATION"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    const-string v8, "SUMMER_TIME"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getSummerTime()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1668
    const-string v8, "MAIN_DISPLAY"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getMainDefault()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1669
    const-string v8, "LATITUDE"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLatitude()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const-string v8, "LONGITUDE"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLongitude()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string v8, "PROVIDER"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getProvider()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1672
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "MY_WEATHER_LIST"

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1661
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_22

    .line 1674
    :cond_91
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_94
    .catchall {:try_start_d .. :try_end_94} :catchall_c8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_94} :catch_a0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_d .. :try_end_94} :catch_ae
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_94} :catch_bc

    .line 1701
    :try_start_94
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_97} :catch_9d

    move v0, v2

    .line 1710
    :goto_98
    :try_start_98
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1712
    :goto_9b
    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_cd

    .line 1713
    return v0

    .line 1703
    :catch_9d
    move-exception v0

    move v0, v3

    .line 1709
    goto :goto_98

    .line 1679
    :catch_a0
    move-exception v0

    .line 1681
    :try_start_a1
    const-string v0, "///////////updateChangeOrder/SQLiteFullException1"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_c8

    .line 1701
    :try_start_a6
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_ab

    move v0, v3

    .line 1708
    goto :goto_98

    .line 1703
    :catch_ab
    move-exception v0

    move v0, v3

    .line 1709
    goto :goto_98

    .line 1685
    :catch_ae
    move-exception v0

    .line 1687
    :try_start_af
    const-string v0, "///////////updateChangeOrder/SQLiteDiskIOException1"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_c8

    .line 1701
    :try_start_b4
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_b9

    move v0, v3

    .line 1708
    goto :goto_98

    .line 1703
    :catch_b9
    move-exception v0

    move v0, v3

    .line 1709
    goto :goto_98

    .line 1692
    :catch_bc
    move-exception v0

    .line 1695
    :try_start_bd
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c8

    .line 1701
    :try_start_c0
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_c5

    move v0, v1

    .line 1708
    goto :goto_98

    .line 1703
    :catch_c5
    move-exception v0

    move v0, v3

    .line 1709
    goto :goto_98

    .line 1699
    :catchall_c8
    move-exception v0

    .line 1701
    :try_start_c9
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cc} :catch_d0

    .line 1708
    :goto_cc
    :try_start_cc
    throw v0

    .line 1712
    :catchall_cd
    move-exception v0

    monitor-exit v5
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_cd

    throw v0

    .line 1703
    :catch_d0
    move-exception v1

    goto :goto_cc

    :cond_d2
    move v0, v1

    goto :goto_9b
.end method

.method public updateCurrentLocationSettings(I)I
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 130
    const-string v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UdCL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v0, 0x0

    .line 133
    const-class v3, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v3

    .line 135
    const/4 v4, 0x1

    :try_start_1f
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 136
    if-eqz v4, :cond_43

    .line 138
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 139
    const-string v5, "ENABLE_CURRENT_LOCATION"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_55

    .line 143
    :try_start_33
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "MY_WEATHER_SETTING_INFO"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_55
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_33 .. :try_end_3f} :catch_45
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_33 .. :try_end_3f} :catch_4d

    move v0, v1

    .line 159
    :goto_40
    :try_start_40
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    :cond_43
    monitor-exit v3

    .line 162
    return v0

    .line 146
    :catch_45
    move-exception v0

    .line 148
    const-string v0, "///////////updateTempScale/SQLiteFullException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 157
    goto :goto_40

    .line 152
    :catch_4d
    move-exception v0

    .line 154
    const-string v0, "///////////updateTempScale/SQLiteDiskIOException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 156
    goto :goto_40

    .line 161
    :catchall_55
    move-exception v0

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_40 .. :try_end_57} :catchall_55

    throw v0
.end method

.method public updateDetailInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1231
    .line 1232
    const-class v3, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v3

    .line 1234
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->applySummerTime(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)V

    .line 1236
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1237
    if-eqz v4, :cond_2f

    .line 1239
    invoke-direct {p0, p2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->buildDetailWeatherContentValues(Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)Landroid/content/ContentValues;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_41

    move-result-object v0

    .line 1243
    :try_start_14
    const-string v5, "Location=\"%s\""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1244
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "MY_WEATHER_DETAIL_INFO"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_41
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_14 .. :try_end_2b} :catch_31
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_14 .. :try_end_2b} :catch_39

    move v0, v1

    .line 1261
    :goto_2c
    :try_start_2c
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1263
    :cond_2f
    monitor-exit v3

    .line 1264
    return v0

    .line 1248
    :catch_31
    move-exception v0

    .line 1250
    const-string v0, "///////////updateDetailInfo/SQLiteFullException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 1259
    goto :goto_2c

    .line 1254
    :catch_39
    move-exception v0

    .line 1256
    const-string v0, "///////////updateDetailInfo/SQLiteDiskIOException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 1258
    goto :goto_2c

    .line 1263
    :catchall_41
    move-exception v0

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_41

    throw v0
.end method

.method public updateTempScale(I)I
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1460
    const-string v0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBHELPER UPDATE TEMPSCALE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/4 v0, 0x0

    .line 1462
    const-class v3, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v3

    .line 1464
    const/4 v4, 0x1

    :try_start_1f
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1465
    if-eqz v4, :cond_43

    .line 1467
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1468
    const-string v5, "TEMP_SCALE"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_55

    .line 1473
    :try_start_33
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "MY_WEATHER_SETTING_INFO"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_55
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_33 .. :try_end_3f} :catch_45
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_33 .. :try_end_3f} :catch_4d

    move v0, v1

    .line 1490
    :goto_40
    :try_start_40
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1492
    :cond_43
    monitor-exit v3

    .line 1493
    return v0

    .line 1477
    :catch_45
    move-exception v0

    .line 1479
    const-string v0, "///////////updateTempScale/SQLiteFullException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 1488
    goto :goto_40

    .line 1483
    :catch_4d
    move-exception v0

    .line 1485
    const-string v0, "///////////updateTempScale/SQLiteDiskIOException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    move v0, v2

    .line 1487
    goto :goto_40

    .line 1492
    :catchall_55
    move-exception v0

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_40 .. :try_end_57} :catchall_55

    throw v0
.end method

.method public updateWeatherMainInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 754
    .line 755
    const-class v2, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    monitor-enter v2

    .line 757
    const/4 v3, 0x1

    :try_start_6
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->openDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 758
    if-eqz v3, :cond_1fd

    .line 760
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 762
    const-string v4, "TEMP_SCALE"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    const-string v4, "TEMP_SCALE"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    const-string v4, "CURRENTTEMP"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getCurrentTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 765
    const-string v4, "HIGHTEMP"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 766
    const-string v4, "LOWTEMP"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 767
    const-string v4, "ICON_NUM"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 768
    const-string v4, "UPDATE_DATE"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v4, "TIMEZONE"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v4, "DATE"

    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v4, "ONEDAY_HIGH_TEMP"

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 774
    const-string v4, "ONEDAY_LOW_TEMP"

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 775
    const-string v4, "ONEDAY_ICON_NUM"

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    const-string v4, "TWODAY_HIGH_TEMP"

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 778
    const-string v4, "TWODAY_LOW_TEMP"

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 779
    const-string v4, "TWODAY_ICON_NUM"

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    const-string v4, "THREEDAY_HIGH_TEMP"

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 782
    const-string v4, "THREEDAY_LOW_TEMP"

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 783
    const-string v4, "THREEDAY_ICON_NUM"

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 785
    const-string v4, "FOURDAY_HIGH_TEMP"

    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 786
    const-string v4, "FOURDAY_LOW_TEMP"

    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 787
    const-string v4, "FOURDAY_ICON_NUM"

    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    const-string v4, "FIVEDAY_HIGH_TEMP"

    const/4 v5, 0x4

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 790
    const-string v4, "FIVEDAY_LOW_TEMP"

    const/4 v5, 0x4

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 791
    const-string v4, "FIVEDAY_ICON_NUM"

    const/4 v5, 0x4

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    const-string v4, "SIXDAY_HIGH_TEMP"

    const/4 v5, 0x5

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getHighTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 794
    const-string v4, "SIXDAY_LOW_TEMP"

    const/4 v5, 0x5

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getLowTemp()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 795
    const-string v4, "SIXDAY_ICON_NUM"

    const/4 v5, 0x5

    invoke-virtual {p2, v5}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getForecastInfo(I)Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/weatherclock/model/GeneralWeatherInfo;->getIconNum()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1e2
    .catchall {:try_start_6 .. :try_end_1e2} :catchall_20f

    .line 799
    :try_start_1e2
    const-string v4, "Location=\"%s\""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 800
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->mDbOpenHelper:Lcom/sec/android/widgetapp/weatherclock/db/OpenHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "MY_WEATHER_MAIN_INFO"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v0, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1f9
    .catchall {:try_start_1e2 .. :try_end_1f9} :catchall_20f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1e2 .. :try_end_1f9} :catch_1ff
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1e2 .. :try_end_1f9} :catch_207

    move v0, v1

    .line 817
    :goto_1fa
    :try_start_1fa
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 819
    :cond_1fd
    monitor-exit v2

    .line 820
    return v0

    .line 804
    :catch_1ff
    move-exception v0

    .line 806
    const-string v0, "///////////updateWeatherMainInfo/SQLiteFullException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 808
    const/4 v0, -0x1

    .line 815
    goto :goto_1fa

    .line 810
    :catch_207
    move-exception v0

    .line 812
    const-string v0, "///////////updateWeatherMainInfo/SQLiteDiskIOException"

    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->Debug(Ljava/lang/String;)V

    .line 814
    const/4 v0, -0x1

    goto :goto_1fa

    .line 819
    :catchall_20f
    move-exception v0

    monitor-exit v2
    :try_end_211
    .catchall {:try_start_1fa .. :try_end_211} :catchall_20f

    throw v0
.end method
