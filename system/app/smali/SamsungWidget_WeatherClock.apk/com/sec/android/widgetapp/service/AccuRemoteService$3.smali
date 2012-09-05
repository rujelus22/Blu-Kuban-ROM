.class Lcom/sec/android/widgetapp/service/AccuRemoteService$3;
.super Landroid/os/Handler;
.source "AccuRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/service/AccuRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

.field timeout:Z


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/service/AccuRemoteService;)V
    .registers 3
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->timeout:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 24
    .parameter "msg"

    .prologue
    .line 169
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 171
    const/16 v17, 0xc

    const-wide/16 v18, 0x7530

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->sendEmptyMessageDelayed(IJ)Z

    .line 292
    :cond_1b
    :goto_1b
    return-void

    .line 174
    :cond_1c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8c

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->httpHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    .line 178
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->timeout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1b

    .line 180
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->timeout:Z

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 182
    .local v4, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_59
    if-ge v10, v4, :cond_7c

    .line 186
    :try_start_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;

    const/16 v18, 0x2

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;->errorReport(I)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_74} :catch_77

    .line 182
    :goto_74
    add-int/lit8 v10, v10, 0x1

    goto :goto_59

    .line 188
    :catch_77
    move-exception v8

    .line 190
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_74

    .line 193
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_1b

    .line 199
    .end local v4           #N:I
    .end local v10           #i:I
    :cond_8c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 200
    .local v5, bundle:Landroid/os/Bundle;
    const-string v17, "NAME"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 201
    .local v14, name:Ljava/lang/String;
    const-string v17, "RESPONSE_BODY"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 202
    .local v15, responseBody:Ljava/lang/String;
    const-string v17, "location"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 203
    .local v12, location:Ljava/lang/String;
    const-string v17, "RESPONSE_CODE"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 204
    .local v16, responseCode:I
    const-string v17, "method"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 206
    .local v13, method:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 207
    .restart local v4       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_c9
    if-ge v10, v4, :cond_2fa

    .line 211
    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2df

    .line 213
    const/16 v17, 0x0

    :try_start_d5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->timeout:Z

    .line 214
    const/4 v11, 0x0

    .line 215
    .local v11, info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    const/4 v6, 0x0

    .line 216
    .local v6, city:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    const/4 v7, 0x0

    .line 218
    .local v7, cityinfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->METHOD_INFO:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v13, v0, :cond_fe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->METHOD_DETAIL:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v13, v0, :cond_192

    .line 220
    :cond_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->tempScale:I

    move/from16 v18, v0

    new-instance v19, Lorg/xml/sax/InputSource;

    new-instance v20, Ljava/io/StringReader;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v19 .. v20}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseDetailWeather(ILorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;

    move-result-object v11

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    move-object/from16 v17, v0

    new-instance v18, Lorg/xml/sax/InputSource;

    new-instance v19, Ljava/io/StringReader;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v18 .. v19}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseALocation(Lorg/xml/sax/InputSource;Ljava/lang/String;)Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;

    move-result-object v7

    .line 222
    if-eqz v7, :cond_157

    .line 223
    invoke-virtual {v7, v12}, Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;->setLocation(Ljava/lang/String;)V

    .line 229
    :cond_157
    :goto_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->METHOD_INFO:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v13, v0, :cond_1dd

    .line 231
    if-eqz v7, :cond_1a5

    if-eqz v11, :cond_1a5

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v11}, Lcom/sec/android/widgetapp/service/AccuRemoteService;->info2Map(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;->briefArrived(Ljava/util/Map;)V

    .line 207
    .end local v6           #city:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    .end local v7           #cityinfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .end local v11           #info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    :cond_18e
    :goto_18e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c9

    .line 227
    .restart local v6       #city:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    .restart local v7       #cityinfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .restart local v11       #info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    :cond_192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->parser:Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/sec/android/widgetapp/weatherclock/provider/accuweather/AccuWeatherResponseParser;->parseCityList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_157

    .line 237
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;->errorReport(I)V
    :try_end_1be
    .catch Landroid/os/RemoteException; {:try_start_d5 .. :try_end_1be} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_1be} :catch_216

    goto :goto_18e

    .line 275
    .end local v6           #city:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    .end local v7           #cityinfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .end local v11           #info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    :catch_1bf
    move-exception v8

    .line 277
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v17, ""

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "service remote exception occured "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18e

    .line 240
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v6       #city:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    .restart local v7       #cityinfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .restart local v11       #info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    :cond_1dd
    :try_start_1dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->METHOD_DETAIL:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v13, v0, :cond_26c

    .line 242
    if-eqz v7, :cond_251

    if-eqz v11, :cond_251

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v11}, Lcom/sec/android/widgetapp/service/AccuRemoteService;->info2DetailMap(Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;->detailArrived(Ljava/util/Map;)V
    :try_end_214
    .catch Landroid/os/RemoteException; {:try_start_1dd .. :try_end_214} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_214} :catch_216

    goto/16 :goto_18e

    .line 279
    .end local v6           #city:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    .end local v7           #cityinfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .end local v11           #info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    :catch_216
    move-exception v8

    .line 283
    .local v8, e:Ljava/lang/Exception;
    :try_start_217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;

    const/16 v18, 0x3

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;->errorReport(I)V
    :try_end_230
    .catch Landroid/os/RemoteException; {:try_start_217 .. :try_end_230} :catch_232

    goto/16 :goto_18e

    .line 285
    :catch_232
    move-exception v9

    .line 287
    .local v9, e1:Landroid/os/RemoteException;
    const-string v17, ""

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "service remote exception occured "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18e

    .line 248
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #e1:Landroid/os/RemoteException;
    .restart local v6       #city:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    .restart local v7       #cityinfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .restart local v11       #info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    :cond_251
    :try_start_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;->errorReport(I)V

    goto/16 :goto_18e

    .line 251
    :cond_26c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->METHOD_LIST:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v13, v0, :cond_18e

    .line 253
    if-eqz v6, :cond_2c4

    .line 255
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-nez v17, :cond_29f

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;->errorReport(I)V

    goto/16 :goto_18e

    .line 261
    :cond_29f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/sec/android/widgetapp/service/AccuRemoteService;->cityList2Map(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;->cityArrived(Ljava/util/Map;)V

    goto/16 :goto_18e

    .line 266
    :cond_2c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;

    const/16 v18, 0x3

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;->errorReport(I)V

    goto/16 :goto_18e

    .line 272
    .end local v6           #city:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;>;"
    .end local v7           #cityinfo:Lcom/sec/android/widgetapp/weatherclock/model/CityInfo;
    .end local v11           #info:Lcom/sec/android/widgetapp/weatherclock/model/DetailWeatherInfo;
    :cond_2df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v17

    check-cast v17, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;

    const/16 v18, 0x2

    invoke-interface/range {v17 .. v18}, Lcom/sec/android/widgetapp/service/AccuRemoteServiceCallback;->errorReport(I)V
    :try_end_2f8
    .catch Landroid/os/RemoteException; {:try_start_251 .. :try_end_2f8} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_2f8} :catch_216

    goto/16 :goto_18e

    .line 291
    :cond_2fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService$3;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/widgetapp/service/AccuRemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_1b
.end method
