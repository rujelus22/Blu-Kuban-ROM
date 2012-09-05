.class final Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;
.super Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;
.source "WeatherWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->performGetACity(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;->val$info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/lang/String;)V
    .registers 20
    .parameter "position"
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 1535
    invoke-super/range {p0 .. p4}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$800()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1633
    :goto_9
    return-void

    .line 1542
    :cond_a
    const/16 v11, 0xc8

    move/from16 v0, p2

    if-ne v0, v11, :cond_187

    .line 1545
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isDBOpen()Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_26

    .line 1546
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->reOpenDB(Landroid/content/Context;)V

    .line 1549
    :cond_26
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v10

    .line 1552
    .local v10, updateDate:Ljava/lang/String;
    new-instance v9, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct {v9}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;-><init>()V

    .line 1554
    .local v9, parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v11

    new-instance v12, Lorg/xml/sax/InputSource;

    new-instance v13, Ljava/io/StringReader;

    move-object/from16 v0, p4

    invoke-direct {v13, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v9, v11, v12, v10}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseDetailWeather(ILorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v2

    .line 1556
    .local v2, detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    if-eqz v2, :cond_185

    iget-object v11, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;->val$info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    if-eqz v11, :cond_185

    .line 1558
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    if-nez v11, :cond_5f

    .line 1559
    new-instance v11, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-static {v11}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$902(Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 1562
    :cond_5f
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isDBOpen()Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_75

    .line 1563
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->reOpenDB(Landroid/content/Context;)V

    .line 1567
    :cond_75
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateCurrentLocationSettings(I)I

    .line 1570
    :try_start_7d
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;->val$info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToCityList(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11a

    .line 1572
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1573
    .local v8, locs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;->val$info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v11}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1574
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->deleteCitys(Ljava/util/ArrayList;)I

    .line 1579
    .end local v8           #locs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_a2
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;->val$info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisterdToMainInfo(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_167

    .line 1580
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;->val$info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateWeatherMainInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    .line 1584
    :goto_bf
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;->val$info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->isRegisteredToDetailInfo(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_176

    .line 1585
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;->val$info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateDetailInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_dc} :catch_126

    .line 1605
    :cond_dc
    :goto_dc
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v11

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->CheckSameDaemonCityIdAtDate(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)V

    .line 1606
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v11

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getWeatherDBData(Landroid/content/Context;)Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$300(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1608
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1600()[I

    move-result-object v1

    .local v1, arr$:[I
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_f8
    if-ge v4, v7, :cond_187

    aget v5, v1, v4

    .line 1610
    .local v5, id:I
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLocating(I)V
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1700(I)V

    .line 1611
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v11

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v11, v12, v5, v13, v14}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 1608
    add-int/lit8 v4, v4, 0x1

    goto :goto_f8

    .line 1577
    .end local v1           #arr$:[I
    .end local v4           #i$:I
    .end local v5           #id:I
    .end local v7           #len$:I
    :cond_11a
    :try_start_11a
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;->val$info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->insertCity(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;Z)I
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_124} :catch_126

    goto/16 :goto_a2

    .line 1589
    :catch_126
    move-exception v3

    .line 1591
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1593
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1594
    .restart local v8       #locs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;->val$info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v11}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->deleteCitys(Ljava/util/ArrayList;)I

    .line 1597
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1600()[I

    move-result-object v1

    .restart local v1       #arr$:[I
    array-length v7, v1

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_145
    if-ge v4, v7, :cond_dc

    aget v5, v1, v4

    .line 1599
    .restart local v5       #id:I
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLocating(I)V
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1700(I)V

    .line 1601
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v11

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v5}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v11, v12, v5, v13, v14}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 1597
    add-int/lit8 v4, v4, 0x1

    goto :goto_145

    .line 1582
    .end local v1           #arr$:[I
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #i$:I
    .end local v5           #id:I
    .end local v7           #len$:I
    .end local v8           #locs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_167
    :try_start_167
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;->val$info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->insertWeatherMainInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    goto/16 :goto_bf

    .line 1587
    :cond_176
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$3;->val$info:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    invoke-virtual {v12}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->insertDetailInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_183} :catch_126

    goto/16 :goto_dc

    .line 1616
    :cond_185
    const/16 p2, -0x1

    .line 1620
    .end local v2           #detailInfo:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    .end local v9           #parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    .end local v10           #updateDate:Ljava/lang/String;
    :cond_187
    const/16 v11, 0xc8

    move/from16 v0, p2

    if-eq v0, v11, :cond_1b1

    .line 1622
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$802(Z)Z

    .line 1624
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    .line 1625
    .local v6, instance:Landroid/appwidget/AppWidgetManager;
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1600()[I

    move-result-object v1

    .restart local v1       #arr$:[I
    array-length v7, v1

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_19f
    if-ge v4, v7, :cond_1b1

    aget v5, v1, v4

    .line 1627
    .restart local v5       #id:I
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLocating(I)V
    invoke-static {v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1700(I)V

    .line 1629
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v6, v5, v12}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    .line 1625
    add-int/lit8 v4, v4, 0x1

    goto :goto_19f

    .line 1632
    .end local v1           #arr$:[I
    .end local v4           #i$:I
    .end local v5           #id:I
    .end local v6           #instance:Landroid/appwidget/AppWidgetManager;
    .end local v7           #len$:I
    :cond_1b1
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->deleteMe(I)V
    invoke-static/range {p1 .. p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1500(I)V

    goto/16 :goto_9
.end method
