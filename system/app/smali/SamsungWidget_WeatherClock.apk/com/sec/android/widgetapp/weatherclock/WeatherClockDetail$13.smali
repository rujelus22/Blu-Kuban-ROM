.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;
.super Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;
.source "WeatherClockDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performMapCities()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1956
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/lang/String;J)V
    .registers 21
    .parameter "position"
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"
    .parameter "stamp"

    .prologue
    .line 1959
    invoke-super/range {p0 .. p4}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 1961
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "to map onreceive "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p5

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-boolean v9, v9, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performMapCancled:Z

    if-nez v9, :cond_2b

    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-wide v9, v9, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->syncstamp:J

    cmp-long v9, v9, p5

    if-eqz v9, :cond_2c

    .line 2088
    :cond_2b
    :goto_2b
    return-void

    .line 1966
    :cond_2c
    const/16 v9, 0xc8

    move/from16 v0, p2

    if-ne v0, v9, :cond_177

    .line 1970
    :try_start_32
    new-instance v9, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct {v9}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;-><init>()V

    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I
    invoke-static {v10}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1800(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)I

    move-result v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lorg/xml/sax/InputSource;

    new-instance v13, Ljava/io/StringReader;

    move-object/from16 v0, p4

    invoke-direct {v13, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseDetailWeather_LocCities(ILjava/lang/String;Lorg/xml/sax/InputSource;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1973
    .local v8, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;>;"
    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    monitor-enter v10
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_58} :catch_75

    .line 1975
    if-eqz v8, :cond_89

    .line 1976
    :try_start_5a
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_5e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_89

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 1977
    .local v4, i:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v9, v9, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 1979
    .end local v4           #i:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    .end local v5           #i$:Ljava/util/Iterator;
    :catchall_72
    move-exception v9

    monitor-exit v10
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_72

    :try_start_74
    throw v9
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_75} :catch_75

    .line 2053
    .end local v8           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;>;"
    :catch_75
    move-exception v3

    .line 2055
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2057
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    new-instance v10, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$2;

    invoke-direct {v10, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2087
    .end local v3           #e:Ljava/lang/Exception;
    :cond_83
    :goto_83
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-virtual {v9, p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->deleteMe(I)V

    goto :goto_2b

    .line 1979
    .restart local v8       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;>;"
    :cond_89
    :try_start_89
    monitor-exit v10
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_72

    .line 1981
    :try_start_8a
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mapWthr.size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v11, v11, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v11, v11, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v9, v9, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v10, v10, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_83

    .line 1985
    const/4 v4, 0x0

    .local v4, i:I
    :goto_cf
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v9, v9, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_133

    .line 1987
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v9, v9, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 1988
    .local v6, item:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setZoomlevel(I)V

    .line 1989
    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v7

    .line 1991
    .local v7, str:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v9, v9, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_f3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    .line 1993
    .local v2, c:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f3

    .line 1995
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getZoomlevel()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setZoomlevel(I)V

    .line 1996
    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setState(Ljava/lang/String;)V

    .line 1997
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v9, v9, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v9, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2002
    .end local v2           #c:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    :cond_11e
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v9, v9, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapLocation:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_130

    .line 2004
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iput-object v6, v9, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    .line 2005
    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->setZoomlevel(I)V

    .line 1985
    :cond_130
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    .line 2010
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #item:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;
    .end local v7           #str:Ljava/lang/String;
    :cond_133
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reached here !! with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v11, v11, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cities "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v11, v11, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v9, v9, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapHandler:Landroid/os/Handler;

    const v10, -0x140b4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 2014
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    new-instance v10, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;

    invoke-direct {v10, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_175} :catch_75

    goto/16 :goto_83

    .line 2073
    .end local v4           #i:I
    .end local v8           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;>;"
    :cond_177
    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    new-instance v10, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$3;

    invoke-direct {v10, p0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_83
.end method
