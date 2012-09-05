.class public Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;
.super Ljava/lang/Object;
.source "DaemonInterface.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckSameDaemonCityIdAtDate(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)V
    .registers 13
    .parameter "ctx"
    .parameter "dbHelper"

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, CityId:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 104
    .local v5, flag:Ljava/lang/Boolean;
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->checkDaemonServerApp(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_11

    .line 152
    :cond_10
    :goto_10
    return-void

    .line 107
    :cond_11
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->getSettingDaemonCityId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v3

    .line 110
    .local v3, citylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;>;"
    const-string v8, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_87

    .line 111
    const-string v8, ""

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Chk_CtyId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 115
    .local v2, city:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 116
    invoke-static {p0, p1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->setDaemonUpdateDate(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;)V

    .line 117
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 122
    .end local v2           #city:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    :cond_5b
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_10

    .line 123
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v1, bundle:Landroid/os/Bundle;
    const-string v8, "KEY_UPDATE_DAEMON_FROM_WIDGET"

    const-string v9, "widget"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.sec.android.widgetapp.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 128
    new-instance v4, Landroid/content/ComponentName;

    const-string v8, "com.sec.android.daemonapp.accuweather"

    const-string v9, "com.sec.android.daemonapp.accuweather.AccuWeatherDaemonService"

    invoke-direct {v4, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v4, component:Landroid/content/ComponentName;
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_10

    .line 135
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #component:Landroid/content/ComponentName;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_87
    const-string v8, ""

    const-string v9, "DntCtifDamn!!"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_10

    .line 141
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 142
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v8, "KEY_UPDATE_DAEMON_FROM_WIDGET"

    const-string v9, "widget"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.sec.android.widgetapp.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual {v7, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 146
    new-instance v4, Landroid/content/ComponentName;

    const-string v8, "com.sec.android.daemonapp.accuweather"

    const-string v9, "com.sec.android.daemonapp.accuweather.AccuWeatherDaemonService"

    invoke-direct {v4, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .restart local v4       #component:Landroid/content/ComponentName;
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10
.end method

.method public static CheckSameDaemonCityIdAtStting(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)V
    .registers 15
    .parameter "ctx"
    .parameter "dbHelper"

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, CityId:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 158
    .local v6, flag:Ljava/lang/Boolean;
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->checkDaemonServerApp(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_11

    .line 194
    :cond_10
    :goto_10
    return-void

    .line 161
    :cond_11
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->getSettingDaemonCityId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAllCityList()Ljava/util/ArrayList;

    move-result-object v4

    .line 165
    .local v4, citylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;>;"
    const-string v10, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 166
    const-string v10, ""

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Chk_CtyId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;

    .line 170
    .local v3, city:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 171
    invoke-static {p0, p1, v3}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->setDaemonUpdateSetting(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;)V

    .line 172
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 177
    .end local v3           #city:Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;
    :cond_5b
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_10

    .line 178
    const/4 v9, 0x0

    .local v9, tempScale:I
    const/4 v1, 0x0

    .line 180
    .local v1, autoRefresh:I
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v9

    .line 181
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAutoRefreshTime()I

    move-result v1

    .line 183
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v2, bundle:Landroid/os/Bundle;
    const-string v10, "TEMPSCALE"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    const-string v10, "AUTOREFRESH"

    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.accuweatherdaemon.action.CHANGE_SETTING"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 188
    new-instance v5, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.daemonapp.accuweather"

    const-string v11, "com.sec.android.daemonapp.accuweather.AccuWeatherDaemonService"

    invoke-direct {v5, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v5, component:Landroid/content/ComponentName;
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10
.end method

.method public static checkDaemonServerApp(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 5
    .parameter "ctx"

    .prologue
    .line 200
    const-string v2, ""

    const-string v3, "CkDemnSerAp!!!"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 205
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_b
    const-string v2, "com.sec.android.daemonapp.accuweather"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_12} :catch_18

    .line 211
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_17
    return-object v2

    .line 206
    :catch_18
    move-exception v0

    .line 207
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    const-string v3, "DntDamnSev:NtFo!!!!"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_17
.end method

.method public static getDaemonStatus(Landroid/content/Context;)I
    .registers 5
    .parameter "ctx"

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, Service_Status:I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aw_daemon_service_key_service_status"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 223
    :goto_b
    return v0

    .line 219
    :catch_c
    move-exception v1

    .line 221
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_b
.end method

.method public static getSettingDaemonCityId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "ctx"

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, CityId:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "aw_daemon_service_key_loc_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_e

    .line 232
    .end local v0           #CityId:Ljava/lang/String;
    :goto_d
    return-object v0

    .restart local v0       #CityId:Ljava/lang/String;
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static sendDate(Landroid/content/Context;ILcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)V
    .registers 10
    .parameter "ctx"
    .parameter "tempScale"
    .parameter "today"

    .prologue
    .line 46
    const-string v4, ""

    const-string v5, "SedDatFrDemn!!!"

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;->getTodayWeatherInfo()Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;

    move-result-object v0

    .line 51
    .local v0, WeatherInfo:Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "KEY_CURRENT_TEMP"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getCurrentTemp()F

    move-result v6

    invoke-static {v5, p1, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIF)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 54
    const-string v4, "KEY_HIGH_TEMP"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getHighTemp()F

    move-result v6

    invoke-static {v5, p1, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIF)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 55
    const-string v4, "KEY_LOW_TEMP"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getTempScale()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getLowTemp()F

    move-result v6

    invoke-static {v5, p1, v6}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->convertTemp(IIF)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 56
    const-string v4, "KEY_ICON_NUM"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getIconNum()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string v4, "KEY_UPDATE_TIME"

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/model/TodayWeatherInfo;->getUpdateDate()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 59
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_WIDGET"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.daemonapp.accuweather"

    const-string v5, "com.sec.android.daemonapp.accuweather.AccuWeatherDaemonService"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v2, component:Landroid/content/ComponentName;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public static sendSetting(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;II)V
    .registers 9
    .parameter "ctx"
    .parameter "cityListItem"
    .parameter "tempScale"
    .parameter "autoRefresh"

    .prologue
    .line 24
    const-string v3, ""

    const-string v4, "SedSetFrDemn !!!!"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "SERVICE_STATUS"

    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->getDaemonStatus(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    const-string v3, "CITY_ID"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v3, "CITY"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v3, "STATE"

    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v3, "TEMPSCALE"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    const-string v3, "AUTOREFRESH"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_SETTING_WITH_WIDGET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 39
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.daemonapp.accuweather"

    const-string v4, "com.sec.android.daemonapp.accuweather.AccuWeatherDaemonService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public static setDaemonAccuRefresh(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "value"

    .prologue
    .line 236
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    .line 237
    .local v0, mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateAutoRefreshTime(I)I

    .line 239
    invoke-static {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setAutorefreshSetting(Landroid/content/Context;I)Z

    .line 240
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    move-result-wide v1

    .line 241
    .local v1, nextTime:J
    invoke-static {p0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastTime(Landroid/content/Context;J)Z

    .line 242
    return-void
.end method

.method public static setDaemonTemp(Landroid/content/Context;I)V
    .registers 6
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 246
    new-instance v1, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    .line 247
    .local v1, mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    if-ne p1, v3, :cond_1c

    move v2, v3

    :goto_9
    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateTempScale(I)I

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.widgetapp.weathercolco.action.CHANGE_SETTING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "SEND_DAEMON_SETTING_UPDATE_WIDGET"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 252
    return-void

    .line 247
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1c
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static setDaemonUpdateDate(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;)V
    .registers 8
    .parameter "ctx"
    .parameter "dbHelper"
    .parameter "city"

    .prologue
    .line 70
    const-string v3, ""

    const-string v4, "SeDemnUpdt!!!"

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    .local v1, tempScale:I
    const/4 v0, 0x0

    .line 75
    .local v0, autoRefresh:I
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v1

    .line 76
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAutoRefreshTime()I

    move-result v0

    .line 78
    invoke-virtual {p2}, Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getMainWeatherInfo(Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v2

    .line 80
    .local v2, today:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    invoke-static {p0, p2, v1, v0}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->sendSetting(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;II)V

    .line 81
    if-eqz v2, :cond_21

    .line 82
    invoke-static {p0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->sendDate(Landroid/content/Context;ILcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)V

    .line 85
    :cond_21
    return-void
.end method

.method public static setDaemonUpdateSetting(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;)V
    .registers 7
    .parameter "ctx"
    .parameter "dbHelper"
    .parameter "city"

    .prologue
    .line 89
    const-string v2, ""

    const-string v3, "SeDemnUpSt!!!"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v1, 0x0

    .local v1, tempScale:I
    const/4 v0, 0x0

    .line 94
    .local v0, autoRefresh:I
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v1

    .line 95
    invoke-virtual {p1}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAutoRefreshTime()I

    move-result v0

    .line 97
    invoke-static {p0, p2, v1, v0}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->sendSetting(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/model/CityListItem;II)V

    .line 98
    return-void
.end method
