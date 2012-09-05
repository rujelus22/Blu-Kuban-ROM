.class final Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;
.super Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;
.source "WeatherWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->performNetworkAccess(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;[IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bool:Z

.field final synthetic val$ids:[I

.field final synthetic val$item:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

.field final synthetic val$needRefresh:Z


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;[IZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 969
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$item:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$ids:[I

    iput-boolean p3, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$bool:Z

    iput-boolean p4, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$needRefresh:Z

    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/lang/String;)V
    .registers 32
    .parameter "position"
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 972
    invoke-super/range {p0 .. p4}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 974
    const/4 v6, 0x0

    .line 975
    .local v6, detailInfos:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    const/16 v21, 0x1

    .line 976
    .local v21, readResult:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v5, citynames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 979
    .local v14, locations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$item:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$item:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$800()Z

    move-result v23

    if-eqz v23, :cond_39

    .line 1115
    :goto_38
    return-void

    .line 987
    :cond_39
    const/16 v23, 0xc8

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_bc

    .line 989
    new-instance v20, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    invoke-direct/range {v20 .. v20}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;-><init>()V

    .line 990
    .local v20, parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v22

    .line 991
    .local v22, updateDate:Ljava/lang/String;
    const/4 v6, 0x0

    .line 995
    :try_start_4b
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v23

    new-instance v24, Lorg/xml/sax/InputSource;

    new-instance v25, Ljava/io/StringReader;

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v24 .. v25}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseDetailWeather(ILorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    :try_end_6c
    .catchall {:try_start_4b .. :try_end_6c} :catchall_b6
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_6c} :catch_94

    move-result-object v6

    .line 1006
    if-nez v6, :cond_71

    .line 1007
    const/16 v21, 0x2

    .line 1015
    .end local v20           #parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    .end local v22           #updateDate:Ljava/lang/String;
    :cond_71
    :goto_71
    const/16 v23, 0x2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_12d

    .line 1017
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$100()Z

    move-result v23

    if-eqz v23, :cond_11a

    .line 1019
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1002(Z)Z

    .line 1020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$ids:[I

    .local v4, arr$:[I
    array-length v13, v4

    .local v13, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_8a
    if-ge v8, v13, :cond_bf

    aget v9, v4, v8

    .line 1022
    .local v9, id:I
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLoading(I)V
    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1100(I)V

    .line 1020
    add-int/lit8 v8, v8, 0x1

    goto :goto_8a

    .line 997
    .end local v4           #arr$:[I
    .end local v8           #i$:I
    .end local v9           #id:I
    .end local v13           #len$:I
    .restart local v20       #parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    .restart local v22       #updateDate:Ljava/lang/String;
    :catch_94
    move-exception v7

    .line 1000
    .local v7, e:Ljava/lang/Exception;
    :try_start_95
    const-string v23, ""

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[performNetworkAccess] error parser : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_95 .. :try_end_af} :catchall_b6

    .line 1002
    const/16 v21, 0x2

    .line 1006
    if-nez v6, :cond_71

    .line 1007
    const/16 v21, 0x2

    goto :goto_71

    .line 1006
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_b6
    move-exception v23

    if-nez v6, :cond_bb

    .line 1007
    const/16 v21, 0x2

    :cond_bb
    throw v23

    .line 1012
    .end local v20           #parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;
    .end local v22           #updateDate:Ljava/lang/String;
    :cond_bc
    const/16 v21, 0x2

    goto :goto_71

    .line 1024
    .restart local v4       #arr$:[I
    .restart local v8       #i$:I
    .restart local v13       #len$:I
    :cond_bf
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$102(Z)Z

    .line 1035
    :cond_c4
    const-string v23, ""

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[performNetworkAccess] error readResult ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string v23, ""

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "FLAG_FOR_AR = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$100()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-string v23, ""

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AR_AFTER_CONNECTED = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1000()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 1028
    .end local v4           #arr$:[I
    .end local v8           #i$:I
    .end local v13           #len$:I
    :cond_11a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$ids:[I

    .restart local v4       #arr$:[I
    array-length v13, v4

    .restart local v13       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_120
    if-ge v8, v13, :cond_c4

    aget v9, v4, v8

    .line 1030
    .restart local v9       #id:I
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLoading(I)V
    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1100(I)V

    .line 1031
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->showError(I)V
    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1200(I)V

    .line 1028
    add-int/lit8 v8, v8, 0x1

    goto :goto_120

    .line 1041
    .end local v4           #arr$:[I
    .end local v8           #i$:I
    .end local v9           #id:I
    .end local v13           #len$:I
    :cond_12d
    const/16 v23, -0x1

    move/from16 v0, v23

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a9

    .line 1043
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$100()Z

    move-result v23

    if-eqz v23, :cond_196

    .line 1045
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1002(Z)Z

    .line 1046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$ids:[I

    .restart local v4       #arr$:[I
    array-length v13, v4

    .restart local v13       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_146
    if-ge v8, v13, :cond_150

    aget v9, v4, v8

    .line 1048
    .restart local v9       #id:I
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLoading(I)V
    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1100(I)V

    .line 1046
    add-int/lit8 v8, v8, 0x1

    goto :goto_146

    .line 1050
    .end local v9           #id:I
    :cond_150
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$102(Z)Z

    .line 1061
    :cond_155
    const-string v23, ""

    const-string v24, "[performNetworkAccess] Constants.DB_FULL_EXCEPTION_ERR"

    invoke-static/range {v23 .. v24}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const-string v23, ""

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "FLAG_FOR_AR = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$100()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const-string v23, ""

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "AR_FTER_CONNECTED = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1000()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 1054
    .end local v4           #arr$:[I
    .end local v8           #i$:I
    .end local v13           #len$:I
    :cond_196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$ids:[I

    .restart local v4       #arr$:[I
    array-length v13, v4

    .restart local v13       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_19c
    if-ge v8, v13, :cond_155

    aget v9, v4, v8

    .line 1056
    .restart local v9       #id:I
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLoading(I)V
    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1100(I)V

    .line 1057
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->showError(I)V
    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1200(I)V

    .line 1054
    add-int/lit8 v8, v8, 0x1

    goto :goto_19c

    .line 1068
    .end local v4           #arr$:[I
    .end local v8           #i$:I
    .end local v9           #id:I
    .end local v13           #len$:I
    :cond_1a9
    if-eqz v6, :cond_1da

    .line 1070
    move-object v10, v6

    .line 1071
    .local v10, info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$item:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateDetailInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    .line 1072
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$item:Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$WeatherContainer;->WeatherCityLocation:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateWeatherMainInfo(Ljava/lang/String;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)I

    .line 1076
    .end local v10           #info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    :cond_1da
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$bool:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1f4

    .line 1077
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v23

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$900()Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->CheckSameDaemonCityIdAtDate(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)V

    .line 1078
    const-string v23, ""

    const-string v24, "Demn RF stat !!! "

    invoke-static/range {v23 .. v24}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_1f4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$needRefresh:Z

    move/from16 v23, v0

    if-eqz v23, :cond_24f

    .line 1083
    const-string v23, ""

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[pefrmNetkAccs] AR = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$needRefresh:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1086
    .local v18, now:J
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getLastTime(Landroid/content/Context;)J

    move-result-wide v11

    .line 1087
    .local v11, lasttime:J
    cmp-long v23, v11, v18

    if-gtz v23, :cond_297

    const/4 v15, 0x1

    .line 1088
    .local v15, need_refresh:Z
    :goto_22b
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v15}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    move-result-wide v16

    .line 1089
    .local v16, nextTime:J
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastTime(Landroid/content/Context;J)Z

    .line 1090
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastAutoRefreshUpdateTime(Landroid/content/Context;J)Z

    .line 1093
    .end local v11           #lasttime:J
    .end local v15           #need_refresh:Z
    .end local v16           #nextTime:J
    .end local v18           #now:J
    :cond_24f
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v23

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->getWeatherDBData(Landroid/content/Context;)Ljava/util/ArrayList;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$300(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;->val$ids:[I

    .restart local v4       #arr$:[I
    array-length v13, v4

    .restart local v13       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_260
    if-ge v8, v13, :cond_299

    aget v9, v4, v8

    .line 1097
    .restart local v9       #id:I
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->hideLoading(I)V
    invoke-static {v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1100(I)V

    .line 1098
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v23

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v24

    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$000()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v0, v9}, Lcom/sec/android/widgetapp/weatherclock/common/WidgetIdManager;->getWidgetLayout(Landroid/content/Context;I)I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v9, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IIZ)V

    .line 1099
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1002(Z)Z

    .line 1100
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$102(Z)Z

    .line 1095
    add-int/lit8 v8, v8, 0x1

    goto :goto_260

    .line 1087
    .end local v4           #arr$:[I
    .end local v8           #i$:I
    .end local v9           #id:I
    .end local v13           #len$:I
    .restart local v11       #lasttime:J
    .restart local v18       #now:J
    :cond_297
    const/4 v15, 0x0

    goto :goto_22b

    .line 1103
    .end local v11           #lasttime:J
    .end local v18           #now:J
    .restart local v4       #arr$:[I
    .restart local v8       #i$:I
    .restart local v13       #len$:I
    :cond_299
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1300()Landroid/os/Handler;

    move-result-object v23

    if-eqz v23, :cond_2af

    .line 1105
    invoke-static {}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1300()Landroid/os/Handler;

    move-result-object v23

    new-instance v24, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider$2;)V

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1114
    :cond_2af
    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->deleteMe(I)V
    invoke-static/range {p1 .. p1}, Lcom/sec/android/widgetapp/weatherclock/WeatherWidgetProvider;->access$1500(I)V

    goto/16 :goto_38
.end method
